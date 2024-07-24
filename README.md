# applescript-fm-helper Overview
applescript-fm-helper is a inter-dependent collection of AppleScript scripts designed to use UI scripting for automation, with a focus on FileMaker Pro. These scripts are currently being used primarily with macOS Mojave 10.14.6 and FileMaker Pro 17.

**NOTE:** Most of these scripts should work on other recent versions of macOS and FileMaker, **but there may be minor compatibility issues, since UI scripting is very sensitive to changes to interface objects.**

Although some of the FileMaker-specific handlers are written to work with both Pro and Advanced, the latter is favored.


### Install
Once the repository is saved, be sure to execute the make.sh, which will install dependencies (cliclick) and compile an 'fmGuiLib' application. You will need to enable assistive access in order to use it since make of the handlers maniupulates the GUI. Note also that executing the recompile.sh file will do a git pull and run make.sh in one shot. Be sure to Allow any dialogs that request to automate other apps, or the scripts will not function. 

### Usage
Just tell application 'fmGuiLib' to run some handler. Here is an example:

```-- AppleScript
tell application "fmGuiLib" to replaceSimple({sourceTEXT:"hello world!", oldChars:"o", newChars:"a"})
```

**NOTE:** If you're passing any objects into the app, you _may sometimes_ need to first coerce the object reference into a string. If you discover that you need to do this, you can bring a copy of the coerceToString handler ( /applescript-fm-helper/library/text parsing/coerceToString.applescript) into your local script/app.


### Dependency
This package assumes that cliclick ([github](https://github.com/BlueM/cliclick)) exists. Once compiled, update `main.scpt` with its location IFF you installed it elsewhere. By default, it is set to be at REPOSITORY/vendor/cliclick/cliclick 


### Helpful Tools
[RCDefaultApp](http://www.rubicode.com/Software/RCDefaultApp/) is a helpful system preferences utility used for setting up the default app for opening FMP URLs. This tools is especially useful when both Pro and Advanced are installed.
