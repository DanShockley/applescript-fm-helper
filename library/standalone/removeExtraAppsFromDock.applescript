-- removeExtraAppsFromDock{listOfAllowedAppNames:null}
-- Erik Shagdar
-- Remove all apps from the dock that are not specified. Has a default set of apps, but is ignored if a list is passed in

(*
HISTORY:
	2020-03-04 ( dshockley ): Standardized version. 
	1.0 - created


TODO:
	whenever an app is removed, the iterator (oneDockItem) should be set back by one. It seems to be going past the separator instead of exiting.
*)


on run
	removeExtraAppsFromDock(prefs)
end run

--------------------
-- START OF CODE
--------------------

on removeExtraAppsFromDock(prefs)
	-- version 2020-03-04-1536
	
	set defaultPrefs to {listOfAllowedAppNames:{"Finder", "FileMaker Pro Advanced", "FileMaker Pro Advanced", "Script Editor", "Terminal", "System Preferences", "Downloads", "Documents", "Trash"}}
	
	set prefst to prefs & defaultPrefs
	set listOfAllowedAppNames to listOfAllowedAppNames of prefs
	
	
	set removeButton to "Remove from Dock"
	
	tell application "System Events"
		tell process "Dock"
			set listOfDockApps to every UI element of list 1
			
			repeat with oneDockItem in listOfDockApps
				-- we hit the separator, so no need to continue
				if description of oneDockItem is equal to "separator dock item" then exit repeat
				
				set oneName to name of oneDockItem
				if listOfAllowedAppNames contains oneName then
					-- allowed, so continue to the next app
					
				else
					-- remove this app from the dock
					tell UI element oneName of list 1
						perform action "AXShowMenu"
						delay 0.1
						
						click menu item "Options" of menu 1
						delay 0.1
						
						-- depending on if teh app is open the options are different. Let's cover both cases
						set optionsMenuObj to menu 1 of menu item "Options" of menu 1
						set menuOptions to name of every menu item of optionsMenuObj
						
						if menuOptions contains removeButton then
							click menu item removeButton of optionsMenuObj
						else
							set keepMenuItem to menu item "Keep in Dock" of optionsMenuObj
							if enabled of keepMenuItem is true then click keepMenuItem
						end if
					end tell
				end if -- app is allowed
			end repeat -- of apps in dock
		end tell
	end tell
	
	return true
end removeExtraAppsFromDock

--------------------
-- END OF CODE
--------------------
