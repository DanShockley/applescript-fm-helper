FasdUAS 1.101.10   ��   ��    k             l     ��  ��      main script     � 	 	    m a i n   s c r i p t   
  
 l     ��  ��      Erik Shagdar, NYHTC     �   (   E r i k   S h a g d a r ,   N Y H T C      l     ��������  ��  ��        l     ��  ��    %  Generated: 2016-06-28 12:29:59     �   >   G e n e r a t e d :   2 0 1 6 - 0 6 - 2 8   1 2 : 2 9 : 5 9      l     ��  ��    n h Run 'main_helper.applescript' to after making changes in any .applescript file and after each git pull.     �   �   R u n   ' m a i n _ h e l p e r . a p p l e s c r i p t '   t o   a f t e r   m a k i n g   c h a n g e s   i n   a n y   . a p p l e s c r i p t   f i l e   a n d   a f t e r   e a c h   g i t   p u l l .      l     ��  ��    � � Assumes file is located at '~/Code/applescript-fm-helper/'. If it is not, make sure to update clickCommandPosix property and 'vendor.sh' script.     �  "   A s s u m e s   f i l e   i s   l o c a t e d   a t   ' ~ / C o d e / a p p l e s c r i p t - f m - h e l p e r / ' .   I f   i t   i s   n o t ,   m a k e   s u r e   t o   u p d a t e   c l i c k C o m m a n d P o s i x   p r o p e r t y   a n d   ' v e n d o r . s h '   s c r i p t .     !   l     ��������  ��  ��   !  " # " j     �� $�� 0 	debugmode 	DebugMode $ m     ��
�� boovfals #  % & % j    �� '�� 0 
scriptname 
ScriptName ' m     ( ( � ) )  m a i n . s c p t &  * + * j    �� ,�� &0 clickcommandposix clickCommandPosix , b     - . - n     / 0 / 1    ��
�� 
psxp 0 l    1���� 1 l    2���� 2 c     3 4 3 l    5���� 5 I   �� 6��
�� .earsffdralis        afdr 6 m    ��
�� afdrcusr��  ��  ��   4 m    ��
�� 
TEXT��  ��  ��  ��   . m     7 7 � 8 8 f C o d e / a p p l e s c r i p t - f m - h e l p e r / v e n d o r / c l i c l i c k / c l i c l i c k +  9 : 9 l     ��������  ��  ��   :  ; < ; l     ��������  ��  ��   <  = > = i     ? @ ? I      �� A���� $0 encodecharforurl encodeCharForURL A  B�� B o      ���� 0 	this_char  ��  ��   @ k     K C C  D E D l     �� F G��   F   version 1.0    G � H H    v e r s i o n   1 . 0 E  I J I l     ��������  ��  ��   J  K L K r      M N M l     O���� O l     P���� P I    �� Q��
�� .sysoctonshor       TEXT Q o     ���� 0 	this_char  ��  ��  ��  ��  ��   N l      R���� R o      ���� 0 	ascii_num 	ASCII_num��  ��   L  S T S r      U V U J     W W  X Y X m    	 Z Z � [ [  0 Y  \ ] \ m   	 
 ^ ^ � _ _  1 ]  ` a ` m   
  b b � c c  2 a  d e d m     f f � g g  3 e  h i h m     j j � k k  4 i  l m l m     n n � o o  5 m  p q p m     r r � s s  6 q  t u t m     v v � w w  7 u  x y x m     z z � { {  8 y  | } | m     ~ ~ �    9 }  � � � m     � � � � �  A �  � � � m     � � � � �  B �  � � � m     � � � � �  C �  � � � m     � � � � �  D �  � � � m     � � � � �  E �  ��� � m     � � � � �  F��   V l      ����� � o      ���� 0 hex_list  ��  ��   T  � � � r   ! / � � � n   ! - � � � 4   " -�� �
�� 
cobj � l  % , ����� � [   % , � � � l  % * ����� � _   % * � � � o   % &���� 0 	ascii_num 	ASCII_num � m   & )���� ��  ��   � m   * +���� ��  ��   � l  ! " ����� � o   ! "���� 0 hex_list  ��  ��   � o      ���� 0 x   �  � � � r   0 > � � � n   0 < � � � 4   1 <�� �
�� 
cobj � l  4 ; ����� � [   4 ; � � � l  4 9 ����� � `   4 9 � � � o   4 5���� 0 	ascii_num 	ASCII_num � m   5 8���� ��  ��   � m   9 :���� ��  ��   � l  0 1 ����� � o   0 1���� 0 hex_list  ��  ��   � o      ���� 0 y   �  ��� � L   ? K � � c   ? J � � � l  ? F ����� � b   ? F � � � b   ? D � � � m   ? B � � � � �  % � o   B C���� 0 x   � o   D E���� 0 y  ��  ��   � m   F I��
�� 
TEXT��   >  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� $0 encodetextforurl encodeTextForURL �  � � � o      ���� 0 	this_text   �  � � � o      ���� 0 encode_url_a encode_URL_A �  ��� � o      ���� 0 encode_url_b encode_URL_B��  ��   � k     f � �  � � � l     �� � ���   �   version 1.0    � � � �    v e r s i o n   1 . 0 �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � / ) this sub-routine is used to encode text     � � � � R   t h i s   s u b - r o u t i n e   i s   u s e d   t o   e n c o d e   t e x t   �  � � � r      � � � m      � � � � � H a b c d e f g h i j k l m n o p q r s t u v w x y z 0 1 2 3 4 5 6 7 8 9 � l      ����� � o      ���� 0 standard_characters  ��  ��   �  � � � l    � � � � r     � � � m     � � � � � 2 $ + ! ' / ? ; & @ = # % > < { } [ ] " ~ ` ^ \ | * � l      ����� � o      ���� 0 url_a_chars URL_A_chars��  ��   � 6 0 double excape this since the code gets compiled    � � � � `   d o u b l e   e x c a p e   t h i s   s i n c e   t h e   c o d e   g e t s   c o m p i l e d �  � � � r     � � � m    	 � � � � �  . - _ : � l      ����� � o      ���� 0 url_b_chars URL_B_chars��  ��   �  � � � r     � � � l    ����� � o    ���� 0 standard_characters  ��  ��   � l      ����� � o      ���� 0 acceptable_characters  ��  ��   �  � � � Z    � ����� � =    � � � o    ���� 0 encode_url_a encode_URL_A � m    ��
�� boovfals � r     � � � b     �  � l   ���� o    ���� 0 acceptable_characters  ��  ��    l   ���� o    ���� 0 url_a_chars URL_A_chars��  ��   � l     ���� o      ���� 0 acceptable_characters  ��  ��  ��  ��   �  Z    /��� =    #	 o     !�~�~ 0 encode_url_b encode_URL_B	 m   ! "�}
�} boovfals r   & +

 b   & ) l  & '�|�{ o   & '�z�z 0 acceptable_characters  �|  �{   l  ' (�y�x o   ' (�w�w 0 url_b_chars URL_B_chars�y  �x   l     �v�u o      �t�t 0 acceptable_characters  �v  �u  ��  �    r   0 3 m   0 1 �   l     �s�r o      �q�q 0 encoded_text  �s  �r    X   4 c�p Z   D ^�o E  D G  l  D E!�n�m! o   D E�l�l 0 acceptable_characters  �n  �m    o   E F�k�k 0 	this_char   r   J O"#" l  J M$�j�i$ b   J M%&% l  J K'�h�g' o   J K�f�f 0 encoded_text  �h  �g  & o   K L�e�e 0 	this_char  �j  �i  # l     (�d�c( o      �b�b 0 encoded_text  �d  �c  �o   r   R ^)*) c   R \+,+ l  R Z-�a�`- b   R Z./. l  R S0�_�^0 o   R S�]�] 0 encoded_text  �_  �^  / I   S Y�\1�[�\ $0 encodecharforurl encodeCharForURL1 2�Z2 o   T U�Y�Y 0 	this_char  �Z  �[  �a  �`  , m   Z [�X
�X 
TEXT* l     3�W�V3 o      �U�U 0 encoded_text  �W  �V  �p 0 	this_char   o   7 8�T�T 0 	this_text   4�S4 L   d f55 l  d e6�R�Q6 o   d e�P�P 0 encoded_text  �R  �Q  �S   � 787 l     �O�N�M�O  �N  �M  8 9:9 i    ;<; I      �L=�K�L 0 
getfromfmp 
getFromFMP= >�J> o      �I�I 	0 prefs  �J  �K  < k     �?? @A@ l     �HBC�H  B   version 1.8   C �DD    v e r s i o n   1 . 8A EFE l     �G�F�E�G  �F  �E  F GHG Q     IJKI k    LL MNM l   �DOP�D  O D > prefs MIGHT be a record that looks like this: {fmType:"Adv"}    P �QQ |   p r e f s   M I G H T   b e   a   r e c o r d   t h a t   l o o k s   l i k e   t h i s :   { f m T y p e : " A d v " }  N R�CR r    STS n    UVU o    �B�B 0 fmtype fmTypeV o    �A�A 	0 prefs  T o      �@�@ 0 fmtype fmType�C  J R      �?�>�=
�? .ascrerr ****      � ****�>  �=  K r    WXW m    YY �ZZ  U n kX o      �<�< 0 fmtype fmTypeH [\[ l   �;�:�9�;  �:  �9  \ ]^] r    _`_ m    aa �bb D A p p l e S c r i p t _ T r a n s f e r - D O _ N O T _ R E N A M E` o      �8�8 0 
astransfer 
asTransfer^ cdc r    efe m    gg �hh  F i l e M a k e r   P r of o      �7�7 0 fmpname fmpNamed iji l   �6�5�4�6  �5  �4  j klk Z    �mn�3om H    $pp E    #qrq l   !s�2�1s I   !�0t�/
�0 .earsffdralis        afdrt  f    �/  �2  �1  r o   ! "�.�. 0 fmpname fmpNamen k   ' {uu vwv O   ' =xyx r   + <z{z n   + :|}| 1   8 :�-
�- 
dnam} l  + 8~�,�+~ 6  + 8� 4  + /�*�
�* 
pcap� m   - .�)�) � C  0 7��� 1   1 3�(
�( 
dnam� o   4 6�'�' 0 fmpname fmpName�,  �+  { o      �&�& 0 fmpactivename fmpActiveNamey m   ' (���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  w ��� Z   > s����%� =  > A��� o   > ?�$�$ 0 fmtype fmType� m   ? @�� ���  U n k� r   D M��� b   D K��� b   D I��� b   D G��� m   D E�� ���  t e l l   a p p   "� o   E F�#�# 0 fmpactivename fmpActiveName� m   G H�� ���  "� o   I J�"
�" 
ret � o      �!�! 0 begintellfm beginTellFM� ��� =  P S��� o   P Q� �  0 fmtype fmType� m   Q R�� ���  A d v� ��� r   V ]��� b   V [��� m   V Y�� ��� Z t e l l   a p p   i d   " c o m . f i l e m a k e r . c l i e n t . a d v a n c e d 1 2 "� o   Y Z�
� 
ret � o      �� 0 begintellfm beginTellFM� ��� =  ` e��� o   ` a�� 0 fmtype fmType� m   a d�� ���  P r o� ��� r   h o��� b   h m��� m   h k�� ��� P t e l l   a p p   i d   " c o m . f i l e m a k e r . c l i e n t . p r o 1 2 "� o   k l�
� 
ret � o      �� 0 begintellfm beginTellFM�  �%  � ��� r   t {��� b   t y��� o   t u�
� 
ret � m   u x�� ���  e n d   t e l l� o      �� 0 	endtellfm 	endTellFM�  �3  o k   ~ ��� ��� r   ~ ���� m   ~ ��� ���  � o      �� 0 begintellfm beginTellFM� ��� r   � ���� m   � ��� ���  � o      �� 0 	endtellfm 	endTellFM�  l ��� l  � �����  �  �  � ��� r   � ���� b   � ���� b   � ���� m   � ��� ��� $ c e l l   1   o f   l a y o u t   "� o   � ��� 0 
astransfer 
asTransfer� m   � ��� ���  "   o f   w i n d o w   1� o      �� 0 	codetoget 	codeToGet� ��� r   � ���� b   � ���� b   � ���� o   � ��� 0 begintellfm beginTellFM� o   � ��� 0 	codetoget 	codeToGet� o   � ��� 0 	endtellfm 	endTellFM� o      �� 0 
sendsource 
sendSource� ��� r   � ���� I  � ��
��	
�
 .sysodsct****        scpt� o   � ��� 0 
sendsource 
sendSource�	  � o      �� 0 	inputdata 	inputData� ��� l  � �����  �  �  � ��� L   � ��� o   � ��� 0 	inputdata 	inputData�  : ��� l     �� ���  �   ��  � ��� i    "��� I      ������� 0 	sendtofmp 	sendToFMP� ���� o      ���� 0 somedata someData��  ��  � k    )�� ��� l     ������  �   version 1.6   � ���    v e r s i o n   1 . 6� ��� l     ��������  ��  ��  � ��� Q     ���� k    �� ��� l   ��� ��  � b \ someData MIGHT be a record that looks like this: {fmType:"Adv", someData:"BLAH BLAH BLAH"}      � �   s o m e D a t a   M I G H T   b e   a   r e c o r d   t h a t   l o o k s   l i k e   t h i s :   { f m T y p e : " A d v " ,   s o m e D a t a : " B L A H   B L A H   B L A H " }  �  r     n     o    ���� 0 fmtype fmType o    ���� 0 somedata someData o      ���� 0 fmtype fmType �� r   	 	
	 n   	  o   
 ���� 0 somedata someData o   	 
���� 0 somedata someData
 o      ���� 0 somedata someData��  � R      ������
�� .ascrerr ****      � ****��  ��  � r     m     �  U n k o      ���� 0 fmtype fmType�  l   ��������  ��  ��    r     m     � D A p p l e S c r i p t _ T r a n s f e r - D O _ N O T _ R E N A M E o      ���� 0 
astransfer 
asTransfer  r    ! m     �  F i l e M a k e r   P r o o      ���� 0 fmpname fmpName   Z   " �!"��#! H   " *$$ E   " )%&% l  " ''����' I  " '��(��
�� .earsffdralis        afdr(  f   " #��  ��  ��  & o   ' (���� 0 fmpname fmpName" k   - �)) *+* O   - C,-, r   1 B./. n   1 @010 1   > @��
�� 
dnam1 l  1 >2����2 6  1 >343 4  1 5��5
�� 
pcap5 m   3 4���� 4 C  6 =676 1   7 9��
�� 
dnam7 o   : <���� 0 fmpname fmpName��  ��  / o      ���� 0 fmpactivename fmpActiveName- m   - .88�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  + 9:9 Z   D {;<=��; =  D G>?> o   D E���� 0 fmtype fmType? m   E F@@ �AA  U n k< r   J SBCB b   J QDED b   J OFGF b   J MHIH m   J KJJ �KK  t e l l   a p p   "I o   K L���� 0 fmpactivename fmpActiveNameG m   M NLL �MM  "E o   O P��
�� 
ret C o      ���� 0 begintellfm beginTellFM= NON =  V [PQP o   V W���� 0 fmtype fmTypeQ m   W ZRR �SS  A d vO TUT r   ^ eVWV b   ^ cXYX m   ^ aZZ �[[ Z t e l l   a p p   i d   " c o m . f i l e m a k e r . c l i e n t . a d v a n c e d 1 2 "Y o   a b��
�� 
ret W o      ���� 0 begintellfm beginTellFMU \]\ =  h m^_^ o   h i���� 0 fmtype fmType_ m   i l`` �aa  P r o] b��b r   p wcdc b   p uefe m   p sgg �hh P t e l l   a p p   i d   " c o m . f i l e m a k e r . c l i e n t . p r o 1 2 "f o   s t��
�� 
ret d o      ���� 0 begintellfm beginTellFM��  ��  : iji l  | |��������  ��  ��  j k��k r   | �lml b   | �non o   | }��
�� 
ret o m   } �pp �qq  e n d   t e l lm o      ���� 0 	endtellfm 	endTellFM��  ��  # k   � �rr sts r   � �uvu m   � �ww �xx  v o      ���� 0 begintellfm beginTellFMt y��y r   � �z{z m   � �|| �}}  { o      ���� 0 	endtellfm 	endTellFM��    ~~ l  � ���������  ��  ��   ��� r   � ���� c   � ���� o   � ����� 0 somedata someData� m   � ���
�� 
TEXT� o      ���� "0 somedatacleaned someDataCleaned� ��� r   � ���� n  � ���� 1   � ���
�� 
txdl� 1   � ���
�� 
ascr� o      ���� 0 	olddelims 	oldDelims� ��� l  � �������  �   escape backslashes    � ��� (   e s c a p e   b a c k s l a s h e s  � ��� r   � ���� I  � ������
�� .sysontocTEXT       shor� m   � ����� \��  � o      ���� 0 	backslash  � ��� r   � ���� o   � ����� 0 	backslash  � n     ��� 1   � ���
�� 
txdl� 1   � ���
�� 
ascr� ��� r   � ���� n   � ���� 2   � ���
�� 
citm� o   � ����� "0 somedatacleaned someDataCleaned� l     ������ o      ���� "0 somedatacleaned someDataCleaned��  ��  � ��� r   � ���� b   � ���� o   � ����� 0 	backslash  � o   � ����� 0 	backslash  � n     ��� 1   � ���
�� 
txdl� 1   � ���
�� 
ascr� ��� r   � ���� c   � ���� l  � ������� o   � ����� "0 somedatacleaned someDataCleaned��  ��  � m   � ���
�� 
TEXT� l     ������ o      ���� "0 somedatacleaned someDataCleaned��  ��  � ��� l  � �������  �   escape double-quotes    � ��� ,   e s c a p e   d o u b l e - q u o t e s  � ��� r   � ���� l  � ������� m   � ��� ���  "��  ��  � n     ��� 1   � ���
�� 
txdl� 1   � ���
�� 
ascr� ��� r   � ���� n   � ���� 2   � ���
�� 
citm� o   � ����� "0 somedatacleaned someDataCleaned� l     ������ o      ���� "0 somedatacleaned someDataCleaned��  ��  � ��� r   � ���� l  � ������� l  � ������� b   � ���� o   � ����� 0 	backslash  � m   � ��� ���  "��  ��  ��  ��  � n     ��� 1   � ���
�� 
txdl� 1   � ���
�� 
ascr� ��� r   � ���� c   � ���� l  � ������� o   � ����� "0 somedatacleaned someDataCleaned��  ��  � m   � ���
�� 
TEXT� l     ������ o      ���� "0 somedatacleaned someDataCleaned��  ��  � ��� l  � �������  � ) # reset the AppleScript delimiters	    � ��� F   r e s e t   t h e   A p p l e S c r i p t   d e l i m i t e r s 	  � ��� r   ���� o   � ����� 0 	olddelims 	oldDelims� n     ��� 1  ��
�� 
txdl� 1   ���
�� 
ascr� ��� l ��������  ��  ��  � ��� r  ��� b  ��� b  ��� b  ��� b  ��� m  �� ��� , s e t   c e l l   1   o f   l a y o u t   "� o  ���� 0 
astransfer 
asTransfer� m  �� ��� & "   o f   w i n d o w   1   t o   ( "� o  ���� "0 somedatacleaned someDataCleaned� m  �� ���  "   a s   s t r i n g )� o      ���� 0 	codetoset 	codeToSet� ��� r  !��� b  � � b   o  �� 0 begintellfm beginTellFM o  �~�~ 0 	codetoset 	codeToSet  o  �}�} 0 	endtellfm 	endTellFM� o      �|�| 0 
sendsource 
sendSource�  l ""�{�z�y�{  �z  �y    I "'�x�w
�x .sysodsct****        scpt o  "#�v�v 0 
sendsource 
sendSource�w   �u l ((�t�s�r�t  �s  �r  �u  � 	
	 l     �q�p�o�q  �p  �o  
  i   # & I      �n�m�n 40 displayfilemakerdatabase displayFileMakerDatabase �l o      �k�k 	0 prefs  �l  �m   k    �  l     �j�j     version 1.5    �    v e r s i o n   1 . 5  l     �i�h�g�i  �h  �g    Q    � k   �   r    !"! K    ## �f$%�f 0 	fmapptype 	fmAppType$ m    && �''  P r o% �e()�e .0 waitcycledelayseconds waitCycleDelaySeconds( m    �d�d ) �c*�b�c ,0 waitsavetotalseconds waitSaveTotalSeconds* ]    +,+ m    	�a�a , 1   	 
�`
�` 
min �b  " o      �_�_ 0 defaultprefs defaultPrefs  -.- r    /0/ b    121 o    �^�^ 	0 prefs  2 o    �]�] 0 defaultprefs defaultPrefs0 o      �\�\ 	0 prefs  . 343 l   �[�Z�Y�[  �Z  �Y  4 565 Z   478�X�W7 o    �V�V 0 	debugmode 	DebugMode8 I    0�U9�T�U 0 
logconsole 
logConsole9 :;: o    $�S�S 0 
scriptname 
ScriptName; <�R< b   $ ,=>= m   $ %?? �@@ @ d i s p l a y F i l e M a k e r D a t a b a s e   p r e f s :  > I   % +�QA�P�Q  0 coercetostring coerceToStringA B�OB o   & '�N�N 	0 prefs  �O  �P  �R  �T  �X  �W  6 CDC l  5 5�M�L�K�M  �L  �K  D EFE r   5 :GHG n   5 8IJI o   6 8�J�J 0 dbname dbNameJ o   5 6�I�I 	0 prefs  H o      �H�H 0 dbname dbNameF KLK l  ; ;�G�F�E�G  �F  �E  L MNM r   ; @OPO n   ; >QRQ o   < >�D�D ,0 waitsavetotalseconds waitSaveTotalSecondsR o   ; <�C�C 	0 prefs  P o      �B�B ,0 waitsavetotalseconds waitSaveTotalSecondsN STS r   A FUVU n   A DWXW o   B D�A�A .0 waitcycledelayseconds waitCycleDelaySecondsX o   A B�@�@ 	0 prefs  V o      �?�? .0 waitcycledelayseconds waitCycleDelaySecondsT YZY l  G G�>�=�<�>  �=  �<  Z [\[ r   G R]^] I  G P�;_`
�; .sysorondlong        doub_ l  G Ja�:�9a ^   G Jbcb o   G H�8�8 ,0 waitsavetotalseconds waitSaveTotalSecondsc o   H I�7�7 .0 waitcycledelayseconds waitCycleDelaySeconds�:  �9  ` �6d�5
�6 
dired m   K L�4
�4 olierndD�5  ^ o      �3�3 0 waitcyclemax waitCycleMax\ efe l  S S�2�1�0�2  �1  �0  f ghg Z   S fij�/ki =  S Xlml n   S Vnon o   T V�.�. 0 	fmapptype 	fmAppTypeo o   S T�-�- 	0 prefs  m m   V Wpp �qq  A d vj r   [ ^rsr m   [ \tt �uu > c o m . f i l e m a k e r . c l i e n t . a d v a n c e d 1 2s o      �,�, 0 fmappbundleid fmAppBundleID�/  k r   a fvwv m   a dxx �yy 4 c o m . f i l e m a k e r . c l i e n t . p r o 1 2w o      �+�+ 0 fmappbundleid fmAppBundleIDh z{z l  g g�*�)�(�*  �)  �(  { |}| l  g g�'�&�%�'  �&  �%  } ~~ U   g ���� k   n ��� ��� l  n n�$�#�"�$  �#  �"  � ��� r   n s��� m   n q�!
�! 
null� o      � �  0 doclist docList� ��� Q   t ����� k   w ��� ��� w   w ���� O   { ���� r   � ���� 2   � ��
� 
docu� o      �� 0 doclist docList� 5   { ����
� 
capp� o    ��� 0 fmappbundleid fmAppBundleID
� kfrmID  �2                                                                                  FM12  alis    �  MacintoshSSD               �u8\H+   3�FileMaker Pro Advanced.app                                      4�̙�Q        ����  	                FileMaker Pro 12 Advanced     �u~�      ̚"�     3�   �  PMacintoshSSD:Applications: FileMaker Pro 12 Advanced: FileMaker Pro Advanced.app  6  F i l e M a k e r   P r o   A d v a n c e d . a p p    M a c i n t o s h S S D  AApplications/FileMaker Pro 12 Advanced/FileMaker Pro Advanced.app   / ��  � ��� l  � �����  �  �  � ��� Z  � ������ >  � ���� o   � ��� 0 doclist docList� m   � ��
� 
null�  S   � ��  �  � ��� l  � �����  �  �  �  � R      ���
� .ascrerr ****      � ****� o      �� 0 errmsg errMsg� ���
� 
errn� o      �� 0 errnum errNum�  � Z   � ����
�� =  � ���� o   � ��	�	 0 errnum errNum� m   � ������ l  � �����  � � � just keep trying - this error can be caused when a database is opening and the open script takes a bit too long to finish, or something in the FM interface is slow to respond.    � ���b   j u s t   k e e p   t r y i n g   -   t h i s   e r r o r   c a n   b e   c a u s e d   w h e n   a   d a t a b a s e   i s   o p e n i n g   a n d   t h e   o p e n   s c r i p t   t a k e s   a   b i t   t o o   l o n g   t o   f i n i s h ,   o r   s o m e t h i n g   i n   t h e   F M   i n t e r f a c e   i s   s l o w   t o   r e s p o n d .  �
  � R   � ����
� .ascrerr ****      � ****� b   � ���� m   � ��� ��� \ E r r o r   g e t t i n g   l i s t   o f   d a t a b a s e s   a l r e a d y   o p e n :  � o   � ��� 0 errmsg errMsg� ���
� 
errn� o   � ��� 0 errnum errNum�  � ��� l  � ��� ���  �   ��  � ���� I  � ������
�� .sysodelanull��� ��� nmbr� o   � ����� .0 waitcycledelayseconds waitCycleDelaySeconds��  ��  � o   j k���� 0 waitcyclemax waitCycleMax ��� l  � ���������  ��  ��  � ��� X   ������� k   ���� ��� r   � ���� n   � ���� 1   � ���
�� 
pnam� o   � ����� 0 onedoc oneDoc� o      ���� 0 docname docName� ��� l  � �������  � 0 * get the name WITHOUT the file extension:    � ��� T   g e t   t h e   n a m e   W I T H O U T   t h e   f i l e   e x t e n s i o n :  � ��� c   � ���� l  � ������� n   � ���� 1   � ���
�� 
rvse� n   � ���� 2  � ���
�� 
cha � o   � ����� 0 docname docName��  ��  � m   � ���
�� 
TEXT� ��� n   ���� 7  �����
�� 
ctxt� l  ������� [   ���� l  ������� I  ������
�� .sysooffslong    ��� null��  � ����
�� 
psof� m  �� ���  .� �����
�� 
psin� 1  	��
�� 
rslt��  ��  ��  � m  ���� ��  ��  � m  ������� 1   � ���
�� 
rslt� ��� r  +��� c  )��� l %������ n  %��� 1  !%��
�� 
rvse� n  !��� 2 !��
�� 
cha � 1  ��
�� 
rslt��  ��  � m  %(��
�� 
TEXT� o      ���� 0 docname docName� ��� Z ,=������� o  ,1���� 0 	debugmode 	DebugMode� I 49�����
�� .ascrcmnt****      � ****� o  45���� 0 dbname dbName��  ��  ��  � ��� Z >O������� o  >C���� 0 	debugmode 	DebugMode� I FK�����
�� .ascrcmnt****      � ****� o  FG���� 0 docname docName��  ��  ��  � ���� P  P������ k  W��� ��� l WW������  � w qif debugMode then logConsole(ScriptName, "displayFileMakerDatabase docName: " & coerceToString(class of docName))   � ��� � i f   d e b u g M o d e   t h e n   l o g C o n s o l e ( S c r i p t N a m e ,   " d i s p l a y F i l e M a k e r D a t a b a s e   d o c N a m e :   "   &   c o e r c e T o S t r i n g ( c l a s s   o f   d o c N a m e ) )�    l WW����   u oif debugMode then logConsole(ScriptName, "displayFileMakerDatabase dbName: " & coerceToString(class of dbName))    � � i f   d e b u g M o d e   t h e n   l o g C o n s o l e ( S c r i p t N a m e ,   " d i s p l a y F i l e M a k e r D a t a b a s e   d b N a m e :   "   &   c o e r c e T o S t r i n g ( c l a s s   o f   d b N a m e ) )  l WW��������  ��  ��    l WW��������  ��  ��   	
	 l WW����   s m apparently these two TEXT variables have some difference (formatting?) even when they are identical STRINGS:    � �   a p p a r e n t l y   t h e s e   t w o   T E X T   v a r i a b l e s   h a v e   s o m e   d i f f e r e n c e   ( f o r m a t t i n g ? )   e v e n   w h e n   t h e y   a r e   i d e n t i c a l   S T R I N G S :
 �� Z  W��� = Wb l W\���� c  W\ o  WX���� 0 docname docName m  X[��
�� 
TEXT��  ��   l \a���� c  \a o  \]���� 0 dbname dbName m  ]`��
�� 
TEXT��  ��   k  e�  l ee����   " if debugMode then log "SAME"    � 8 i f   d e b u g M o d e   t h e n   l o g   " S A M E "  !  w  e�"#" O  i�$%$ k  u�&& '(' I uz��)��
�� .miscmvisnull���    obj ) o  uv���� 0 onedoc oneDoc��  ( *+* Z {�,-����, o  {����� 0 	debugmode 	DebugMode- n ��./. I  ����0���� 0 
logconsole 
logConsole0 121 o  ������ 0 
scriptname 
ScriptName2 3��3 b  ��454 m  ��66 �77 B d i s p l a y F i l e M a k e r D a t a b a s e   o n e D o c :  5 n ��898 I  ����:����  0 coercetostring coerceToString: ;��; o  ������ 0 onedoc oneDoc��  ��  9  f  ����  ��  /  f  ����  ��  + <��< l ����=>��  = ( "if debugMode then log (path to it)   > �?? D i f   d e b u g M o d e   t h e n   l o g   ( p a t h   t o   i t )��  % 5  ir��@��
�� 
capp@ o  mn���� 0 fmappbundleid fmAppBundleID
�� kfrmID  #2                                                                                  FM12  alis    �  MacintoshSSD               �u8\H+   3�FileMaker Pro Advanced.app                                      4�̙�Q        ����  	                FileMaker Pro 12 Advanced     �u~�      ̚"�     3�   �  PMacintoshSSD:Applications: FileMaker Pro 12 Advanced: FileMaker Pro Advanced.app  6  F i l e M a k e r   P r o   A d v a n c e d . a p p    M a c i n t o s h S S D  AApplications/FileMaker Pro 12 Advanced/FileMaker Pro Advanced.app   / ��  ! A��A L  ��BB m  ����
�� boovtrue��  ��   l ����CD��  C P Jif debugMode then logConsole(ScriptName, "displayFileMakerDatabase DIFF" )   D �EE � i f   d e b u g M o d e   t h e n   l o g C o n s o l e ( S c r i p t N a m e ,   " d i s p l a y F i l e M a k e r D a t a b a s e   D I F F "   )��  ��  � ����
�� conscase��  ��  �� 0 onedoc oneDoc� o   � ����� 0 doclist docList� FGF L  ��HH m  ����
�� boovfalsG I��I l ����������  ��  ��  ��   R      ��JK
�� .ascrerr ****      � ****J o      ���� 0 errmsg errMsgK ��L��
�� 
errnL o      ���� 0 errnum errNum��   R  ����MN
�� .ascrerr ****      � ****M b  ��OPO b  ��QRQ b  ��STS m  ��UU �VV @ d i s p l a y F i l e M a k e r D a t a b a s e   e r r o r :  T o  ������ 0 errmsg errMsgR m  ��WW �XX "   -   e r r o r   n u m b e r :  P o  ������ 0 errnum errNumN ��Y��
�� 
errnY o  ������ 0 errnum errNum��   Z��Z l ����������  ��  ��  ��   [\[ l     ��������  ��  ��  \ ]^] i   ' *_`_ I      ��a���� 20 ensurefilemakerdatabase ensureFileMakerDatabasea b��b o      ���� 	0 prefs  ��  ��  ` k     �cc ded l     ��fg��  f   version 1.3   g �hh    v e r s i o n   1 . 3e iji l     ��~�}�  �~  �}  j klk r     mnm n     opo o    �|�| 0 dbname dbNamep o     �{�{ 	0 prefs  n o      �z�z 0 dbname dbNamel qrq l   �y�x�w�y  �x  �w  r sts l   uvwu r    xyx I    �vz�u�v 40 displayfilemakerdatabase displayFileMakerDatabasez {�t{ K    || �s}~�s 0 dbname dbName} o    	�r�r 0 dbname dbName~ �q�p�q 0 	fmapptype 	fmAppType m   
 �� ���  A d v�p  �t  �u  y o      �o�o 0 isdisplayed isDisplayedv + % first, just see if one is available.   w ��� J   f i r s t ,   j u s t   s e e   i f   o n e   i s   a v a i l a b l e .t ��� Z   -���n�m� o    �l�l 0 	debugmode 	DebugMode� I    )�k��j�k 0 
logconsole 
logConsole� ��� o    "�i�i 0 
scriptname 
ScriptName� ��h� b   " %��� m   " #�� ��� $ T r i e d   t o   d i s p l a y :  � o   # $�g�g 0 dbname dbName�h  �j  �n  �m  � ��f� Z   . ����e�� o   . /�d�d 0 isdisplayed isDisplayed� L   2 4�� m   2 3�c
�c boovtrue�e  � k   7 ��� ��� Z  7 P���b�a� o   7 <�`�` 0 	debugmode 	DebugMode� I   ? L�_��^�_ 0 
logconsole 
logConsole� ��� o   @ E�]�] 0 
scriptname 
ScriptName� ��\� b   E H��� m   E F�� ��� , A b o u t   t o   t r y   t o   o p e n :  � o   F G�[�[ 0 dbname dbName�\  �^  �b  �a  � ��� l  Q Q�Z�Y�X�Z  �Y  �X  � ��W� Z   Q ����V�� I   Q W�U��T�U .0 openfilemakerdatabase openFileMakerDatabase� ��S� o   R S�R�R 	0 prefs  �S  �T  � k   Z ��� ��� l  Z Z�Q���Q  � 2 , was able to open it, so NOW display window.   � ��� X   w a s   a b l e   t o   o p e n   i t ,   s o   N O W   d i s p l a y   w i n d o w .� ��� I  Z _�P��O
�P .sysodelanull��� ��� nmbr� m   Z [�� ?�      �O  � ��� Z  ` y���N�M� o   ` e�L�L 0 	debugmode 	DebugMode� I   h u�K��J�K 0 
logconsole 
logConsole� ��� o   i n�I�I 0 
scriptname 
ScriptName� ��H� b   n q��� m   n o�� ��� R T r i e d   t o   o p e n ,   n o w   t r y   a g a i n   t o   d i s p l a y :  � o   o p�G�G 0 dbname dbName�H  �J  �N  �M  � ��� r   z ���� I   z ��F��E�F 40 displayfilemakerdatabase displayFileMakerDatabase� ��D� K   { ��� �C���C 0 dbname dbName� o   | }�B�B 0 dbname dbName� �A��@�A 0 	fmapptype 	fmAppType� m   ~ �� ���  A d v�@  �D  �E  � o      �?�? 0 isdisplayed isDisplayed� ��>� L   � ��� o   � ��=�= 0 isdisplayed isDisplayed�>  �V  � k   � ��� ��� l  � ��<���<  � 0 * Was NOT able to open it, so return false.   � ��� T   W a s   N O T   a b l e   t o   o p e n   i t ,   s o   r e t u r n   f a l s e .� ��;� L   � ��� m   � ��:
�: boovfals�;  �W  �f  ^ ��� l     �9�8�7�9  �8  �7  � ��� i   + .��� I      �6��5�6 .0 openfilemakerdatabase openFileMakerDatabase� ��4� o      �3�3 	0 prefs  �4  �5  � k     ��� ��� l     �2���2  �   version 1.3   � ���    v e r s i o n   1 . 3� ��� l     �1�0�/�1  �0  �/  � ��� Q     ����� k    u�� ��� r    ��� b    
��� b    ��� m    �� ��� < h t c l i n k : / / A c c e s s F i l e ? F i l e N a m e =� n    ��� o    �.�. 0 dbname dbName� o    �-�- 	0 prefs  � m    	�� ��� N & C o m m a n d = O p e n & S i l e n t O p e n = 1 & S h o w W i n d o w = 1� o      �,�, 0 	customurl 	customURL� ��� l   �+�*�)�+  �*  �)  � ��� O    p��� k    o��    l   �(�'�&�(  �'  �&    r    / b    - b    $	 b    "

 b     b     b     b     m     �  F M P : / / n     o    �%�% 0 serverip serverIP o    �$�$ 	0 prefs   m     �  / n     o    �#�# 0 
maindbname 
mainDbName o    �"�" 	0 prefs   m     �  ? s c r i p t = n    ! o    !�!�! <0 customlinkreceiverscriptname customLinkReceiverScriptName o    � �  	0 prefs  	 m   " #   �!!  & p a r a m = n  $ ,"#" I   % ,�$�� $0 encodetextforurl encodeTextForURL$ %&% o   % &�� 0 	customurl 	customURL& '(' m   & '�
� boovtrue( )�) m   ' (�
� boovfals�  �  #  f   $ % o      �� 0 fmpurl fmpURL *+* l  0 0����  �  �  + ,-, l  0 0�./�  . [ U we must double-encode equals (%3D) and ampersand (%26) to work-around FileMaker bug:   / �00 �   w e   m u s t   d o u b l e - e n c o d e   e q u a l s   ( % 3 D )   a n d   a m p e r s a n d   ( % 2 6 )   t o   w o r k - a r o u n d   F i l e M a k e r   b u g :- 121 r   0 <343 n  0 :565 I   1 :�7�� 0 replacesimple replaceSimple7 8�8 J   1 699 :;: o   1 2�� 0 fmpurl fmpURL; <=< m   2 3>> �??  % 3 D= @�@ m   3 4AA �BB 
 % 2 5 3 D�  �  �  6  f   0 14 o      �� 0 fmpurl fmpURL2 CDC r   = KEFE n  = IGHG I   > I�I�� 0 replacesimple replaceSimpleI J�J J   > EKK LML o   > ?�� 0 fmpurl fmpURLM NON m   ? @PP �QQ  % 2 6O R�
R m   @ CSS �TT 
 % 2 5 2 6�
  �  �  H  f   = >F o      �	�	 0 fmpurl fmpURLD UVU l  L L����  �  �  V WXW Z  L gYZ��Y o   L Q�� 0 	debugmode 	DebugModeZ n  T c[\[ I   U c�]�� 0 
logconsole 
logConsole] ^_^ o   U Z� �  0 
scriptname 
ScriptName_ `��` b   Z _aba m   Z ]cc �dd < o p e n F i l e M a k e r D a t a b a s e   f m p U R L :  b o   ] ^���� 0 fmpurl fmpURL��  �  \  f   T U�  �  X efe l  h h��������  ��  ��  f ghg I  h m��i��
�� .GURLGURLnull��� ��� TEXTi o   h i���� 0 fmpurl fmpURL��  h j��j l  n n��������  ��  ��  ��  � m    kk�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  � lml l  q q��������  ��  ��  m non L   q spp m   q r��
�� boovtrueo q��q l  t t��������  ��  ��  ��  � R      ��rs
�� .ascrerr ****      � ****r o      ���� 0 errmsg errMsgs ��t��
�� 
errnt o      ���� 0 errnum errNum��  � k   } �uu vwv l  } }��xy��  x A ; ANY error should return FALSE, as in "could not be opened"   y �zz v   A N Y   e r r o r   s h o u l d   r e t u r n   F A L S E ,   a s   i n   " c o u l d   n o t   b e   o p e n e d "w {|{ l  } }��������  ��  ��  | }~} l  } �� L   } �� o   } ~���� 0 errmsg errMsg�  false   � ��� 
 f a l s e~ ���� l  � ���������  ��  ��  ��  � ��� l  � ���������  ��  ��  � ���� l  � ���������  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� i   / 2��� I      ������� 0 sfr_dictget SFR_DictGet� ��� o      ���� 0 somedict someDict� ���� o      ���� 0 itemname itemName��  ��  � k     X�� ��� l     ������  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     ��������  ��  ��  � ��� r     ��� b     
��� b     ��� m     �� ���  < :� I    ������� 0 
sfr_escape 
SFR_Escape� ���� o    ���� 0 itemname itemName��  ��  � m    	�� ���  : =� o      ���� 0 	keystring 	keyString� ��� r    ��� m    �� ���  : >� o      ���� 0 	endstring 	endString� ��� l   ��������  ��  ��  � ��� Z    N������ H    �� E    ��� o    ���� 0 somedict someDict� o    ���� 0 	keystring 	keyString� L    �� m    �� ���  ��  � k    N�� ��� r    "��� n    ��� 1     ��
�� 
txdl� 1    ��
�� 
ascr� o      ���� 0 	olddelims 	oldDelims� ��� r   # (��� l  # $������ o   # $���� 0 	keystring 	keyString��  ��  � n     ��� 1   % '��
�� 
txdl� 1   $ %��
�� 
ascr� ��� r   ) /��� n   ) -��� 4   * -���
�� 
citm� m   + ,���� � o   ) *���� 0 somedict someDict� l     ������ o      ���� 0 
keyremoved 
keyRemoved��  ��  � ���� Z   0 N������ H   0 4�� E   0 3��� o   0 1���� 0 
keyremoved 
keyRemoved� o   1 2���� 0 	endstring 	endString� L   7 9�� m   7 8�� ���  ��  � k   < N�� ��� r   < A��� o   < =���� 0 	endstring 	endString� n     ��� 1   > @��
�� 
txdl� 1   = >��
�� 
ascr� ��� r   B H��� n   B F��� 4   C F���
�� 
citm� m   D E���� � o   B C���� 0 
keyremoved 
keyRemoved� l     ������ o      ���� 0 	itemvalue 	itemValue��  ��  � ���� r   I N��� o   I J���� 0 	olddelims 	oldDelims� n     ��� 1   K M��
�� 
txdl� 1   J K��
�� 
ascr��  ��  � ��� l  O O��������  ��  ��  � ��� L   O V�� I   O U������� 0 sfr_unescape SFR_Unescape� ���� o   P Q���� 0 	itemvalue 	itemValue��  ��  � ��� l  W W��������  ��  ��  � ���� l  W W��������  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� i   3 6��� I      ������� 0 sfr_dictitem SFR_DictItem�    o      ���� 0 itemname itemName �� o      ���� 0 	itemvalue 	itemValue��  ��  � k       l     ����     version 1.0    �    v e r s i o n   1 . 0 	
	 l     ��������  ��  ��  
 �� L      b      b      b     
 b      m      �  < : I    ������ 0 
sfr_escape 
SFR_Escape �� o    ���� 0 itemname itemName��  ��   m    	 �  : = I   
 ����� 0 
sfr_escape 
SFR_Escape �~ o    �}�} 0 	itemvalue 	itemValue�~  �   m     �  : >��  �   l     �|�{�z�|  �{  �z    !"! i   7 :#$# I      �y%�x�y 0 
sfr_escape 
SFR_Escape% &�w& o      �v�v 0 
somestring 
someString�w  �x  $ k     3'' ()( l     �u*+�u  *   version 1.0   + �,,    v e r s i o n   1 . 0) -.- l     �t�s�r�t  �s  �r  . /0/ r     121 J     33 454 m     66 �77  =5 898 m    :: �;;  :9 <=< m    >> �??  <= @�q@ m    AA �BB  >�q  2 o      �p�p  0 escapecharlist escapeCharList0 CDC l  	 	�o�n�m�o  �n  �m  D EFE X   	 .G�lHG k    )II JKJ r    'LML I    %�kN�j�k 0 replacesimple replaceSimpleN O�iO J    !PP QRQ o    �h�h 0 
somestring 
someStringR STS o    �g�g 0 onechar oneCharT U�fU b    VWV m    XX �YY  /W o    �e�e 0 onechar oneChar�f  �i  �j  M o      �d�d 0 
somestring 
someStringK Z�cZ l  ( (�b�a�`�b  �a  �`  �c  �l 0 onechar oneCharH o    �_�_  0 escapecharlist escapeCharListF [\[ l  / /�^�]�\�^  �]  �\  \ ]^] L   / 1__ o   / 0�[�[ 0 
somestring 
someString^ `�Z` l  2 2�Y�X�W�Y  �X  �W  �Z  " aba l     �V�U�T�V  �U  �T  b cdc i   ; >efe I      �Sg�R�S 0 sfr_unescape SFR_Unescapeg h�Qh o      �P�P 0 
somestring 
someString�Q  �R  f k     3ii jkj l     �Olm�O  l   version 1.0   m �nn    v e r s i o n   1 . 0k opo l     �N�M�L�N  �M  �L  p qrq r     sts J     uu vwv m     xx �yy  =w z{z m    || �}}  :{ ~~ m    �� ���  < ��K� m    �� ���  >�K  t o      �J�J  0 escapecharlist escapeCharListr ��� l  	 	�I�H�G�I  �H  �G  � ��� X   	 .��F�� k    )�� ��� r    '��� I    %�E��D�E 0 replacesimple replaceSimple� ��C� J    !�� ��� o    �B�B 0 
somestring 
someString� ��� b    ��� m    �� ���  /� o    �A�A 0 onechar oneChar� ��@� o    �?�? 0 onechar oneChar�@  �C  �D  � o      �>�> 0 
somestring 
someString� ��=� l  ( (�<�;�:�<  �;  �:  �=  �F 0 onechar oneChar� o    �9�9  0 escapecharlist escapeCharList� ��� l  / /�8�7�6�8  �7  �6  � ��� L   / 1�� o   / 0�5�5 0 
somestring 
someString� ��4� l  2 2�3�2�1�3  �2  �1  �4  d ��� l     �0�/�.�0  �/  �.  � ��� i   ? B��� I      �-��,�- 60 fmgui_managedb_field_edit fmGUI_ManageDb_Field_Edit� ��+� o      �*�* 	0 prefs  �+  �,  � k    ��� ��� l     �)���)  �   version 1.2   � ���    v e r s i o n   1 . 2� ��� l     �(�'�&�(  �'  �&  � ��� l     �%���%  � � � any BOOLEAN parameters can be either actually boolean, or 1/0.  This function will change that to match UI scripting interface needs.   � ���   a n y   B O O L E A N   p a r a m e t e r s   c a n   b e   e i t h e r   a c t u a l l y   b o o l e a n ,   o r   1 / 0 .     T h i s   f u n c t i o n   w i l l   c h a n g e   t h a t   t o   m a t c h   U I   s c r i p t i n g   i n t e r f a c e   n e e d s .� ��� l     �$�#�"�$  �#  �"  � ��� r     Z��� K     X�� �!���! 0 editmode editMode� m    �� ���  C O N F O R M� � ���  0 	tablename 	tableName� m    �
� 
null� ���� 0 	fieldname 	fieldName� m    �
� 
null� ���� 0 altpatterns altPatterns� m    �
� 
null� ���� 0 fieldcomment fieldComment� m   	 
�
� 
null� ���� 0 datatype dataType� m    �
� 
null� ���� 0 	fieldtype 	fieldType� m    �
� 
null� ���� 0 calccode calcCode� m    �
� 
null� ���� &0 autoentercalccode autoEnterCalcCode� m    �
� 
null� ���� 20 autoentercalccontexttoc autoEnterCalcContextTOC� m    �
� 
null� ����  0 alwaysevaluate alwaysEvaluate� m    �
� 
null� ����  0 calccontexttoc calcContextTOC� m    �
� 
null� �
���
 0 storageglobal storageGlobal� m    �	
�	 
null� ���� 20 storecalculationresults storeCalculationResults� m    �
� 
null� ���� (0 storageindexchoice storageIndexChoice� m     �
� 
null� ���� 0 	autoindex 	autoIndex� m   # $�
� 
null� ���� 0 maxrepetition maxRepetition� m   ' (�
� 
null� � ���  0 indexlanguage indexLanguage� m   + ,��
�� 
null� ������ 0 allowediting allowEditing� m   / 0��
�� 
null� ������ 00 overwriteexistingvalue overwriteExistingValue� m   3 4��
�� 
null� ������ *0 autoenterisconstant autoEnterIsConstant� m   7 8��
�� 
null� ������ 00 autoenteriscalculation autoEnterIsCalculation� m   ; <��
�� 
null� ������ &0 autoenterislookup autoEnterIsLookup� m   ? @��
�� 
null� ������ .0 autoenterspecialvalue autoEnterSpecialValue� m   C D��
�� 
null� ������ 0 
autoserial 
autoSerial� m   G H��
�� 
null� ������ .0 autoenterconstantdata autoEnterConstantData� m   K L��
�� 
null� ������ (0 validationcalccode validationCalcCode� m   O P��
�� 
null� ������� 40 validationcalccontexttoc validationCalcContextTOC� m   S T��
�� 
null��  � o      ���� 0 defaultprefs defaultPrefs� ��� l  [ [������  � � � editMode: "CONFORM" means make field exactly match the entire specified data structure, while "TWEAK" means only to change which things were specified, leaving the other settings alone.    � ���v   e d i t M o d e :   " C O N F O R M "   m e a n s   m a k e   f i e l d   e x a c t l y   m a t c h   t h e   e n t i r e   s p e c i f i e d   d a t a   s t r u c t u r e ,   w h i l e   " T W E A K "   m e a n s   o n l y   t o   c h a n g e   w h i c h   t h i n g s   w e r e   s p e c i f i e d ,   l e a v i n g   t h e   o t h e r   s e t t i n g s   a l o n e .  � ��� l  [ [��� ��  � � � autoEnterSpecialValue: keywords used in FM-XML: NONE, CreationAccountName, CreationUserName,CreationTimestamp, ModificationAccountName, et al.     �   a u t o E n t e r S p e c i a l V a l u e :   k e y w o r d s   u s e d   i n   F M - X M L :   N O N E ,   C r e a t i o n A c c o u n t N a m e ,   C r e a t i o n U s e r N a m e , C r e a t i o n T i m e s t a m p ,   M o d i f i c a t i o n A c c o u n t N a m e ,   e t   a l .�  l  [ [����   a [ autoSerial:false or autoSerial:{autoNextValue:null, autoIncrement:null, autoGenerate:null}    � �   a u t o S e r i a l : f a l s e   o r   a u t o S e r i a l : { a u t o N e x t V a l u e : n u l l ,   a u t o I n c r e m e n t : n u l l ,   a u t o G e n e r a t e : n u l l }  l  [ [��������  ��  ��   	
	 l  [ [����   a [ autoEnterIsLookup - LOOKUP FUNCTIONS NOT YET SUPPORTED - WOULD NEED TO HANDLE SUB-ELEMENT.    � �   a u t o E n t e r I s L o o k u p   -   L O O K U P   F U N C T I O N S   N O T   Y E T   S U P P O R T E D   -   W O U L D   N E E D   T O   H A N D L E   S U B - E L E M E N T .
  l  [ [��������  ��  ��    l  [ [��������  ��  ��    r   [ ` b   [ ^ o   [ \���� 	0 prefs   o   \ ]���� 0 defaultprefs defaultPrefs o      ���� 	0 prefs    l  a a��������  ��  ��    r   a f n   a d o   b d���� 0 editmode editMode o   a b���� 	0 prefs   o      ���� 0 editmode editMode  !  l  g g��������  ��  ��  ! "#" Z  g z$%����$ >  g l&'& n   g j()( o   h j���� &0 autoentercalccode autoEnterCalcCode) o   g h���� 	0 prefs  ' m   j k��
�� 
null% r   o v*+* m   o p��
�� boovtrue+ n      ,-, o   q u���� 00 autoenteriscalculation autoEnterIsCalculation- o   p q���� 	0 prefs  ��  ��  # ./. l  { {��������  ��  ��  / 010 l   { {��23��  2 � �   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   
DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   	
   3 �44D       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       
 D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       	 
1 565 l  { {��������  ��  ��  6 787 Q   {�9:;9 k   ~�<< =>= l  ~ ~��������  ��  ��  > ?@? l  ~ ~��������  ��  ��  @ ABA l  ~ ~��������  ��  ��  B CDC l  ~ ~��������  ��  ��  D EFE l  ~ ~��GH��  G   try to select it first:   H �II 0   t r y   t o   s e l e c t   i t   f i r s t :F JKJ r   ~ �LML I   ~ ���N���� :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_SelectN O��O o    ����� 	0 prefs  ��  ��  M o      ���� $0 fieldnowselected fieldNowSelectedK PQP l  � ���������  ��  ��  Q RSR Z  � �TU����T H   � �VV o   � ����� $0 fieldnowselected fieldNowSelectedU L   � �WW m   � ���
�� boovfals��  ��  S XYX l  � ���������  ��  ��  Y Z[Z O   ��\]\ O   ��^_^ k   ��`` aba n  � �cdc I   � ��������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��  d  f   � �b efe l  � ���������  ��  ��  f ghg l  � ���������  ��  ��  h iji r   � �klk 6  � �mnm n   � �opo 4  � ���q
�� 
butTq m   � ����� p n   � �rsr 4   � ���t
�� 
tabgt m   � ����� s 4   � ���u
�� 
cwinu m   � ����� n =  � �vwv 1   � ���
�� 
titlw m   � �xx �yy  C h a n g el o      ���� 0 changebutton changeButtonj z{z l  � ���������  ��  ��  { |}| l  � ���~��  ~ %  COMMENT is for any field type:    ��� >   C O M M E N T   i s   f o r   a n y   f i e l d   t y p e :} ��� Z   �������� >  � ���� n   � ���� o   � ����� 0 fieldcomment fieldComment� o   � ����� 	0 prefs  � m   � ���
�� 
null� k   ��� ��� Z   � �������� n  � ���� I   � �������� (0 fmgui_textfieldset fmGUI_TextFieldSet� ��� n   � ���� 4   � ����
�� 
txtf� m   � ��� ���  C o m m e n t :� n   � ���� 4   � ����
�� 
tabg� m   � ����� � 4   � ����
�� 
cwin� m   � ����� � ���� n   � ���� o   � ����� 0 fieldcomment fieldComment� o   � ��� 	0 prefs  ��  ��  �  f   � �� I  � ��~��}
�~ .prcsclicnull��� ��� uiel� o   � ��|�| 0 changebutton changeButton�}  ��  ��  � ��� l  � ��{�z�y�{  �z  �y  � ��x� I  ��w��v
�w .sysodelanull��� ��� nmbr� m   � ��� ?�      �v  �x  ��  ��  � ��� l �u�t�s�u  �t  �s  � ��� Z  g���r�q� F  ��� = ��� o  �p�p 0 editmode editMode� m  �� ��� 
 T W E A K� = ��� n  ��� o  �o�o 0 	fieldtype 	fieldType� o  �n�n 	0 prefs  � m  �m
�m 
null� k  c�� ��� l �l���l  � 6 0 just find out what it already is and use that:    � ��� `   j u s t   f i n d   o u t   w h a t   i t   a l r e a d y   i s   a n d   u s e   t h a t :  � ��� r  /��� n  -��� 4  &-�k�
�k 
popB� m  ),�� ��� 
 T y p e :� n  &��� 4  !&�j�
�j 
tabg� m  $%�i�i � 4  !�h�
�h 
cwin� m   �g�g � o      �f�f  0 fieldtypepopup fieldTypePopup� ��e� Z  0c����� = 09��� n  05��� 1  15�d
�d 
valL� o  01�c�c  0 fieldtypepopup fieldTypePopup� m  58�� ���  C a l c u l a t i o n� r  <C��� m  <?�� ���  C a l c u l a t e d� n      ��� o  @B�b�b 0 	fieldtype 	fieldType� o  ?@�a�a 	0 prefs  � ��� = FO��� n  FK��� 1  GK�`
�` 
valL� o  FG�_�_  0 fieldtypepopup fieldTypePopup� m  KN�� ���  S u m m a r y� ��^� r  RY��� m  RU�� ���  S u m m a r y� n      ��� o  VX�]�] 0 	fieldtype 	fieldType� o  UV�\�\ 	0 prefs  �^  � r  \c��� m  \_�� ���  N o r m a l� n      ��� o  `b�[�[ 0 	fieldtype 	fieldType� o  _`�Z�Z 	0 prefs  �e  �r  �q  � ��� l hh�Y�X�W�Y  �X  �W  � ��� Z  h�����V� = hm��� n  hk��� o  ik�U�U 0 	fieldtype 	fieldType� o  hi�T�T 	0 prefs  � m  kl�S
�S 
null� k  p~�� ��� R  p|�R��
�R .ascrerr ****      � ****� m  x{�� ��� 8 P a r a m e t e r   m i s s i n g :   f i e l d T y p e� �Q �P
�Q 
errn  m  tw�O�O �P  � �N l }}�M�L�K�M  �L  �K  �N  �  = �� n  �� o  ���J�J 0 	fieldtype 	fieldType o  ���I�I 	0 prefs   m  �� �		  C a l c u l a t e d 

 k  ��  l ���H�G�F�H  �G  �F    l ���E�E    	 IF CALC:    �    I F   C A L C :  l ���D�D     Field Type = Calculated    � 0   F i e l d   T y p e   =   C a l c u l a t e d  l ���C�C     click "contains Options"    � 2   c l i c k   " c o n t a i n s   O p t i o n s "  l ���B !�B    / ) Data Type: popup "Calculation result is"   ! �"" R   D a t a   T y p e :   p o p u p   " C a l c u l a t i o n   r e s u l t   i s " #$# l ���A%&�A  %   Calc Context Table   & �'' &   C a l c   C o n t e x t   T a b l e$ ()( l ���@*+�@  *   Calculation itself   + �,, &   C a l c u l a t i o n   i t s e l f) -.- l ���?/0�?  /   Do Not Evaluate�   0 �11 "   D o   N o t   E v a l u a t e &. 232 l ���>45�>  4  	 Storage:   5 �66    S t o r a g e :3 787 l ���=9:�=  9 - '	Global, Do Not Store, None/Minimal/All   : �;; N 	 G l o b a l ,   D o   N o t   S t o r e ,   N o n e / M i n i m a l / A l l8 <=< l ���<�;�:�<  �;  �:  = >?> l ���9@A�9  @   FIELD TYPE:   A �BB    F I E L D   T Y P E :? CDC r  ��EFE n  ��GHG 4  ���8I
�8 
popBI m  ��JJ �KK 
 T y p e :H n  ��LML 4  ���7N
�7 
tabgN m  ���6�6 M 4  ���5O
�5 
cwinO m  ���4�4 F o      �3�3  0 fieldtypepopup fieldTypePopupD PQP Z  �ARS�2TR > ��UVU n  ��WXW 1  ���1
�1 
valLX o  ���0�0  0 fieldtypepopup fieldTypePopupV m  ��YY �ZZ  C a l c u l a t i o nS k  �
[[ \]\ n ��^_^ I  ���/`�.�/  0 fmgui_popupset fmGUI_PopupSet` aba o  ���-�-  0 fieldtypepopup fieldTypePopupb c�,c m  ��dd �ee  C a l c u l a t i o n�,  �.  _  f  ��] fgf l ���+�*�)�+  �*  �)  g hih l ���(jk�(  j * $ click CHANGE to save the data type.   k �ll H   c l i c k   C H A N G E   t o   s a v e   t h e   d a t a   t y p e .i mnm n ��opo I  ���'q�&�' B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindowq r�%r n  ��sts 4  ���$u
�$ 
butTu m  ��vv �ww  C h a n g et n  ��xyx 4  ���#z
�# 
tabgz m  ���"�" y 4  ���!{
�! 
cwin{ m  ��� �  �%  �&  p  f  ��n |}| l ������  �  �  } ~~ I �����
� .sysodelanull��� ��� nmbr� m  ���� ?�      �   ��� l ������  �  �  � ��� l ������  � m g if existing field was NOT ALREADY a calc, will get a warning message. Need to handle that possibility.   � ��� �   i f   e x i s t i n g   f i e l d   w a s   N O T   A L R E A D Y   a   c a l c ,   w i l l   g e t   a   w a r n i n g   m e s s a g e .   N e e d   t o   h a n d l e   t h a t   p o s s i b i l i t y .� ��� Z  ������ H  ���� C  ����� n  ����� 1  ���
� 
pnam� 4  ����
� 
cwin� m  ���� � m  ���� ��� & M a n a g e   D a t a b a s e   F o r� k  ��� ��� l ������  � ' ! click OK to confirm the change:    � ��� B   c l i c k   O K   t o   c o n f i r m   t h e   c h a n g e :  � ��� n ����� I  ������ B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ��� n  ����� 4  ����
� 
butT� m  ���� ���  O K� 4  ����
� 
cwin� m  ���� �  �  �  f  ��� ��� l ���
�	��
  �	  �  � ��� I ����
� .sysodelanull��� ��� nmbr� m  ���� ?�      �  � ��� l ����  �  �  �  �  �  � ��� l 		� �����   ��  ��  �  �2  T l A���� k  A�� ��� l ������  �   click Options:    � ���     c l i c k   O p t i o n s :  � ��� n 1��� I  1������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� 6 -��� n  ��� 4 ���
�� 
butT� m  ���� � n  ��� 4  ���
�� 
tabg� m  ���� � 4  ���
�� 
cwin� m  ���� � C  !,��� 1  "&��
�� 
pnam� m  '+�� ���  O p t i o n s��  ��  �  f  � ��� l 22��������  ��  ��  � ��� n 2?��� I  3?������� 20 windowwaituntil_frontis windowWaitUntil_FrontIS� ���� K  3;�� ������� 0 
windowname 
windowName� m  69�� ��� & S p e c i f y   C a l c u l a t i o n��  ��  ��  �  f  23� ���� l @@��������  ��  ��  ��  � B < ALREADY was a Calculation field, so need to click OPTIONS:    � ��� x   A L R E A D Y   w a s   a   C a l c u l a t i o n   f i e l d ,   s o   n e e d   t o   c l i c k   O P T I O N S :  Q ��� l BB��������  ��  ��  � ��� l BB��������  ��  ��  � ��� l BB��������  ��  ��  � ��� Z  Bt������� G  BS��� = BG��� o  BC���� 0 editmode editMode� m  CF�� ���  C O N F O R M� > JO��� n  JM��� o  KM���� 0 calccode calcCode� o  JK���� 	0 prefs  � m  MN��
�� 
null� k  Vp�� ��� l VV������  �   CALCULATION CODE:   � ��� $   C A L C U L A T I O N   C O D E :� ���� n Vp��� I  Wp������� (0 fmgui_textfieldset fmGUI_TextFieldSet� ��� n  Wi��� 4  di���
�� 
txta� m  gh���� � n  Wd��� 4  ]d���
�� 
scra� m  `c���� � 4  W]���
�� 
cwin� m  [\���� � 	 ��	  n  il			 o  jl���� 0 calccode calcCode	 o  ij���� 	0 prefs  ��  ��  �  f  VW��  ��  ��  � 			 l uu��������  ��  ��  	 			 l uu��		��  	 ' ! Calc CONTEXT Table (occurrence):   	 �				 B   C a l c   C O N T E X T   T a b l e   ( o c c u r r e n c e ) :	 	
		
 Z  u�		����	 > uz			 n  ux			 o  vx����  0 calccontexttoc calcContextTOC	 o  uv���� 	0 prefs  	 m  xy��
�� 
null	 n }�			 I  ~���	����  0 fmgui_popupset fmGUI_PopupSet	 			 6 ~�			 n  ~�			 4 ����	
�� 
popB	 m  ������ 	 4  ~���	
�� 
cwin	 m  ������ 	 E  ��			 1  ����
�� 
pnam	 m  ��		 �	 	   c o n t e x t	 	!��	! n  ��	"	#	" o  ������  0 calccontexttoc calcContextTOC	# o  ������ 	0 prefs  ��  ��  	  f  }~��  ��  	 	$	%	$ l ����������  ��  ��  	% 	&	'	& l ����	(	)��  	(   Calc Result TYPE:   	) �	*	* $   C a l c   R e s u l t   T Y P E :	' 	+	,	+ Z  ��	-	.����	- > ��	/	0	/ n  ��	1	2	1 o  ������ 0 datatype dataType	2 o  ������ 	0 prefs  	0 m  ����
�� 
null	. n ��	3	4	3 I  ����	5����  0 fmgui_popupset fmGUI_PopupSet	5 	6	7	6 6 ��	8	9	8 n  ��	:	;	: 4 ����	<
�� 
popB	< m  ������ 	; 4  ����	=
�� 
cwin	= m  ������ 	9 E  ��	>	?	> 1  ����
�� 
pnam	? m  ��	@	@ �	A	A * C a l c u l a t i o n   r e s u l t   i s	7 	B��	B n  ��	C	D	C o  ������ 0 datatype dataType	D o  ������ 	0 prefs  ��  ��  	4  f  ����  ��  	, 	E	F	E l ����������  ��  ��  	F 	G	H	G l ����	I	J��  	I 9 3 Do Not Evaluate if all referenced field are empty:   	J �	K	K f   D o   N o t   E v a l u a t e   i f   a l l   r e f e r e n c e d   f i e l d   a r e   e m p t y :	H 	L	M	L Z  �	N	O����	N > ��	P	Q	P n  ��	R	S	R o  ������  0 alwaysevaluate alwaysEvaluate	S o  ������ 	0 prefs  	Q m  ����
�� 
null	O k  �	T	T 	U	V	U r  ��	W	X	W 6 ��	Y	Z	Y n  ��	[	\	[ 4 ����	]
�� 
chbx	] m  ������ 	\ 4  ����	^
�� 
cwin	^ m  ������ 	Z E  ��	_	`	_ 1  ����
�� 
pnam	` m  ��	a	a �	b	b J n o t   e v a l u a t e   i f   a l l   r e f e r e n c e d   f i e l d s	X o      ���� *0 notevaluatecheckbox notEvaluateCheckbox	V 	c��	c Z  �	d	e��	f	d n  ��	g	h	g o  ������  0 alwaysevaluate alwaysEvaluate	h o  ������ 	0 prefs  	e n �	i	j	i I   ��	k���� &0 fmgui_checkboxset fmGUI_CheckboxSet	k 	l	m	l o   ���� *0 notevaluatecheckbox notEvaluateCheckbox	m 	n��	n m  ����  ��  ��  	j  f  � ��  	f n 		o	p	o I  
��	q���� &0 fmgui_checkboxset fmGUI_CheckboxSet	q 	r	s	r o  
���� *0 notevaluatecheckbox notEvaluateCheckbox	s 	t��	t m  ���� ��  ��  	p  f  	
��  ��  ��  	M 	u	v	u l ��������  ��  ��  	v 	w	x	w l ��	y	z��  	y   Repetitions:    	z �	{	{    R e p e t i t i o n s :  	x 	|	}	| Z  S	~	����	~ G  (	�	�	� = 	�	�	� o  ���� 0 editmode editMode	� m  	�	� �	�	�  C O N F O R M	� > $	�	�	� n  "	�	�	� o  "���� 0 maxrepetition maxRepetition	� o  �� 	0 prefs  	� m  "#�~
�~ 
null	 n +O	�	�	� I  ,O�}	��|�} (0 fmgui_textfieldset fmGUI_TextFieldSet	� 	�	�	� 6 ,F	�	�	� n  ,7	�	�	� 4 27�{	�
�{ 
txtf	� m  56�z�z 	� 4  ,2�y	�
�y 
cwin	� m  01�x�x 	� E  :E	�	�	� 1  ;?�w
�w 
pnam	� m  @D	�	� �	�	�  r e p e t i t i o n s	� 	��v	� n  FK	�	�	� o  GK�u�u 0 maxrepetition maxRepetition	� o  FG�t�t 	0 prefs  �v  �|  	�  f  +,��  ��  	} 	�	�	� l TT�s�r�q�s  �r  �q  	� 	�	�	� l TT�p�o�n�p  �o  �n  	� 	�	�	� l TT�m�l�k�m  �l  �k  	� 	�	�	� Z  T�	�	��j�i	� G  T�	�	�	� G  T	�	�	� G  Tq	�	�	� G  Te	�	�	� = TY	�	�	� o  TU�h�h 0 editmode editMode	� l 	UX	��g�f	� m  UX	�	� �	�	�  C O N F O R M�g  �f  	� > \a	�	�	� n  \_	�	�	� o  ]_�e�e 0 storageglobal storageGlobal	� o  \]�d�d 	0 prefs  	� l 
_`	��c�b	� m  _`�a
�a 
null�c  �b  	� > hm	�	�	� n  hk	�	�	� o  ik�`�` 20 storecalculationresults storeCalculationResults	� o  hi�_�_ 	0 prefs  	� l 
kl	��^�]	� m  kl�\
�\ 
null�^  �]  	� > t{	�	�	� n  ty	�	�	� o  uy�[�[ 0 indexlanguage indexLanguage	� o  tu�Z�Z 	0 prefs  	� l 
yz	��Y�X	� m  yz�W
�W 
null�Y  �X  	� > ��	�	�	� n  ��	�	�	� o  ���V�V 0 	autoindex 	autoIndex	� o  ���U�U 	0 prefs  	� l 
��	��T�S	� m  ���R
�R 
null�T  �S  	� k  ��	�	� 	�	�	� l ���Q	�	��Q  	�   BEGIN: STORAGE OPTIONS   	� �	�	� .   B E G I N :   S T O R A G E   O P T I O N S	� 	�	�	� l ���P�O�N�P  �O  �N  	� 	�	�	� l ���M	�	��M  	�   click Storage Options:    	� �	�	� 0   c l i c k   S t o r a g e   O p t i o n s :  	� 	�	�	� n ��	�	�	� I  ���L	��K�L B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow	� 	��J	� 6 ��	�	�	� n  ��	�	�	� 4 ���I	�
�I 
butT	� m  ���H�H 	� 4  ���G	�
�G 
cwin	� m  ���F�F 	� E  ��	�	�	� 1  ���E
�E 
pnam	� m  ��	�	� �	�	�  S t o r a g e   O p t i o n s�J  �K  	�  f  ��	� 	�	�	� n ��	�	�	� I  ���D	��C�D "0 windowwaituntil windowWaitUntil	� 	��B	� K  ��	�	� �A	�	��A 0 
windowname 
windowName	� m  ��	�	� �	�	� & S t o r a g e   O p t i o n s   f o r	� �@	�	��@  0 windownametest windowNameTest	� m  ��	�	� �	�	�  s t a r t s   w i t h	� �?	��>�? 0 whichwindow whichWindow	� m  ��	�	� �	�	� 
 f r o n t�>  �B  �C  	�  f  ��	� 	�	�	� l ���=�<�;�=  �<  �;  	� 	�	�	� l ���:�9�8�:  �9  �8  	� 	�	�	� r  ��	�	�	� 4  ���7	�
�7 
cwin	� m  ���6�6 	� o      �5�5 0 workingarea workingArea	� 	�
 	� l ���4�3�2�4  �3  �2  
  


 r  ��


 6 ��


 n  ��


 4 ���1
	
�1 
chbx
	 m  ���0�0 
 o  ���/�/ 0 workingarea workingArea
 E  ��




 1  ���.
�. 
pnam
 m  ��

 �

  g l o b a l   s t o r a g e
 o      �-�- .0 globalstoragecheckbox globalStorageCheckbox
 


 r  �


 6 �


 n  ��


 4 ���,

�, 
chbx
 m  ���+�+ 
 o  ���*�* 0 workingarea workingArea
 E  �


 1  ���)
�) 
pnam
 m  � 

 �

  D o   n o t   s t o r e
 o      �(�( (0 donotstorecheckbox doNotStoreCheckbox
 


 l �'�&�%�'  �&  �%  
 


 Z  B

 �$�#
 = 

!
"
! o  �"�" 0 editmode editMode
" m  	
#
# �
$
$  C O N F O R M
  k  >
%
% 
&
'
& l �!
(
)�!  
( F @ These two CANNOT BE NULL if you are making this field CONFORM.    
) �
*
* �   T h e s e   t w o   C A N N O T   B E   N U L L   i f   y o u   a r e   m a k i n g   t h i s   f i e l d   C O N F O R M .  
' 
+
,
+ Z %
-
.� �
- = 
/
0
/ n  
1
2
1 o  �� 0 storageglobal storageGlobal
2 o  �� 	0 prefs  
0 m  �
� 
null
. R  !�
3
4
� .ascrerr ****      � ****
3 m   
5
5 �
6
6 @ s t o r a g e G l o b a l   m u s t   b e   s p e c i f i e d !
4 �
7�
� 
errn
7 m  �� �  �   �  
, 
8�
8 Z &>
9
:��
9 = &+
;
<
; n  &)
=
>
= o  ')�� 20 storecalculationresults storeCalculationResults
> o  &'�� 	0 prefs  
< m  )*�
� 
null
: R  .:�
?
@
� .ascrerr ****      � ****
? m  69
A
A �
B
B T s t o r e C a l c u l a t i o n R e s u l t s   m u s t   b e   s p e c i f i e d !
@ �
C�
� 
errn
C m  25�� �  �  �  �  �$  �#  
 
D
E
D l CC����  �  �  
E 
F
G
F Z  C�
H
I
J
K
H n  CG
L
M
L o  DF�
�
 0 storageglobal storageGlobal
M o  CD�	�	 	0 prefs  
I k  JS
N
N 
O
P
O n JQ
Q
R
Q I  KQ�
S�� &0 fmgui_checkboxset fmGUI_CheckboxSet
S 
T
U
T o  KL�� .0 globalstoragecheckbox globalStorageCheckbox
U 
V�
V m  LM�� �  �  
R  f  JK
P 
W�
W l RR��� �  �  �   �  
J 
X
Y
X H  VZ
Z
Z n  VY
[
\
[ o  WY���� 20 storecalculationresults storeCalculationResults
\ o  VW���� 	0 prefs  
Y 
]��
] k  ]f
^
^ 
_
`
_ n ]d
a
b
a I  ^d��
c���� &0 fmgui_checkboxset fmGUI_CheckboxSet
c 
d
e
d o  ^_���� (0 donotstorecheckbox doNotStoreCheckbox
e 
f��
f m  _`���� ��  ��  
b  f  ]^
` 
g��
g l ee��������  ��  ��  ��  ��  
K l i�
h
i
j
h k  i�
k
k 
l
m
l n ip
n
o
n I  jp��
p���� &0 fmgui_checkboxset fmGUI_CheckboxSet
p 
q
r
q o  jk���� .0 globalstoragecheckbox globalStorageCheckbox
r 
s��
s m  kl����  ��  ��  
o  f  ij
m 
t
u
t n qx
v
w
v I  rx��
x���� &0 fmgui_checkboxset fmGUI_CheckboxSet
x 
y
z
y o  rs���� (0 donotstorecheckbox doNotStoreCheckbox
z 
{��
{ m  st����  ��  ��  
w  f  qr
u 
|
}
| l yy��������  ��  ��  
} 
~

~ l yy��
�
���  
� ; 5 Then see which one of the Indexing choices is needed   
� �
�
� j   T h e n   s e e   w h i c h   o n e   o f   t h e   I n d e x i n g   c h o i c e s   i s   n e e d e d
 
���
� Z  y�
�
�
���
� = y�
�
�
� n  y~
�
�
� o  z~���� (0 storageindexchoice storageIndexChoice
� o  yz���� 	0 prefs  
� m  ~�
�
� �
�
�  N o n e
� k  ��
�
� 
�
�
� n ��
�
�
� I  ����
����� &0 fmgui_checkboxset fmGUI_CheckboxSet
� 
�
�
� n  ��
�
�
� 4  ����
�
�� 
chbx
� m  ��
�
� �
�
�  N o n e   1   o f   3
� o  ������ 0 workingarea workingArea
� 
���
� m  ������ ��  ��  
�  f  ��
� 
���
� l ����������  ��  ��  ��  
� 
�
�
� = ��
�
�
� n  ��
�
�
� o  ������ (0 storageindexchoice storageIndexChoice
� o  ������ 	0 prefs  
� m  ��
�
� �
�
�  M i n i m a l
� 
�
�
� k  ��
�
� 
�
�
� n ��
�
�
� I  ����
����� &0 fmgui_checkboxset fmGUI_CheckboxSet
� 
�
�
� n  ��
�
�
� 4  ����
�
�� 
chbx
� m  ��
�
� �
�
�  M i n i m a l   2   o f   3
� o  ������ 0 workingarea workingArea
� 
���
� m  ������ ��  ��  
�  f  ��
� 
���
� l ����������  ��  ��  ��  
� 
�
�
� = ��
�
�
� n  ��
�
�
� o  ������ (0 storageindexchoice storageIndexChoice
� o  ������ 	0 prefs  
� m  ��
�
� �
�
�  A l l
� 
���
� k  ��
�
� 
�
�
� n ��
�
�
� I  ����
����� &0 fmgui_checkboxset fmGUI_CheckboxSet
� 
�
�
� n  ��
�
�
� 4  ����
�
�� 
chbx
� m  ��
�
� �
�
�  A l l   3   o f   3
� o  ������ 0 workingarea workingArea
� 
���
� m  ������ ��  ��  
�  f  ��
� 
���
� l ����������  ��  ��  ��  ��  ��  ��  
i 2 , NOT EITHER OF THOSE, SO UNCHECK THEM FIRST:   
j �
�
� X   N O T   E I T H E R   O F   T H O S E ,   S O   U N C H E C K   T H E M   F I R S T :
G 
�
�
� l ����������  ��  ��  
� 
�
�
� Z  �
�
�����
� > ��
�
�
� n  ��
�
�
� o  ������ 0 indexlanguage indexLanguage
� o  ������ 	0 prefs  
� m  ����
�� 
null
� n �
�
�
� I  ���
�����  0 fmgui_popupset fmGUI_PopupSet
� 
�
�
� 6 ��
�
�
� n  ��
�
�
� 4 ����
�
�� 
popB
� m  ������ 
� o  ������ 0 workingarea workingArea
� E  ��
�
�
� 1  ����
�� 
pnam
� m  ��
�
� �
�
�   D e f a u l t   l a n g u a g e
� 
���
� n  ��
�
�
� o  ������ 0 indexlanguage indexLanguage
� o  ������ 	0 prefs  ��  ��  
�  f  ����  ��  
� 
�
�
� l ��������  ��  ��  
� 
�
�
� Z  H
�
�����
� > 
�
�
� n  
�
�
� o  ���� 0 	autoindex 	autoIndex
� o  ���� 	0 prefs  
� m  ��
�� 
null
� k  D
�
� 
�
�
� r  '
�
�
� 6 %
�
�
� n  
�
�
� 4 ��
�
�� 
chbx
� m  ���� 
� o  ���� 0 workingarea workingArea
� E  $
�
�
� 1  ��
�� 
pnam
� m  #
�
� �    c r e a t e   i n d e x e s
� o      ���� &0 autoindexcheckbox autoIndexCheckbox
�  Z  (B�� n  (. o  )-���� 0 	autoindex 	autoIndex o  ()���� 	0 prefs   n 18	 I  28��
���� &0 fmgui_checkboxset fmGUI_CheckboxSet
  o  23���� &0 autoindexcheckbox autoIndexCheckbox �� m  34���� ��  ��  	  f  12��   n ;B I  <B������ &0 fmgui_checkboxset fmGUI_CheckboxSet  o  <=���� &0 autoindexcheckbox autoIndexCheckbox �� m  =>����  ��  ��    f  ;< �� l CC��������  ��  ��  ��  ��  ��  
�  l II��������  ��  ��    l II����   %  click OK for Storage Options:     � >   c l i c k   O K   f o r   S t o r a g e   O p t i o n s :    n Ic I  Jc�� ���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow  !��! 6 J_"#" n  JP$%$ 4 KP��&
�� 
butT& m  NO���� % o  JK���� 0 workingarea workingArea# E  S^'(' 1  TX��
�� 
pnam( m  Y])) �**  O K��  ��    f  IJ +,+ l dd��������  ��  ��  , -.- n d/0/ I  e��1���� "0 windowwaituntil windowWaitUntil1 2�2 K  e{33 �~45�~ 0 
windowname 
windowName4 m  hk66 �77 & S t o r a g e   O p t i o n s   f o r5 �}89�}  0 windownametest windowNameTest8 m  nq:: �;; & d o e s   n o t   s t a r t   w i t h9 �|<�{�| 0 whichwindow whichWindow< m  tw== �>> 
 f r o n t�{  �  ��  0  f  de. ?@? l ���z�y�x�z  �y  �x  @ A�wA l ���vBC�v  B   END OF: STORAGE OPTIONS   C �DD 0   E N D   O F :   S T O R A G E   O P T I O N S�w  �j  �i  	� EFE l ���u�t�s�u  �t  �s  F GHG l ��IJKI r  ��LML 4  ���rN
�r 
cwinN m  ���q�q M o      �p�p 0 workingarea workingAreaJ + % need reference to NEW first window.    K �OO J   n e e d   r e f e r e n c e   t o   N E W   f i r s t   w i n d o w .  H PQP l ���o�n�m�o  �n  �m  Q RSR l ���lTU�l  T - ' click OK to save Specify Calculation:    U �VV N   c l i c k   O K   t o   s a v e   S p e c i f y   C a l c u l a t i o n :  S WXW n ��YZY I  ���k[�j�k B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow[ \�i\ 6 ��]^] n  ��_`_ 4 ���ha
�h 
butTa m  ���g�g ` o  ���f�f 0 workingarea workingArea^ E  ��bcb 1  ���e
�e 
pnamc m  ��dd �ee  O K�i  �j  Z  f  ��X fgf l ���d�c�b�d  �c  �b  g hih n ��jkj I  ���al�`�a "0 windowwaituntil windowWaitUntill m�_m K  ��nn �^op�^ 0 
windowname 
windowNameo m  ��qq �rr & S p e c i f y   C a l c u l a t i o np �]st�]  0 windownametest windowNameTests m  ��uu �vv   d o e s   n o t   c o n t a i nt �\w�[�\ 0 whichwindow whichWindoww m  ��xx �yy 
 f r o n t�[  �_  �`  k  f  ��i z{z l ���Z�Y�X�Z  �Y  �X  { |}| L  ��~~ m  ���W
�W boovtrue} � l ���V�U�T�V  �U  �T  � ��� l ���S�R�Q�S  �R  �Q  � ��P� l ���O�N�M�O  �N  �M  �P   ��� = ����� n  ����� o  ���L�L 0 	fieldtype 	fieldType� o  ���K�K 	0 prefs  � m  ���� ���  S u m m a r y� ��� k  ���� ��� l ���J�I�H�J  �I  �H  � ��� l ���G���G  �   IF SUMMARY:   � ���    I F   S U M M A R Y :� ��� l ���F���F  �   Field Type = Summary   � ��� *   F i e l d   T y p e   =   S u m m a r y� ��� l ���E���E  �   click "contains Options"   � ��� 2   c l i c k   " c o n t a i n s   O p t i o n s "� ��� l ���D���D  � / ) Data Type: popup "Calculation result is"   � ��� R   D a t a   T y p e :   p o p u p   " C a l c u l a t i o n   r e s u l t   i s "� ��� l ���C���C  �   Calc Context Table   � ��� &   C a l c   C o n t e x t   T a b l e� ��� l ���B���B  �   Calculation itself   � ��� &   C a l c u l a t i o n   i t s e l f� ��� l ���A���A  �   Do Not Evaluate�   � ��� "   D o   N o t   E v a l u a t e &� ��� l ���@���@  �  	 Storage:   � ���    S t o r a g e :� ��� l ���?���?  � - '	Global, Do Not Store, None/Minimal/All   � ��� N 	 G l o b a l ,   D o   N o t   S t o r e ,   N o n e / M i n i m a l / A l l� ��� l ���>�=�<�>  �=  �<  � ��� l ���;���;  � p j if existing field was NOT ALREADY a summary, will get a warning message. Need to handle that possibility.   � ��� �   i f   e x i s t i n g   f i e l d   w a s   N O T   A L R E A D Y   a   s u m m a r y ,   w i l l   g e t   a   w a r n i n g   m e s s a g e .   N e e d   t o   h a n d l e   t h a t   p o s s i b i l i t y .� ��� l ���:�9�8�:  �9  �8  � ��� l ���7���7  �   NOT YET SUPPORTED ! ! !    � ��� 2   N O T   Y E T   S U P P O R T E D   !   !   !  � ��� l ���6���6  �   NOT YET SUPPORTED ! ! !    � ��� 2   N O T   Y E T   S U P P O R T E D   !   !   !  � ��� l ���5���5  �   NOT YET SUPPORTED ! ! !    � ��� 2   N O T   Y E T   S U P P O R T E D   !   !   !  � ��� l ���4�3�2�4  �3  �2  � ��1� l ���0�/�.�0  �/  �.  �1  � ��� = ����� n  ����� o  ���-�- 0 	fieldtype 	fieldType� o  ���,�, 	0 prefs  � m  ���� ���  N o r m a l� ��+� k  ���� ��� l ���*���*  � / )ELSE IF NOT CALC (Field Type is Normal):	   � ��� R E L S E   I F   N O T   C A L C   ( F i e l d   T y p e   i s   N o r m a l ) : 	� ��� l ���)���)  �  
 Data Type   � ���    D a t a   T y p e� ��� l ���(���(  �   click "contains Options"   � ��� 2   c l i c k   " c o n t a i n s   O p t i o n s "� ��� l ���'���'  �   TAB: Storage:   � ���    T A B :   S t o r a g e :� ��� l ���&���&  � - '	Global, Do Not Store, None/Minimal/All   � ��� N 	 G l o b a l ,   D o   N o t   S t o r e ,   N o n e / M i n i m a l / A l l� ��� l ���%���%  �   TAB: Auto-Enter   � �       T A B :   A u t o - E n t e r�  l ���$�$   - '	Creation, Modification, Serial, Data,     � N 	 C r e a t i o n ,   M o d i f i c a t i o n ,   S e r i a l ,   D a t a ,    l ���#	�#    	Calculated Value:    	 �

 & 	 C a l c u l a t e d   V a l u e :    l ���"�"     		Calc Context Table    � *   	 	 C a l c   C o n t e x t   T a b l e  l ���!�!     		Calculation itself    � *   	 	 C a l c u l a t i o n   i t s e l f  l ��� �      		Do Not Evaluate�    � &   	 	 D o   N o t   E v a l u a t e &  l ����   % 	Do not replace existing value�    � > 	 D o   n o t   r e p l a c e   e x i s t i n g   v a l u e &   l ���!"�  !   TAB: Validation:   " �## "   T A B :   V a l i d a t i o n :  $%$ l ���&'�  &  	[Skip for now]   ' �((  	 [ S k i p   f o r   n o w ]% )*) l ���+,�  +   Prohibit modification�   , �-- .   P r o h i b i t   m o d i f i c a t i o n &* ./. l ������  �  �  / 010 l ������  �  �  1 232 l ������  �  �  3 454 l ���67�  6   field DATA TYPE:   7 �88 "   f i e l d   D A T A   T Y P E :5 9:9 Z  �|;<��; G  ��=>= = ��?@? o  ���� 0 editmode editMode@ m  ��AA �BB  C O N F O R M> > ��CDC n  ��EFE o  ���� 0 datatype dataTypeF o  ���� 	0 prefs  D m  ���
� 
null< k  �xGG HIH r  �JKJ n  �LML 4  �N
� 
popBN m  
OO �PP 
 T y p e :M n  �QRQ 4  ��
S
�
 
tabgS m  �	�	 R 4  ���T
� 
cwinT m  ���� K o      �� 0 datatypepopup dataTypePopupI U�U Z  xVW��V > XYX n  Z[Z 1  �
� 
valL[ o  �� 0 datatypepopup dataTypePopupY n  \]\ o  � �  0 datatype dataType] o  ���� 	0 prefs  W k  t^^ _`_ n #aba I  #��c����  0 fmgui_popupset fmGUI_PopupSetc ded o  ���� 0 datatypepopup dataTypePopupe f��f n  ghg o  ���� 0 datatype dataTypeh o  ���� 	0 prefs  ��  ��  b  f  ` iji l $$��������  ��  ��  j klk l $$��mn��  m * $ click CHANGE to save the data type.   n �oo H   c l i c k   C H A N G E   t o   s a v e   t h e   d a t a   t y p e .l pqp n $;rsr I  %;��t���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindowt u��u n  %7vwv 4  07��x
�� 
butTx m  36yy �zz  C h a n g ew n  %0{|{ 4  +0��}
�� 
tabg} m  ./���� | 4  %+��~
�� 
cwin~ m  )*���� ��  ��  s  f  $%q � l <<��������  ��  ��  � ��� I <C�����
�� .sysodelanull��� ��� nmbr� m  <?�� ?�      ��  � ��� l DD��������  ��  ��  � ��� l DD������  � 9 3 MIGHT open a dialog warning about type conversion:   � ��� f   M I G H T   o p e n   a   d i a l o g   w a r n i n g   a b o u t   t y p e   c o n v e r s i o n :� ���� Z  Dt������� H  DS�� C  DR��� n  DN��� 1  JN��
�� 
pnam� 4  DJ���
�� 
cwin� m  HI���� � m  NQ�� ��� & M a n a g e   D a t a b a s e   F o r� k  Vp�� ��� l VV������  � ' ! click OK to confirm the change:    � ��� B   c l i c k   O K   t o   c o n f i r m   t h e   c h a n g e :  � ��� n Vh��� I  Wh������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� n  Wd��� 4  ]d���
�� 
butT� m  `c�� ���  O K� 4  W]���
�� 
cwin� m  [\���� ��  ��  �  f  VW� ��� l ii��������  ��  ��  � ���� I ip�����
�� .sysodelanull��� ��� nmbr� m  il�� ?�      ��  ��  ��  ��  ��  �  �  �  �  �  : ��� l }}��������  ��  ��  � ��� l }}��������  ��  ��  � ��� l }}������  �   click Options:    � ���     c l i c k   O p t i o n s :  � ��� n }���� I  ~�������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� 6 ~���� n  ~���� 4 �����
�� 
butT� m  ������ � n  ~���� 4  �����
�� 
tabg� m  ������ � 4  ~����
�� 
cwin� m  ������ � C  ����� 1  ����
�� 
pnam� m  ���� ���  O p t i o n s��  ��  �  f  }~� ��� n ����� I  ��������� "0 windowwaituntil windowWaitUntil� ���� K  ���� ������ 0 
windowname 
windowName� m  ���� ���  O p t i o n s   f o r� ������  0 windownametest windowNameTest� m  ���� ���  s t a r t s   w i t h� ������� 0 whichwindow whichWindow� m  ���� ��� 
 f r o n t��  ��  ��  �  f  ��� ��� l ����������  ��  ��  � ��� l ����������  ��  ��  � ��� l ��������  � P J--------------------------------------------------------------------------   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l ��������  �   NORMAL FIELD   � ���    N O R M A L   F I E L D� ��� l ��������  � P J--------------------------------------------------------------------------   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� r  ����� n  ����� 4  �����
�� 
tabg� m  ������ � 4  �����
�� 
cwin� m  ������ � o      ���� 0 workingarea workingArea� ��� l ����������  ��  ��  � ��� l ����������  ��  ��  � ��� l ��������  � P J--------------------------------------------------------------------------   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -�    l ������     STORAGE TAB:    �    S T O R A G E   T A B :  l ������   P J--------------------------------------------------------------------------    �		 � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

 l ����������  ��  ��    l ����������  ��  ��    l ����������  ��  ��    Z  �	���� G  � G  �� G  �� G  �� = �� o  ������ 0 editmode editMode l 	������ m  �� �    C O N F O R M��  ��   > ��!"! n  ��#$# o  ������ 0 storageglobal storageGlobal$ o  ������ 	0 prefs  " l 
��%����% m  ����
�� 
null��  ��   > ��&'& n  ��()( o  ������ (0 storageindexchoice storageIndexChoice) o  ������ 	0 prefs  ' l 
��*����* m  ����
�� 
null��  ��   > ��+,+ n  ��-.- o  ������ 0 indexlanguage indexLanguage. o  ������ 	0 prefs  , l 
��/����/ m  ����
�� 
null��  ��   > �010 n  �232 o  ����� 0 	autoindex 	autoIndex3 o  ������ 	0 prefs  1 l 
4����4 m  ��
�� 
null��  ��   k  
	55 676 l 

��~�}�  �~  �}  7 898 I 
�|:�{
�| .prcsclicnull��� ��� uiel: n  
;<; 4  �z=
�z 
radB= m  >> �??  S t o r a g e< o  
�y�y 0 workingarea workingArea�{  9 @A@ l �x�w�v�x  �w  �v  A BCB l �uDE�u  D   Repetitions:   E �FF    R e p e t i t i o n s :C GHG n 6IJI I  6�tK�s�t (0 fmgui_textfieldset fmGUI_TextFieldSetK LML 6 -NON n  PQP 4 �rR
�r 
txtfR m  �q�q Q o  �p�p 0 workingarea workingAreaO E  !,STS 1  "&�o
�o 
pnamT m  '+UU �VV  r e p e t i t i o n sM W�nW n  -2XYX o  .2�m�m 0 maxrepetition maxRepetitionY o  -.�l�l 	0 prefs  �n  �s  J  f  H Z[Z l 77�k�j�i�k  �j  �i  [ \]\ l 77�h^_�h  ^   Global:   _ �``    G l o b a l :] aba r  7Ncdc 6 7Lefe n  7=ghg 4 8=�gi
�g 
chbxi m  ;<�f�f h o  78�e�e 0 workingarea workingAreaf E  @Kjkj 1  AE�d
�d 
pnamk m  FJll �mm  g l o b a l   s t o r a g ed o      �c�c .0 globalstoragecheckbox globalStorageCheckboxb non l OO�b�a�`�b  �a  �`  o pqp Z  Osrs�_�^r = OTtut o  OP�]�] 0 editmode editModeu m  PSvv �ww  C O N F O R Ms k  Woxx yzy l WW�\{|�\  { D > This CANNOT BE NULL, if we are making field conform!!!!!					   | �}} |   T h i s   C A N N O T   B E   N U L L ,   i f   w e   a r e   m a k i n g   f i e l d   c o n f o r m ! ! ! ! ! 	 	 	 	 	z ~�[~ Z Wo��Z�Y = W\��� n  WZ��� o  XZ�X�X 0 storageglobal storageGlobal� o  WX�W�W 	0 prefs  � m  Z[�V
�V 
null� R  _k�U��
�U .ascrerr ****      � ****� m  gj�� ��� @ s t o r a g e G l o b a l   m u s t   b e   s p e c i f i e d !� �T��S
�T 
errn� m  cf�R�R �S  �Z  �Y  �[  �_  �^  q ��� l tt�Q�P�O�Q  �P  �O  � ��� l tt�N�M�L�N  �M  �L  � ��� l tt�K�J�I�K  �J  �I  � ��� Z  t����H�� n  tx��� o  uw�G�G 0 storageglobal storageGlobal� o  tu�F�F 	0 prefs  � k  {��� ��� l {{�E�D�C�E  �D  �C  � ��� Z  {����B�A� > {���� n  {���� 1  |��@
�@ 
valL� o  {|�?�? .0 globalstoragecheckbox globalStorageCheckbox� m  ���>�> � k  ���� ��� l ���=���=  � ( " should be GLOBAL, but is NOT yet:   � ��� D   s h o u l d   b e   G L O B A L ,   b u t   i s   N O T   y e t :� ��� n ����� I  ���<��;�< *0 clickobjectbycoords clickObjectByCoords� ��:� o  ���9�9 .0 globalstoragecheckbox globalStorageCheckbox�:  �;  �  f  ��� ��� I ���8��7
�8 .sysodelanull��� ��� nmbr� m  ���� ?�      �7  � ��� l ���6�5�4�6  �5  �4  � ��� l ���3���3  � G A MIGHT open a dialog warning about change to global status:						   � ��� �   M I G H T   o p e n   a   d i a l o g   w a r n i n g   a b o u t   c h a n g e   t o   g l o b a l   s t a t u s : 	 	 	 	 	 	� ��2� Z  �����1�0� H  ���� C  ����� n  ����� 1  ���/
�/ 
pnam� 4  ���.�
�. 
cwin� m  ���-�- � m  ���� ���  O p t i o n s   f o r� k  ���� ��� l ���,���,  � ' ! click OK to confirm the change:    � ��� B   c l i c k   O K   t o   c o n f i r m   t h e   c h a n g e :  � ��� n ����� I  ���+��*�+ B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ��)� n  ����� 4  ���(�
�( 
butT� m  ���� ���  O K� 4  ���'�
�' 
cwin� m  ���&�& �)  �*  �  f  ��� ��� l ���%�$�#�%  �$  �#  � ��� l ���"���"  � < 6 wait until back to normal "Options for Field" window:   � ��� l   w a i t   u n t i l   b a c k   t o   n o r m a l   " O p t i o n s   f o r   F i e l d "   w i n d o w :� ��� n ����� I  ���!�� �! "0 windowwaituntil windowWaitUntil� ��� K  ���� ���� 0 
windowname 
windowName� m  ���� ���  O p t i o n s   f o r� ����  0 windownametest windowNameTest� m  ���� ���  s t a r t s   w i t h� ���� 0 whichwindow whichWindow� m  ���� ��� 
 f r o n t�  �  �   �  f  ��� ��� l ������  �  �  �  �1  �0  �2  �B  �A  � ��� l ������  �  �  � ��� l ������  �  �  �  �H  � l ������ k  ���� ��� Z  �H����� > ����� n  ����� 1  ���
� 
valL� o  ���� .0 globalstoragecheckbox globalStorageCheckbox� m  ����  � k  �D��    l ���
�	��
  �	  �    l ����   $  IS GLOBAL, but should NOT be:    � <   I S   G L O B A L ,   b u t   s h o u l d   N O T   b e :  n ��	
	 I  ����� *0 clickobjectbycoords clickObjectByCoords � o  ���� .0 globalstoragecheckbox globalStorageCheckbox�  �  
  f  ��  I ����
� .sysodelanull��� ��� nmbr m  �� ?�      �    l ��� �����   ��  ��    l ������   G A MIGHT open a dialog warning about change to global status:						    � �   M I G H T   o p e n   a   d i a l o g   w a r n i n g   a b o u t   c h a n g e   t o   g l o b a l   s t a t u s : 	 	 	 	 	 	  Z  �B���� H  � C  �
 n  �  1  ��
�� 
pnam  4  ���!
�� 
cwin! m   ����  m  	"" �##  O p t i o n s   f o r k  >$$ %&% l ��'(��  ' ' ! click OK to confirm the change:    ( �)) B   c l i c k   O K   t o   c o n f i r m   t h e   c h a n g e :  & *+* n  ,-, I   ��.���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow. /��/ n  010 4  ��2
�� 
butT2 m  33 �44  O K1 4  ��5
�� 
cwin5 m  ���� ��  ��  -  f  + 676 l !!��������  ��  ��  7 898 l !!��:;��  : < 6 wait until back to normal "Options for Field" window:   ; �<< l   w a i t   u n t i l   b a c k   t o   n o r m a l   " O p t i o n s   f o r   F i e l d "   w i n d o w :9 =>= n !<?@? I  "<��A���� "0 windowwaituntil windowWaitUntilA B��B K  "8CC ��DE�� 0 
windowname 
windowNameD m  %(FF �GG  O p t i o n s   f o rE ��HI��  0 windownametest windowNameTestH m  +.JJ �KK  s t a r t s   w i t hI ��L���� 0 whichwindow whichWindowL m  14MM �NN 
 f r o n t��  ��  ��  @  f  !"> O��O l ==��������  ��  ��  ��  ��  ��   P��P l CC��������  ��  ��  ��  �  �  � QRQ l II��������  ��  ��  R STS l II��������  ��  ��  T UVU l II��WX��  W ; 5 Then see which one of the Indexing choices is needed   X �YY j   T h e n   s e e   w h i c h   o n e   o f   t h e   I n d e x i n g   c h o i c e s   i s   n e e d e dV Z��Z Z  I�[\]��[ = IR^_^ n  IN`a` o  JN���� (0 storageindexchoice storageIndexChoicea o  IJ���� 	0 prefs  _ m  NQbb �cc  N o n e\ k  Uedd efe n Ucghg I  Vc��i���� &0 fmgui_checkboxset fmGUI_CheckboxSeti jkj n  V^lml 4  W^��n
�� 
chbxn m  Z]oo �pp  N o n e   1   o f   3m o  VW���� 0 workingarea workingAreak q��q m  ^_���� ��  ��  h  f  UVf r��r o  de���� 0 fdsfdsf  ��  ] sts = hquvu n  hmwxw o  im���� (0 storageindexchoice storageIndexChoicex o  hi���� 	0 prefs  v m  mpyy �zz  M i n i m a lt {|{ k  t�}} ~~ n t���� I  u�������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� n  u}��� 4  v}���
�� 
chbx� m  y|�� ���  M i n i m a l   2   o f   3� o  uv���� 0 workingarea workingArea� ���� m  }~���� ��  ��  �  f  tu ���� l ����������  ��  ��  ��  | ��� = ����� n  ����� o  ������ (0 storageindexchoice storageIndexChoice� o  ������ 	0 prefs  � m  ���� ���  A l l� ���� k  ���� ��� n ����� I  ��������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� n  ����� 4  �����
�� 
chbx� m  ���� ���  A l l   3   o f   3� o  ������ 0 workingarea workingArea� ���� m  ������ ��  ��  �  f  ��� ���� l ����������  ��  ��  ��  ��  ��  ��  � ' ! NOT global, SO UNCHECK it FIRST:   � ��� B   N O T   g l o b a l ,   S O   U N C H E C K   i t   F I R S T :� ��� l ����������  ��  ��  � ��� l ��������  �   Index Language:    � ��� "   I n d e x   L a n g u a g e :  � ��� Z  ��������� > ����� n  ����� o  ������ 0 indexlanguage indexLanguage� o  ������ 	0 prefs  � m  ����
�� 
null� n ����� I  ���������  0 fmgui_popupset fmGUI_PopupSet� ��� 6 ����� n  ����� 4 �����
�� 
popB� m  ������ � o  ������ 0 workingarea workingArea� E  ����� 1  ����
�� 
pnam� m  ���� ���   D e f a u l t   l a n g u a g e� ���� n  ����� o  ������ 0 indexlanguage indexLanguage� o  ������ 	0 prefs  ��  ��  �  f  ����  ��  � ��� l ����������  ��  ��  � ��� l ��������  � %  Create indexes automatically:    � ��� >   C r e a t e   i n d e x e s   a u t o m a t i c a l l y :  � ��� Z  �	������� > ����� n  ����� o  ������ 0 	autoindex 	autoIndex� o  ������ 	0 prefs  � m  ����
�� 
null� k  �	�� ��� r  ����� 6 ����� n  ����� 4 �����
�� 
chbx� m  ������ � o  ������ 0 workingarea workingArea� E  ����� 1  ����
�� 
pnam� m  ���� ���  c r e a t e   i n d e x e s� o      ���� &0 autoindexcheckbox autoIndexCheckbox� ��� Z  �	������ n  ����� o  ������ 0 	autoindex 	autoIndex� o  ������ 	0 prefs  � n 		��� I  		������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  		���� &0 autoindexcheckbox autoIndexCheckbox� ���� m  		���� ��  ��  �  f  		��  � n 		��� I  		������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  		���� &0 autoindexcheckbox autoIndexCheckbox� ���� m  		����  ��  ��  �  f  		� ���� l 		��������  ��  ��  ��  ��  ��  � ��� l 		����~��  �  �~  � ��}� l 		�|���|  �   END OF: Storage Tab.   � ��� *   E N D   O F :   S t o r a g e   T a b .�}  ��  ��   ��� l 		�{�z�y�{  �z  �y  � ��� l 		�x �x    P J--------------------------------------------------------------------------    � � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -�  l 		�w�w     NORMAL FIELD    �    N O R M A L   F I E L D 	 l 		�v
�v  
 U O--------------------------------------------------------------------------					    � � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 	 	 	 	 		  l 		�u�u     AUTO-ENTER TAB:    �     A U T O - E N T E R   T A B :  l 		�t�t   U O--------------------------------------------------------------------------					    � � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 	 	 	 	 	  r  		, n  		* 4  	%	*�s
�s 
tabg m  	(	)�r�r  4  		%�q
�q 
cwin m  	#	$�p�p  o      �o�o 0 workingarea workingArea   I 	-	9�n!�m
�n .prcsclicnull��� ��� uiel! n  	-	5"#" 4  	.	5�l$
�l 
radB$ m  	1	4%% �&&  A u t o - E n t e r# o  	-	.�k�k 0 workingarea workingArea�m    '(' l 	:	:�j�i�h�j  �i  �h  ( )*) l 	:	:�g+,�g  +   Serial Number:   , �--    S e r i a l   N u m b e r :* ./. Z  	:
01�f�e0 > 	:	A232 n  	:	?454 o  	;	?�d�d 0 
autoserial 
autoSerial5 o  	:	;�c�c 	0 prefs  3 m  	?	@�b
�b 
null1 Z  	D
67�a86 = 	D	Q9:9 n  	D	M;<; m  	I	M�`
�` 
pcls< n  	D	I=>= o  	E	I�_�_ 0 
autoserial 
autoSerial> o  	D	E�^�^ 	0 prefs  : m  	M	P�]
�] 
bool7 n 	T	b?@? I  	U	b�\A�[�\ &0 fmgui_checkboxset fmGUI_CheckboxSetA BCB n  	U	]DED 4  	V	]�ZF
�Z 
chbxF m  	Y	\GG �HH  S e r i a l   n u m b e rE o  	U	V�Y�Y 0 workingarea workingAreaC I�XI m  	]	^�W�W  �X  �[  @  f  	T	U�a  8 k  	e
JJ KLK l 	e	e�VMN�V  M * $ autoSerial is a RECORD of settings:   N �OO H   a u t o S e r i a l   i s   a   R E C O R D   o f   s e t t i n g s :L PQP n 	e	sRSR I  	f	s�UT�T�U &0 fmgui_checkboxset fmGUI_CheckboxSetT UVU n  	f	nWXW 4  	g	n�SY
�S 
chbxY m  	j	mZZ �[[  S e r i a l   n u m b e rX o  	f	g�R�R 0 workingarea workingAreaV \�Q\ m  	n	o�P�P �Q  �T  S  f  	e	fQ ]^] l 	t	t�O�N�M�O  �N  �M  ^ _`_ l 	t	t�L�K�J�L  �K  �J  ` aba n 	t	�cdc I  	u	��Ie�H�I (0 fmgui_textfieldset fmGUI_TextFieldSete fgf 6 	u	�hih n  	u	{jkj 4 	v	{�Gl
�G 
txtfl m  	y	z�F�F k o  	u	v�E�E 0 workingarea workingAreai E  	~	�mnm 1  		��D
�D 
pnamn m  	�	�oo �pp  n e x t   v a l u eg q�Cq n  	�	�rsr o  	�	��B�B 0 autonextvalue autoNextValues n  	�	�tut o  	�	��A�A 0 
autoserial 
autoSerialu o  	�	��@�@ 	0 prefs  �C  �H  d  f  	t	ub vwv l 	�	��?�>�=�?  �>  �=  w xyx n 	�	�z{z I  	�	��<|�;�< (0 fmgui_textfieldset fmGUI_TextFieldSet| }~} 6 	�	�� n  	�	���� 4 	�	��:�
�: 
txtf� m  	�	��9�9 � o  	�	��8�8 0 workingarea workingArea� E  	�	���� 1  	�	��7
�7 
pnam� m  	�	��� ���  i n c r e m e n t~ ��6� n  	�	���� o  	�	��5�5 0 autoincrement autoIncrement� n  	�	���� o  	�	��4�4 0 
autoserial 
autoSerial� o  	�	��3�3 	0 prefs  �6  �;  {  f  	�	�y ��� l 	�	��2�1�0�2  �1  �0  � ��� Z  	�	�����/� = 	�	���� n  	�	���� o  	�	��.�. 0 autogenerate autoGenerate� n  	�	���� o  	�	��-�- 0 
autoserial 
autoSerial� o  	�	��,�, 	0 prefs  � m  	�	��� ���  O n C r e a t i o n� n 	�	���� I  	�	��+��*�+ &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� n  	�	���� 4  	�	��)�
�) 
chbx� m  	�	��� ��� $ O n   c r e a t i o n   1   o f   2� o  	�	��(�( 0 workingarea workingArea� ��'� m  	�	��&�& �'  �*  �  f  	�	�� ��� = 	�	���� n  	�	���� o  	�	��%�% 0 autogenerate autoGenerate� n  	�	���� o  	�	��$�$ 0 
autoserial 
autoSerial� o  	�	��#�# 	0 prefs  � m  	�	��� ���  O n C o m m i t� ��"� n 	�	���� I  	�	��!�� �! &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� n  	�	���� 4  	�	���
� 
chbx� m  	�	��� ���   O n   c o m m i t   2   o f   2� o  	�	��� 0 workingarea workingArea� ��� m  	�	��� �  �   �  f  	�	��"  �/  � ��� l 
 
 ����  �  �  �  �f  �e  / ��� l 

����  �  �  � ��� l 

����  �  �  � ��� l 

����  � A ; Special Value (creation,modification,last visited record):   � ��� v   S p e c i a l   V a l u e   ( c r e a t i o n , m o d i f i c a t i o n , l a s t   v i s i t e d   r e c o r d ) :� ��� Z  
������ > 

��� n  

��� o  

�� .0 autoenterspecialvalue autoEnterSpecialValue� o  

�� 	0 prefs  � m  

�
� 
null� k  
��� ��� l 

����  � � � autoEnterSpecialValue: keywords used in FM-XML: PreviousRecord, CreationAccountName, CreationUserName,CreationTimestamp, ModificationAccountName, et al.   � ���2   a u t o E n t e r S p e c i a l V a l u e :   k e y w o r d s   u s e d   i n   F M - X M L :   P r e v i o u s R e c o r d ,   C r e a t i o n A c c o u n t N a m e ,   C r e a t i o n U s e r N a m e , C r e a t i o n T i m e s t a m p ,   M o d i f i c a t i o n A c c o u n t N a m e ,   e t   a l .� ��� Z  
�����
� = 

��� n  

��� o  

�	�	 .0 autoenterspecialvalue autoEnterSpecialValue� o  

�� 	0 prefs  � m  

�� ���  P r e v i o u s R e c o r d� k  

9�� ��� n 

7��� I  

7���� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� 6 

2��� n  

#��� 4 

#��
� 
chbx� m  
!
"�� � o  

�� 0 workingarea workingArea� E  
&
1��� 1  
'
+�
� 
pnam� m  
,
0�� ���  l a s t   v i s i t e d� ��� m  
2
3� �  �  �  �  f  

� ���� l 
8
8��������  ��  ��  ��  � ��� C  
<
E��� n  
<
A��� o  
=
A���� .0 autoenterspecialvalue autoEnterSpecialValue� o  
<
=���� 	0 prefs  � m  
A
D�� ���  C r e a t i o n� ��� k  
H
��� ��� Z  
H
� ��  = 
H
Q n  
H
M o  
I
M���� .0 autoenterspecialvalue autoEnterSpecialValue o  
H
I���� 	0 prefs   m  
M
P �   C r e a t i o n U s e r N a m e r  
T
Y	
	 m  
T
W �  N a m e
 o      ���� 0 
menuchoice 
menuChoice  = 
\
e n  
\
a o  
]
a���� .0 autoenterspecialvalue autoEnterSpecialValue o  
\
]���� 	0 prefs   m  
a
d �  C r e a t i o n N a m e  r  
h
m m  
h
k �  N a m e o      ���� 0 
menuchoice 
menuChoice  = 
p
y n  
p
u  o  
q
u���� .0 autoenterspecialvalue autoEnterSpecialValue  o  
p
q���� 	0 prefs   m  
u
x!! �"" & C r e a t i o n A c c o u n t N a m e #$# r  
|
�%&% m  
|
'' �((  A c c o u n t   N a m e& o      ���� 0 
menuchoice 
menuChoice$ )*) = 
�
�+,+ n  
�
�-.- o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValue. o  
�
����� 	0 prefs  , m  
�
�// �00 " C r e a t i o n T i m e s t a m p* 121 r  
�
�343 m  
�
�55 �66 2 T i m e s t a m p   ( D a t e   a n d   T i m e )4 o      ���� 0 
menuchoice 
menuChoice2 787 = 
�
�9:9 n  
�
�;<; o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValue< o  
�
����� 	0 prefs  : m  
�
�== �>>  C r e a t i o n T i m e8 ?@? r  
�
�ABA m  
�
�CC �DD  T i m eB o      ���� 0 
menuchoice 
menuChoice@ EFE = 
�
�GHG n  
�
�IJI o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValueJ o  
�
����� 	0 prefs  H m  
�
�KK �LL  C r e a t i o n D a t eF M��M r  
�
�NON m  
�
�PP �QQ  D a t eO o      ���� 0 
menuchoice 
menuChoice��  ��  � RSR n 
�
�TUT I  
�
���V����  0 fmgui_popupset fmGUI_PopupSetV WXW n  
�
�YZY 4  
�
���[
�� 
popB[ m  
�
�\\ �]]  C r e a t i o nZ o  
�
����� 0 workingarea workingAreaX ^��^ o  
�
����� 0 
menuchoice 
menuChoice��  ��  U  f  
�
�S _��_ l 
�
���������  ��  ��  ��  � `a` C  
�
�bcb n  
�
�ded o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValuee o  
�
����� 	0 prefs  c m  
�
�ff �gg  M o d i f i c a t i o na hih k  
�kjj klk Z  
�Zmno��m = 
�
�pqp n  
�
�rsr o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValues o  
�
����� 	0 prefs  q m  
�
�tt �uu ( M o d i f i c a t i o n U s e r N a m en r  
�
�vwv m  
�
�xx �yy  N a m ew o      ���� 0 
menuchoice 
menuChoiceo z{z = 
�
�|}| n  
�
�~~ o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValue o  
�
����� 	0 prefs  } m  
�
��� ���   M o d i f i c a t i o n N a m e{ ��� r  ��� m  �� ���  N a m e� o      ���� 0 
menuchoice 
menuChoice� ��� = 	��� n  	��� o  
���� .0 autoenterspecialvalue autoEnterSpecialValue� o  	
���� 	0 prefs  � m  �� ��� . M o d i f i c a t i o n A c c o u n t N a m e� ��� r  ��� m  �� ���  A c c o u n t   N a m e� o      ���� 0 
menuchoice 
menuChoice� ��� = &��� n  "��� o  "���� .0 autoenterspecialvalue autoEnterSpecialValue� o  ���� 	0 prefs  � m  "%�� ��� * M o d i f i c a t i o n T i m e s t a m p� ��� r  ).��� m  ),�� ��� 2 T i m e s t a m p   ( D a t e   a n d   T i m e )� o      ���� 0 
menuchoice 
menuChoice� ��� = 1:��� n  16��� o  26���� .0 autoenterspecialvalue autoEnterSpecialValue� o  12���� 	0 prefs  � m  69�� ���   M o d i f i c a t i o n T i m e� ��� r  =B��� m  =@�� ���  T i m e� o      ���� 0 
menuchoice 
menuChoice� ��� = EN��� n  EJ��� o  FJ���� .0 autoenterspecialvalue autoEnterSpecialValue� o  EF���� 	0 prefs  � m  JM�� ���   M o d i f i c a t i o n D a t e� ���� r  QV��� m  QT�� ���  D a t e� o      ���� 0 
menuchoice 
menuChoice��  ��  l ��� n [i��� I  \i�������  0 fmgui_popupset fmGUI_PopupSet� ��� n  \d��� 4  ]d���
�� 
popB� m  `c�� ���  M o d i f i c a t i o n� o  \]���� 0 workingarea workingArea� ���� o  de���� 0 
menuchoice 
menuChoice��  ��  �  f  [\� ��� l jj��������  ��  ��  � ���� l jj��������  ��  ��  ��  i ��� = nw��� n  ns��� o  os���� .0 autoenterspecialvalue autoEnterSpecialValue� o  no���� 	0 prefs  � m  sv�� ���  N O N E� ��� k  z��� ��� l zz������  � : 4 need to make sure NO special values are checked on:   � ��� h   n e e d   t o   m a k e   s u r e   N O   s p e c i a l   v a l u e s   a r e   c h e c k e d   o n :� ��� n z���� I  {�������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� 6 {���� n  {���� 4 |����
�� 
chbx� m  ����� � o  {|���� 0 workingarea workingArea� = ����� 1  ����
�� 
titl� m  ���� ���  C r e a t i o n� ���� m  ������  ��  ��  �  f  z{� ��� n ����� I  ��������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� 6 ����� n  ����� 4 �����
�� 
chbx� m  ������ � o  ������ 0 workingarea workingArea� = ����� 1  ����
�� 
titl� m  ���� ���  M o d i f i c a t i o n�  ��  m  ������  ��  ��  �  f  ���  n �� I  �������� &0 fmgui_checkboxset fmGUI_CheckboxSet  6 ��	 n  ��

 4 ����
�� 
chbx m  ������  o  ������ 0 workingarea workingArea	 E  �� 1  ����
�� 
pnam m  �� �  l a s t   v i s i t e d �� m  ������  ��  ��    f  �� �� l ����������  ��  ��  ��  �  = �� n  �� o  ������ .0 autoenterspecialvalue autoEnterSpecialValue o  ������ 	0 prefs   m  ����
�� 
null �� l ������   * $ do not change any of the checkboxes    � H   d o   n o t   c h a n g e   a n y   o f   t h e   c h e c k b o x e s��  �
  �  l ����������  ��  ��   �� l ����������  ��  ��  ��  �  �  �  !  l ����������  ��  ��  ! "#" l ����$%��  $   Constant:    % �&&    C o n s t a n t :  # '(' Z  �R)*����) > ��+,+ n  ��-.- o  ������ *0 autoenterisconstant autoEnterIsConstant. o  ������ 	0 prefs  , m  ����
�� 
null* k  �N// 010 r  �	232 6 �454 n  ��676 4 ����8
�� 
chbx8 m  ������ 7 o  ������ 0 workingarea workingArea5 E  �9:9 1  � ��
�� 
pnam: m  ;; �<<  D a t a3 o      ���� 0 datacheckbox dataCheckbox1 =>= Z  
L?@�A? n  
BCB o  �~�~ *0 autoenterisconstant autoEnterIsConstantC o  
�}�} 	0 prefs  @ k  BDD EFE n GHG I  �|I�{�| &0 fmgui_checkboxset fmGUI_CheckboxSetI JKJ o  �z�z 0 datacheckbox dataCheckboxK L�yL m  �x�x �y  �{  H  f  F M�wM Z  BNO�vPN = "QRQ n   STS o   �u�u .0 autoenterconstantdata autoEnterConstantDataT o  �t�t 	0 prefs  R m   !�s
�s 
nullO l %%�rUV�r  U 7 1 Possibly null if autoEnterIsConstant is false...   V �WW b   P o s s i b l y   n u l l   i f   a u t o E n t e r I s C o n s t a n t   i s   f a l s e . . .�v  P n )BXYX I  *B�qZ�p�q (0 fmgui_textfieldset fmGUI_TextFieldSetZ [\[ n  *9]^] 4  29�o_
�o 
txta_ m  58`` �aa 
 D a t a :^ n  *2bcb 4  +2�nd
�n 
scrad m  .1ee �ff 
 D a t a :c o  *+�m�m 0 workingarea workingArea\ g�lg n  9>hih o  :>�k�k .0 autoenterconstantdata autoEnterConstantDatai o  9:�j�j 	0 prefs  �l  �p  Y  f  )*�w  �  A n ELjkj I  FL�il�h�i &0 fmgui_checkboxset fmGUI_CheckboxSetl mnm o  FG�g�g 0 datacheckbox dataCheckboxn o�fo m  GH�e�e  �f  �h  k  f  EF> pqp l MM�d�c�b�d  �c  �b  q rsr l MM�a�`�_�a  �`  �_  s t�^t l MM�]�\�[�]  �\  �[  �^  ��  ��  ( uvu l SS�Z�Y�X�Z  �Y  �X  v wxw Z  Sbyz�W�Vy > SZ{|{ n  SX}~} o  TX�U�U &0 autoenterislookup autoEnterIsLookup~ o  ST�T�T 	0 prefs  | m  XY�S
�S 
nullz k  ]] ��� l ]]�R���R  �   NOT YET SUPPORTED!!!!!	   � ��� 0   N O T   Y E T   S U P P O R T E D ! ! ! ! ! 	� ��� l ]]�Q���Q  �   NOT YET SUPPORTED!!!!!	   � ��� 0   N O T   Y E T   S U P P O R T E D ! ! ! ! ! 	� ��P� l ]]�O���O  � $  NOT YET SUPPORTED!!!!!							   � ��� <   N O T   Y E T   S U P P O R T E D ! ! ! ! ! 	 	 	 	 	 	 	�P  �W  �V  x ��� l cc�N�M�L�N  �M  �L  � ��� l cc�K�J�I�K  �J  �I  � ��� l cc�H���H  �   AutoEnter Calculation:    � ��� 0   A u t o E n t e r   C a l c u l a t i o n :  � ��� Z  c���G�F� > cj��� n  ch��� o  dh�E�E 00 autoenteriscalculation autoEnterIsCalculation� o  cd�D�D 	0 prefs  � m  hi�C
�C 
null� k  m�� ��� Z  m���B�� H  ms�� n  mr��� o  nr�A�A 00 autoenteriscalculation autoEnterIsCalculation� o  mn�@�@ 	0 prefs  � k  v��� ��� l vv�?���?  � + % Need to make sure it is NOT checked:   � ��� J   N e e d   t o   m a k e   s u r e   i t   i s   N O T   c h e c k e d :� ��� n v���� I  w��>��=�> &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� n  w��� 4  x�<�
�< 
chbx� m  {~�� ���   C a l c u l a t e d   v a l u e� o  wx�;�; 0 workingarea workingArea� ��:� m  ��9�9  �:  �=  �  f  vw� ��8� l ���7�6�5�7  �6  �5  �8  �B  � l ����� k  ��� ��� r  ����� n  ����� 4  ���4�
�4 
chbx� m  ���� ���   C a l c u l a t e d   v a l u e� o  ���3�3 0 workingarea workingArea� o      �2�2 .0 autoentercalccheckbox autoEnterCalcCheckbox� ��� l ���1���1  � G A if the checkbox is already checked, need to click Specify button   � ��� �   i f   t h e   c h e c k b o x   i s   a l r e a d y   c h e c k e d ,   n e e d   t o   c l i c k   S p e c i f y   b u t t o n� ��� l ���0���0  � ^ X if not already checked, checking it opens the window, so use special function for click   � ��� �   i f   n o t   a l r e a d y   c h e c k e d ,   c h e c k i n g   i t   o p e n s   t h e   w i n d o w ,   s o   u s e   s p e c i a l   f u n c t i o n   f o r   c l i c k� ��� Z  �����/�� > ����� n  ����� 1  ���.
�. 
valL� o  ���-�- .0 autoentercalccheckbox autoEnterCalcCheckbox� m  ���,�, � n ����� I  ���+��*�+ B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ��)� o  ���(�( .0 autoentercalccheckbox autoEnterCalcCheckbox�)  �*  �  f  ���/  � k  ���� ��� l ���'���'  � \ V there are TWO buttons named "Specify�" - the first is for CALC, second is for lookup:   � ��� �   t h e r e   a r e   T W O   b u t t o n s   n a m e d   " S p e c i f y & "   -   t h e   f i r s t   i s   f o r   C A L C ,   s e c o n d   i s   f o r   l o o k u p :� ��&� n ����� I  ���%��$�% B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ��#� 6 ����� n  ����� 4 ���"�
�" 
butT� m  ���!�! � o  ��� �  0 workingarea workingArea� C  ����� 1  ���
� 
pnam� m  ���� ���  S p e c i f y�#  �$  �  f  ���&  � ��� l ������  �  �  � ��� l ������  � + % wait for Specify Calculation window:   � ��� J   w a i t   f o r   S p e c i f y   C a l c u l a t i o n   w i n d o w :� ��� n ����� I  ������ 20 windowwaituntil_frontis windowWaitUntil_FrontIS�  �  K  �� ��� 0 
windowname 
windowName m  �� � & S p e c i f y   C a l c u l a t i o n�  �  �  �  f  ���  l ������  �  �    r  ��	
	 4  ���
� 
cwin m  ���� 
 o      �� 0 workingarea workingArea  l ������  �  �    l ����     CALCULATION CODE:    � $   C A L C U L A T I O N   C O D E :  l ����
�	�  �
  �	    Z  ��� = �� n  �� 1  ���
� 
leng n  �� o  ���� &0 autoentercalccode autoEnterCalcCode o  ���� 	0 prefs   m  ����   k  ��   !"! l  ���#$�  # � � if for some reason an empty string is specified, we want to force an error in FM's syntax checker for the validation calc box instead of silently allowing an empty string as the validation calc.    $ �%%�   i f   f o r   s o m e   r e a s o n   a n   e m p t y   s t r i n g   i s   s p e c i f i e d ,   w e   w a n t   t o   f o r c e   a n   e r r o r   i n   F M ' s   s y n t a x   c h e c k e r   f o r   t h e   v a l i d a t i o n   c a l c   b o x   i n s t e a d   o f   s i l e n t l y   a l l o w i n g   a n   e m p t y   s t r i n g   a s   t h e   v a l i d a t i o n   c a l c .  " &�& r  ��'(' m  ��)) �** i f   (   / *   a u t o - e n t e r   c a l c   w a s   s p e c i f i e d   a s   a n   e m p t y   s t r i n g   r a t h e r   t h a n   a   n u l l   v a l u e   i n d i c a t i n g   a   b u g   i n   t h e   s c r i p t   r u n n i n g   t h e   s e t u p   t o o l .   * /   )( o      �� 20 autoentercalccode_value autoEnterCalcCode_VALUE�  �   r  ��+,+ n  ��-.- o  ��� �  &0 autoentercalccode autoEnterCalcCode. o  ������ 	0 prefs  , o      ���� 20 autoentercalccode_value autoEnterCalcCode_VALUE /0/ l ����������  ��  ��  0 121 n �343 I  ���5���� (0 fmgui_textfieldset fmGUI_TextFieldSet5 676 n  �
898 4  
��:
�� 
txta: m  	���� 9 n  �;<; 4  ���=
�� 
scra= m  ���� < 4  ����>
�� 
cwin> m  ������ 7 ?��? o  
���� 20 autoentercalccode_value autoEnterCalcCode_VALUE��  ��  4  f  ��2 @A@ l ��������  ��  ��  A BCB l ��������  ��  ��  C DED l ��FG��  F ' ! Calc CONTEXT Table (occurrence):   G �HH B   C a l c   C O N T E X T   T a b l e   ( o c c u r r e n c e ) :E IJI Z  ;KL����K > MNM n  OPO o  ���� 20 autoentercalccontexttoc autoEnterCalcContextTOCP o  ���� 	0 prefs  N m  ��
�� 
nullL n 7QRQ I  7��S����  0 fmgui_popupset fmGUI_PopupSetS TUT 6 0VWV n  !XYX 4 !��Z
�� 
popBZ m   ���� Y o  ���� 0 workingarea workingAreaW E  $/[\[ 1  %)��
�� 
pnam\ m  *.]] �^^  c o n t e x tU _��_ n  03`a` o  13���� 20 autoentercalccontexttoc autoEnterCalcContextTOCa o  01���� 	0 prefs  ��  ��  R  f  ��  ��  J bcb l <<��������  ��  ��  c ded l <<��fg��  f 9 3 Do Not Evaluate if all referenced field are empty:   g �hh f   D o   N o t   E v a l u a t e   i f   a l l   r e f e r e n c e d   f i e l d   a r e   e m p t y :e iji Z  <xkl����k > <Amnm n  <?opo o  =?����  0 alwaysevaluate alwaysEvaluatep o  <=���� 	0 prefs  n m  ?@��
�� 
nulll k  Dtqq rsr r  D[tut 6 DYvwv n  DJxyx 4 EJ��z
�� 
chbxz m  HI���� y o  DE���� 0 workingarea workingAreaw E  MX{|{ 1  NR��
�� 
pnam| m  SW}} �~~ J n o t   e v a l u a t e   i f   a l l   r e f e r e n c e d   f i e l d su o      ���� *0 notevaluatecheckbox notEvaluateCheckboxs �� Z  \t������ n  \`��� o  ]_����  0 alwaysevaluate alwaysEvaluate� o  \]���� 	0 prefs  � n cj��� I  dj������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  de���� *0 notevaluatecheckbox notEvaluateCheckbox� ���� m  ef����  ��  ��  �  f  cd��  � n mt��� I  nt������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  no���� *0 notevaluatecheckbox notEvaluateCheckbox� ���� m  op���� ��  ��  �  f  mn��  ��  ��  j ��� l yy��������  ��  ��  � ��� l yy��������  ��  ��  � ��� l yy������  � - ' click OK to save Specify Calculation:    � ��� N   c l i c k   O K   t o   s a v e   S p e c i f y   C a l c u l a t i o n :  � ��� n y���� I  z�������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� 6 z���� n  z���� 4 {����
�� 
butT� m  ~���� � o  z{���� 0 workingarea workingArea� E  ����� 1  ����
�� 
pnam� m  ���� ���  O K��  ��  �  f  yz� ��� l ����������  ��  ��  � ��� n ����� I  ��������� "0 windowwaituntil windowWaitUntil� ���� K  ���� ������ 0 
windowname 
windowName� m  ���� ��� & S p e c i f y   C a l c u l a t i o n� ������  0 windownametest windowNameTest� m  ���� ���   d o e s   n o t   c o n t a i n� ������� 0 whichwindow whichWindow� m  ���� ��� 
 f r o n t��  ��  ��  �  f  ��� ��� l ����������  ��  ��  � ��� r  ����� n  ����� 4  �����
�� 
tabg� m  ������ � 4  �����
�� 
cwin� m  ������ � o      ���� 0 workingarea workingArea� ��� l ����������  ��  ��  � ��� l ��������  � 7 1 Do not replace existing value of field (if any):   � ��� b   D o   n o t   r e p l a c e   e x i s t i n g   v a l u e   o f   f i e l d   ( i f   a n y ) :� ��� Z  �������� > ����� n  ����� o  ������ 00 overwriteexistingvalue overwriteExistingValue� o  ������ 	0 prefs  � m  ����
�� 
null� k  � �� ��� r  ����� 6 ����� n  ����� 4 �����
�� 
chbx� m  ������ � o  ������ 0 workingarea workingArea� E  ����� 1  ����
�� 
pnam� m  ���� ��� . D o   n o t   r e p l a c e   e x i s t i n g� o      ���� @0 overwriteexistingvaluecheckbox overwriteExistingValueCheckbox� ���� Z  � ������ n  ����� o  ������ 00 overwriteexistingvalue overwriteExistingValue� o  ������ 	0 prefs  � n ����� I  ��������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  ������ @0 overwriteexistingvaluecheckbox overwriteExistingValueCheckbox� ���� m  ������  ��  ��  �  f  ����  � n � ��� I  � ������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  ������ @0 overwriteexistingvaluecheckbox overwriteExistingValueCheckbox� ���� m  ������ ��  ��  �  f  ����  ��  ��  � ��� l ��������  ��  ��  � ���� l ��~�}�  �~  �}  ��  �   there IS a Calc:   � ��� "   t h e r e   I S   a   C a l c :� ��|� l �{�z�y�{  �z  �y  �|  �G  �F  � ��� l �x�w�v�x  �w  �v  � ��� l �u�t�s�u  �t  �s  � � � l �r�r   8 2 Prohibit modification of value during data entry:    � d   P r o h i b i t   m o d i f i c a t i o n   o f   v a l u e   d u r i n g   d a t a   e n t r y :   Z  S�q�p > 	 n  

 o  �o�o 0 allowediting allowEditing o  �n�n 	0 prefs  	 m  �m
�m 
null k  O  r  0 6 , n   4 �l
�l 
chbx m  �k�k  o  �j�j 0 workingarea workingArea E   + 1  !%�i
�i 
pnam m  &* � * P r o h i b i t   m o d i f i c a t i o n o      �h�h *0 prohibitmodcheckbox prohibitModCheckbox �g Z  1O�f n  17 o  26�e�e 0 allowediting allowEditing o  12�d�d 	0 prefs   n :C !  I  ;C�c"�b�c &0 fmgui_checkboxset fmGUI_CheckboxSet" #$# o  ;>�a�a *0 prohibitmodcheckbox prohibitModCheckbox$ %�`% m  >?�_�_  �`  �b  !  f  :;�f   n FO&'& I  GO�^(�]�^ &0 fmgui_checkboxset fmGUI_CheckboxSet( )*) o  GJ�\�\ *0 prohibitmodcheckbox prohibitModCheckbox* +�[+ m  JK�Z�Z �[  �]  '  f  FG�g  �q  �p   ,-, l TT�Y�X�W�Y  �X  �W  - ./. l TT�V�U�T�V  �U  �T  / 010 l TT�S23�S  2 P J--------------------------------------------------------------------------   3 �44 � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -1 565 l TT�R78�R  7   NORMAL FIELD   8 �99    N O R M A L   F I E L D6 :;: l TT�Q<=�Q  < U O--------------------------------------------------------------------------					   = �>> � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 	 	 	 	 	; ?@? l TT�PAB�P  A   VALIDATION TAB:   B �CC     V A L I D A T I O N   T A B :@ DED l TT�OFG�O  F T N--------------------------------------------------------------------------				   G �HH � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 	 	 	 	E IJI l TT�N�M�L�N  �M  �L  J KLK l TT�KMN�K  M 8 2 MOST VALIDATION FEATURES NOT YET SUPPORTED ! ! !    N �OO d   M O S T   V A L I D A T I O N   F E A T U R E S   N O T   Y E T   S U P P O R T E D   !   !   !  L PQP l TT�JRS�J  R 8 2 MOST VALIDATION FEATURES NOT YET SUPPORTED ! ! !    S �TT d   M O S T   V A L I D A T I O N   F E A T U R E S   N O T   Y E T   S U P P O R T E D   !   !   !  Q UVU l TT�IWX�I  W 8 2 MOST VALIDATION FEATURES NOT YET SUPPORTED ! ! !    X �YY d   M O S T   V A L I D A T I O N   F E A T U R E S   N O T   Y E T   S U P P O R T E D   !   !   !  V Z[Z l TT�H�G�F�H  �G  �F  [ \]\ I T`�E^�D
�E .prcsclicnull��� ��� uiel^ n  T\_`_ 4  U\�Ca
�C 
radBa m  X[bb �cc  V a l i d a t i o n` o  TU�B�B 0 workingarea workingArea�D  ] ded l aa�A�@�?�A  �@  �?  e fgf Z  aEhi�>�=h > ahjkj n  aflml o  bf�<�< (0 validationcalccode validationCalcCodem o  ab�;�; 	0 prefs  k m  fg�:
�: 
nulli k  kAnn opo l kk�9�8�7�9  �8  �7  p qrq n kxsts I  lx�6u�5�6 B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindowu v�4v n  ltwxw 4  mt�3y
�3 
butTy m  pszz �{{  S p e c i f y &x o  lm�2�2 0 workingarea workingArea�4  �5  t  f  klr |}| l yy�1�0�/�1  �0  �/  } ~~ l yy�.���.  � + % wait for Specify Calculation window:   � ��� J   w a i t   f o r   S p e c i f y   C a l c u l a t i o n   w i n d o w : ��� n y���� I  z��-��,�- 20 windowwaituntil_frontis windowWaitUntil_FrontIS� ��+� K  z��� �*��)�* 0 
windowname 
windowName� m  }��� ��� & S p e c i f y   C a l c u l a t i o n�)  �+  �,  �  f  yz� ��� l ���(�'�&�(  �'  �&  � ��� r  ����� 4  ���%�
�% 
cwin� m  ���$�$ � o      �#�# 0 workingarea workingArea� ��� l ���"�!� �"  �!  �   � ��� l ������  �   CALCULATION CODE:    � ��� &   C A L C U L A T I O N   C O D E :  � ��� Z  ������� = ����� n  ����� 1  ���
� 
leng� n  ����� o  ���� (0 validationcalccode validationCalcCode� o  ���� 	0 prefs  � m  ����  � k  ���� ��� l  ������  � � � if for some reason an empty string is specified, we want to force an error in FM's syntax checker for the validation calc box instead of silently allowing an empty string as the validation calc.    � ����   i f   f o r   s o m e   r e a s o n   a n   e m p t y   s t r i n g   i s   s p e c i f i e d ,   w e   w a n t   t o   f o r c e   a n   e r r o r   i n   F M ' s   s y n t a x   c h e c k e r   f o r   t h e   v a l i d a t i o n   c a l c   b o x   i n s t e a d   o f   s i l e n t l y   a l l o w i n g   a n   e m p t y   s t r i n g   a s   t h e   v a l i d a t i o n   c a l c .  � ��� r  ����� m  ���� ��� i f   (   / *   v a l i d a t i o n   c a l c   w a s   s p e c i f i e d   a s   a n   e m p t y   s t r i n g   r a t h e r   t h a n   a   n u l l   v a l u e   i n d i c a t i n g   a   b u g   i n   t h e   s c r i p t   r u n n i n g   t h e   s e t u p   t o o l .   * /   )� o      �� 40 validationcalccode_value validationCalcCode_VALUE�  �  � r  ����� n  ����� o  ���� (0 validationcalccode validationCalcCode� o  ���� 	0 prefs  � o      �� 40 validationcalccode_value validationCalcCode_VALUE� ��� l ������  �  �  � ��� n ����� I  ������ (0 fmgui_textfieldset fmGUI_TextFieldSet� ��� n  ����� 4  ����
� 
txta� m  ���� � n  ����� 4  ����
� 
scra� m  ���� � 4  ���
�
�
 
cwin� m  ���	�	 � ��� o  ���� 40 validationcalccode_value validationCalcCode_VALUE�  �  �  f  ��� ��� l ������  �  �  � ��� l ������  �  �  � ��� l ��� ���   � ' ! Calc CONTEXT Table (occurrence):   � ��� B   C a l c   C O N T E X T   T a b l e   ( o c c u r r e n c e ) :� ��� Z  ��������� > ����� n  ����� o  ������ 40 validationcalccontexttoc validationCalcContextTOC� o  ������ 	0 prefs  � m  ����
�� 
null� n ����� I  ���������  0 fmgui_popupset fmGUI_PopupSet� ��� 6 ����� n  ����� 4 �����
�� 
popB� m  ������ � o  ������ 0 workingarea workingArea� E  ����� 1  ����
�� 
pnam� m  ���� ���  c o n t e x t� ���� n  ����� o  ������ 40 validationcalccontexttoc validationCalcContextTOC� o  ������ 	0 prefs  ��  ��  �  f  ����  ��  � ��� l ����������  ��  ��  � ��� l ��������  � - ' click OK to save Specify Calculation:    � ��� N   c l i c k   O K   t o   s a v e   S p e c i f y   C a l c u l a t i o n :  � ��� n ���� I  �������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� 6 ���� n  ���� 4 ����
�� 
butT� m   ���� � o  ������ 0 workingarea workingArea� E  ��� 1  
��
�� 
pnam� m  �� ���  O K��  ��  �  f  ��� ��� l ��������  ��  ��  �    n 1 I  1������ "0 windowwaituntil windowWaitUntil �� K  - ���� 0 
windowname 
windowName m  		 �

 & S p e c i f y   C a l c u l a t i o n ����  0 windownametest windowNameTest m   # �   d o e s   n o t   c o n t a i n ������ 0 whichwindow whichWindow m  &) � 
 f r o n t��  ��  ��    f    l 22��������  ��  ��    r  2? n  2= 4  8=��
�� 
tabg m  ;<����  4  28��
�� 
cwin m  67����  o      ���� 0 workingarea workingArea  l @@��������  ��  ��   �� l @@�� ��     END OF: Validation.      �!! *   E N D   O F :   V a l i d a t i o n .  ��  �>  �=  g "#" l FF��������  ��  ��  # $%$ l FF��������  ��  ��  % &'& l FF��()��  ( #  SAVE NORMAL FIELD - OPTIONS:   ) �** :   S A V E   N O R M A L   F I E L D   -   O P T I O N S :' +,+ l FF��-.��  - #  click OK for field Options:    . �// :   c l i c k   O K   f o r   f i e l d   O p t i o n s :  , 010 n Fe232 I  Ge��4���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow4 5��5 6 Ga676 n  GR898 4 MR��:
�� 
butT: m  PQ���� 9 4  GM��;
�� 
cwin; m  KL���� 7 E  U`<=< 1  VZ��
�� 
pnam= m  [_>> �??  O K��  ��  3  f  FG1 @A@ l ff��������  ��  ��  A BCB n f�DED I  g���F���� "0 windowwaituntil windowWaitUntilF G��G K  g}HH ��IJ�� 0 
windowname 
windowNameI m  jmKK �LL  O p t i o n s   f o rJ ��MN��  0 windownametest windowNameTestM m  psOO �PP & d o e s   n o t   s t a r t   w i t hN ��Q���� 0 whichwindow whichWindowQ m  vyRR �SS 
 f r o n t��  ��  ��  E  f  fgC TUT l ����������  ��  ��  U VWV l ����������  ��  ��  W XYX L  ��ZZ m  ����
�� boovtrueY [\[ l ����������  ��  ��  \ ]^] l ����������  ��  ��  ^ _��_ l ����������  ��  ��  ��  �+  �V  � `a` l ����������  ��  ��  a bcb l ����������  ��  ��  c ded L  ��ff m  ����
�� boovtruee g��g l ����������  ��  ��  ��  _ 4   � ���h
�� 
pcaph m   � �ii �jj , F i l e M a k e r   P r o   A d v a n c e d] m   � �kk�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  [ lml l ����������  ��  ��  m non l ����������  ��  ��  o pqp l ����������  ��  ��  q r�r l  ���st�  s � �   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   
DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   
   t �uuB       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       
 D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       
�  : R      �vw
� .ascrerr ****      � ****v o      �� 0 errmsg errMsgw �x�
� 
errnx o      �� 0 errnum errNum�  ; R  ���yz
� .ascrerr ****      � ****y b  ��{|{ b  ��}~} b  ��� m  ���� ��� 0 C o u l d n ' t   e d i t   a   F i e l d   -  � I  ������  0 coercetostring coerceToString� ��� o  ���� 	0 prefs  �  �  ~ m  ���� ���    -  | o  ���� 0 errmsg errMsgz ���
� 
errn� o  ���� 0 errnum errNum�  8 ��� l ����~�}�  �~  �}  � ��|� l ���{�z�y�{  �z  �y  �|  � ��� l     �x�w�v�x  �w  �v  � ��� i   C F��� I      �u��t�u :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_Select� ��s� o      �r�r 	0 prefs  �s  �t  � k    ��� ��� l     �q���q  �   version 1.2   � ���    v e r s i o n   1 . 2� ��� l     �p�o�n�p  �o  �n  � ��� r     
��� K     �� �m���m 0 	fieldname 	fieldName� m    �l
�l 
null� �k���k 0 	tablename 	tableName� m    �j
�j 
null� �i��h�i 0 altpatterns altPatterns� m    �g
�g 
null�h  � o      �f�f 0 defaultprefs defaultPrefs� ��� r    ��� b    ��� o    �e�e 	0 prefs  � o    �d�d 0 defaultprefs defaultPrefs� o      �c�c 	0 prefs  � ��� l   �b�a�`�b  �a  �`  � ��� l   �_���_  �   CONSTANTS:    � ���    C O N S T A N T S :  � ��� r    ��� b    ��� b    ��� b    ��� m    �� ��� @ t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "� o    �^
�^ 
ret � l 	  ��]�\� m    �� ��� b t e l l   a p p l i c a t i o n   p r o c e s s   " F i l e M a k e r   P r o   A d v a n c e d "�]  �\  � o    �[
�[ 
ret � o      �Z�Z  0 testcodeheader testCodeHeader� ��� r    ��� m    �� ���  s e l e c t   (� o      �Y�Y 0 
selectcode 
selectCode� ��� r    "��� m     �� ��� � f i r s t   r o w   o f   ( t a b l e   1   o f   s c r o l l   a r e a   1   o f   t a b   g r o u p   1   o f   w i n d o w   1 )� o      �X�X 0 
rowrefcode 
rowRefCode� ��� r   # &��� m   # $�� ���    w h o s e  � o      �W�W 0 	whosecode 	whoseCode� ��� r   ' *��� m   ' (�� ��� , v a l u e   o f   s t a t i c   t e x t   1� o      �V�V *0 fieldnameobjectcode fieldNameObjectCode� ��� l  + +�U���U  � ( " (then some test will be inserted)   � ��� D   ( t h e n   s o m e   t e s t   w i l l   b e   i n s e r t e d )� ��� r   + .��� m   + ,�� ��� 
   a n d  � o      �T�T $0 betweentestscode betweenTestsCode� ��� l  / /�S���S  � 7 1 (then possibly some other test will be inserted)   � ��� b   ( t h e n   p o s s i b l y   s o m e   o t h e r   t e s t   w i l l   b e   i n s e r t e d )� ��� r   / 2��� m   / 0�� ���  )� o      �R�R &0 afteralltestscode afterAllTestsCode� ��� r   3 <��� b   3 :��� b   3 8��� b   3 6��� o   3 4�Q
�Q 
ret � m   4 5�� ���  e n d   t e l l� o   6 7�P
�P 
ret � m   8 9�� ���  e n d   t e l l� o      �O�O  0 testcodefooter testCodeFooter� ��� l  = =�N�M�L�N  �M  �L  � � � Q   =� k   @�  l  @ @�K�J�I�K  �J  �I    I   @ G�H	�G�H >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocus	 
�F
 J   A C�E�E  �F  �G    l  H H�D�C�B�D  �C  �B    Z  H \�A�@ >  H M n   H K o   I K�?�? 0 	tablename 	tableName o   H I�>�> 	0 prefs   m   K L�=
�= 
null I   P X�<�;�< @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable �: n   Q T o   R T�9�9 0 	tablename 	tableName o   Q R�8�8 	0 prefs  �:  �;  �A  �@    l  ] ]�7�6�5�7  �6  �5    I   ] b�4�3�2�4 (0 fmgui_appfrontmost fmGUI_AppFrontMost�3  �2    l  c c�1�0�/�1  �0  �/     Q   c�!"#! k   f �$$ %&% O   f �'(' O   l �)*) k   w �++ ,-, l  w w�.�-�,�.  �-  �,  - .�+. I  w ��*/�)
�* .miscslctnull���     uiel/ l  w �0�(�'0 6  w �121 n   w �343 4  � ��&5
�& 
crow5 m   � ��%�% 4 l  w �6�$�#6 n   w �787 4   � ��"9
�" 
tabB9 m   � ��!�! 8 n   w �:;: 4   � �� <
�  
scra< m   � ��� ; n   w �=>= 4   } ��?
� 
tabg? m   � ��� > 4   w }�@
� 
cwin@ m   { |�� �$  �#  2 =  � �ABA n   � �CDC 1   � ��
� 
valLD 4   � ��E
� 
sttxE m   � ��� B n   � �FGF o   � ��� 0 	fieldname 	fieldNameG o   � ��� 	0 prefs  �(  �'  �)  �+  * 4   l t�H
� 
pcapH m   p sII �JJ , F i l e M a k e r   P r o   A d v a n c e d( m   f iKK�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  & L�L L   � �MM m   � ��
� boovtrue�  " R      �NO
� .ascrerr ****      � ****N o      �� 0 errmsg errMsgO �P�
� 
errnP o      �� 0 errnum errNum�  # Z   ��QR�SQ >  � �TUT o   � ��� 0 errnum errNumU m   � ����IR k   � �VV WXW l  � ��
YZ�
  Y / ) some error OTHER than not found in list:   Z �[[ R   s o m e   e r r o r   O T H E R   t h a n   n o t   f o u n d   i n   l i s t :X \�	\ R   � ��]^
� .ascrerr ****      � ****] o   � ��� 0 errmsg errMsg^ �_�
� 
errn_ o   � ��� 0 errnum errNum�  �	  �  S k   ��`` aba l  � ��cd�  c * $ NOT FOUND, so try each altPattern:    d �ee H   N O T   F O U N D ,   s o   t r y   e a c h   a l t P a t t e r n :  b fgf r   � �hih m   � ��
� boovfalsi o      �� $0 fieldnowselected fieldNowSelectedg jkj X   ��l� ml k   ��nn opo r   � �qrq n   � �sts 1   � ���
�� 
pcntt n   � �uvu o   � ����� 0 pattern  v o   � ����� 0 onealtpattern oneAltPatternr o      ���� 0 testlist testListp wxw l  � ���������  ��  ��  x yzy Q   ��{|}{ k   �l~~ � l  � �������  � !  BEGIN: try oneAltPattern:    � ��� 6   B E G I N :   t r y   o n e A l t P a t t e r n :  � ��� l  � ���������  ��  ��  � ��� r   � ���� J   � �����  � o      ���� 0 testcode testCode� ��� X   �/����� s  *��� l '������ b  '��� b  ��� b  ��� m  �� ���  � n  ��� o  ���� 0 testtype testType� o  ���� 0 
onetestrec 
oneTestRec� m  �� ���   � n &��� I  &������� 0 quotestring quoteString� ���� n  "��� o  "���� 0 	testmatch 	testMatch� o  ���� 0 
onetestrec 
oneTestRec��  ��  �  f  ��  ��  � n      ���  ;  ()� o  '(���� 0 testcode testCode�� 0 
onetestrec 
oneTestRec� o   � ����� 0 testlist testList� ��� l 00��������  ��  ��  � ��� r  0?��� n 0=��� I  1=������� 0 unparsechars unParseChars� ��� o  12���� 0 testcode testCode� ���� b  29��� b  25��� o  23���� $0 betweentestscode betweenTestsCode� o  34���� *0 fieldnameobjectcode fieldNameObjectCode� m  58�� ���   ��  ��  �  f  01� o      ���� 0 testcode testCode� ��� l @@��������  ��  ��  � ��� l @@��������  ��  ��  � ��� r  @Q��� b  @O��� b  @M��� b  @K��� b  @G��� b  @E��� b  @C��� o  @A���� 0 
selectcode 
selectCode� o  AB���� 0 
rowrefcode 
rowRefCode� o  CD���� 0 	whosecode 	whoseCode� o  EF���� *0 fieldnameobjectcode fieldNameObjectCode� m  GJ�� ���   � o  KL���� 0 testcode testCode� o  MN���� &0 afteralltestscode afterAllTestsCode� o      ���� 0 testcode testCode� ��� l RR��������  ��  ��  � ��� r  RY��� b  RW��� b  RU��� o  RS����  0 testcodeheader testCodeHeader� o  ST���� 0 testcode testCode� o  UV����  0 testcodefooter testCodeFooter� o      ���� 0 testcode testCode� ��� l ZZ��������  ��  ��  � ��� l ZZ��������  ��  ��  � ��� O Zd��� I ^c�����
�� .sysodsct****        scpt� o  ^_���� 0 testcode testCode��  �  f  Z[� ��� l ee����  �  �  � ��� l eh���� r  eh��� m  ef�
� boovtrue� o      �� $0 fieldnowselected fieldNowSelected� #  no error, so we selected it.   � ��� :   n o   e r r o r ,   s o   w e   s e l e c t e d   i t .� ��� l ij����  S  ij� + % no need to keep checking altPatterns   � ��� J   n o   n e e d   t o   k e e p   c h e c k i n g   a l t P a t t e r n s� ��� l kk����  �  �  � ��� l kk����  � !  ERROR: try oneAltPattern.    � ��� 6   E R R O R :   t r y   o n e A l t P a t t e r n .  �  | R      ���
� .ascrerr ****      � ****� o      �� 0 errmsg errMsg� ���
� 
errn� o      �� 0 errnum errNum�  } k  t��� ��� Z  t������ > ty� � o  tu�� 0 errnum errNum  m  ux���I� k  |�  l ||��   / ) some error OTHER than not found in list:    � R   s o m e   e r r o r   O T H E R   t h a n   n o t   f o u n d   i n   l i s t : � R  |��	
� .ascrerr ****      � **** o  ���� 0 errmsg errMsg	 �
�
� 
errn
 o  ���� 0 errnum errNum�  �  �  � l ����   = 7 just try the next altPattern, so continue repeat loop.    � n   j u s t   t r y   t h e   n e x t   a l t P a t t e r n ,   s o   c o n t i n u e   r e p e a t   l o o p .�  l ������  �  �   � l ����   "  END OF: try oneAltPattern.     � 8   E N D   O F :   t r y   o n e A l t P a t t e r n .  �  z � l ������  �  �  �  �  0 onealtpattern oneAltPatternm n   � � o   � ��� 0 altpatterns altPatterns o   � ��� 	0 prefs  k  l ������  �  �    L  �� o  ���� $0 fieldnowselected fieldNowSelected � l ������  �  �  �    � l ������  �  �  �   R      �
� .ascrerr ****      � **** o      �� 0 errmsg errMsg � �
� 
errn  o      �� 0 errnum errNum�   R  ���!"
� .ascrerr ****      � ****! b  ��#$# b  ��%&% b  ��'(' m  ��)) �** 4 C o u l d n ' t   s e l e c t   a   F i e l d   -  ( I  ���+��  0 coercetostring coerceToString+ ,�, o  ���� 	0 prefs  �  �  & m  ��-- �..    -  $ o  ���� 0 errmsg errMsg" �/�
� 
errn/ o  ���� 0 errnum errNum�    0�0 l ����~�}�  �~  �}  �  � 121 l     �|�{�z�|  �{  �z  2 343 i   G J565 I      �y7�x�y >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocus7 8�w8 o      �v�v 	0 prefs  �w  �x  6 k     F99 :;: l     �u<=�u  <   version 1.1   = �>>    v e r s i o n   1 . 1; ?@? l     �t�s�r�t  �s  �r  @ ABA Q     DCDEC k    4FF GHG I    
�qI�p�q 40 fmgui_managedb_fieldstab fmGUI_ManageDb_FieldsTabI J�oJ J    �n�n  �o  �p  H KLK l   �m�l�k�m  �l  �k  L MNM O    2OPO O    1QRQ k    0SS TUT n   VWV I    �j�i�h�j (0 fmgui_appfrontmost fmGUI_AppFrontMost�i  �h  W  f    U XYX r    -Z[Z m    �g
�g boovtrue[ n      \]\ 1   * ,�f
�f 
focu] l   *^�e�d^ n    *_`_ 4   ' *�ca
�c 
tabBa m   ( )�b�b ` n    'bcb 4   $ '�ad
�a 
scrad m   % &�`�` c n    $efe 4   ! $�_g
�_ 
tabgg m   " #�^�^ f 4    !�]h
�] 
cwinh m     �\�\ �e  �d  Y i�[i L   . 0jj m   . /�Z
�Z boovtrue�[  R 4    �Yk
�Y 
pcapk m    ll �mm , F i l e M a k e r   P r o   A d v a n c e dP m    nn�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  N o�Xo l  3 3�W�V�U�W  �V  �U  �X  D R      �Tpq
�T .ascrerr ****      � ****p o      �S�S 0 errmsg errMsgq �Rr�Q
�R 
errnr o      �P�P 0 errnum errNum�Q  E R   < D�Ost
�O .ascrerr ****      � ****s b   @ Cuvu m   @ Aww �xx > C o u l d n ' t   f o c u s   o n   F i e l d   l i s t   -  v o   A B�N�N 0 errmsg errMsgt �My�L
�M 
errny o   > ?�K�K 0 errnum errNum�L  B z�Jz l  E E�I�H�G�I  �H  �G  �J  4 {|{ l     �F�E�D�F  �E  �D  | }~} i   K N� I      �C��B�C @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable� ��A� o      �@�@ 0 basetablename baseTableName�A  �B  � k     G�� ��� l     �?���?  �   version 1.3   � ���    v e r s i o n   1 . 3� ��� l     �>�=�<�>  �=  �<  � ��� Q     E���� k    1�� ��� I    
�;��:�; 40 fmgui_managedb_fieldstab fmGUI_ManageDb_FieldsTab� ��9� J    �8�8  �9  �:  � ��7� O    1��� O    0��� k    /�� ��� n   ��� I    �6�5�4�6 (0 fmgui_appfrontmost fmGUI_AppFrontMost�5  �4  �  f    � ��� n   ,��� I    ,�3��2�3  0 fmgui_popupset fmGUI_PopupSet� ��� n    '��� 4   $ '�1�
�1 
popB� m   % &�� ���  T a b l e :� n    $��� 4   ! $�0�
�0 
tabg� m   " #�/�/ � 4    !�.�
�. 
cwin� m     �-�- � ��,� o   ' (�+�+ 0 basetablename baseTableName�,  �2  �  f    � ��*� L   - /�� m   - .�)
�) boovtrue�*  � 4    �(�
�( 
pcap� m    �� ��� , F i l e M a k e r   P r o   A d v a n c e d� m    ���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �7  � R      �'��
�' .ascrerr ****      � ****� o      �&�& 0 errmsg errMsg� �%��$
�% 
errn� o      �#�# 0 errnum errNum�$  � R   9 E�"��
�" .ascrerr ****      � ****� b   = D��� b   = B��� b   = @��� m   = >�� ��� . C o u l d n ' t   s e l e c t   t a b l e   '� o   > ?�!�! 0 basetablename baseTableName� m   @ A�� ���  '   -  � o   B C� �  0 errmsg errMsg� ���
� 
errn� o   ; <�� 0 errnum errNum�  � ��� l  F F����  �  �  �  ~ ��� l     ����  �  �  � ��� i   O R��� I      ���� 40 fmgui_managedb_fieldstab fmGUI_ManageDb_FieldsTab� ��� o      �� 	0 prefs  �  �  � k     ]�� ��� l     ����  �   version 1.3   � ���    v e r s i o n   1 . 3� ��� l     ����  �  �  � ��� Q     [���� k    I�� ��� I    
���� *0 fmgui_managedb_open fmGUI_ManageDb_Open� ��� J    �
�
  �  �  � ��	� O    I��� O    H��� k    G�� ��� n   ��� I    ���� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �  �  f    � ��� r    2��� N    0�� 6   /��� n    &��� 4  # &��
� 
radB� m   $ %�� � n    #��� 4     #��
� 
tabg� m   ! "�� � 4     ��
� 
cwin� m    � �  � E   ' .��� 1   ( *��
�� 
titl� m   + -�� ��� 
 F i e l d� o      ���� "0 fieldstabobject fieldsTabObject� ��� Z   3 D� ����� >  3 8 n   3 6 1   4 6��
�� 
valL o   3 4���� "0 fieldstabobject fieldsTabObject m   6 7����   I  ; @����
�� .prcsclicnull��� ��� uiel o   ; <���� "0 fieldstabobject fieldsTabObject��  ��  ��  � �� L   E G m   E F��
�� boovtrue��  � 4    ��
�� 
pcap m    		 �

 , F i l e M a k e r   P r o   A d v a n c e d� m    �                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �	  � R      ��
�� .ascrerr ****      � **** o      ���� 0 errmsg errMsg ����
�� 
errn o      ���� 0 errnum errNum��  � R   Q [��
�� .ascrerr ****      � **** b   U Z m   U X � @ C o u l d n ' t   g o   t o   t h e   f i e l d s   t a b   -   o   X Y���� 0 errmsg errMsg ����
�� 
errn o   S T���� 0 errnum errNum��  � �� l  \ \��������  ��  ��  ��  �  l     ��������  ��  ��    i   S V I      ������ *0 fmgui_managedb_open fmGUI_ManageDb_Open �� o      ���� 	0 prefs  ��  ��   k    �  !  l     ��"#��  "   version 1.2   # �$$    v e r s i o n   1 . 2! %&% l     ��������  ��  ��  & '(' Q    �)*+) O   �,-, O   �./. k   �00 121 l   ��������  ��  ��  2 343 n   565 I    �������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��  6  f    4 787 l   ��������  ��  ��  8 9:9 l   ��;<��  ;   try to open Manage DB   < �== ,   t r y   t o   o p e n   M a n a g e   D B: >��> Z   �?@��A? C    BCB n    DED 1    ��
�� 
pnamE 4    ��F
�� 
cwinF m    ���� C m    GG �HH & M a n a g e   D a t a b a s e   f o r@ L    !II m     ��
�� boovtrue��  A k   $�JJ KLK I  $ D��M��
�� .prcsclicnull��� ��� uielM l  $ @N����N 6  $ @OPO n   $ 7QRQ 4  4 7��S
�� 
menIS m   5 6���� R n   $ 4TUT 4   1 4��V
�� 
menEV m   2 3���� U n   $ 1WXW 4   . 1��Y
�� 
menIY m   / 0ZZ �[[  M a n a g eX n   $ .\]\ 4   + .��^
�� 
menE^ m   , -�� ] n   $ +_`_ 4   ( +�a
� 
mbria m   ) *bb �cc  F i l e` 4   $ (�d
� 
mbard m   & '�� P C   8 ?efe 1   9 ;�
� 
pnamf m   < >gg �hh  D a t a b a s e��  ��  ��  L iji l  E E����  �  �  j klk l  E E�mn�  m   TO DO   n �oo    T O   D Ol pqp l  E E�rs�  r   TO DO   s �tt    T O   D Oq uvu l  E E�wx�  w   TO DO   x �yy    T O   D Ov z{z l  E E�|}�  | v p 2015-06-03 ( eshagdar ): probably going to need to open manageDB via openManageDB script if the menu item fails   } �~~ �   2 0 1 5 - 0 6 - 0 3   (   e s h a g d a r   ) :   p r o b a b l y   g o i n g   t o   n e e d   t o   o p e n   m a n a g e D B   v i a   o p e n M a n a g e D B   s c r i p t   i f   t h e   m e n u   i t e m   f a i l s{ � l  E E����  �  �  � ��� l  E E����  � 3 - do this in case already on relationships tab   � ��� Z   d o   t h i s   i n   c a s e   a l r e a d y   o n   r e l a t i o n s h i p s   t a b� ��� l  E J���� I  E J���
� .sysodelanull��� ��� nmbr� m   E F�� �  �   seconds   � ���    s e c o n d s� ��� r   K N��� m   K L�
� boovtrue� o      �� *0 lookingforxdbcerror lookingForXDBCError� ��� V   O ���� Z   U ������ C  U _��� n   U [��� 1   Y [�
� 
pnam� 4   U Y��
� 
cwin� m   W X�� � m   [ ^�� ���  C o n n e c t   t o  � k   b ��� ��� I  b z���
� .prcsclicnull��� ��� uiel� l  b v���� 6  b v��� n   b k��� 4  f k��
� 
butT� m   i j�� � 4   b f��
� 
cwin� m   d e�� � =  l u��� 1   m o�
� 
pnam� m   p t�� ���  C a n c e l�  �  �  � ��� l  { ����� I  { ����
� .sysodelanull��� ��� nmbr� m   { |�� �  �   seconds   � ���    s e c o n d s�  �  � r   � ���� m   � ��
� boovfals� o      �� *0 lookingforxdbcerror lookingForXDBCError� o   S T�� *0 lookingforxdbcerror lookingForXDBCError� ��� l  � �����  �  �  � ��� l  � �����  � P J to to the TOs tab and dismiss any xDBC connections that failed to connect   � ��� �   t o   t o   t h e   T O s   t a b   a n d   d i s m i s s   a n y   x D B C   c o n n e c t i o n s   t h a t   f a i l e d   t o   c o n n e c t� ��� n  � ���� I   � ����� B0 fmgui_managedb_relationshipstab fmGUI_ManageDb_RelationshipsTab� ��� J   � ���  �  �  �  f   � �� ��� l  � ����� I  � ����
� .sysodelanull��� ��� nmbr� m   � ��� �  �   seconds   � ���    s e c o n d s� ��� r   � ���� m   � ��
� boovtrue� o      �� *0 lookingforxdbcerror lookingForXDBCError� ��� V   � ���� Z   � ������ C  � ���� n   � ���� 1   � ��
� 
pnam� 4   � ���
� 
cwin� m   � ��� � m   � ��� ���  C o n n e c t   t o  � k   � ��� ��� I  � ����
� .prcsclicnull��� ��� uiel� l  � ����� 6  � ���� n   � ���� 4  � ���
� 
butT� m   � ��� � 4   � ���
� 
cwin� m   � ��~�~ � =  � ���� 1   � ��}
�} 
pnam� m   � ��� ���  C a n c e l�  �  �  � ��|� l  � ����� I  � ��{��z
�{ .sysodelanull��� ��� nmbr� m   � ��y�y �z  �   seconds   � ���    s e c o n d s�|  �  � r   � ���� m   � ��x
�x boovfals� o      �w�w *0 lookingforxdbcerror lookingForXDBCError� o   � ��v�v *0 lookingforxdbcerror lookingForXDBCError� ��� l  � ��u�t�s�u  �t  �s  � ��� l  � ��r���r  � M Gzoom out to show all TOs and dismiss any that weren't already dismissed   � ��� � z o o m   o u t   t o   s h o w   a l l   T O s   a n d   d i s m i s s   a n y   t h a t   w e r e n ' t   a l r e a d y   d i s m i s s e d� ��� I  � ��q��
�q .prcskprsnull���     ctxt� m   � ��� ���  i� �p �o
�p 
faal  m   � ��n
�n eMdsKcmd�o  �  l  � � I  � ��m�l
�m .sysodelanull��� ��� nmbr m   � ��k�k �l     seconds    �    s e c o n d s 	 r   � �

 m   � ��j
�j boovtrue o      �i�i *0 lookingforxdbcerror lookingForXDBCError	  V   �& Z   �!�h C  � n   � � 1   � ��g
�g 
pnam 4   � ��f
�f 
cwin m   � ��e�e  m   � �  C o n n e c t   t o   k    I �d�c
�d .prcsclicnull��� ��� uiel n   4  
�b 
�b 
butT  m  !! �""  C a n c e l 4  
�a#
�a 
cwin# m  	�`�` �c   $�_$ l %&'% I �^(�]
�^ .sysodelanull��� ��� nmbr( m  �\�\ �]  &   seconds   ' �))    s e c o n d s�_  �h   r  !*+* m  �[
�[ boovfals+ o      �Z�Z *0 lookingforxdbcerror lookingForXDBCError o   � ��Y�Y *0 lookingforxdbcerror lookingForXDBCError ,-, l ''�X�W�V�X  �W  �V  - ./. l ''�U01�U  0   zoom back in   1 �22    z o o m   b a c k   i n/ 343 r  '7565 n  '5787 4  05�T9
�T 
txtf9 m  34�S�S 8 n  '0:;: 4  +0�R<
�R 
tabg< m  ./�Q�Q ; 4  '+�P=
�P 
cwin= m  )*�O�O 6 o      �N�N 0 	zoomfield 	zoomField4 >?> r  8?@A@ m  89�M
�M boovtrueA n      BCB 1  :>�L
�L 
focuC o  9:�K�K 0 	zoomfield 	zoomField? DED r  @IFGF m  @CHH �II  1 0 0G n      JKJ 1  DH�J
�J 
valLK o  CD�I�I 0 	zoomfield 	zoomFieldE LML r  J^NON m  JK�H
�H boovtrueO n      PQP 1  Y]�G
�G 
focuQ n  KYRSR 4  TY�FT
�F 
scraT m  WX�E�E S n  KTUVU 4  OT�DW
�D 
tabgW m  RS�C�C V 4  KO�BX
�B 
cwinX m  MN�A�A M YZY r  _x[\[ m  _`�@�@  \ n      ]^] 1  sw�?
�? 
valL^ n  `s_`_ 4  ns�>a
�> 
scrba m  qr�=�= ` n  `nbcb 4  in�<d
�< 
scrad m  lm�;�; c n  `iefe 4  di�:g
�: 
tabgg m  gh�9�9 f 4  `d�8h
�8 
cwinh m  bc�7�7 Z iji r  y�klk m  yz�6�6  l n      mnm 1  ���5
�5 
valLn n  z�opo 4  ���4q
�4 
scrbq m  ���3�3 p n  z�rsr 4  ���2t
�2 
scrat m  ���1�1 s n  z�uvu 4  ~��0w
�0 
tabgw m  ���/�/ v 4  z~�.x
�. 
cwinx m  |}�-�- j yzy l ���,�+�*�,  �+  �*  z {�){ L  ��|| m  ���(
�( boovtrue�)  ��  / 4    �'}
�' 
pcap} m   	 
~~ � , F i l e M a k e r   P r o   A d v a n c e d- m    ���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  * R      �&��
�& .ascrerr ****      � ****� o      �%�% 0 errmsg errMsg� �$��#
�$ 
errn� o      �"�" 0 errnum errNum�#  + R  ���!��
�! .ascrerr ****      � ****� b  ����� m  ���� ��� 4 C o u l d n ' t   o p e n   m a n a g e   D B   -  � o  ��� �  0 errmsg errMsg� ���
� 
errn� o  ���� 0 errnum errNum�  ( ��� l ������  �  �  �   ��� l     ����  �  �  � ��� i   W Z��� I      ���� B0 fmgui_managedb_relationshipstab fmGUI_ManageDb_RelationshipsTab� ��� o      �� 	0 prefs  �  �  � k     S�� ��� l     ����  �   version 1.3   � ���    v e r s i o n   1 . 3� ��� l     ����  �  �  � ��� Q     Q���� k    A�� ��� I    ���� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �  � ��� l  	 	�
���
  �  fmGUI_ManageDb_Open({})   � ��� . f m G U I _ M a n a g e D b _ O p e n ( { } )� ��	� O   	 A��� O    @��� k    ?�� ��� r    *��� N    (�� l   '���� 6   '��� n    ��� 4   ��
� 
radB� m    �� � n    ��� 4    ��
� 
tabg� m    �� � 4    ��
� 
cwin� m    �� � E    &��� 1     "� 
�  
titl� m   # %�� ���  R e l a t i o n s h i p�  �  � o      ���� "0 fieldstabobject fieldsTabObject� ��� Z   + <������� >  + 0��� n   + .��� 1   , .��
�� 
valL� o   + ,���� "0 fieldstabobject fieldsTabObject� m   . /���� � I  3 8�����
�� .prcsclicnull��� ��� uiel� o   3 4���� "0 fieldstabobject fieldsTabObject��  ��  ��  � ���� L   = ?�� m   = >��
�� boovtrue��  � 4    ���
�� 
pcap� m    �� ��� , F i l e M a k e r   P r o   A d v a n c e d� m   	 
���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �	  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� �����
�� 
errn� o      ���� 0 errnum errNum��  � R   I Q����
�� .ascrerr ****      � ****� b   M P��� m   M N�� ��� N C o u l d n ' t   g o   t o   t h e   R e l a t i o n s h i p s   t a b   -  � o   N O���� 0 errmsg errMsg� �����
�� 
errn� o   K L���� 0 errnum errNum��  � ���� l  R R��������  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� i   [ ^��� I      ������� *0 fmgui_managedb_save fmGUI_ManageDB_Save� ���� o      ���� 	0 prefs  ��  ��  � k     ��� ��� l     ������  �   version 1.4   � ���    v e r s i o n   1 . 4� ��� l     ��������  ��  ��  � ��� r     ��� K     �� ������� ,0 notinmanagedbiserror notInManageDbIsError� m    ��
�� boovtrue��  � o      ���� 0 defaultprefs defaultPrefs� ��� l   ��������  ��  ��  � ��� r    ��� b    
��� o    ���� 	0 prefs  � o    	���� 0 defaultprefs defaultPrefs� o      ���� 	0 prefs  � ��� l   ��������  ��  ��  � ��� l   ��������  ��  ��  � ��� r       m     � & M a n a g e   D a t a b a s e   f o r o      ���� 40 managedbwindownameprefix manageDbWindowNamePrefix�  l    r    	
	 m    ���� 

 o      ���� .0 waitcycledelayseconds waitCycleDelaySeconds   seconds    �    s e c o n d s  l    r     ]     m    ���� < 1    ��
�� 
min  o      ���� ,0 waitsavetotalseconds waitSaveTotalSeconds  seconds    �  s e c o n d s  l   ��������  ��  ��    r    & I   $��
�� .sysorondlong        doub l   ��� ^      o    �� ,0 waitsavetotalseconds waitSaveTotalSeconds  o    �� .0 waitcycledelayseconds waitCycleDelaySeconds��  �   �!�
� 
dire! m     �
� olierndD�   o      �� 0 waitcyclemax waitCycleMax "#" l  ' '����  �  �  # $%$ Q   ' �&'(& k   * �)) *+* O   * �,-, k   . �.. /0/ O   . �121 k   5 �33 454 l  5 5����  �  �  5 676 n  5 :898 I   6 :���� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �  9  f   5 67 :;: l  ; ;����  �  �  ; <=< Z   ; �>?�@> C   ; CABA n   ; ACDC 1   ? A�
� 
pnamD 4   ; ?�E
� 
cwinE m   = >�� B o   A B�� 40 managedbwindownameprefix manageDbWindowNamePrefix? Q   F yFGHF k   I eII JKJ r   I QLML n   I ONON 1   M O�
� 
pnamO 4   I M�P
� 
cwinP m   K L�� M o      �� (0 managedbwindowname manageDbWindowNameK QRQ I  R ]�S�
� .prcsclicnull��� ��� uielS l  R YT��T n   R YUVU 4   V Y�W
� 
butTW m   W XXX �YY  O KV 4   R V�Z
� 
cwinZ m   T U�� �  �  �  R [\[ l  ^ c]^_] I  ^ c�`�
� .sysodelanull��� ��� nmbr` m   ^ _�� �  ^   let click register.   _ �aa (   l e t   c l i c k   r e g i s t e r .\ bcb l  d d�de�  d 6 0 will continue below to wait for window to close   e �ff `   w i l l   c o n t i n u e   b e l o w   t o   w a i t   f o r   w i n d o w   t o   c l o s ec g�g l  d d����  �  �  �  G R      �hi
� .ascrerr ****      � ****h o      �� 0 errmsg errMsgi �j�
� 
errnj o      �� 0 errnum errNum�  H R   m y�kl
� .ascrerr ****      � ****k b   s xmnm m   s voo �pp @ C o u l d n ' t   s a v e   M a n a g e   D a t a b a s e   -  n o   v w�� 0 errmsg errMsgl �q�
� 
errnq o   q r�� 0 errnum errNum�  �  @ Z   | �rs�tr n   | �uvu o   } �� ,0 notinmanagedbiserror notInManageDbIsErrorv o   | }�� 	0 prefs  s R   � ��wx
� .ascrerr ****      � ****w m   � �yy �zz p M a n a g e   D a t a b a s e   w i n d o w   w a s n ' t   o p e n ,   s o   n o t h i n g   t o   c l o s e .x �{�
� 
errn{ m   � ��� �  �  t k   � �|| }~} l  � ����   . ( Not in Manage Database, but that is OK.   � ��� P   N o t   i n   M a n a g e   D a t a b a s e ,   b u t   t h a t   i s   O K .~ ��� L   � ��� m   � ��
� boovtrue�  = ��� l  � ���~�}�  �~  �}  �  2 4   . 2�|�
�| 
pcap� m   0 1�� ��� , F i l e M a k e r   P r o   A d v a n c e d0 ��� l  � ��{�z�y�{  �z  �y  � ��� n  � ���� I   � ��x��w�x "0 windowwaituntil windowWaitUntil� ��v� K   � ��� �u���u 0 
windowname 
windowName� o   � ��t�t (0 managedbwindowname manageDbWindowName� �s���s  0 windownametest windowNameTest� m   � ��� ���   d o e s   n o t   c o n t a i n� �r���r 0 whichwindow whichWindow� m   � ��� ���  a n y� �q���q .0 waitcycledelayseconds waitCycleDelaySeconds� o   � ��p�p .0 waitcycledelayseconds waitCycleDelaySeconds� �o��n�o 0 waitcyclemax waitCycleMax� o   � ��m�m 0 waitcyclemax waitCycleMax�n  �v  �w  �  f   � �� ��� l  � ��l�k�j�l  �k  �j  � ��� l  � ����� I  � ��i��h
�i .sysodelanull��� ��� nmbr� m   � ��g�g �h  � ( " let normal window come to front.    � ��� D   l e t   n o r m a l   w i n d o w   c o m e   t o   f r o n t .  � ��� l  � ��f�e�d�f  �e  �d  � ��� L   � ��� m   � ��c
�c boovtrue� ��b� l  � ��a�`�_�a  �`  �_  �b  - m   * +���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  + ��� l  � ��^�]�\�^  �]  �\  � ��[� l  � ��Z�Y�X�Z  �Y  �X  �[  ' R      �W��
�W .ascrerr ****      � ****� o      �V�V 0 errmsg errMsg� �U��T
�U 
errn� o      �S�S 0 errnum errNum�T  ( R   � ��R��
�R .ascrerr ****      � ****� b   � ���� m   � ��� ��� @ C o u l d n ' t   s a v e   M a n a g e   D a t a b a s e   -  � o   � ��Q�Q 0 errmsg errMsg� �P��O
�P 
errn� o   � ��N�N 0 errnum errNum�O  % ��M� l  � ��L�K�J�L  �K  �J  �M  � ��� l     �I�H�G�I  �H  �G  � ��� i   _ b��� I      �F��E�F &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o      �D�D  0 checkboxobject checkboxObject� ��C� o      �B�B 0 checkboxvalue checkboxValue�C  �E  � k     9�� ��� l     �A���A  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     �@�?�>�@  �?  �>  � ��=� w     9��� Q    9���� k    %�� ��� Z     ���<�;� >   ��� o    �:�: 0 checkboxvalue checkboxValue� m    �9
�9 
null� Z    ���8�7� >   ��� n    ��� 1    �6
�6 
valL� o    �5�5  0 checkboxobject checkboxObject� o    �4�4 0 checkboxvalue checkboxValue� I   �3��2
�3 .prcsclicnull��� ��� uiel� o    �1�1  0 checkboxobject checkboxObject�2  �8  �7  �<  �;  � ��� L   ! #�� m   ! "�0
�0 boovtrue� ��/� l  $ $�.�-�,�.  �-  �,  �/  � R      �+��
�+ .ascrerr ****      � ****� o      �*�* 0 errmsg errMsg� �)��(
�) 
errn� o      �'�' 0 errnum errNum�(  � R   - 9�&��
�& .ascrerr ****      � ****� b   1 8��� b   1 6��� b   1 4��� m   1 2�� ��� " C o u l d n ' t   s e l e c t   '� o   2 3�%�% 0 checkboxvalue checkboxValue� m   4 5�� ��� " '   f o r   c h e c k b o x   -  � o   6 7�$�$ 0 errmsg errMsg� �#��"
�# 
errn� o   / 0�!�! 0 errnum errNum�"  ��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �=  � ��� l     � ���   �  �  � ��� i   c f��� I      ���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ��� o      �� 0 	buttonref 	buttonRef�  �  � k     
�� � � l     ��     version 1.0    �    v e r s i o n   1 . 0   l     ����  �  �    w     	 n   

 I    ��� *0 clickobjectbycoords clickObjectByCoords � o    �� 0 	buttonref 	buttonRef�  �    f    	�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��   � l  	 	����  �  �  �  �  l     ����  �  �    i   g j I      �
�	�
 :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand � o      �� 	0 prefs  �  �	   k      l     ��     version 1.0    �    v e r s i o n   1 . 0  l     ����  �  �     r     !"! K     
## �$%� 0 popupobject popupObject$ m    �
� 
null% � &'�  0 popupchoice popupChoice& m    ��
�� 
null' ��()�� 0 selectcommand selectCommand( m    ** �++  i s) ��,���� &0 clickifalreadyset clickIfAlreadySet, m    ��
�� boovfals��  " o      ���� 0 defaultprefs defaultPrefs  -.- l   ��������  ��  ��  . /0/ Z    ,12����1 =   343 n    565 m    ��
�� 
pcls6 o    ���� 	0 prefs  4 n    787 m    ��
�� 
pcls8 J    99 :;: m    << �==  a; >��> m    ���� ��  2 r    (?@? K    &AA ��BC�� 0 popupobject popupObjectB n    DED 4    ��F
�� 
cobjF m    ���� E o    ���� 	0 prefs  C ��G���� 0 popupchoice popupChoiceG n     $HIH 4   ! $��J
�� 
cobjJ m   " #���� I o     !���� 	0 prefs  ��  @ o      ���� 	0 prefs  ��  ��  0 KLK l  - -��������  ��  ��  L MNM l  - -��������  ��  ��  N OPO r   - 2QRQ b   - 0STS o   - .���� 	0 prefs  T o   . /���� 0 defaultprefs defaultPrefsR o      ���� 	0 prefs  P UVU l  3 3��������  ��  ��  V WXW r   3 8YZY n   3 6[\[ o   4 6���� 0 popupobject popupObject\ o   3 4���� 	0 prefs  Z o      ���� 0 popupobject popupObjectX ]^] r   9 >_`_ n   9 <aba o   : <���� 0 selectcommand selectCommandb o   9 :���� 	0 prefs  ` o      ���� 0 selectcommand selectCommand^ cdc r   ? Defe n   ? Bghg o   @ B���� 0 popupchoice popupChoiceh o   ? @���� 	0 prefs  f o      ���� 0 popupchoice popupChoiced iji l  E Jklmk r   E Jnon n   E Hpqp o   F H���� &0 clickifalreadyset clickIfAlreadySetq o   E F���� 	0 prefs  o o      ���� &0 clickifalreadyset clickIfAlreadySetl 6 0 re-select even if popup is the requested value.   m �rr `   r e - s e l e c t   e v e n   i f   p o p u p   i s   t h e   r e q u e s t e d   v a l u e .j sts l  K K��������  ��  ��  t uvu l  K K��������  ��  ��  v w��w w   Kxyx Q   Mz{|z Z   P�}~��} H   P V�� l  P U������ I  P U�����
�� .coredoexnull���     ****� o   P Q���� 0 popupobject popupObject��  ��  ��  ~ k   Y a�� ��� l  Y Y������  � * $ does NOT exist, so error with that:   � ��� H   d o e s   N O T   e x i s t ,   s o   e r r o r   w i t h   t h a t :� ��� R   Y _���
� .ascrerr ****      � ****� m   ] ^�� ��� R T h e   s p e c i f i e d   p o p u p O b j e c t   d o e s   n o t   e x i s t .� ���
� 
errn� m   [ \�� �  � ��� l  ` `����  �  �  �  ��   k   d��� ��� l  d d����  � !  the popupObject DOES exist   � ��� 6   t h e   p o p u p O b j e c t   D O E S   e x i s t� ��� r   d g��� m   d e�
� boovfals� o      �� 0 mustpick mustPick� ��� Z   h$����� H   h r�� l  h q���� I  h q���
� .coredoexnull���     ****� n   h m��� 1   i m�
� 
valL� o   h i�� 0 popupobject popupObject�  �  �  � k   u z�� ��� l  u u����  � i c first check if the value of the popupObject exists - if it doesn't, then we can't test it directly   � ��� �   f i r s t   c h e c k   i f   t h e   v a l u e   o f   t h e   p o p u p O b j e c t   e x i s t s   -   i f   i t   d o e s n ' t ,   t h e n   w e   c a n ' t   t e s t   i t   d i r e c t l y� ��� r   u x��� m   u v�
� boovtrue� o      �� 0 mustpick mustPick� ��� l  y y����  �  �  �  �  � l  }$���� k   }$�� ��� l  } }����  � K E note that our selection might be one of several 'matching' commands:   � ��� �   n o t e   t h a t   o u r   s e l e c t i o n   m i g h t   b e   o n e   o f   s e v e r a l   ' m a t c h i n g '   c o m m a n d s :� ��� Z   }$����� o   } ~�� &0 clickifalreadyset clickIfAlreadySet� k   � ��� ��� l  � �����  � > 8 RE-SELECT even if popup already is the requested value.   � ��� p   R E - S E L E C T   e v e n   i f   p o p u p   a l r e a d y   i s   t h e   r e q u e s t e d   v a l u e .� ��� r   � ���� m   � ��
� boovtrue� o      �� 0 mustpick mustPick� ��� l  � �����  �  �  �  � ��� =  � ���� o   � ��� 0 selectcommand selectCommand� m   � ��� ���  i s� ��� k   � ��� ��� Z   � ������ >  � ���� n   � ���� 1   � ��
� 
valL� o   � ��� 0 popupobject popupObject� o   � ��� 0 popupchoice popupChoice� r   � ���� m   � ��
� boovtrue� o      �� 0 mustpick mustPick�  �  � ��� l  � �����  �  �  �  � ��� =  � ���� o   � ����� 0 selectcommand selectCommand� m   � ��� ���  c o n t a i n s� ��� k   � ��� ��� Z   � �������� H   � ��� E   � ���� n   � ���� 1   � ���
�� 
valL� o   � ����� 0 popupobject popupObject� o   � ����� 0 popupchoice popupChoice� r   � ���� m   � ���
�� boovtrue� o      ���� 0 mustpick mustPick��  ��  � ���� l  � ���������  ��  ��  ��  � ��� =  � ���� o   � ����� 0 selectcommand selectCommand� m   � ��� ���  s t a r t s W i t h� ��� k   � ��� ��� Z   � �������� H   � ��� C   � �� � n   � � 1   � ���
�� 
valL o   � ��� 0 popupobject popupObject  o   � ��~�~ 0 popupchoice popupChoice� r   � � m   � ��}
�} boovtrue o      �|�| 0 mustpick mustPick��  ��  � �{ l  � ��z�y�x�z  �y  �x  �{  �  =  � �	 o   � ��w�w 0 selectcommand selectCommand	 m   � �

 �  b e g i n s W i t h  k   �  Z   � ��v�u H   � � C   � � n   � � 1   � ��t
�t 
valL o   � ��s�s 0 popupobject popupObject o   � ��r�r 0 popupchoice popupChoice r   � � m   � ��q
�q boovtrue o      �p�p 0 mustpick mustPick�v  �u   �o l   �n�m�l�n  �m  �l  �o    = 	 o  �k�k 0 selectcommand selectCommand m   �    e n d s W i t h !�j! k   "" #$# Z  %&�i�h% H  '' D  ()( n  *+* 1  �g
�g 
valL+ o  �f�f 0 popupobject popupObject) o  �e�e 0 popupchoice popupChoice& r  ,-, m  �d
�d boovtrue- o      �c�c 0 mustpick mustPick�i  �h  $ .�b. l �a�`�_�a  �`  �_  �b  �j  �  �  � C = we can see the value without 'picking' the menu, so test it:   � �// z   w e   c a n   s e e   t h e   v a l u e   w i t h o u t   ' p i c k i n g '   t h e   m e n u ,   s o   t e s t   i t :� 010 l %%�^�]�\�^  �]  �\  1 232 Z  %�45�[�Z4 o  %&�Y�Y 0 mustpick mustPick5 Z  )�67�X�W6 > ),898 o  )*�V�V 0 popupchoice popupChoice9 m  *+�U
�U 
null7 k  /�:: ;<; I /4�T=�S
�T .prcsclicnull��� ��� uiel= o  /0�R�R 0 popupobject popupObject�S  < >?> Z  5�@AB�Q@ = 5:CDC o  56�P�P 0 selectcommand selectCommandD m  69EE �FF  i sA I =Y�OG�N
�O .prcsclicnull��� ��� uielG l =UH�M�LH 6 =UIJI n  =HKLK 4 CH�KM
�K 
menIM m  FG�J�J L n  =CNON 4  >C�IP
�I 
menEP m  AB�H�H O o  =>�G�G 0 popupobject popupObjectJ = KTQRQ 1  LP�F
�F 
pnamR o  QS�E�E 0 popupchoice popupChoice�M  �L  �N  B STS = \aUVU o  \]�D�D 0 selectcommand selectCommandV m  ]`WW �XX  c o n t a i n sT YZY k  d�[[ \]\ I d��C^�B
�C .prcsclicnull��� ��� uiel^ l d|_�A�@_ 6 d|`a` n  dobcb 4 jo�?d
�? 
menId m  mn�>�> c n  djefe 4  ej�=g
�= 
menEg m  hi�<�< f o  de�;�; 0 popupobject popupObjecta E  r{hih 1  sw�:
�: 
pnami o  xz�9�9 0 popupchoice popupChoice�A  �@  �B  ] j�8j l ���7�6�5�7  �6  �5  �8  Z klk = ��mnm o  ���4�4 0 selectcommand selectCommandn m  ��oo �pp  b e g i n s W i t hl qrq k  ��ss tut I ���3v�2
�3 .prcsclicnull��� ��� uielv l ��w�1�0w 6 ��xyx n  ��z{z 4 ���/|
�/ 
menI| m  ���.�. { n  ��}~} 4  ���-
�- 
menE m  ���,�, ~ o  ���+�+ 0 popupobject popupObjecty C  ����� 1  ���*
�* 
pnam� o  ���)�) 0 popupchoice popupChoice�1  �0  �2  u ��(� l ���'�&�%�'  �&  �%  �(  r ��� = ����� o  ���$�$ 0 selectcommand selectCommand� m  ���� ���  e n d s W i t h� ��#� k  ���� ��� I ���"��!
�" .prcsclicnull��� ��� uiel� l ���� �� 6 ����� n  ����� 4 ����
� 
menI� m  ���� � n  ����� 4  ����
� 
menE� m  ���� � o  ���� 0 popupobject popupObject� D  ����� 1  ���
� 
pnam� o  ���� 0 popupchoice popupChoice�   �  �!  � ��� l ������  �  �  �  �#  �Q  ? ��� l ������  �  �  �  �X  �W  �[  �Z  3 ��� l ������  �  �  � ��� L  ���� m  ���
� boovtrue� ��� l ���
�	��
  �	  �  �  { R      ���
� .ascrerr ****      � ****� o      �� 0 errmsg errMsg� ���
� 
errn� o      �� 0 errnum errNum�  | R  ����
� .ascrerr ****      � ****� b  ���� b  ���� b  ����� b  ����� b  ����� m  ���� ��� N C o u l d n ' t   s e l e c t   m e n u   i t e m   w h o s e   v a l u e   _� o  ���� 0 selectcommand selectCommand� m  ���� ���  _   '� o  ��� �  0 popupchoice popupChoice� m  ��� ���  '   i n   p o p u p   -  � o  ���� 0 errmsg errMsg� �����
�� 
errn� o  ������ 0 errnum errNum��  y�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  ��   ��� l     ��������  ��  ��  � ��� i   k n��� I      �������  0 fmgui_popupset fmGUI_PopupSet� ��� o      ���� 0 popupobject popupObject� ���� o      ���� 0 popupchoice popupChoice��  ��  � k     *�� ��� l     ������  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     ��������  ��  ��  � ���� w     *��� Q    *���� k    �� ��� l   ��������  ��  ��  � ��� I    ������� :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand� ���� K    �� ������ 0 popupobject popupObject� o    ���� 0 popupobject popupObject� ������� 0 popupchoice popupChoice� o   	 
���� 0 popupchoice popupChoice��  ��  ��  � ��� L    �� 1    ��
�� 
rslt� ���� l   ��������  ��  ��  ��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� �����
�� 
errn� o      ���� 0 errnum errNum��  � R    *����
�� .ascrerr ****      � ****� b   " )��� b   " '��� b   " %��� m   " #�� ��� " C o u l d n ' t   s e l e c t   '� o   # $���� 0 popupchoice popupChoice� m   % &�� ���  '   i n   p o p u p   -  � o   ' (���� 0 errmsg errMsg� �����
�� 
errn� o     !���� 0 errnum errNum��  ��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  ��  � ��� l     ��������  ��  ��  � ��� i   o r��� I      ������� 00 fmgui_selectallandcopy fmGUI_SelectAllAndCopy� ���� o      ���� 	0 prefs  ��  ��  � k     ��� ��� l     ������  �    version 1.0, Erik Shagdar   � ��� 4   v e r s i o n   1 . 0 ,   E r i k   S h a g d a r� ��� l     ��������  ��  ��  � ��� I    �� ��
�� .JonspClpnull���     ****  m      �  ��  �  r    	 m    ��
�� boovfals o      ���� $0 clipboardchanged clipboardChanged  l  
 
��������  ��  ��   	
	 O   
 � O    � k    �  l   �������  ��  �    n    I    ���� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �    f      l   ����  �  �    Q    L I   8��
� .prcsclicnull��� ��� uiel l   4�� 6   4  n    +!"! 4  ( +�#
� 
menI# m   ) *�� " n    ($%$ 4   % (�&
� 
menE& m   & '�� % n    %'(' 4   " %�)
� 
mbri) m   # $** �++  E d i t( 4    "�,
� 
mbar, m     !��   =  , 3-.- 1   - /�
� 
pnam. m   0 2// �00  S e l e c t   A l l�  �  �   R      �12
� .ascrerr ****      � ****1 o      �� 0 errmsg errMsg2 �3�
� 
errn3 o      �� 0 errnum errNum�   R   @ L�45
� .ascrerr ****      � ****4 b   F K676 m   F I88 �99 R U n a b l e   t o   c l i c k   ' S e l e c t   A l l '   m e n u   i t e m   -  7 o   I J�� 0 errmsg errMsg5 �:�
� 
errn: o   D E�� 0 errnum errNum�   ;<; l  M M����  �  �  < =>= Q   M y?@A? I  P e�B�
� .prcsclicnull��� ��� uielB l  P aC��C n   P aDED 4   \ a�F
� 
menIF m   ] `GG �HH  C o p yE n   P \IJI 4   Y \�K
� 
menEK m   Z [�� J n   P YLML 4   T Y�N
� 
mbriN m   U XOO �PP  E d i tM 4   P T�Q
� 
mbarQ m   R S�� �  �  �  @ R      �RS
� .ascrerr ****      � ****R o      �� 0 errmsg errMsgS �T�
� 
errnT o      �� 0 errnum errNum�  A R   m y�UV
� .ascrerr ****      � ****U b   s xWXW m   s vYY �ZZ F U n a b l e   t o   c l i c k   ' C o p y '   m e n u   i t e m   -  X o   v w�� 0 errmsg errMsgV �[�
� 
errn[ o   q r�� 0 errnum errNum�  > \]\ l  z z����  �  �  ] ^_^ l  z z����  �  �  _ `a` U   z �bcb k   � �dd efe Q   � �ghig k   � �jj klk l  � ��mn�  m � � We set the clipboard to an empty string. Once utf8 is no longer in it (or isn't empty), we must have picked up the objects copied above.   n �oo   W e   s e t   t h e   c l i p b o a r d   t o   a n   e m p t y   s t r i n g .   O n c e   u t f 8   i s   n o   l o n g e r   i n   i t   ( o r   i s n ' t   e m p t y ) ,   w e   m u s t   h a v e   p i c k e d   u p   t h e   o b j e c t s   c o p i e d   a b o v e .l pqp e   � �rr I  � ���s
� .JonsgClp****    ��� null�  s �t�
� 
rtypt m   � ��
� 
utf8�  q u�u Z   � �vw�~�}v ?  � �xyx n   � �z{z 1   � ��|
�| 
leng{ 1   � ��{
�{ 
rslty m   � ��z�z  w k   � �|| }~} r   � �� m   � ��y
�y boovtrue� o      �x�x $0 clipboardchanged clipboardChanged~ ��w�  S   � ��w  �~  �}  �  h R      �v�u�t
�v .ascrerr ****      � ****�u  �t  i k   � ��� ��� r   � ���� m   � ��s
�s boovtrue� o      �r�r $0 clipboardchanged clipboardChanged� ��q�  S   � ��q  f ��p� I  � ��o��n
�o .sysodelanull��� ��� nmbr� m   � ��m�m �n  �p  c m   } ��l�l 
a ��k� l  � ��j�i�h�j  �i  �h  �k   4    �g�
�g 
pcap� m    �� ��� , F i l e M a k e r   P r o   A d v a n c e d m   
 ���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  
 ��� l  � ��f�e�d�f  �e  �d  � ��� L   � ��� o   � ��c�c $0 clipboardchanged clipboardChanged� ��b� l  � ��a�`�_�a  �`  �_  �b  � ��� l     �^�]�\�^  �]  �\  � ��� i   s v��� I      �[��Z�[ (0 fmgui_textfieldset fmGUI_TextFieldSet� ��� o      �Y�Y "0 textfieldobject textfieldObject� ��X� o      �W�W  0 textfieldvalue textfieldValue�X  �Z  � k     @�� ��� l     �V���V  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     �U�T�S�U  �T  �S  � ��R� w     @��� Q    @���� k    ,�� ��� Z    '���Q�P� >   ��� o    �O�O  0 textfieldvalue textfieldValue� m    �N
�N 
null� Z    #���M�� >   ��� n    ��� 1    �L
�L 
valL� o    �K�K "0 textfieldobject textfieldObject� l   ��J�I� o    �H�H  0 textfieldvalue textfieldValue�J  �I  � k    �� ��� r    ��� m    �G
�G boovtrue� n      ��� 1    �F
�F 
focu� o    �E�E "0 textfieldobject textfieldObject� ��D� r    ��� o    �C�C  0 textfieldvalue textfieldValue� n      ��� 1    �B
�B 
valL� o    �A�A "0 textfieldobject textfieldObject�D  �M  � l  ! #���� L   ! #�� m   ! "�@
�@ boovfals�   did not need to change.   � ��� 0   d i d   n o t   n e e d   t o   c h a n g e .�Q  �P  � ��� L   ( *�� m   ( )�?
�? boovtrue� ��>� l  + +�=�<�;�=  �<  �;  �>  � R      �:��
�: .ascrerr ****      � ****� o      �9�9 0 errmsg errMsg� �8��7
�8 
errn� o      �6�6 0 errnum errNum�7  � R   4 @�5��
�5 .ascrerr ****      � ****� b   8 ?��� b   8 =��� b   8 ;��� m   8 9�� ��� " C o u l d n ' t   s e l e c t   '� o   9 :�4�4  0 textfieldvalue textfieldValue� m   ; <�� ��� & '   f o r   t e x t   f i e l d   -  � o   = >�3�3 0 errmsg errMsg� �2��1
�2 
errn� o   6 7�0�0 0 errnum errNum�1  ��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �R  � ��� l     �/�.�-�/  �.  �-  � ��� i   w z��� I      �,�+�*�, (0 fmgui_appfrontmost fmGUI_AppFrontMost�+  �*  � k     E�� ��� l     �)���)  �   version 1.1   � ���    v e r s i o n   1 . 1� ��� l     �(�'�&�(  �'  �&  � ��%� O     E��� O    D��� Z    C���$�#� >   ��� 1    �"
�" 
pisf� m    �!
�! boovtrue� k    ?�� ��� r    ��� m    � 
�  boovtrue� 1    �
� 
pisf� ��� I   ���
� .sysodelanull��� ��� nmbr� m    �� �  �    l   ����  �  �    l   ��   ) #close FMEmpower window if it's open    � F c l o s e   F M E m p o w e r   w i n d o w   i f   i t ' s   o p e n � Z    ?	�� =   '

 n    % 1   # %�
� 
pnam 4    #�
� 
cwin m   ! "��  m   % & � $ 2 e m p o w e r F M   T o o l b o x	 k   * ;  I  * 5��
� .prcsclicnull��� ��� uiel n   * 1 4   . 1�
� 
butT m   / 0��  4   * .�
� 
cwin m   , -�� �   � I  6 ;�
�	
�
 .sysodelanull��� ��� nmbr m   6 7�� �	  �  �  �  �  �$  �#  � 4    �
� 
pcap m     � , F i l e M a k e r   P r o   A d v a n c e d� m     �                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �%  �   l     ����  �  �    !"! i   { ~#$# I      ���� 00 fmgui_dataviewer_close fmGUI_DataViewer_Close�  �  $ k     3%% &'& l     � ()�   (   version 1.0   ) �**    v e r s i o n   1 . 0' +,+ l     ��������  ��  ��  , -��- O     3./. O    2010 k    122 343 n   565 I    �������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��  6  f    4 7��7 Q    189��8 I   (��:��
�� .prcsclicnull��� ��� uiel: n    $;<; 4   ! $��=
�� 
butT= m   " #���� < l   !>����> 6   !?@? 4   ��A
�� 
cwinA m    ���� @ =    BCB 1    ��
�� 
pnamC m    DD �EE  D a t a   V i e w e r��  ��  ��  9 R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  1 4    ��F
�� 
pcapF m    GG �HH , F i l e M a k e r   P r o   A d v a n c e d/ m     II�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  ��  " JKJ l     ��������  ��  ��  K LML i    �NON I      �������� .0 fmgui_inspector_close fmGUI_Inspector_Close��  ��  O k     rPP QRQ l     ��ST��  S   version 1.0   T �UU    v e r s i o n   1 . 0R VWV l     ��������  ��  ��  W X��X O     rYZY O    q[\[ k    p]] ^_^ n   `a` I    �������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��  a  f    _ bcb l   ��de��  d I C try the click twice in case the first only brings window to front.   e �ff �   t r y   t h e   c l i c k   t w i c e   i n   c a s e   t h e   f i r s t   o n l y   b r i n g s   w i n d o w   t o   f r o n t .c ghg Q    .ij��i r    %klk m    ���� l n      mnm 1   " $��
�� 
pidxn l   "o����o 6   "pqp 4   ��r
�� 
cwinr m    ���� q =   !sts 1    ��
�� 
pnamt m     uu �vv  I n s p e c t o r��  ��  j R      ������
�� .ascrerr ****      � ****��  ��  ��  h wxw Q   / Oyz��y I  2 F��{��
�� .prcsclicnull��� ��� uiel{ n   2 B|}| 4   ? B��~
�� 
butT~ m   @ A���� } l  2 ?���� 6  2 ?��� 4  2 6���
�� 
cwin� m   4 5���� � =  7 >��� 1   8 :��
�� 
pnam� m   ; =�� ���  I n s p e c t o r��  ��  ��  z R      ������
�� .ascrerr ****      � ****��  ��  ��  x ���� Q   P p����� I  S g����
�� .prcsclicnull��� ��� uiel� n   S c��� 4   ` c��
� 
butT� m   a b�� � l  S `���� 6  S `��� 4  S W��
� 
cwin� m   U V�� � =  X _��� 1   Y [�
� 
pnam� m   \ ^�� ���  I n s p e c t o r�  �  �  � R      ���
� .ascrerr ****      � ****�  �  ��  ��  \ 4    ��
� 
pcap� m    �� ��� , F i l e M a k e r   P r o   A d v a n c e dZ m     ���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  ��  M ��� l     ����  �  �  � ��� i   � ���� I      ���� 00 fmgui_inspector_ensure fmGUI_Inspector_Ensure�  �  � k     h�� ��� l     ����  �   version 1.1   � ���    v e r s i o n   1 . 1� ��� l     ����  �  �  � ��� Q     f���� k    R�� ��� I    ���� 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout�  �  � ��� O   	 R��� O    Q��� k    P�� ��� l   ����  �  �  � ��� n   ��� I    ���� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �  �  f    � ��� l   ����  �  �  � ��� Z    M����� H    ,�� l   +���� I   +���
� .coredoexnull���     ****� l   '���� 6   '��� 4   ��
� 
cwin� m    �� � E    &��� 1     "�
� 
pnam� m   # %�� ���  I n s p e c t o r�  �  �  �  �  � I  / I���
� .prcsclicnull��� ��� uiel� l  / E���� 6  / E��� n   / <��� 4  9 <��
� 
menI� m   : ;�� � n   / 9��� 4   6 9��
� 
menE� m   7 8�� � n   / 6��� 4   3 6��
� 
mbri� m   4 5�� ���  V i e w� 4   / 3��
� 
mbar� m   1 2�� � =  = D��� 1   > @�
� 
pnam� m   A C�� ���  I n s p e c t o r�  �  �  �  �  � ��� L   N P�� m   N O�
� boovtrue�  � 4    ��
� 
pcap� m    �� ��� , F i l e M a k e r   P r o   A d v a n c e d� m   	 
���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �  � R      ���
� .ascrerr ****      � ****� o      �� 0 errmsg errMsg� ���
� 
errn� o      �~�~ 0 errnum errNum�  � R   Z f�}��
�} .ascrerr ****      � ****� b   ` e��� m   ` c�� ��� 4 C o u l d n ' t   o p e n   I n s p e c t o r   -  � o   c d�|�| 0 errmsg errMsg� �{��z
�{ 
errn� o   ^ _�y�y 0 errnum errNum�z  � ��x� l  g g�w�v�u�w  �v  �u  �x  � ��� l     �t�s�r�t  �s  �r  � ��� i   � ���� I      �q�p�o�q 20 fmgui_modeensure_browse fmGUI_ModeEnsure_Browse�p  �o  � k     �� ��� l     �n���n  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     �m�l�k�m  �l  �k  �    Q      k      I    	�j�i�j $0 fmgui_modeselect fmGUI_ModeSelect 	�h	 m    

 �  B r o w s e�h  �i   �g l  
 
�f�e�d�f  �e  �d  �g   R      �c
�c .ascrerr ****      � **** o      �b�b 0 errmsg errMsg �a�`
�a 
errn o      �_�_ 0 errnum errNum�`   R    �^
�^ .ascrerr ****      � **** b     m     � B C o u l d n ' t   e n s u r e   i n   B r o w s e   M o d e   -   o    �]�] 0 errmsg errMsg �\�[
�\ 
errn o    �Z�Z 0 errnum errNum�[    l   �Y�X�W�Y  �X  �W   �V l   �U�T�S�U  �T  �S  �V  �  l     �R�Q�P�R  �Q  �P    i   � � I      �O�N�M�O .0 fmgui_modeensure_find fmGUI_ModeEnsure_Find�N  �M   k        !"! l     �L#$�L  #   version 1.0   $ �%%    v e r s i o n   1 . 0" &'& l     �K�J�I�K  �J  �I  ' ()( Q     *+,* k    -- ./. I    	�H0�G�H $0 fmgui_modeselect fmGUI_ModeSelect0 1�F1 m    22 �33  F i n d�F  �G  / 4�E4 l  
 
�D�C�B�D  �C  �B  �E  + R      �A56
�A .ascrerr ****      � ****5 o      �@�@ 0 errmsg errMsg6 �?7�>
�? 
errn7 o      �=�= 0 errnum errNum�>  , R    �<89
�< .ascrerr ****      � ****8 b    :;: m    << �== B C o u l d n ' t   e n s u r e   i n   B r o w s e   M o d e   -  ; o    �;�; 0 errmsg errMsg9 �:>�9
�: 
errn> o    �8�8 0 errnum errNum�9  ) ?@? l   �7�6�5�7  �6  �5  @ A�4A l   �3�2�1�3  �2  �1  �4   BCB l     �0�/�.�0  �/  �.  C DED i   � �FGF I      �-�,�+�- 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout�,  �+  G k     HH IJI l     �*KL�*  K   version 1.0   L �MM    v e r s i o n   1 . 0J NON l     �)�(�'�)  �(  �'  O PQP Q     RSTR k    UU VWV I    	�&X�%�& $0 fmgui_modeselect fmGUI_ModeSelectX Y�$Y m    ZZ �[[  L a y o u t�$  �%  W \�#\ l  
 
�"�!� �"  �!  �   �#  S R      �]^
� .ascrerr ****      � ****] o      �� 0 errmsg errMsg^ �_�
� 
errn_ o      �� 0 errnum errNum�  T R    �`a
� .ascrerr ****      � ****` b    bcb m    dd �ee B C o u l d n ' t   e n s u r e   i n   B r o w s e   M o d e   -  c o    �� 0 errmsg errMsga �f�
� 
errnf o    �� 0 errnum errNum�  Q g�g l   ����  �  �  �  E hih l     ����  �  �  i jkj i   � �lml I      �n�� $0 fmgui_modeselect fmGUI_ModeSelectn o�o o      �� 0 modetoselect modeToSelect�  �  m k     �pp qrq l     �
st�
  s   version 1.0   t �uu    v e r s i o n   1 . 0r vwv l     �	���	  �  �  w x�x Q     �yz{y O    r|}| O    q~~ k    p�� ��� n   ��� I    ���� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �  �  f    � ��� n   ��� I    ��� � .0 fmgui_inspector_close fmGUI_Inspector_Close�  �   �  f    � ��� l   ��������  ��  ��  � ��� l   ������  � @ : Need to click in upper-left corner of area before pasting   � ��� t   N e e d   t o   c l i c k   i n   u p p e r - l e f t   c o r n e r   o f   a r e a   b e f o r e   p a s t i n g� ��� r     ��� 4    ���
�� 
cwin� m    ���� � o      ���� 0 
modewindow 
modeWindow� ��� r   ! 0��� 6  ! .��� n   ! %��� 4  " %���
�� 
sgrp� m   # $���� � o   ! "���� 0 
modewindow 
modeWindow� D   & -��� 1   ' )��
�� 
desc� m   * ,�� ��� " M o d e   C o n t e n t   A r e a� o      ���� "0 modecontentarea modeContentArea� ��� r   1 6��� n   1 4��� 1   2 4��
�� 
desc� o   1 2���� "0 modecontentarea modeContentArea� o      ���� *0 modecontentareadesc modeContentAreaDesc� ��� r   7 =��� n   7 ;��� 4  8 ;���
�� 
cwor� m   9 :���� � o   7 8���� *0 modecontentareadesc modeContentAreaDesc� o      ���� 0 currentmode currentMode� ��� l  > >��������  ��  ��  � ��� Z   > k������� >  > A��� o   > ?���� 0 currentmode currentMode� o   ? @���� 0 modetoselect modeToSelect� k   D g�� ��� I  D I�����
�� .sysodelanull��� ��� nmbr� m   D E�� ?�      ��  � ��� r   J O��� b   J M��� o   J K���� 0 modetoselect modeToSelect� m   K L�� ��� 
   M o d e� o      ���� 0 menuitemname menuItemName� ���� I  P g�����
�� .prcsclicnull��� ��� uiel� l  P c������ n   P c��� 4   ^ c���
�� 
menI� o   a b���� 0 menuitemname menuItemName� n   P ^��� 4   Y ^���
�� 
menE� m   \ ]���� � n   P Y��� 4   T Y���
�� 
mbri� m   U X�� ���  V i e w� 4   P T���
�� 
mbar� m   R S���� ��  ��  ��  ��  ��  ��  � ��� l  l l��������  ��  ��  � ��� L   l n�� m   l m��
�� boovtrue� ���� l  o o��������  ��  ��  ��   4    ���
�� 
pcap� m   	 
�� ��� , F i l e M a k e r   P r o   A d v a n c e d} m    ���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  z R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� �����
�� 
errn� o      ���� 0 errnum errNum��  { R   z �����
�� .ascrerr ****      � ****� b   � ���� b   � ���� b   � ���� m   � ��� ��� 2 C o u l d n ' t   s w i t c h   t o   m o d e   '� o   � ����� 0 modetoselect modeToSelect� m   � ��� ���  '   -  � o   � ����� 0 errmsg errMsg� �����
�� 
errn� o   ~ ���� 0 errnum errNum��  �  k ��� l     ��������  ��  ��  � ��� i   � ���� I      ������� (0 fmgui_window_close fmGUI_Window_Close� ���� o      ����  0 somewindowname someWindowName��  ��  � k     �� ��� l     ������  �   version 1.1   � ���    v e r s i o n   1 . 1� ��� l     ��������  ��  ��  � ��� O     � � k      l   ��������  ��  ��    I   ����
�� .coreclosnull���    obj  4    ��
�� 
cwin o   
 ����  0 somewindowname someWindowName��   �� l   ��������  ��  ��  ��    5     ��	��
�� 
capp	 m    

 � > c o m . f i l e m a k e r . c l i e n t . a d v a n c e d 1 2
�� kfrmID  �  l   ��������  ��  ��    L     m    ��
�� boovtrue �� l   ��������  ��  ��  ��  �  l     �������  ��  �    i   � � I      ��� "0 windowwaituntil windowWaitUntil � o      �� 	0 prefs  �  �   k    C  l     ��     version 1.2    �    v e r s i o n   1 . 2  !  l     ����  �  �  ! "#" r     $%$ K     && �'(� 0 
windowname 
windowName' m    �
� 
null( �)*�  0 windownametest windowNameTest) m    ++ �,,  c o n t a i n s* �-.� 0 whichwindow whichWindow- m    // �00  a n y. �12� .0 waitcycledelayseconds waitCycleDelaySeconds1 m    33 ?�      2 �4�� 0 waitcyclemax waitCycleMax4 m   	 
�� �  % o      �� 0 defaultprefs defaultPrefs# 565 r    787 b    9:9 o    �� 	0 prefs  : o    �� 0 defaultprefs defaultPrefs8 o      �� 	0 prefs  6 ;<; l   ����  �  �  < =>= r    ?@? n    ABA o    �� 0 
windowname 
windowNameB o    �� 	0 prefs  @ o      �� 0 
windowname 
windowName> CDC r     EFE n    GHG o    ��  0 windownametest windowNameTestH o    �� 	0 prefs  F o      ��  0 windownametest windowNameTestD IJI r   ! &KLK n   ! $MNM o   " $�� 0 whichwindow whichWindowN o   ! "�� 	0 prefs  L o      �� 0 whichwindow whichWindowJ OPO l  ' '�~�}�|�~  �}  �|  P QRQ r   ' *STS m   ' (�{
�{ boovfalsT o      �z�z 0 checkresult checkResultR UVU l  + +�y�x�w�y  �x  �w  V WXW U   +>YZY k   59[[ \]\ O   5 �^_^ Z   9 `abc` =  9 <ded o   9 :�v�v 0 whichwindow whichWindowe m   : ;ff �gg  a n ya r   ? Khih n   ? Ijkj 1   E I�u
�u 
pnamk n   ? Elml 2   C E�t
�t 
cwinm 4   ? C�sn
�s 
pcapn m   A Boo �pp , F i l e M a k e r   P r o   A d v a n c e di o      �r�r "0 windownamecheck windowNameCheckb qrq =  N Ssts o   N O�q�q 0 whichwindow whichWindowt m   O Ruu �vv 
 f r o n tr w�pw r   V exyx n   V cz{z 1   _ c�o
�o 
pnam{ n   V _|}| 4   \ _�n~
�n 
cwin~ m   ] ^�m�m } 4   V \�l
�l 
pcap m   X [�� ��� , F i l e M a k e r   P r o   A d v a n c e dy o      �k�k "0 windownamecheck windowNameCheck�p  c l  h ���� k   h �� ��� r   h o��� c   h m��� o   h i�j�j 0 whichwindow whichWindow� m   i l�i
�i 
nmbr� o      �h�h 0 windowindex windowIndex� ��g� r   p ��� n   p }��� 1   y }�f
�f 
pnam� n   p y��� 4   v y�e�
�e 
cwin� o   w x�d�d 0 windowindex windowIndex� 4   p v�c�
�c 
pcap� m   r u�� ��� , F i l e M a k e r   P r o   A d v a n c e d� o      �b�b "0 windownamecheck windowNameCheck�g  � + % whichWindow  is window index number:   � ��� J   w h i c h W i n d o w     i s   w i n d o w   i n d e x   n u m b e r :_ m   5 6���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  ] ��� l  � ��a�`�_�a  �`  �_  � ��� l  � ��^�]�\�^  �]  �\  � ��� Z   �%����[� =  � ���� o   � ��Z�Z  0 windownametest windowNameTest� m   � ��� ���  c o n t a i n s� k   � ��� ��� r   � ���� l  � ���Y�X� E   � ���� o   � ��W�W "0 windownamecheck windowNameCheck� o   � ��V�V 0 
windowname 
windowName�Y  �X  � o      �U�U 0 checkresult checkResult� ��T� l  � ��S�R�Q�S  �R  �Q  �T  � ��� =  � ���� o   � ��P�P  0 windownametest windowNameTest� m   � ��� ���   d o e s   n o t   c o n t a i n� ��� k   � ��� ��� r   � ���� l  � ���O�N� H   � ��� E   � ���� o   � ��M�M "0 windownamecheck windowNameCheck� o   � ��L�L 0 
windowname 
windowName�O  �N  � o      �K�K 0 checkresult checkResult� ��J� l  � ��I�H�G�I  �H  �G  �J  � ��� =  � ���� o   � ��F�F  0 windownametest windowNameTest� m   � ��� ���  e q u a l s� ��� k   � ��� ��� r   � ���� l  � ���E�D� =  � ���� o   � ��C�C "0 windownamecheck windowNameCheck� o   � ��B�B 0 
windowname 
windowName�E  �D  � o      �A�A 0 checkresult checkResult� ��@� l  � ��?�>�=�?  �>  �=  �@  � ��� =  � ���� o   � ��<�<  0 windownametest windowNameTest� m   � ��� ���  i s� ��� k   � ��� ��� r   � ���� l  � ���;�:� =  � ���� o   � ��9�9 "0 windownamecheck windowNameCheck� o   � ��8�8 0 
windowname 
windowName�;  �:  � o      �7�7 0 checkresult checkResult� ��6� l  � ��5�4�3�5  �4  �3  �6  � ��� =  � ���� o   � ��2�2  0 windownametest windowNameTest� m   � ��� ���  s t a r t s   w i t h� ��� k   � ��� ��� r   � ���� l  � ���1�0� C   � ���� o   � ��/�/ "0 windownamecheck windowNameCheck� o   � ��.�. 0 
windowname 
windowName�1  �0  � o      �-�- 0 checkresult checkResult� ��,� l  � ��+�*�)�+  �*  �)  �,  � ��� =  � ���� o   � ��(�(  0 windownametest windowNameTest� m   � ��� ��� & d o e s   n o t   s t a r t   w i t h� ��� k   � ��� ��� r   � ��  � l  � � �'�&  H   � �   C   � �    o   � ��%�% "0 windownamecheck windowNameCheck  o   � ��$�$ 0 
windowname 
windowName�'  �&     o      �#�# 0 checkresult checkResult�  �"  l  � ��!� ��!  �   �  �"  �     =  � �  	  o   � ���  0 windownametest windowNameTest 	 m   � � 
 
 �    e n d s   w i t h      k   � �       r   � �    l  � � ��  D   � �    o   � ��� "0 windownamecheck windowNameCheck  o   � ��� 0 
windowname 
windowName�  �    o      �� 0 checkresult checkResult   �  l  � �����  �  �  �        =     o  ��  0 windownametest windowNameTest  m     �   " d o e s   n o t   e n d   w i t h      r  	     l 	 !�� ! H  	 " " D  	 # $ # o  	
�� "0 windownamecheck windowNameCheck $ o  
�� 0 
windowname 
windowName�  �     o      �� 0 checkresult checkResult   % & % =  ' ( ' o  ��  0 windownametest windowNameTest ( m   ) ) � * *  i s   n o t &  +� + k  ! , ,  - . - r   / 0 / l  1�� 1 >  2 3 2 o  �
�
 "0 windownamecheck windowNameCheck 3 o  �	�	 0 
windowname 
windowName�  �   0 o      �� 0 checkresult checkResult .  4� 4 l   ����  �  �  �  �  �[  �  5 6 5 l &&����  �  �   6  7 8 7 Z &/ 9 :� �� 9 o  &'���� 0 checkresult checkResult :  S  *+�   ��   8  ; < ; l 00��������  ��  ��   <  = > = I 07�� ?��
�� .sysodelanull��� ��� nmbr ? n  03 @ A @ o  13���� .0 waitcycledelayseconds waitCycleDelaySeconds A o  01���� 	0 prefs  ��   >  B C B l 88��������  ��  ��   C  D�� D l 88��������  ��  ��  ��  Z n   . 2 E F E o   / 1���� 0 waitcyclemax waitCycleMax F o   . /���� 	0 prefs  X  G H G l ??��������  ��  ��   H  I J I L  ?A K K o  ?@���� 0 checkresult checkResult J  L�� L l BB��������  ��  ��  ��    M N M l     ��������  ��  ��   N  O P O i   � � Q R Q I      �� S���� 20 windowwaituntil_frontis windowWaitUntil_FrontIS S  T�� T o      ���� 	0 prefs  ��  ��   R k      U U  V W V l     �� X Y��   X   version 1.0    Y � Z Z    v e r s i o n   1 . 0 W  [ \ [ l     ��������  ��  ��   \  ] ^ ] r      _ ` _ K      a a �� b c�� 0 
windowname 
windowName b m    ��
�� 
null c �� d e��  0 windownametest windowNameTest d m     f f � g g  i s e �� h i�� 0 whichwindow whichWindow h m     j j � k k 
 f r o n t i �� l m�� .0 waitcycledelayseconds waitCycleDelaySeconds l m     n n ?������� m �� o���� 0 waitcyclemax waitCycleMax o m   	 
���� d��   ` o      ���� 0 defaultprefs defaultPrefs ^  p q p r     r s r b     t u t o    ���� 	0 prefs   u o    ���� 0 defaultprefs defaultPrefs s o      ���� 	0 prefs   q  v w v l   ��������  ��  ��   w  x y x L     z z I    �� {���� "0 windowwaituntil windowWaitUntil {  |�� | o    ���� 	0 prefs  ��  ��   y  } ~ } l   ��������  ��  ��   ~  ��  l   ��������  ��  ��  ��   P  � � � l     ������  �  �   �  � � � i   � � � � � I      � ��� "0 indexoflistitem indexOfListItem �  � � � o      �� 0 somelist someList �  �� � o      �� 0 somelistitem someListItem�  �   � k     8 � �  � � � l     � � ��   � &   version 1.0, Daniel A. Shockley    � � � � @   v e r s i o n   1 . 0 ,   D a n i e l   A .   S h o c k l e y �  � � � l     ����  �  �   �  � � � Z     � ��� � H      � � E      � � � o     �� 0 somelist someList � o    �� 0 somelistitem someListItem � L    	 � � m    �����  �   �  � � � l   ����  �  �   �  � � � Y    6 �� � �� � k    1 � �  � � � r    " � � � n      � � � 4     � �
� 
cobj � o    �� 0 i   � o    �� 0 somelist someList � o      �� 0 onelistitem oneListItem �  � � � l  # #����  �  �   �  � � � Z  # / � ��� � =  # & � � � o   # $�� 0 onelistitem oneListItem � o   $ %�� 0 somelistitem someListItem � L   ) + � � o   ) *�� 0 i  �  �   �  �� � l  0 0����  �  �  �  � 0 i   � m    ��  � I   � ��
� .corecnte****       **** � o    �� 0 somelist someList�  �   �  � � � l  7 7����  �  �   �  �� � l  7 7����  �  �  �   �  � � � l     ����  �  �   �  � � � i   � � � � � I      � ��� 0 listcontains listContains �  � � � o      �� 0 somelist someList �  �� � o      �� "0 somecomplexitem someComplexItem�  �   � k     0 � �  � � � l     � � ��   �   version 1.0    � � � �    v e r s i o n   1 . 0 �  � � � l     ����  �  �   �  � � � X     + �� � � k    & � �  � � � r     � � � n     � � � 1    �
� 
pcnt � o    �� 0 oneitem oneItem � o      �� 0 oneitem oneItem �  � � � Z    $ � ���~ � =    � � � o    �}�} 0 oneitem oneItem � o    �|�| "0 somecomplexitem someComplexItem � k      � �  � � � l   �{�z�y�{  �z  �y   �  � � � L     � � m    �x
�x boovtrue �  ��w � l   �v�u�t�v  �u  �t  �w  �  �~   �  � � � l  % %�s�r�q�s  �r  �q   �  ��p � l  % %�o�n�m�o  �n  �m  �p  � 0 oneitem oneItem � o    �l�l 0 somelist someList �  � � � l  , ,�k�j�i�k  �j  �i   �  � � � L   , . � � m   , -�h
�h boovfals �  ��g � l  / /�f�e�d�f  �e  �d  �g   �  � � � l     �c�b�a�c  �b  �a   �  � � � i   � � � � � I      �` ��_�` $0 listuniquevalues listUniqueValues �  ��^ � o      �]�] 	0 prefs  �^  �_   � k     : � �  � � � l     �\ � ��\   �   version 1.0    � � � �    v e r s i o n   1 . 0 �  � � � l     �[�Z�Y�[  �Z  �Y   �  � � � r      � � � n      � � � o    �X�X 0 	inputlist 	inputList � o     �W�W 	0 prefs   � o      �V�V 0 	inputlist 	inputList � ! !!  l   �U�T�S�U  �T  �S  ! !!! r    
!!! J    �R�R  ! o      �Q�Q 0 
uniquelist 
uniqueList! !!! l   �P�O�N�P  �O  �N  ! !!	! l   �M�L�K�M  �L  �K  !	 !
!!
 X    5!�J!! k    0!! !!! r     !!! n    !!! 1    �I
�I 
pcnt! o    �H�H 0 oneitem oneItem! o      �G�G 0 oneitem oneItem! !�F! Z   ! 0!!�E�D! H   ! %!! E   ! $!!! o   ! "�C�C 0 
uniquelist 
uniqueList! o   " #�B�B 0 oneitem oneItem! s   ( ,!!! o   ( )�A�A 0 oneitem oneItem! n      !!!  ;   * +! o   ) *�@�@ 0 
uniquelist 
uniqueList�E  �D  �F  �J 0 oneitem oneItem! o    �?�? 0 	inputlist 	inputList! !! ! l  6 6�>�=�<�>  �=  �<  !  !!!"!! L   6 8!#!# o   6 7�;�; 0 
uniquelist 
uniqueList!" !$�:!$ l  9 9�9�8�7�9  �8  �7  �:   � !%!&!% l     �6�5�4�6  �5  �4  !& !'!(!' i   � �!)!*!) I      �3!+�2�3 0 sort  !+ !,�1!, o      �0�0 0 oldlist oldList�1  �2  !* k     D!-!- !.!/!. l     �/!0!1�/  !0   version 1.0   !1 �!2!2    v e r s i o n   1 . 0!/ !3!4!3 l     �.�-�,�.  �-  �,  !4 !5!6!5 r     !7!8!7 J     
!9!9 !:!;!: n    !<!=!< 1    �+
�+ 
txdl!= 1     �*
�* 
ascr!; !>�)!> I   �(!?�'
�( .sysontocTEXT       shor!? m    �&�& 
�'  �)  !8 J      !@!@ !A!B!A o      �%�% 0 od  !B !C�$!C n     !D!E!D 1    �#
�# 
txdl!E 1    �"
�" 
ascr�$  !6 !F!G!F r    !!H!I!H c    !J!K!J o    �!�! 0 oldlist oldList!K m    � 
�  
TEXT!I o      �� 0 	textblock 	textBlock!G !L!M!L r   " /!N!O!N I  " -�!P�
� .sysoexecTEXT���     TEXT!P b   " )!Q!R!Q b   " '!S!T!S m   " #!U!U �!V!V 
 e c h o  !T n   # &!W!X!W 1   $ &�
� 
strq!X o   # $�� 0 	textblock 	textBlock!R m   ' (!Y!Y �!Z!Z    |   s o r t�  !O o      �� 0 sortedblock sortedBlock!M ![!\![ r   0 5!]!^!] o   0 1�
� 
ret !^ n     !_!`!_ 1   2 4�
� 
txdl!` 1   1 2�
� 
ascr!\ !a!b!a r   6 ;!c!d!c n   6 9!e!f!e 2   7 9�
� 
citm!f o   6 7�� 0 sortedblock sortedBlock!d o      �� 0 
sortedlist 
sortedList!b !g!h!g r   < A!i!j!i o   < =�� 0 od  !j n     !k!l!k 1   > @�
� 
txdl!l 1   = >�
� 
ascr!h !m!n!m l  B B����  �  �  !n !o�!o L   B D!p!p o   B C�� 0 
sortedlist 
sortedList�  !( !q!r!q l     ��
�	�  �
  �	  !r !s!t!s i   � �!u!v!u I      �!w�� 0 
logconsole 
logConsole!w !x!y!x o      �� 0 processname processName!y !z�!z o      �� 0 
consolemsg 
consoleMsg�  �  !v k     H!{!{ !|!}!| l     �!~!�  !~   version 2.0   ! �!�!�    v e r s i o n   2 . 0!} !�!�!� l     ��� �  �  �   !� !�!�!� r     !�!�!� I     ��!�����  0 coercetostring coerceToString!� !���!� o    ���� 0 
consolemsg 
consoleMsg��  ��  !� o      ���� 0 
consolemsg 
consoleMsg!� !�!�!� l  	 !�!�!�!� r   	 !�!�!� I   	 ��!����� 0 replacesimple replaceSimple!� !���!� J   
 !�!� !�!�!� o   
 ���� 0 
consolemsg 
consoleMsg!� !�!�!� I   ��!���
�� .sysontocTEXT       shor!� m    ����  ��  !� !���!� m    !�!� �!�!�  ��  ��  ��  !� o      ���� 0 
consolemsg 
consoleMsg!� %  ASCII 0 breaks shell scripting   !� �!�!� >   A S C I I   0   b r e a k s   s h e l l   s c r i p t i n g!� !�!�!� Z    )!�!�����!� =   !�!�!� n    !�!�!� 1    ��
�� 
leng!� o    ���� 0 
consolemsg 
consoleMsg!� m    ����  !� k   " %!�!� !�!�!� l  " "��!�!���  !� H B we still want this function to log that an empty string was sent:   !� �!�!� �   w e   s t i l l   w a n t   t h i s   f u n c t i o n   t o   l o g   t h a t   a n   e m p t y   s t r i n g   w a s   s e n t :!� !���!� r   " %!�!�!� m   " #!�!� �!�!�  [ E M P T Y   S T R I N G ]!� o      ���� 0 
consolemsg 
consoleMsg��  ��  ��  !� !�!�!� r   * =!�!�!� b   * ;!�!�!� b   * 7!�!�!� b   * 5!�!�!� b   * 1!�!�!� b   * /!�!�!� b   * -!�!�!� m   * +!�!� �!�!�  l o g g e r!� 1   + ,��
�� 
spac!� m   - .!�!� �!�!�  - t!� 1   / 0��
�� 
spac!� n   1 4!�!�!� 1   2 4��
�� 
strq!� o   1 2���� 0 processname processName!� 1   5 6��
�� 
spac!� n   7 :!�!�!� 1   8 :��
�� 
strq!� o   7 8���� 0 
consolemsg 
consoleMsg!� o      ���� 0 shellcommand shellCommand!� !�!�!� l  > >��������  ��  ��  !� !�!�!� I  > C��!���
�� .sysoexecTEXT���     TEXT!� o   > ?���� 0 shellcommand shellCommand��  !� !�!�!� L   D F!�!� o   D E���� 0 shellcommand shellCommand!� !���!� l  G G��������  ��  ��  ��  !t !�!�!� l     ��������  ��  ��  !� !�!�!� i   � �!�!�!� I      ��!����� 0 loglevel logLEVEL!� !�!�!� o      ���� 	0 level  !� !���!� o      ���� 0 somemsg someMsg��  ��  !� k     4!�!� !�!�!� l     ��!�!���  !�   version 1.0   !� �!�!�    v e r s i o n   1 . 0!� !�!�!� l     ��������  ��  ��  !� !�!�!� r     !�!�!� m     ���� !� o      ���� 0 	maxxcount 	maxXcount!� !�!�!� r    !�!�!� b    !�!�!� o    	���� 0 
scriptname 
ScriptName!� m   	 
!�!� �!�!�  _!� o      ���� 0 logname logName!� !�!�!� r    !�!�!� [    !�!�!� \    !�!�!� o    ���� 0 	maxxcount 	maxXcount!� o    ���� 	0 level  !� m    ���� !� o      ���� 0 xcount xCount!� !�!�!� l   ��������  ��  ��  !� !�!�!� Y    *!��!�!��!� r     %!�!�!� b     #!�" !� o     !�� 0 logname logName"  m   ! """ �""  X!� o      �� 0 logname logName� 0 i  !� m    �� !� o    �� 0 xcount xCount�  !� """ l  + +����  �  �  " """ I   + 2�"�� 0 
logconsole 
logConsole" ""	" o   , -�� 0 logname logName"	 "
�"
 o   - .�� 0 somemsg someMsg�  �  " "�" l  3 3����  �  �  �  !� """ l     ����  �  �  " """ i   � �""" I      �"�� 0 logmain logMAIN" "�" o      �� 0 somemsg someMsg�  �  " k     "" """ l     �""�  "   version 1.0   " �""    v e r s i o n   1 . 0" """ l     ����  �  �  " "�" l    """" I     �" �� 0 loglevel logLEVEL"  "!"""! m    ��  "" "#�"# o    �� 0 somemsg someMsg�  �  "    log at highest importance   " �"$"$ 4   l o g   a t   h i g h e s t   i m p o r t a n c e�  " "%"&"% l     ����  �  �  "& "'"("' i   � �")"*") I      �"+�� (0 systemnotification systemNotification"+ ",�", o      �� 	0 prefs  �  �  "* k     F"-"- "."/". l     �"0"1�  "0   version 1.0   "1 �"2"2    v e r s i o n   1 . 0"/ "3"4"3 l     ����  �  �  "4 "5"6"5 r     "7"8"7 K     "9"9 �":";� 0 msg  ": m    "<"< �"="=  "; �">"?� 0 msgtitle msgTitle"> m    "@"@ �"A"A  "? �"B"C� 0 msgsubtitle msgSubtitle"B m    "D"D �"E"E  "C �"F"G� 0 msgsound msgSound"F m    "H"H �"I"I  d e f a u l t"G �"J�� 0 nosound noSound"J m   	 
�
� 
null�  "8 o      �� 0 defaultprefs defaultPrefs"6 "K"L"K r    "M"N"M b    "O"P"O o    �� 	0 prefs  "P o    �� 0 defaultprefs defaultPrefs"N o      �� 	0 prefs  "L "Q"R"Q l   ����  �  �  "R "S"T"S Z    D"U"V�"W"U >   "X"Y"X n    "Z"["Z o    �� 0 nosound noSound"[ o    �� 	0 prefs  "Y m    �
� 
null"V I   ,�"\"]
� .sysonotfnull��� ��� TEXT"\ n     "^"_"^ o     �~�~ 0 msg  "_ o    �}�} 	0 prefs  "] �|"`"a
�| 
appr"` n   ! $"b"c"b o   " $�{�{ 0 msgtitle msgTitle"c o   ! "�z�z 	0 prefs  "a �y"d�x
�y 
subt"d n   % ("e"f"e o   & (�w�w 0 msgsubtitle msgSubtitle"f o   % &�v�v 	0 prefs  �x  �  "W I  / D�u"g"h
�u .sysonotfnull��� ��� TEXT"g n   / 2"i"j"i o   0 2�t�t 0 msg  "j o   / 0�s�s 	0 prefs  "h �r"k"l
�r 
appr"k n   3 6"m"n"m o   4 6�q�q 0 msgtitle msgTitle"n o   3 4�p�p 	0 prefs  "l �o"o"p
�o 
subt"o n   7 :"q"r"q o   8 :�n�n 0 msgsubtitle msgSubtitle"r o   7 8�m�m 	0 prefs  "p �l"s�k
�l 
nsou"s n   ; >"t"u"t o   < >�j�j 0 msgsound msgSound"u o   ; <�i�i 	0 prefs  �k  "T "v"w"v l  E E�h�g�f�h  �g  �f  "w "x�e"x l  E E�d�c�b�d  �c  �b  �e  "( "y"z"y l     �a�`�_�a  �`  �_  "z "{"|"{ i   � �"}"~"} I      �^"�]�^ 0 clickatcoords clickAtCoords" "�"�"� o      �\�\ 0 xclick xClick"� "��["� o      �Z�Z 0 yclick yClick�[  �]  "~ k     0"�"� "�"�"� l     �Y"�"��Y  "�   version 1.0   "� �"�"�    v e r s i o n   1 . 0"� "�"�"� l     �X�W�V�X  �W  �V  "� "�"�"� r     	"�"�"� I    �U"�"�
�U .sysorondlong        doub"� o     �T�T 0 xclick xClick"� �S"��R
�S 
dire"� m    �Q
�Q olierndD�R  "� o      �P�P 0 xclick xClick"� "�"�"� r   
 "�"�"� I  
 �O"�"�
�O .sysorondlong        doub"� o   
 �N�N 0 yclick yClick"� �M"��L
�M 
dire"� m    �K
�K olierndD�L  "� o      �J�J 0 yclick yClick"� "�"�"� I   '�I"��H
�I .sysoexecTEXT���     TEXT"� b    #"�"�"� b    !"�"�"� b    "�"�"� b    "�"�"� n    "�"�"� 1    �G
�G 
strq"� o    �F�F &0 clickcommandposix clickCommandPosix"� m    "�"� �"�"�    - r   c :"� o    �E�E 0 xclick xClick"� m     "�"� �"�"�  ,"� o   ! "�D�D 0 yclick yClick�H  "� "��C"� L   ( 0"�"� l  ( /"��B�A"� b   ( /"�"�"� b   ( -"�"�"� l  ( +"��@�?"� c   ( +"�"�"� o   ( )�>�> 0 xclick xClick"� m   ) *�=
�= 
TEXT�@  �?  "� m   + ,"�"� �"�"�  ,"� o   - .�<�< 0 yclick yClick�B  �A  �C  "| "�"�"� l     �;�:�9�;  �:  �9  "� "�"�"� i   � �"�"�"� I      �8"��7�8 *0 clickobjectbycoords clickObjectByCoords"� "��6"� o      �5�5 0 
someobject 
someObject�6  �7  "� k     M"�"� "�"�"� l     �4"�"��4  "�   version 1.0   "� �"�"�    v e r s i o n   1 . 0"� "�"�"� l     �3�2�1�3  �2  �1  "� "�"�"� w     '"�"�"� k    '"�"� "�"�"� r    "�"�"� n    "�"�"� 1    �0
�0 
posn"� o    �/�/ 0 
someobject 
someObject"� J      "�"� "�"�"� o      �.�. 0 xcoord xCoord"� "��-"� o      �,�, 0 ycoord yCoord�-  "� "��+"� r    '"�"�"� n    "�"�"� 1    �*
�* 
ptsz"� o    �)�) 0 
someobject 
someObject"� J      "�"� "�"�"� o      �(�( 0 xsize xSize"� "��'"� o      �&�& 0 ysize ySize�'  �+  "��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  "� "�"�"� l  ( (�%�$�#�%  �$  �#  "� "�"�"� l  ( 5"�"�"�"� r   ( 5"�"�"� I  ( 3�""�"�
�" .sysorondlong        doub"� l  ( -"��!� "� [   ( -"�"�"� o   ( )�� 0 xcoord xCoord"� ^   ) ,"�"�"� o   ) *�� 0 xsize xSize"� m   * +�� �!  �   "� �"��
� 
dire"� m   . /�
� olierndD�  "� o      �� 0 xclick xClick"�   middle   "� �"�"�    m i d d l e"� "�"�"� l  6 C"�"�"�"� r   6 C"�"�"� I  6 A�"�"�
� .sysorondlong        doub"� l  6 ;"���"� [   6 ;"�"�"� o   6 7�� 0 ycoord yCoord"� ^   7 :"�"�"� o   7 8�� 0 ysize ySize"� m   8 9�� �  �  "� �"��
� 
dire"� m   < =�
� olierndD�  "� o      �� 0 yclick yClick"�   middle   "� �"�"�    m i d d l e"� # ##  l  D D����  �  �  # ### I   D K�#�
� 0 clickatcoords clickAtCoords# ### o   E F�	�	 0 xclick xClick# #�# o   F G�� 0 yclick yClick�  �
  # #�# l  L L����  �  �  �  "� #	#
#	 l     ��� �  �  �   #
 ### i   � �### I      ��#����  0 coercetostring coerceToString# #��# o      ����  0 incomingobject incomingObject��  ��  # k    �## ### l     ��##��  #   version 2.2   # �##    v e r s i o n   2 . 2# ### l     ��������  ��  ��  # #��# Z    �##### =    ### n     # #!#  m    ��
�� 
pcls#! o     ����  0 incomingobject incomingObject# m    ��
�� 
TEXT# k    #"#" ###$## r    #%#&#% l   #'����#' c    #(#)#( o    	����  0 incomingobject incomingObject#) m   	 
��
�� 
TEXT��  ��  #& K      #*#* ��#+��
�� 
ctxt#+ o      ����  0 incomingobject incomingObject��  #$ #,��#, L    #-#- o    ����  0 incomingobject incomingObject��  # #.#/#. =   #0#1#0 n    #2#3#2 m    ��
�� 
pcls#3 o    ����  0 incomingobject incomingObject#1 m    ��
�� 
long#/ #4#5#4 k     /#6#6 #7#8#7 r     *#9#:#9 l    ##;����#; c     ##<#=#< o     !����  0 incomingobject incomingObject#= m   ! "��
�� 
TEXT��  ��  #: K      #>#> ��#?��
�� 
ctxt#? o      ����  0 incomingobject incomingObject��  #8 #@��#@ L   + /#A#A c   + .#B#C#B o   + ,����  0 incomingobject incomingObject#C m   , -��
�� 
TEXT��  #5 #D#E#D =  2 7#F#G#F n   2 5#H#I#H m   3 5��
�� 
pcls#I o   2 3����  0 incomingobject incomingObject#G m   5 6��
�� 
doub#E #J#K#J k   : I#L#L #M#N#M r   : D#O#P#O l  : =#Q����#Q c   : =#R#S#R o   : ;����  0 incomingobject incomingObject#S m   ; <��
�� 
TEXT��  ��  #P K      #T#T ��#U��
�� 
ctxt#U o      ����  0 incomingobject incomingObject��  #N #V��#V L   E I#W#W c   E H#X#Y#X o   E F����  0 incomingobject incomingObject#Y m   F G��
�� 
TEXT��  #K #Z#[#Z =  L Q#\#]#\ n   L O#^#_#^ m   M O��
�� 
pcls#_ o   L M����  0 incomingobject incomingObject#] m   O P��
�� 
utxt#[ #`��#` k   T c#a#a #b#c#b r   T ^#d#e#d l  T W#f����#f c   T W#g#h#g o   T U����  0 incomingobject incomingObject#h m   U V��
�� 
TEXT��  ��  #e K      #i#i ��#j��
�� 
ctxt#j o      ����  0 incomingobject incomingObject��  #c #k��#k L   _ c#l#l c   _ b#m#n#m o   _ `����  0 incomingobject incomingObject#n m   ` a��
�� 
TEXT��  ��  # k   f�#o#o #p#q#p l  f f��#r#s��  #r , & LIST, RECORD, styled text, or unknown   #s �#t#t L   L I S T ,   R E C O R D ,   s t y l e d   t e x t ,   o r   u n k n o w n#q #u#v#u Q   f~#w#x#y#w k   i �#z#z #{#|#{ Q   i �#}#~##} k   l s#�#� #�#�#� r   l q#�#�#� m   l m#�#� �#�#� ` s o m e _ U U I D _ V a l u e _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 D#� n      #�#�#� o   n p���� j0 3some_uuid_property_54f827c7379e4073b5a216bb9cde575d 3some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D#� m   m n#�#� �#�#�  X X X X#� #�#�#� l  r r������  �  �  #� #�#�#� l  r r�#�#��  #� V P GENERATE the error message for a known 'object' (here, a string) so we can get    #� �#�#� �   G E N E R A T E   t h e   e r r o r   m e s s a g e   f o r   a   k n o w n   ' o b j e c t '   ( h e r e ,   a   s t r i n g )   s o   w e   c a n   g e t  #� #��#� l  r r�#�#��  #� 7 1 the 'lead' and 'trail' part of the error message   #� �#�#� b   t h e   ' l e a d '   a n d   ' t r a i l '   p a r t   o f   t h e   e r r o r   m e s s a g e�  #~ R      �#�#�
� .ascrerr ****      � ****#� o      �� 0 errmsg errMsg#� �#��
� 
errn#� o      �� 0 errnum errNum�  # k   { �#�#� #�#�#� r   { �#�#�#� J   { �#�#� #�#�#� n  { ~#�#�#� 1   | ~�
� 
txdl#� 1   { |�
� 
ascr#� #��#� J   ~ �#�#� #��#� m   ~ #�#� �#�#�  " X X X X "�  �  #� J      #�#� #�#�#� o      �� 0 	olddelims 	oldDelims#� #��#� n     #�#�#� 1   � ��
� 
txdl#� 1   � ��
� 
ascr�  #� #�#�#� r   � �#�#�#� n   � �#�#�#� 2  � ��
� 
citm#� o   � ��� 0 errmsg errMsg#� J      #�#� #�#�#� o      �� 0 
errmsglead 
errMsgLead#� #��#� o      �� 0 errmsgtrail errMsgTrail�  #� #��#� r   � �#�#�#� o   � ��� 0 	olddelims 	oldDelims#� n     #�#�#� 1   � ��
� 
txdl#� 1   � ��
� 
ascr�  #| #�#�#� l  � �����  �  �  #� #�#�#� l  � ��#�#��  #� = 7 now, generate error message for the SPECIFIED object:    #� �#�#� n   n o w ,   g e n e r a t e   e r r o r   m e s s a g e   f o r   t h e   S P E C I F I E D   o b j e c t :  #� #�#�#� r   � �#�#�#� m   � �#�#� �#�#� ` s o m e _ U U I D _ V a l u e _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 D#� n      #�#�#� o   � ��� j0 3some_uuid_property_54f827c7379e4073b5a216bb9cde575d 3some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D#� o   � ���  0 incomingobject incomingObject#� #�#�#� l  � �����  �  �  #� #��#� l  � �����  �  �  �  #x R      �#��
� .ascrerr ****      � ****#� o      �� 0 errmsg errMsg�  #y Z   �~#�#��#�#� F   � �#�#�#� C   � �#�#�#� o   � ��� 0 errmsg errMsg#� m   � �#�#� �#�#� � S y s t e m   E v e n t s   g o t   a n   e r r o r :   C a n  t   m a k e   s o m e _ U U I D _ P r o p e r t y _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 D   o f  #� D   � �#�#�#� o   � ��� 0 errmsg errMsg#� m   � �#�#� �#�#� ( i n t o   t y p e   s p e c i f i e r .#� k   �#�#� #�#�#� r   � �#�#�#� m   � �#�#� �#�#� � S y s t e m   E v e n t s   g o t   a n   e r r o r :   C a n  t   m a k e   s o m e _ U U I D _ P r o p e r t y _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 D   o f  #� o      �� 0 
errmsglead 
errMsgLead#� #�#�#� r   � �#�#�#� m   � �#�#� �#�#� *   i n t o   t y p e   s p e c i f i e r .#� o      �� 0 errmsgtrail errMsgTrail#� #�#�#� l  � �����  �  �  #� #�#�#� r   � �#�#�#� J   � �#�#� #�#�#� n  � �#�#�#� 1   � ��
� 
txdl#� 1   � ��
� 
ascr#� #��#� o   � ��� 0 
errmsglead 
errMsgLead�  #� J      #�#� #�#�#� o      �� 0 od  #� #��#� n     #�#�#� 1   � ��
� 
txdl#� 1   � ��
� 
ascr�  #� #�#�#� l  � �����  �  �  #� #�#�#� r   � �$ $$  n   � �$$$ 4   � ��$
� 
citm$ m   � ��� $ o   � ��� 0 errmsg errMsg$ o      �~�~ 0 objectstring objectString#� $$$ r   �$$$ o   � ��}�} 0 errmsgtrail errMsgTrail$ n     $	$
$	 1   �|
�| 
txdl$
 1   � �{
�{ 
ascr$ $$$ l �z�y�x�z  �y  �x  $ $$$ r  
$$$ n  $$$ 4  �w$
�w 
citm$ m  �v�v $ o  �u�u 0 objectstring objectString$ o      �t�t 0 objectstring objectString$ $$$ r  $$$ o  �s�s 0 od  $ n     $$$ 1  �r
�r 
txdl$ 1  �q
�q 
ascr$ $$$ l �p�o�n�p  �o  �n  $ $$$ l �m�l�k�m  �l  �k  $ $�j$ l �i�h�g�i  �h  �g  �j  �  #� k  ~$$ $ $!$  l �f$"$#�f  $"  tell me to log errMsg   $# �$$$$ * t e l l   m e   t o   l o g   e r r M s g$! $%$&$% r  $'$($' o  �e�e 0 errmsg errMsg$( o      �d�d 0 objectstring objectString$& $)$*$) l �c�b�a�c  �b  �a  $* $+$,$+ Z  G$-$.�`�_$- E  $/$0$/ o  �^�^ 0 objectstring objectString$0 o  �]�] 0 
errmsglead 
errMsgLead$. k  C$1$1 $2$3$2 r  6$4$5$4 J  %$6$6 $7$8$7 n "$9$:$9 1   "�\
�\ 
txdl$: 1   �[
�[ 
ascr$8 $;�Z$; o  "#�Y�Y 0 
errmsglead 
errMsgLead�Z  $5 J      $<$< $=$>$= o      �X�X 0 od  $> $?�W$? n     $@$A$@ 1  24�V
�V 
txdl$A 1  12�U
�U 
ascr�W  $3 $B$C$B r  7=$D$E$D n  7;$F$G$F 4  8;�T$H
�T 
citm$H m  9:�S�S $G o  78�R�R 0 objectstring objectString$E o      �Q�Q 0 objectstring objectString$C $I�P$I r  >C$J$K$J o  >?�O�O 0 od  $K n     $L$M$L 1  @B�N
�N 
txdl$M 1  ?@�M
�M 
ascr�P  �`  �_  $, $N$O$N l HH�L�K�J�L  �K  �J  $O $P$Q$P Z  H|$R$S�I�H$R E  HK$T$U$T o  HI�G�G 0 objectstring objectString$U o  IJ�F�F 0 errmsgtrail errMsgTrail$S k  Nx$V$V $W$X$W r  Ne$Y$Z$Y J  NT$[$[ $\$]$\ n NQ$^$_$^ 1  OQ�E
�E 
txdl$_ 1  NO�D
�D 
ascr$] $`�C$` o  QR�B�B 0 errmsgtrail errMsgTrail�C  $Z J      $a$a $b$c$b o      �A�A 0 od  $c $d�@$d n     $e$f$e 1  ac�?
�? 
txdl$f 1  `a�>
�> 
ascr�@  $X $g$h$g r  fk$i$j$i o  fg�=�= 0 errmsgtrail errMsgTrail$j n     $k$l$k 1  hj�<
�< 
txdl$l 1  gh�;
�; 
ascr$h $m$n$m r  lr$o$p$o n  lp$q$r$q 4  mp�:$s
�: 
citm$s m  no�9�9 $r o  lm�8�8 0 objectstring objectString$p o      �7�7 0 objectstring objectString$n $t�6$t r  sx$u$v$u o  st�5�5 0 od  $v n     $w$x$w 1  uw�4
�4 
txdl$x 1  tu�3
�3 
ascr�6  �I  �H  $Q $y$z$y l }}�2�1�0�2  �1  �0  $z ${�/${ l }}�.$|$}�.  $| O Iset {text:objectString} to (objectString as string) -- what does THIS do?   $} �$~$~ � s e t   { t e x t : o b j e c t S t r i n g }   t o   ( o b j e c t S t r i n g   a s   s t r i n g )   - -   w h a t   d o e s   T H I S   d o ?�/  #v $$�$ l �-�,�+�-  �,  �+  $� $��*$� L  �$�$� o  ��)�) 0 objectstring objectString�*  ��  # $�$�$� l     �(�'�&�(  �'  �&  $� $�$�$� i   � �$�$�$� I      �%$��$�% 0 gettextbefore getTextBefore$� $�$�$� o      �#�# 0 
sourcetext 
sourceTEXT$� $��"$� o      �!�! 0 stophere stopHere�"  �$  $� k     Q$�$� $�$�$� l     � $�$��   $�   version 1.1   $� �$�$�    v e r s i o n   1 . 1$� $�$�$� l     ����  �  �  $� $��$� Q     Q$�$�$�$� k    A$�$� $�$�$� r    $�$�$� J    	$�$� $�$�$� n   $�$�$� 1    �
� 
txdl$� 1    �
� 
ascr$� $��$� o    �� 0 stophere stopHere�  $� J      $�$� $�$�$� o      �� 0 	olddelims 	oldDelims$� $��$� n     $�$�$� 1    �
� 
txdl$� 1    �
� 
ascr�  $� $�$�$� Z    8$�$��$�$� =   $$�$�$� l   "$���$� I   "�$��
� .corecnte****       ****$� n    $�$�$� 2   �
� 
citm$� o    �� 0 
sourcetext 
sourceTEXT�  �  �  $� m   " #�� $� k   ' /$�$� $�$�$� r   ' ,$�$�$� o   ' (�� 0 	olddelims 	oldDelims$� n     $�$�$� 1   ) +�

�
 
txdl$� 1   ( )�	
�	 
ascr$� $��$� L   - /$�$� m   - .$�$� �$�$�  �  �  $� r   2 8$�$�$� n   2 6$�$�$� 4   3 6�$�
� 
citm$� m   4 5�� $� o   2 3�� 0 
sourcetext 
sourceTEXT$� l     $���$� o      �� 0 finalresult finalResult�  �  $� $�$�$� r   9 >$�$�$� o   9 :�� 0 	olddelims 	oldDelims$� n     $�$�$� 1   ; =� 
�  
txdl$� 1   : ;��
�� 
ascr$� $���$� L   ? A$�$� o   ? @���� 0 finalresult finalResult��  $� R      ��$�$�
�� .ascrerr ****      � ****$� o      ���� 0 errmsg errMsg$� ��$���
�� 
errn$� o      ���� 0 errnum errNum��  $� k   I Q$�$� $�$�$� r   I N$�$�$� o   I J���� 0 	olddelims 	oldDelims$� n     $�$�$� 1   K M��
�� 
txdl$� 1   J K��
�� 
ascr$� $���$� l  O Q$�$�$�$� L   O Q$�$� m   O P$�$� �$�$�  $� 3 - return nothing if the stop text is not found   $� �$�$� Z   r e t u r n   n o t h i n g   i f   t h e   s t o p   t e x t   i s   n o t   f o u n d��  �  $� $�$�$� l     ��������  ��  ��  $� $�$�$� i   � �$�$�$� I      ��$�����  0 gettextbetween getTextBetween$� $���$� o      ���� 	0 prefs  ��  ��  $� k     �$�$� $�$�$� l     ��$�$���  $�   version 1.6   $� �$�$�    v e r s i o n   1 . 6$� $�$�$� l     ��������  ��  ��  $� $�$�$� r     $�$�$� K     $�$� ��$�$��� 0 textitemnum textItemNum$� m    ���� $� ��$�����  0 includemarkers includeMarkers$� m    ��
�� boovfals��  $� o      ���� 0 defaultprefs defaultPrefs$� $�$�$� l  	 	��������  ��  ��  $� $�$�$� Z   	 '$�$�����$� F   	 $�$�$� l  	 % ����%  >  	 %%% n   	 %%% m   
 ��
�� 
pcls% o   	 
���� 	0 prefs  % m    ��
�� 
list��  ��  $� l   %����% >   %%% c    %%	% l   %
����%
 n    %%% m    ��
�� 
pcls% o    ���� 	0 prefs  ��  ��  %	 m    ��
�� 
TEXT% m    %% �%%  r e c o r d��  ��  $� R    #��%%
�� .ascrerr ****      � ****% m   ! "%% �%% g e t T e x t B e t w e e n   F A I L E D :   p a r a m e t e r   s h o u l d   b e   a   r e c o r d   o r   l i s t .   I f   i t   i s   m u l t i p l e   i t e m s ,   j u s t   m a k e   i t   i n t o   a   l i s t   t o   u p g r a d e   t o   t h i s   h a n d l e r .% ��%��
�� 
errn% m     ���� ��  ��  ��  $� %%% Z   ( `%%����% =  ( -%%% n   ( +%%% m   ) +��
�� 
pcls% o   ( )���� 	0 prefs  % m   + ,��
�� 
list% k   0 \%% %%% Z   0 F%% ����% =  0 7%!%"%! l  0 5%#����%# I  0 5��%$��
�� .corecnte****       ****%$ o   0 1���� 	0 prefs  ��  ��  ��  %" m   5 6���� %  r   : B%%%&%% n   : >%'%(%' 4   ; >��%)
�� 
cobj%) m   < =�� %( o   : ;�� 	0 prefs  %& n      %*%+%* o   ? A�� 0 textitemnum textItemNum%+ o   > ?�� 0 defaultprefs defaultPrefs��  ��  % %,�%, r   G \%-%.%- K   G Z%/%/ �%0%1� 0 
sourcetext 
sourceTEXT%0 n   H L%2%3%2 4   I L�%4
� 
cobj%4 m   J K�� %3 o   H I�� 	0 prefs  %1 �%5%6� 0 
beforetext 
beforeText%5 n   M Q%7%8%7 4   N Q�%9
� 
cobj%9 m   O P�� %8 o   M N�� 	0 prefs  %6 �%:�� 0 	aftertext 	afterText%: n   R V%;%<%; 4   S V�%=
� 
cobj%= m   T U�� %< o   R S�� 	0 prefs  �  %. o      �� 	0 prefs  �  ��  ��  % %>%?%> l  a f%@%A%B%@ r   a f%C%D%C b   a d%E%F%E o   a b�� 	0 prefs  %F o   b c�� 0 defaultprefs defaultPrefs%D o      �� 	0 prefs  %A , & add on default preferences, if needed   %B �%G%G L   a d d   o n   d e f a u l t   p r e f e r e n c e s ,   i f   n e e d e d%? %H%I%H r   g l%J%K%J n   g j%L%M%L o   h j�� 0 
sourcetext 
sourceTEXT%M o   g h�� 	0 prefs  %K o      �� 0 
sourcetext 
sourceTEXT%I %N%O%N r   m r%P%Q%P n   m p%R%S%R o   n p�� 0 
beforetext 
beforeText%S o   m n�� 	0 prefs  %Q o      �� 0 
beforetext 
beforeText%O %T%U%T r   s x%V%W%V n   s v%X%Y%X o   t v�� 0 	aftertext 	afterText%Y o   s t�� 	0 prefs  %W o      �� 0 	aftertext 	afterText%U %Z%[%Z r   y ~%\%]%\ n   y |%^%_%^ o   z |�� 0 textitemnum textItemNum%_ o   y z�� 	0 prefs  %] o      �� 0 textitemnum textItemNum%[ %`%a%` r    �%b%c%b n    �%d%e%d o   � ���  0 includemarkers includeMarkers%e o    ��� 	0 prefs  %c o      ��  0 includemarkers includeMarkers%a %f%g%f l  � �����  �  �  %g %h%i%h Q   � �%j%k%l%j k   � �%m%m %n%o%n r   � �%p%q%p J   � �%r%r %s%t%s n  � �%u%v%u 1   � ��
� 
txdl%v 1   � ��
� 
ascr%t %w�%w o   � ��� 0 
beforetext 
beforeText�  %q J      %x%x %y%z%y o      �� 0 	olddelims 	oldDelims%z %{�%{ n     %|%}%| 1   � ��
� 
txdl%} 1   � ��
� 
ascr�  %o %~%%~ r   � �%�%�%� n   � �%�%�%� 4   � ��%�
� 
citm%� o   � ��� 0 textitemnum textItemNum%� o   � ��� 0 
sourcetext 
sourceTEXT%� l     %���%� o      �� 0 prefixremoved prefixRemoved�  �  % %�%�%� r   � �%�%�%� o   � ��� 0 	aftertext 	afterText%� n     %�%�%� 1   � ��
� 
txdl%� 1   � ��
� 
ascr%� %�%�%� r   � �%�%�%� n   � �%�%�%� 4   � ��%�
� 
citm%� m   � ��� %� o   � ��� 0 prefixremoved prefixRemoved%� l     %���%� o      �� 0 finalresult finalResult�  �  %� %�%�%� r   � �%�%�%� o   � ��� 0 	olddelims 	oldDelims%� n     %�%�%� 1   � ��
� 
txdl%� 1   � ��~
�~ 
ascr%� %�%�%� l  � ��}�|�{�}  �|  �{  %� %�%�%� Z  � �%�%��z�y%� o   � ��x�x  0 includemarkers includeMarkers%� r   � �%�%�%� b   � �%�%�%� b   � �%�%�%� o   � ��w�w 0 
beforetext 
beforeText%� o   � ��v�v 0 finalresult finalResult%� o   � ��u�u 0 	aftertext 	afterText%� o      �t�t 0 finalresult finalResult�z  �y  %� %��s%� l  � ��r�q�p�r  �q  �p  �s  %k R      �o%�%�
�o .ascrerr ****      � ****%� o      �n�n 0 errmsg errMsg%� �m%��l
�m 
errn%� o      �k�k 0 errnum errNum�l  %l k   � �%�%� %�%�%� r   � �%�%�%� o   � ��j�j 0 	olddelims 	oldDelims%� n     %�%�%� 1   � ��i
�i 
txdl%� 1   � ��h
�h 
ascr%� %�%�%� l  � ��g%�%��g  %� > 8 	tell me to log "Error in getTextBetween() : " & errMsg   %� �%�%� p   	 t e l l   m e   t o   l o g   " E r r o r   i n   g e t T e x t B e t w e e n ( )   :   "   &   e r r M s g%� %��f%� l  � �%�%�%�%� r   � �%�%�%� m   � �%�%� �%�%�  %� l     %��e�d%� o      �c�c 0 finalresult finalResult�e  �d  %� : 4 return nothing if the surrounding text is not found   %� �%�%� h   r e t u r n   n o t h i n g   i f   t h e   s u r r o u n d i n g   t e x t   i s   n o t   f o u n d�f  %i %�%�%� l  � ��b�a�`�b  �a  �`  %� %�%�%� l  � ��_�^�]�_  �^  �]  %� %�%�%� L   � �%�%� o   � ��\�\ 0 finalresult finalResult%� %��[%� l  � ��Z�Y�X�Z  �Y  �X  �[  $� %�%�%� l     �W�V�U�W  �V  �U  %� %�%�%� i   � �%�%�%� I      �T%��S�T 0 
parsechars 
parseChars%� %��R%� o      �Q�Q 	0 prefs  �R  �S  %� k     �%�%� %�%�%� l     �P%�%��P  %�   version 1.3   %� �%�%�    v e r s i o n   1 . 3%� %�%�%� l     �O�N�M�O  �N  �M  %� %�%�%� r     %�%�%� K     %�%� �L%��K�L 0 considercase considerCase%� m    �J
�J boovtrue�K  %� o      �I�I 0 defaultprefs defaultPrefs%� %�%�%� l   �H�G�F�H  �G  �F  %� %�%�%� l   �E�D�C�E  �D  �C  %� %�%�%� Z    [%�%�%��B%� =   %�%�%� n    
%�%�%� m    
�A
�A 
pcls%� o    �@�@ 	0 prefs  %� m   
 �?
�? 
list%� k    ?%�%� %�%�%� Z    =%�%��>%�%� ?   %�%�%� l   %��=�<%� I   �;%��:
�; .corecnte****       ****%� o    �9�9 	0 prefs  �:  �=  �<  %� m    �8�8 %� k    ,%�%� %�%�%� l   �7%�%��7  %� - ' get any parameters after the initial 3   %� �%�%� N   g e t   a n y   p a r a m e t e r s   a f t e r   t h e   i n i t i a l   3%� %��6%� r    ,%�%�%� K    *%�%� �5%�& �5 0 
sourcetext 
sourceTEXT%� n    &&& 4    �4&
�4 
cobj& m    �3�3 & o    �2�2 	0 prefs  &  �1&&�1 0 parsestring parseString& n    #&&& 4     #�0&
�0 
cobj& m   ! "�/�/ & o     �.�. 	0 prefs  & �-&	�,�- 0 considercase considerCase&	 n   $ (&
&&
 4   % (�+&
�+ 
cobj& m   & '�*�* & o   $ %�)�) 	0 prefs  �,  %� o      �(�( 	0 prefs  �6  �>  %� r   / =&&& K   / ;&& �'&&�' 0 
sourcetext 
sourceTEXT& n   0 4&&& 4   1 4�&&
�& 
cobj& m   2 3�%�% & o   0 1�$�$ 	0 prefs  & �#&�"�# 0 parsestring parseString& n   5 9&&& 4   6 9�!&
�! 
cobj& m   7 8� �  & o   5 6�� 	0 prefs  �"  & o      �� 	0 prefs  %� &�& l  > >����  �  �  �  %� &&& >  B L&&& n   B E&&& m   C E�
� 
pcls& o   B C�� 	0 prefs  & l  E K& ��&  n   E K&!&"&! m   I K�
� 
pcls&" K   E I&#&# �&$�� 0 somekey someKey&$ m   F G�� �  �  �  & &%�&% k   O W&&&& &'&(&' l  O O�&)&*�  &) x r Test by matching class to something that IS a record to avoid FileMaker namespace conflict with the term "record"   &* �&+&+ �   T e s t   b y   m a t c h i n g   c l a s s   t o   s o m e t h i n g   t h a t   I S   a   r e c o r d   t o   a v o i d   F i l e M a k e r   n a m e s p a c e   c o n f l i c t   w i t h   t h e   t e r m   " r e c o r d "&( &,&-&, l  O O����  �  �  &- &.&/&. R   O U�&0&1
� .ascrerr ****      � ****&0 m   S T&2&2 �&3&3> T h e   p a r a m e t e r   f o r   ' p a r s e C h a r s ( ) '   s h o u l d   b e   a   r e c o r d   o r   a t   l e a s t   a   l i s t .   W r a p   t h e   p a r a m e t e r ( s )   i n   c u r l y   b r a c k e t s   f o r   e a s y   u p g r a d e   t o   ' p a r s e C h a r s ( )   v e r s i o n   1 . 3 .  &1 �&4�

� 
errn&4 m   Q R�	�	 �
  &/ &5�&5 l  V V����  �  �  �  �  �B  %� &6&7&6 l  \ \����  �  �  &7 &8&9&8 l  \ \�� ���  �   ��  &9 &:&;&: r   \ a&<&=&< b   \ _&>&?&> o   \ ]���� 	0 prefs  &? o   ] ^���� 0 defaultprefs defaultPrefs&= o      ���� 	0 prefs  &; &@&A&@ l  b b��������  ��  ��  &A &B&C&B l  b b��������  ��  ��  &C &D&E&D r   b g&F&G&F n   b e&H&I&H o   c e���� 0 
sourcetext 
sourceTEXT&I o   b c���� 	0 prefs  &G o      ���� 0 
sourcetext 
sourceTEXT&E &J&K&J r   h m&L&M&L n   h k&N&O&N o   i k���� 0 parsestring parseString&O o   h i���� 	0 prefs  &M o      ���� 0 parsestring parseString&K &P&Q&P r   n s&R&S&R n   n q&T&U&T o   o q���� 0 considercase considerCase&U o   n o���� 	0 prefs  &S o      ���� 0 considercase considerCase&Q &V&W&V l  t t��������  ��  ��  &W &X&Y&X l  t t��������  ��  ��  &Y &Z&[&Z r   t y&\&]&\ n  t w&^&_&^ 1   u w��
�� 
txdl&_ 1   t u��
�� 
ascr&] o      ���� 0 	olddelims 	oldDelims&[ &`��&` Q   z �&a&b&c&a k   } �&d&d &e&f&e r   } �&g&h&g l  } �&i����&i J   } �&j&j &k��&k c   } �&l&m&l o   } ~���� 0 parsestring parseString&m m   ~ ��
�� 
TEXT��  ��  ��  &h n     &n&o&n 1   � ���
�� 
txdl&o 1   � ���
�� 
ascr&f &p&q&p l  � ���������  ��  ��  &q &r&s&r Z   � �&t&u��&v&t o   � ����� 0 considercase considerCase&u P   � �&w&x��&w r   � �&y&z&y n   � �&{&|&{ 2   � ���
�� 
citm&| o   � ����� 0 
sourcetext 
sourceTEXT&z l     &}����&} o      ���� 0 
parsedlist 
parsedList��  ��  &x ����
�� conscase��  ��  ��  &v P   � �&~��&&~ r   � �&�&�&� n   � �&�&�&� 2   � ���
�� 
citm&� o   � ����� 0 
sourcetext 
sourceTEXT&� l     &�����&� o      ���� 0 
parsedlist 
parsedList��  ��  ��  & ����
�� conscase��  &s &�&�&� l  � ���������  ��  ��  &� &�&�&� r   � �&�&�&� o   � ����� 0 	olddelims 	oldDelims&� n     &�&�&� 1   � ���
�� 
txdl&� 1   � ���
�� 
ascr&� &���&� L   � �&�&� o   � ��� 0 
parsedlist 
parsedList��  &b R      �&�&�
� .ascrerr ****      � ****&� o      �� 0 errmsg errMsg&� �&��
� 
errn&� o      �� 0 errnum errNum�  &c k   � �&�&� &�&�&� Q   � �&�&��&� r   � �&�&�&� o   � ��� 0 	olddelims 	oldDelims&� n     &�&�&� 1   � ��
� 
txdl&� 1   � ��
� 
ascr&� R      ���
� .ascrerr ****      � ****�  �  �  &� &��&� R   � ��&�&�
� .ascrerr ****      � ****&� b   � �&�&�&� m   � �&�&� �&�&� : E R R O R :   p a r s e C h a r s ( )   h a n d l e r :  &� o   � ��� 0 errmsg errMsg&� �&��
� 
errn&� o   � ��� 0 errnum errNum�  �  ��  %� &�&�&� l     ����  �  �  &� &�&�&� i   � �&�&�&� I      �&��� 0 replacesimple replaceSimple&� &��&� o      �� 	0 prefs  �  �  &� k     �&�&� &�&�&� l     �&�&��  &�   version 1.4   &� �&�&�    v e r s i o n   1 . 4&� &�&�&� l     ����  �  �  &� &�&�&� r     &�&�&� K     &�&� �&��� 0 considercase considerCase&� m    �
� boovtrue�  &� o      �� 0 defaultprefs defaultPrefs&� &�&�&� l   ����  �  �  &� &�&�&� Z    e&�&�&��&� =   &�&�&� n    
&�&�&� m    
�
� 
pcls&� o    �� 	0 prefs  &� m   
 �
� 
list&� k    I&�&� &�&�&� Z    G&�&��&�&� ?   &�&�&� l   &���&� I   �&��
� .corecnte****       ****&� o    �� 	0 prefs  �  �  �  &� m    �� &� k    1&�&� &�&�&� l   �&�&��  &� - ' get any parameters after the initial 3   &� �&�&� N   g e t   a n y   p a r a m e t e r s   a f t e r   t h e   i n i t i a l   3&� &��&� r    1&�&�&� K    /&�&� �&�&�� 0 
sourcetext 
sourceTEXT&� n    &�&�&� 4    �&�
� 
cobj&� m    �� &� o    �� 	0 prefs  &� �&�&�� 0 oldchars oldChars&� n    #&�&�&� 4     #�&�
� 
cobj&� m   ! "�� &� o     �� 	0 prefs  &� �&�&�� 0 newchars newChars&� n   $ (&�&�&� 4   % (�&�
� 
cobj&� m   & '�� &� o   $ %�� 	0 prefs  &� �&��� 0 considercase considerCase&� n   ) -&�&�&� 4   * -�&�
� 
cobj&� m   + ,�~�~ &� o   ) *�}�} 	0 prefs  �  &� o      �|�| 	0 prefs  �  �  &� r   4 G&�&�&� K   4 E&�&� �{&�&��{ 0 
sourcetext 
sourceTEXT&� n   5 9&�&�&� 4   6 9�z&�
�z 
cobj&� m   7 8�y�y &� o   5 6�x�x 	0 prefs  &� �w&�&��w 0 oldchars oldChars&� n   : >&�&�&� 4   ; >�v&�
�v 
cobj&� m   < =�u�u &� o   : ;�t�t 	0 prefs  &� �s&��r�s 0 newchars newChars&� n   ? C&�&�&� 4   @ C�q&�
�q 
cobj&� m   A B�p�p &� o   ? @�o�o 	0 prefs  �r  &� o      �n�n 	0 prefs  &� &��m&� l  H H�l�k�j�l  �k  �j  �m  &� &�&�&� >  L V&�' &� n   L O''' m   M O�i
�i 
pcls' o   L M�h�h 	0 prefs  '  l  O U'�g�f' n   O U''' m   S U�e
�e 
pcls' K   O S'' �d'�c�d 0 somekey someKey' m   P Q�b�b �c  �g  �f  &� '�a' k   Y a'	'	 '
''
 l  Y Y�`''�`  ' x r Test by matching class to something that IS a record to avoid FileMaker namespace conflict with the term "record"   ' �'' �   T e s t   b y   m a t c h i n g   c l a s s   t o   s o m e t h i n g   t h a t   I S   a   r e c o r d   t o   a v o i d   F i l e M a k e r   n a m e s p a c e   c o n f l i c t   w i t h   t h e   t e r m   " r e c o r d "' ''' l  Y Y�_�^�]�_  �^  �]  ' ''' R   Y _�\''
�\ .ascrerr ****      � ****' m   ] ^'' �''J T h e   p a r a m e t e r   f o r   ' r e p l a c e S i m p l e ( ) '   s h o u l d   b e   a   r e c o r d   o r   a t   l e a s t   a   l i s t .   W r a p   t h e   p a r a m e t e r ( s )   i n   c u r l y   b r a c k e t s   f o r   e a s y   u p g r a d e   t o   ' r e p l a c e S i m p l e ( )   v e r s i o n   1 . 3 .  ' �['�Z
�[ 
errn' m   [ \�Y�Y �Z  ' '�X' l  ` `�W�V�U�W  �V  �U  �X  �a  �  &� ''' l  f f�T�S�R�T  �S  �R  ' ''' l  f f�Q�P�O�Q  �P  �O  ' ''' r   f k'' ' b   f i'!'"'! o   f g�N�N 	0 prefs  '" o   g h�M�M 0 defaultprefs defaultPrefs'  o      �L�L 	0 prefs  ' '#'$'# l  l l�K�J�I�K  �J  �I  '$ '%'&'% l  l l�H�G�F�H  �G  �F  '& '''('' r   l q')'*') n   l o'+','+ o   m o�E�E 0 considercase considerCase', o   l m�D�D 	0 prefs  '* o      �C�C 0 considercase considerCase'( '-'.'- r   r w'/'0'/ n   r u'1'2'1 o   s u�B�B 0 
sourcetext 
sourceTEXT'2 o   r s�A�A 	0 prefs  '0 o      �@�@ 0 
sourcetext 
sourceTEXT'. '3'4'3 r   x }'5'6'5 n   x {'7'8'7 o   y {�?�? 0 oldchars oldChars'8 o   x y�>�> 	0 prefs  '6 o      �=�= 0 oldchars oldChars'4 '9':'9 r   ~ �';'<'; n   ~ �'='>'= o    ��<�< 0 newchars newChars'> o   ~ �;�; 	0 prefs  '< o      �:�: 0 newchars newChars': '?'@'? l  � ��9�8�7�9  �8  �7  '@ 'A'B'A r   � �'C'D'C c   � �'E'F'E o   � ��6�6 0 
sourcetext 
sourceTEXT'F m   � ��5
�5 
TEXT'D o      �4�4 0 
sourcetext 
sourceTEXT'B 'G'H'G l  � ��3�2�1�3  �2  �1  'H 'I'J'I r   � �'K'L'K n  � �'M'N'M 1   � ��0
�0 
txdl'N 1   � ��/
�/ 
ascr'L o      �.�. 0 	olddelims 	oldDelims'J 'O'P'O r   � �'Q'R'Q l  � �'S�-�,'S o   � ��+�+ 0 oldchars oldChars�-  �,  'R n     'T'U'T 1   � ��*
�* 
txdl'U 1   � ��)
�) 
ascr'P 'V'W'V Z   � �'X'Y�('Z'X o   � ��'�' 0 considercase considerCase'Y P   � �'['\�&'[ k   � �']'] '^'_'^ r   � �'`'a'` n   � �'b'c'b 2   � ��%
�% 
citm'c o   � ��$�$ 0 
sourcetext 
sourceTEXT'a l     'd�#�"'d o      �!�! 0 
parsedlist 
parsedList�#  �"  '_ 'e'f'e r   � �'g'h'g l  � �'i� �'i J   � �'j'j 'k�'k l  � �'l��'l c   � �'m'n'm o   � ��� 0 newchars newChars'n m   � ��
� 
TEXT�  �  �  �   �  'h n     'o'p'o 1   � ��
� 
txdl'p 1   � ��
� 
ascr'f 'q�'q r   � �'r's'r c   � �'t'u't l  � �'v��'v o   � ��� 0 
parsedlist 
parsedList�  �  'u m   � ��
� 
TEXT's l     'w��'w o      �� 0 newtext newText�  �  �  '\ ��
� conscase�  �&  �(  'Z P   � �'x�'y'x k   � �'z'z '{'|'{ r   � �'}'~'} n   � �''�' 2   � ��
� 
citm'� o   � ��� 0 
sourcetext 
sourceTEXT'~ l     '��
�	'� o      �� 0 
parsedlist 
parsedList�
  �	  '| '�'�'� r   � �'�'�'� l  � �'���'� J   � �'�'� '��'� l  � �'���'� c   � �'�'�'� o   � ��� 0 newchars newChars'� m   � ��
� 
TEXT�  �  �  �  �  '� n     '�'�'� 1   � �� 
�  
txdl'� 1   � ���
�� 
ascr'� '���'� r   � �'�'�'� c   � �'�'�'� l  � �'�����'� o   � ����� 0 
parsedlist 
parsedList��  ��  '� m   � ���
�� 
TEXT'� l     '�����'� o      ���� 0 newtext newText��  ��  ��  �  'y ����
�� conscase��  'W '�'�'� r   � �'�'�'� o   � ����� 0 	olddelims 	oldDelims'� n     '�'�'� 1   � ���
�� 
txdl'� 1   � ���
�� 
ascr'� '�'�'� L   � �'�'� o   � ����� 0 newtext newText'� '���'� l  � ���������  ��  ��  ��  &� '�'�'� l     ��������  ��  ��  '� '�'�'� i   � �'�'�'� I      ��'����� 0 unparsechars unParseChars'� '�'�'� o      ���� 0 thislist thisList'� '���'� o      ���� 0 newdelim newDelim��  ��  '� k     C'�'� '�'�'� l     ��'�'���  '�   version 1.2   '� �'�'�    v e r s i o n   1 . 2'� '�'�'� l     ��������  ��  ��  '� '�'�'� r     '�'�'� n    '�'�'� 1    ��
�� 
txdl'� 1     ��
�� 
ascr'� o      ���� 0 	olddelims 	oldDelims'� '���'� Q    C'�'�'�'� k   	 !'�'� '�'�'� r   	 '�'�'� l  	 '�����'� J   	 '�'� '���'� c   	 '�'�'� o   	 
���� 0 newdelim newDelim'� m   
 ��
�� 
TEXT��  ��  ��  '� n     '�'�'� 1    ��
�� 
txdl'� 1    ��
�� 
ascr'� '�'�'� r    '�'�'� c    '�'�'� o    ���� 0 thislist thisList'� m    ��
�� 
TEXT'� l     '�����'� o      ���� 0 unparsedtext unparsedText��  ��  '� '�'�'� r    '�'�'� o    ���� 0 	olddelims 	oldDelims'� n     '�'�'� 1    ��
�� 
txdl'� 1    ��
�� 
ascr'� '���'� L    !'�'� o     ���� 0 unparsedtext unparsedText��  '� R      ��'�'�
�� .ascrerr ****      � ****'� o      ���� 0 errmsg errMsg'� ��'���
�� 
errn'� o      ���� 0 errnum errNum��  '� k   ) C'�'� '�'�'� Q   ) :'�'���'� r   , 1'�'�'� o   , -���� 0 	olddelims 	oldDelims'� n     '�'�'� 1   . 0��
�� 
txdl'� 1   - .��
�� 
ascr'� R      ������
�� .ascrerr ****      � ****��  ��  ��  '� '��'� R   ; C�'�'�
� .ascrerr ****      � ****'� b   ? B'�'�'� m   ? @'�'� �'�'� > E R R O R :   u n P a r s e C h a r s ( )   h a n d l e r :  '� o   @ A�� 0 errmsg errMsg'� �'��
� 
errn'� o   = >�� 0 errnum errNum�  �  ��  '� '�'�'� l     ����  �  �  '� '�'�'� i   � �'�'�'� I      �'���  0 versioncompare versionCompare'� '��'� o      �� 	0 prefs  �  �  '� k    '�'� '�'�'� l     ����  �  �  '� '�'�'� r     
'�'�'� K     '�'� �'�'�� 0 v1  '� m    �
� 
null'� �'�'�� 0 v2  '� m    �
� 
null'� �'��� 	0 delim  '� m    '�'� �( (   .�  '� o      �� 0 defaultprefs defaultPrefs'� ((( r    ((( b    ((( o    �� 	0 prefs  ( o    �� 0 defaultprefs defaultPrefs( o      �� 	0 prefs  ( ((( l   ����  �  �  ( (	(
(	 r    *((( J    (( ((( n   ((( 1    �
� 
txdl( 1    �
� 
ascr( (�( n    ((( o    �� 	0 delim  ( o    �� 	0 prefs  �  ( J      (( ((( o      �� 0 od  ( (�( n     ((( 1   & (�
� 
txdl( 1   % &�
� 
ascr�  (
 ((( r   + F((( J   + 7(( ( (!(  n   + 0("(#(" 2   . 0�
� 
citm(# n   + .($(%($ o   , .�� 0 v1  (% o   + ,�� 	0 prefs  (! (&�(& n   0 5('(((' 2   3 5�
� 
citm(( n   0 3()(*() o   1 3�� 0 v2  (* o   0 1�� 	0 prefs  �  ( J      (+(+ (,(-(, o      �� 0 v1_list  (- (.�(. o      �� 0 v2_list  �  ( (/(0(/ r   G L(1(2(1 o   G H�� 0 od  (2 n     (3(4(3 1   I K�
� 
txdl(4 1   H I�
� 
ascr(0 (5(6(5 l  M M����  �  �  (6 (7(8(7 r   M h(9(:(9 J   M Y(;(; (<(=(< I  M R�(>�
� .corecnte****       ****(> o   M N�� 0 v1_list  �  (= (?�(? I  R W�(@�
� .corecnte****       ****(@ o   R S�� 0 v2_list  �  �  (: J      (A(A (B(C(B o      �� 0 v1_count  (C (D�(D o      �� 0 v2_count  �  (8 (E(F(E Z   i x(G(H�(I(G ?  i l(J(K(J o   i j�~�~ 0 v1_count  (K o   j k�}�} 0 v2_count  (H r   o r(L(M(L o   o p�|�| 0 v1_count  (M o      �{�{ 0 maxcount maxCount�  (I r   u x(N(O(N o   u v�z�z 0 v2_count  (O o      �y�y 0 maxcount maxCount(F (P(Q(P l  y y�x�w�v�x  �w  �v  (Q (R(S(R r   y |(T(U(T m   y z(V(V �(W(W  (U o      �u�u 0 versionresult versionResult(S (X(Y(X Y   } �(Z�t([(\�s(Z k   � �(](] (^(_(^ Z  � �(`(a�r�q(` >  � �(b(c(b o   � ��p�p 0 versionresult versionResult(c m   � �(d(d �(e(e  (a  S   � ��r  �q  (_ (f(g(f Z   � �(h(i�o(j(h B   � �(k(l(k o   � ��n�n 0 i  (l o   � ��m�m 0 v1_count  (i r   � �(m(n(m n   � �(o(p(o 4   � ��l(q
�l 
cobj(q o   � ��k�k 0 i  (p o   � ��j�j 0 v1_list  (n o      �i�i 0 v1_part  �o  (j r   � �(r(s(r m   � ��h�h  (s o      �g�g 0 v1_part  (g (t(u(t Z   � �(v(w�f(x(v B   � �(y(z(y o   � ��e�e 0 i  (z o   � ��d�d 0 v2_count  (w r   � �({(|({ n   � �(}(~(} 4   � ��c(
�c 
cobj( o   � ��b�b 0 i  (~ o   � ��a�a 0 v2_list  (| o      �`�` 0 v2_part  �f  (x r   � �(�(�(� m   � ��_�_  (� o      �^�^ 0 v2_part  (u (�(�(� l  � ��]�\�[�]  �\  �[  (� (�(�(� l  � ��Z�Y�X�Z  �Y  �X  (� (�(�(� Q   � �(�(�(�(� k   � �(�(� (�(�(� l  � ��W(�(��W  (� > 8log ("v1_part: " & v1_part & "   | v2_part: " & v2_part)   (� �(�(� p l o g   ( " v 1 _ p a r t :   "   &   v 1 _ p a r t   &   "       |   v 2 _ p a r t :   "   &   v 2 _ p a r t )(� (��V(� Z   � �(�(�(�(�(� ?  � �(�(�(� l  � �(��U�T(� c   � �(�(�(� o   � ��S�S 0 v1_part  (� m   � ��R
�R 
nmbr�U  �T  (� l  � �(��Q�P(� c   � �(�(�(� o   � ��O�O 0 v2_part  (� m   � ��N
�N 
nmbr�Q  �P  (� r   � �(�(�(� m   � ��M�M (� o      �L�L 0 versionresult versionResult(� (�(�(� A  � �(�(�(� l  � �(��K�J(� c   � �(�(�(� o   � ��I�I 0 v1_part  (� m   � ��H
�H 
nmbr�K  �J  (� l  � �(��G�F(� c   � �(�(�(� o   � ��E�E 0 v2_part  (� m   � ��D
�D 
nmbr�G  �F  (� (��C(� r   � �(�(�(� m   � ��B�B��(� o      �A�A 0 versionresult versionResult�C  (� l  � ��@(�(��@  (� 1 + the two versions are the same, so continue   (� �(�(� V   t h e   t w o   v e r s i o n s   a r e   t h e   s a m e ,   s o   c o n t i n u e�V  (� R      �?�>�=
�? .ascrerr ****      � ****�>  �=  (� r   � �(�(�(� m   � �(�(� �(�(�  ?(� o      �<�< 0 versionresult versionResult(� (�(�(� l  � ��;�:�9�;  �:  �9  (� (��8(� l  � ��7�6�5�7  �6  �5  �8  �t 0 i  ([ m   � ��4�4 (\ o   � ��3�3 0 maxcount maxCount�s  (Y (�(�(� l  � ��2�1�0�2  �1  �0  (� (�(�(� Z  �(�(��/�.(� =  � �(�(�(� o   � ��-�- 0 versionresult versionResult(� m   � �(�(� �(�(�  (� r   � �(�(�(� m   � ��,�,  (� o      �+�+ 0 versionresult versionResult�/  �.  (� (�(�(� l �*�)�(�*  �)  �(  (� (�(�(� L  (�(� o  �'�' 0 versionresult versionResult(� (��&(� l �%�$�#�%  �$  �#  �&  '� (��"(� l     �!� ��!  �   �  �"       :�(�� ((�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�(�) �  (� 8�������������������
�	��������� ������������������������������������������������������� 0 	debugmode 	DebugMode� 0 
scriptname 
ScriptName� &0 clickcommandposix clickCommandPosix� $0 encodecharforurl encodeCharForURL� $0 encodetextforurl encodeTextForURL� 0 
getfromfmp 
getFromFMP� 0 	sendtofmp 	sendToFMP� 40 displayfilemakerdatabase displayFileMakerDatabase� 20 ensurefilemakerdatabase ensureFileMakerDatabase� .0 openfilemakerdatabase openFileMakerDatabase� 0 sfr_dictget SFR_DictGet� 0 sfr_dictitem SFR_DictItem� 0 
sfr_escape 
SFR_Escape� 0 sfr_unescape SFR_Unescape� 60 fmgui_managedb_field_edit fmGUI_ManageDb_Field_Edit� :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_Select� >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocus� @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable�
 40 fmgui_managedb_fieldstab fmGUI_ManageDb_FieldsTab�	 *0 fmgui_managedb_open fmGUI_ManageDb_Open� B0 fmgui_managedb_relationshipstab fmGUI_ManageDb_RelationshipsTab� *0 fmgui_managedb_save fmGUI_ManageDB_Save� &0 fmgui_checkboxset fmGUI_CheckboxSet� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand�  0 fmgui_popupset fmGUI_PopupSet� 00 fmgui_selectallandcopy fmGUI_SelectAllAndCopy� (0 fmgui_textfieldset fmGUI_TextFieldSet�  (0 fmgui_appfrontmost fmGUI_AppFrontMost�� 00 fmgui_dataviewer_close fmGUI_DataViewer_Close�� .0 fmgui_inspector_close fmGUI_Inspector_Close�� 00 fmgui_inspector_ensure fmGUI_Inspector_Ensure�� 20 fmgui_modeensure_browse fmGUI_ModeEnsure_Browse�� .0 fmgui_modeensure_find fmGUI_ModeEnsure_Find�� 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout�� $0 fmgui_modeselect fmGUI_ModeSelect�� (0 fmgui_window_close fmGUI_Window_Close�� "0 windowwaituntil windowWaitUntil�� 20 windowwaituntil_frontis windowWaitUntil_FrontIS�� "0 indexoflistitem indexOfListItem�� 0 listcontains listContains�� $0 listuniquevalues listUniqueValues�� 0 sort  �� 0 
logconsole 
logConsole�� 0 loglevel logLEVEL�� 0 logmain logMAIN�� (0 systemnotification systemNotification�� 0 clickatcoords clickAtCoords�� *0 clickobjectbycoords clickObjectByCoords��  0 coercetostring coerceToString�� 0 gettextbefore getTextBefore��  0 gettextbetween getTextBetween�� 0 
parsechars 
parseChars�� 0 replacesimple replaceSimple�� 0 unparsechars unParseChars��  0 versioncompare versionCompare
� boovfals(� �)) � / U s e r s / e s h a g d a r / C o d e / a p p l e s c r i p t - f m - h e l p e r / v e n d o r / c l i c l i c k / c l i c l i c k(� �� @����))���� $0 encodecharforurl encodeCharForURL�� ��)�� )  ���� 0 	this_char  ��  ) ������������ 0 	this_char  �� 0 	ascii_num 	ASCII_num�� 0 hex_list  �� 0 x  �� 0 y  ) �� Z ^ b f j n r v z ~ � � � � � ����� ���
�� .sysoctonshor       TEXT�� 
�� 
cobj
�� 
TEXT�� L�j  E�O���������������a a vE�O�a �a "k/E�O�a �a #k/E�Oa �%�%a &(� �� �����))���� $0 encodetextforurl encodeTextForURL�� ��)�� )  �������� 0 	this_text  �� 0 encode_url_a encode_URL_A�� 0 encode_url_b encode_URL_B��  ) 	�������������������� 0 	this_text  �� 0 encode_url_a encode_URL_A�� 0 encode_url_b encode_URL_B�� 0 standard_characters  �� 0 url_a_chars URL_A_chars�� 0 url_b_chars URL_B_chars�� 0 acceptable_characters  �� 0 encoded_text  �� 0 	this_char  ) 	 � � �����������
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� $0 encodecharforurl encodeCharForURL
�� 
TEXT�� g�E�O�E�O�E�O�E�O�f  
��%E�Y hO�f  
��%E�Y hO�E�O .�[��l kh �� 
��%E�Y �*�k+ %�&E�[OY��O�(� �<��))	�� 0 
getfromfmp 
getFromFMP� �)
� )
  �� 	0 prefs  �  ) 
����������� 	0 prefs  � 0 fmtype fmType� 0 
astransfer 
asTransfer� 0 fmpname fmpName� 0 fmpactivename fmpActiveName� 0 begintellfm beginTellFM� 0 	endtellfm 	endTellFM� 0 	codetoget 	codeToGet� 0 
sendsource 
sendSource� 0 	inputdata 	inputData)	 ���Yag���)���������������� 0 fmtype fmType�  �  
� .earsffdralis        afdr
� 
pcap)  
� 
dnam
� 
ret 
� .sysodsct****        scpt� � 
��,E�W 
X  �E�O�E�O�E�O)j � Y� *�k/�[�,\Z�>1�,E�UO��  �%�%�%E�Y %��  a �%E�Y �a   a �%E�Y hO�a %E�Y a E�Oa E�Oa �%a %E�O��%�%E�O�j E�O�(� ����))�� 0 	sendtofmp 	sendToFMP� �)� )  �� 0 somedata someData�  ) ������������� 0 somedata someData� 0 fmtype fmType� 0 
astransfer 
asTransfer� 0 fmpname fmpName� 0 fmpactivename fmpActiveName� 0 begintellfm beginTellFM� 0 	endtellfm 	endTellFM� "0 somedatacleaned someDataCleaned� 0 	olddelims 	oldDelims� 0 	backslash  � 0 	codetoset 	codeToSet� 0 
sendsource 
sendSource) #�����8�)�@JL�RZ`gpw|������������� 0 fmtype fmType� 0 somedata someData�  �  
� .earsffdralis        afdr
� 
pcap
� 
dnam
� 
ret 
� 
TEXT
� 
ascr
� 
txdl� \
� .sysontocTEXT       shor
� 
citm
� .sysodsct****        scpt�* ��,E�O��,E�W 
X  �E�O�E�O�E�O)j � [� *�k/�[�,\Z�>1�,E�UO��  ��%�%�%E�Y '�a   a �%E�Y �a   a �%E�Y hO�a %E�Y a E�Oa E�O�a &E�O_ a ,E�Oa j E�O�_ a ,FO�a -E�O��%_ a ,FO�a &E�Oa _ a ,FO�a -E�O�a %_ a ,FO�a &E�O�_ a ,FOa �%a  %�%a !%E�O��%�%E�O�j "OP(� ���))�� 40 displayfilemakerdatabase displayFileMakerDatabase� �)� )  �� 	0 prefs  �  ) ���~�}�|�{�z�y�x�w�v�u� 	0 prefs  � 0 defaultprefs defaultPrefs�~ 0 dbname dbName�} ,0 waitsavetotalseconds waitSaveTotalSeconds�| .0 waitcycledelayseconds waitCycleDelaySeconds�{ 0 waitcyclemax waitCycleMax�z 0 fmappbundleid fmAppBundleID�y 0 doclist docList�x 0 errmsg errMsg�w 0 errnum errNum�v 0 onedoc oneDoc�u 0 docname docName) 0�t&�s�r�q�p�o?�n�m�l�k�j�iptx�h��g�f�e�d)�c�b��a�`�_�^�]�\�[�Z�Y�X�W��V�U�T�S��R6UW�t 0 	fmapptype 	fmAppType�s .0 waitcycledelayseconds waitCycleDelaySeconds�r �q ,0 waitsavetotalseconds waitSaveTotalSeconds
�p 
min �o �n  0 coercetostring coerceToString�m 0 
logconsole 
logConsole�l 0 dbname dbName
�k 
dire
�j olierndD
�i .sysorondlong        doub
�h 
null
�g 
capp
�f kfrmID  
�e 
docu�d 0 errmsg errMsg) �Q�P�O
�Q 
errn�P 0 errnum errNum�O  �c��
�b 
errn
�a .sysodelanull��� ��� nmbr
�` 
kocl
�_ 
cobj
�^ .corecnte****       ****
�] 
pnam
�\ 
cha 
�[ 
rvse
�Z 
TEXT
�Y 
rslt
�X 
ctxt
�W 
psof
�V 
psin�U 
�T .sysooffslong    ��� null
�S .ascrcmnt****      � ****
�R .miscmvisnull���    obj ��������l� �E�O��%E�Ob    *b  �*�k+ %l+ 	Y hO��,E�O��,E�O��,E�O��!��l E�O��,�  �E�Y a E�O b�kha E�O -a Z*a �a 0 	*a -E�UO�a  Y hOPW X  �a   hY )a �la �%O�j [OY��O ߧ[a a l kh 
�a ,E�O�a  -a !,a "&O_ #[a $\[Z*a %a &a '_ #a ( )k\Zi2EO_ #a  -a !,a "&E�Ob    
�j *Y hOb    
�j *Y hOga + Q�a "&�a "&  Aa Z*a �a 0 *�j ,Ob    )b  a -)�k+ %l+ 	Y hOPUOeY hV[OY�3OfOPW X  )a �la .�%a /%�%OP(� �N`�M�L))�K�N 20 ensurefilemakerdatabase ensureFileMakerDatabase�M �J)�J )  �I�I 	0 prefs  �L  ) �H�G�F�H 	0 prefs  �G 0 dbname dbName�F 0 isdisplayed isDisplayed) �E�D��C�B��A��@��?���E 0 dbname dbName�D 0 	fmapptype 	fmAppType�C �B 40 displayfilemakerdatabase displayFileMakerDatabase�A 0 
logconsole 
logConsole�@ .0 openfilemakerdatabase openFileMakerDatabase
�? .sysodelanull��� ��� nmbr�K ���,E�O*����k+ E�Ob    *b  �%l+ Y hO� eY Zb    *b  �%l+ Y hO*�k+  5�j 
Ob    *b  �%l+ Y hO*����k+ E�O�Y f(� �>��=�<))�;�> .0 openfilemakerdatabase openFileMakerDatabase�= �:)�: )  �9�9 	0 prefs  �<  ) �8�7�6�5�4�8 	0 prefs  �7 0 	customurl 	customURL�6 0 fmpurl fmpURL�5 0 errmsg errMsg�4 0 errnum errNum) ��3�k�2�1�0 �/>A�.PSc�-�,�+)�3 0 dbname dbName�2 0 serverip serverIP�1 0 
maindbname 
mainDbName�0 <0 customlinkreceiverscriptname customLinkReceiverScriptName�/ $0 encodetextforurl encodeTextForURL�. 0 replacesimple replaceSimple�- 0 
logconsole 
logConsole
�, .GURLGURLnull��� ��� TEXT�+ 0 errmsg errMsg) �*�)�(
�* 
errn�) 0 errnum errNum�(  �; � w��,%�%E�O� `��,%�%��,%�%��,%�%)�efm+ %E�O)���mvk+ E�O)��a mvk+ E�Ob    )b  a �%l+ Y hO�j OPUOeOPW X  �OPOP(� �'��&�%))�$�' 0 sfr_dictget SFR_DictGet�& �#)�# )  �"�!�" 0 somedict someDict�! 0 itemname itemName�%  ) � �������  0 somedict someDict� 0 itemname itemName� 0 	keystring 	keyString� 0 	endstring 	endString� 0 	olddelims 	oldDelims� 0 
keyremoved 
keyRemoved� 0 	itemvalue 	itemValue) 
����������� 0 
sfr_escape 
SFR_Escape
� 
ascr
� 
txdl
� 
citm� 0 sfr_unescape SFR_Unescape�$ Y�*�k+ %�%E�O�E�O�� �Y 3��,E�O���,FO��l/E�O�� �Y ���,FO��k/E�O���,FO*�k+ 	OP(� ����))�� 0 sfr_dictitem SFR_DictItem� �)� )  ��� 0 itemname itemName� 0 	itemvalue 	itemValue�  ) ��� 0 itemname itemName� 0 	itemvalue 	itemValue) �� 0 
sfr_escape 
SFR_Escape� �*�k+ %�%*�k+ %�%(� �
$�	�) )!��
 0 
sfr_escape 
SFR_Escape�	 �)"� )"  �� 0 
somestring 
someString�  )  ���� 0 
somestring 
someString�  0 escapecharlist escapeCharList� 0 onechar oneChar)! 
6:>A�� ����X��� 
�  
kocl
�� 
cobj
�� .corecnte****       ****�� 0 replacesimple replaceSimple� 4�����vE�O $�[��l kh *���%mvk+ 	E�OP[OY��O�OP(� ��f����)#)$���� 0 sfr_unescape SFR_Unescape�� ��)%�� )%  ���� 0 
somestring 
someString��  )# �������� 0 
somestring 
someString��  0 escapecharlist escapeCharList�� 0 onechar oneChar)$ 
x|��������������� 
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 replacesimple replaceSimple�� 4�����vE�O $�[��l kh *��%�mvk+ 	E�OP[OY��O�OP(� �������)&)'���� 60 fmgui_managedb_field_edit fmGUI_ManageDb_Field_Edit�� ��)(�� )(  ���� 	0 prefs  ��  )& ���������������������������������������������� 	0 prefs  �� 0 defaultprefs defaultPrefs�� 0 editmode editMode�� $0 fieldnowselected fieldNowSelected�� 0 changebutton changeButton��  0 fieldtypepopup fieldTypePopup�� *0 notevaluatecheckbox notEvaluateCheckbox�� 0 workingarea workingArea�� .0 globalstoragecheckbox globalStorageCheckbox�� (0 donotstorecheckbox doNotStoreCheckbox�� &0 autoindexcheckbox autoIndexCheckbox�� 0 datatypepopup dataTypePopup�� 0 fdsfdsf  �� 0 
menuchoice 
menuChoice�� 0 datacheckbox dataCheckbox�� .0 autoentercalccheckbox autoEnterCalcCheckbox�� 20 autoentercalccode_value autoEnterCalcCode_VALUE�� @0 overwriteexistingvaluecheckbox overwriteExistingValueCheckbox�� *0 prohibitmodcheckbox prohibitModCheckbox�� 40 validationcalccode_value validationCalcCode_VALUE�� 0 errmsg errMsg�� 0 errnum errNum)' ����������������������������������������������������k�i����)�x�������������������JYd�v������������		@�	a�	�	�	�	�	��	��	���


#
5
A
�
�
�
�
�
�
�
�)6:=dqux��AOy�������>Ulv�������"3FJMboy�����%�GZo�����������!'/5=CKP\ftx��������������;e`����)]}�����bz����	>KOR�))����� 0 editmode editMode�� 0 	tablename 	tableName
�� 
null�� 0 	fieldname 	fieldName�� 0 altpatterns altPatterns�� 0 fieldcomment fieldComment�� 0 datatype dataType�� 0 	fieldtype 	fieldType�� 0 calccode calcCode�� &0 autoentercalccode autoEnterCalcCode�� 20 autoentercalccontexttoc autoEnterCalcContextTOC��  0 alwaysevaluate alwaysEvaluate��  0 calccontexttoc calcContextTOC�� 0 storageglobal storageGlobal�� 20 storecalculationresults storeCalculationResults�� (0 storageindexchoice storageIndexChoice�� 0 	autoindex 	autoIndex�� 0 maxrepetition maxRepetition�� 0 indexlanguage indexLanguage� 0 allowediting allowEditing� 00 overwriteexistingvalue overwriteExistingValue� *0 autoenterisconstant autoEnterIsConstant� 00 autoenteriscalculation autoEnterIsCalculation� &0 autoenterislookup autoEnterIsLookup� .0 autoenterspecialvalue autoEnterSpecialValue� 0 
autoserial 
autoSerial� .0 autoenterconstantdata autoEnterConstantData� (0 validationcalccode validationCalcCode� 40 validationcalccontexttoc validationCalcContextTOC� 8� :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_Select
� 
pcap� (0 fmgui_appfrontmost fmGUI_AppFrontMost
� 
cwin
� 
tabg
� 
butT
� 
titl
� 
txtf� (0 fmgui_textfieldset fmGUI_TextFieldSet
� .prcsclicnull��� ��� uiel
� .sysodelanull��� ��� nmbr
� 
bool
� 
popB
� 
valL
� 
errn� �  0 fmgui_popupset fmGUI_PopupSet� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow
� 
pnam� 0 
windowname 
windowName� 20 windowwaituntil_frontis windowWaitUntil_FrontIS
� 
scra� 
� 
txta
� 
chbx� &0 fmgui_checkboxset fmGUI_CheckboxSet�  0 windownametest windowNameTest� 0 whichwindow whichWindow� � "0 windowwaituntil windowWaitUntil
� 
radB� *0 clickobjectbycoords clickObjectByCoords
� 
pcls� 0 autonextvalue autoNextValue� 0 autoincrement autoIncrement� 0 autogenerate autoGenerate
� 
leng� 0 errmsg errMsg)) ���
� 
errn� 0 errnum errNum�  �  0 coercetostring coerceToString�������������������������������a �a �a �a �a �a �a �a �a �a �a �a �a �a �a E�O��%E�O��,E�O��,� e�a ,FY hO*�k+ E�O� fY hOa  �*a !a "/�)j+ #O*a $k/a %k/a &k/a '[a (,\Za )81E�O��,� 3)*a $k/a %k/a *a +/��,l+ , 
�j -Y hOa .j /Y hO�a 0 	 ��,� a 1& M*a $k/a %k/a 2a 3/E�O�a 4,a 5  a 6��,FY �a 4,a 7  a 8��,FY 	a 9��,FY hO��,�  )a :a ;la <OPY��,a = D*a $k/a %k/a 2a >/E�O�a 4,a ? c)�a @l+ AO)*a $k/a %k/a &a B/k+ COa .j /O*a $k/a D,a E !)*a $k/a &a F/k+ COa .j /OPY hOPY 6)*a $k/a %k/a &k/a '[a D,\Za G>1k+ CO)a Ha Ilk+ JOPO�a K 
 ��,�a 1& )*a $k/a La M/a Nk/��,l+ ,Y hO��,� ')*a $k/a 2k/a '[a D,\Za O@1��,l+ AY hO��,� ')*a $k/a 2k/a '[a D,\Za P@1��,l+ AY hO��,� :*a $k/a Qk/a '[a D,\Za R@1E�O��,E )�jl+ SY 	)�kl+ SY hO�a T 
 �a ,�a 1& ))*a $k/a *k/a '[a D,\Za U@1�a ,l+ ,Y hO�a V 
 ��,�a 1&
 ��,�a 1&
 �a ,�a 1&
 �a ,�a 1&�)*a $k/a &k/a '[a D,\Za W@1k+ CO)a Ha Xa Ya Za [a \a ]k+ ^O*a $k/E�O�a Qk/a '[a D,\Za _@1E�O�a Qk/a '[a D,\Za `@1E�O�a a  6��,�  )a :a ;la bY hO��,�  )a :a ;la cY hY hO��,E )�kl+ SOPY ���, )�kl+ SOPY p)�jl+ SO)�jl+ SO�a ,a d  )�a Qa e/kl+ SOPY A�a ,a f  )�a Qa g/kl+ SOPY "�a ,a h  )�a Qa i/kl+ SOPY hO�a ,� $)�a 2k/a '[a D,\Za j@1�a ,l+ AY hO�a ,� 9�a Qk/a '[a D,\Za k@1E�O�a ,E )�kl+ SY 	)�jl+ SOPY hO)�a &k/a '[a D,\Za l@1k+ CO)a Ha ma Ya na [a oa ]k+ ^OPY hO*a $k/E�O)�a &k/a '[a D,\Za p@1k+ CO)a Ha qa Ya ra [a sa ]k+ ^OeOPY	���,a t  hY	���,a u 	��a v 
 ��,�a 1& �*a $k/a %k/a 2a w/E�O�a 4,��, _)���,l+ AO)*a $k/a %k/a &a x/k+ COa .j /O*a $k/a D,a y )*a $k/a &a z/k+ COa .j /Y hY hY hO)*a $k/a %k/a &k/a '[a D,\Za {>1k+ CO)a Ha |a Ya }a [a ~a ]k+ ^O*a $k/a %k/E�O�a  
 ��,�a 1&
 �a ,�a 1&
 �a ,�a 1&
 �a ,�a 1&�a �a �/j -O)�a *k/a '[a D,\Za �@1�a ,l+ ,O�a Qk/a '[a D,\Za �@1E�O�a �  ��,�  )a :a ;la �Y hY hO��,E j�a 4,k Z)�k+ �Oa .j /O*a $k/a D,a � 5)*a $k/a &a �/k+ CO)a Ha �a Ya �a [a �a ]k+ ^OPY hY hOPY ƨa 4,j \)�k+ �Oa .j /O*a $k/a D,a � 5)*a $k/a &a �/k+ CO)a Ha �a Ya �a [a �a ]k+ ^OPY hOPY hO�a ,a �  )�a Qa �/kl+ SO�Y A�a ,a �  )�a Qa �/kl+ SOPY "�a ,a �  )�a Qa �/kl+ SOPY hO�a ,� $)�a 2k/a '[a D,\Za �@1�a ,l+ AY hO�a ,� 9�a Qk/a '[a D,\Za �@1E�O�a ,E )�kl+ SY 	)�jl+ SOPY hOPY hO*a $k/a %k/E�O�a �a �/j -O�a ,�  a ,a �,a 1  )�a Qa �/jl+ SY �)�a Qa �/kl+ SO)�a *k/a '[a D,\Za �@1�a ,a �,l+ ,O)�a *k/a '[a D,\Za �@1�a ,a �,l+ ,O�a ,a �,a �  )�a Qa �/kl+ SY $�a ,a �,a �  )�a Qa �/kl+ SY hOPY hO�a ,�ؠa ,a �  ")�a Qk/a '[a D,\Za �@1kl+ SOPY��a ,a � ��a ,a �  
a �E�Y g�a ,a �  
a �E�Y S�a ,a �  
a �E�Y ?�a ,a �  
a �E�Y +�a ,a �  
a �E�Y �a ,a �  
a �E�Y hO)�a 2a �/�l+ AOPY�a ,a � ��a ,a �  
a �E�Y g�a ,a �  
a �E�Y S�a ,a �  
a �E�Y ?�a ,a �  
a �E�Y +�a ,a �  
a �E�Y �a ,a �  
a �E�Y hO)�a 2a �/�l+ AOPY u�a ,a �  Z)�a Qk/a '[a (,\Za �81jl+ SO)�a Qk/a '[a (,\Za �81jl+ SO)�a Qk/a '[a D,\Za �@1jl+ SOPY �a ,�  hY hOPY hO�a ,� a�a Qk/a '[a D,\Za �@1E�O�a ,E 4)�kl+ SO�a ,�  hY )�a La �/a Na �/�a ,l+ ,Y 	)�jl+ SOPY hO�a ,� hY hO�a ,���a , )�a Qa �/jl+ SOPY�a Qa �/E�O�a 4,k )�k+ CY )�a &k/a '[a D,\Za �>1k+ CO)a Ha �lk+ JO*a $k/E�O��,a �,j  a �E^ Y 	��,E^ O)*a $k/a La M/a Nk/] l+ ,O��,� ")�a 2k/a '[a D,\Za �@1��,l+ AY hO��,� 5�a Qk/a '[a D,\Za �@1E�O��,E )�jl+ SY 	)�kl+ SY hO)�a &k/a '[a D,\Za �@1k+ CO)a Ha �a Ya �a [a �a ]k+ ^O*a $k/a %k/E�O�a ,� =�a Qk/a '[a D,\Za �@1E^ O�a ,E )] jl+ SY )] kl+ SY hOPOPY hO�a ,� =�a Qk/a '[a D,\Za �@1E^ O�a ,E )] jl+ SY )] kl+ SY hO�a �a �/j -O�a ,� �)�a &a �/k+ CO)a Ha �lk+ JO*a $k/E�O�a ,a �,j  a �E^ Y �a ,E^ O)*a $k/a La M/a Nk/] l+ ,O�a ,� $)�a 2k/a '[a D,\Za �@1�a ,l+ AY hO)�a &k/a '[a D,\Za �@1k+ CO)a Ha �a Ya �a [a �a ]k+ ^O*a $k/a %k/E�OPY hO)*a $k/a &k/a '[a D,\Za �@1k+ CO)a Ha �a Ya �a [a �a ]k+ ^OeOPY hOeOPUUOPW "X � �)a :] la �*�k+ �%a �%] %OP(� ����)*)+�� :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_Select� �),� ),  �� 	0 prefs  �  )* �������~�}�|�{�z�y�x�w�v�u�t� 	0 prefs  � 0 defaultprefs defaultPrefs�  0 testcodeheader testCodeHeader� 0 
selectcode 
selectCode� 0 
rowrefcode 
rowRefCode� 0 	whosecode 	whoseCode�~ *0 fieldnameobjectcode fieldNameObjectCode�} $0 betweentestscode betweenTestsCode�| &0 afteralltestscode afterAllTestsCode�{  0 testcodefooter testCodeFooter�z 0 errmsg errMsg�y 0 errnum errNum�x $0 fieldnowselected fieldNowSelected�w 0 onealtpattern oneAltPattern�v 0 testlist testList�u 0 testcode testCode�t 0 
onetestrec 
oneTestRec)+ 4�s�r�q�p�o��n����������m�l�kK�jI�i�h�g�f�e)�d�c�b�a)-�`�_�^�]�\�[�Z��Y��X�W��V��U)�T-�s 0 	fieldname 	fieldName
�r 
null�q 0 	tablename 	tableName�p 0 altpatterns altPatterns�o 
�n 
ret �m >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocus�l @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable�k (0 fmgui_appfrontmost fmGUI_AppFrontMost
�j 
pcap
�i 
cwin
�h 
tabg
�g 
scra
�f 
tabB
�e 
crow
�d 
sttx
�c 
valL
�b .miscslctnull���     uiel�a 0 errmsg errMsg)- �S�R�Q
�S 
errn�R 0 errnum errNum�Q  �`�I
�_ 
errn
�^ 
kocl
�] 
cobj
�\ .corecnte****       ****�[ 0 pattern  
�Z 
pcnt�Y 0 testtype testType�X 0 	testmatch 	testMatch�W 0 quotestring quoteString�V 0 unparsechars unParseChars
�U .sysodsct****        scpt�T  0 coercetostring coerceToString���������E�O��%E�O��%�%�%E�O�E�O�E�O�E�O�E�O�E�O�E�O��%�%�%E�O]*jvk+ O��,� *��,k+ Y hO*j+ O Ma  @*a a / 4*a k/a k/a k/a k/a k/a [a k/a ,\Z��,81j UUOeW �X   �a ! )a "�l�Y �fE�O à�,[a #a $l %kh �a &,a ',E�O jvE�O 7�[a #a $l %kh a (] a ),%a *%)] a +,k+ ,%�6G[OY��O)���%a -%l+ .E�O��%�%�%a /%�%�%E�O��%�%E�O) �j 0UOeE�OOPW X   �a ! )a "�l�Y hOPOP[OY�QO�OPOPW X   )a "�la 1*�k+ 2%a 3%�%OP(� �P6�O�N).)/�M�P >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocus�O �L)0�L )0  �K�K 	0 prefs  �N  ). �J�I�H�J 	0 prefs  �I 0 errmsg errMsg�H 0 errnum errNum)/ �Gn�Fl�E�D�C�B�A�@�?)1�>w�G 40 fmgui_managedb_fieldstab fmGUI_ManageDb_FieldsTab
�F 
pcap�E (0 fmgui_appfrontmost fmGUI_AppFrontMost
�D 
cwin
�C 
tabg
�B 
scra
�A 
tabB
�@ 
focu�? 0 errmsg errMsg)1 �=�<�;
�= 
errn�< 0 errnum errNum�;  
�> 
errn�M G 6*jvk+  O� $*��/ )j+ Oe*�k/�k/�k/�k/�,FOeUUOPW X 
 )�l��%OP(� �:��9�8)2)3�7�: @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable�9 �6)4�6 )4  �5�5 0 basetablename baseTableName�8  )2 �4�3�2�4 0 basetablename baseTableName�3 0 errmsg errMsg�2 0 errnum errNum)3 �1��0��/�.�-�,��+�*)5�)���1 40 fmgui_managedb_fieldstab fmGUI_ManageDb_FieldsTab
�0 
pcap�/ (0 fmgui_appfrontmost fmGUI_AppFrontMost
�. 
cwin
�- 
tabg
�, 
popB�+  0 fmgui_popupset fmGUI_PopupSet�* 0 errmsg errMsg)5 �(�'�&
�( 
errn�' 0 errnum errNum�&  
�) 
errn�7 H 3*jvk+  O� #*��/ )j+ O)*�k/�k/��/�l+ 	OeUUW X 
 )�l��%�%�%OP(� �%��$�#)6)7�"�% 40 fmgui_managedb_fieldstab fmGUI_ManageDb_FieldsTab�$ �!)8�! )8  � �  	0 prefs  �#  )6 ����� 	0 prefs  � "0 fieldstabobject fieldsTabObject� 0 errmsg errMsg� 0 errnum errNum)7 ��	����)�����)9�� *0 fmgui_managedb_open fmGUI_ManageDb_Open
� 
pcap� (0 fmgui_appfrontmost fmGUI_AppFrontMost
� 
cwin
� 
tabg
� 
radB
� 
titl
� 
valL
� .prcsclicnull��� ��� uiel� 0 errmsg errMsg)9 ���
� 
errn� 0 errnum errNum�  
� 
errn�" ^ K*jvk+  O� ;*��/ 3)j+ O*�k/�k/�k/�[�,\Z�@1E�O��,k 
�j Y hOeUUW X  )�la �%OP(� ���):);�
� *0 fmgui_managedb_open fmGUI_ManageDb_Open� �	)<�	 )<  �� 	0 prefs  �  ): ������ 	0 prefs  � *0 lookingforxdbcerror lookingForXDBCError� 0 	zoomfield 	zoomField� 0 errmsg errMsg� 0 errnum errNum); (��~�� ��G����b����Z)g�������������������!������H��������)=���
� 
pcap� (0 fmgui_appfrontmost fmGUI_AppFrontMost
�  
cwin
�� 
pnam
�� 
mbar
�� 
mbri
�� 
menE
�� 
menI
�� .prcsclicnull��� ��� uiel
�� .sysodelanull��� ��� nmbr
�� 
butT�� B0 fmgui_managedb_relationshipstab fmGUI_ManageDb_RelationshipsTab
�� 
faal
�� eMdsKcmd
�� .prcskprsnull���     ctxt
�� 
tabg
�� 
txtf
�� 
focu
�� 
valL
�� 
scra
�� 
scrb�� 0 errmsg errMsg)= ������
�� 
errn�� 0 errnum errNum��  
�� 
errn�
����*��/�)j+ O*�k/�,� eYs*�k/��/�k/��/�k/�k/�[�,\Z�>1j Okj OeE�O ;h�*�k/�,a  #*�k/a k/�[�,\Za 81j Okj Y fE�[OY��O)jvk+ Okj OeE�O ;h�*�k/�,a  #*�k/a k/�[�,\Za 81j Okj Y fE�[OY��Oa a a l Okj OeE�O 2h�*�k/�,a  *�k/a a /j Okj Y fE�[OY��O*�k/a k/a k/E�Oe�a ,FOa  �a !,FOe*�k/a k/a "k/a ,FOj*�k/a k/a "k/a #k/a !,FOj*�k/a k/a "k/a #l/a !,FOeUUW X $ %)a &�la '�%OP(� �������)>)?���� B0 fmgui_managedb_relationshipstab fmGUI_ManageDb_RelationshipsTab�� ��)@�� )@  ���� 	0 prefs  ��  )> ���������� 	0 prefs  �� "0 fieldstabobject fieldsTabObject�� 0 errmsg errMsg�� 0 errnum errNum)? ������������)���������)A����� (0 fmgui_appfrontmost fmGUI_AppFrontMost
�� 
pcap
�� 
cwin
�� 
tabg
�� 
radB
�� 
titl
�� 
valL
�� .prcsclicnull��� ��� uiel�� 0 errmsg errMsg)A ������
�� 
errn�� 0 errnum errNum��  
�� 
errn�� T C*j+  O� 5*��/ -*�k/�k/�k/�[�,\Z�@1E�O��,k 
�j Y hOeUUW X  )�l�%OP(� �������)B)C���� *0 fmgui_managedb_save fmGUI_ManageDB_Save�� ��)D�� )D  ���� 	0 prefs  ��  )B 	�������������������� 	0 prefs  �� 0 defaultprefs defaultPrefs�� 40 managedbwindownameprefix manageDbWindowNamePrefix�� .0 waitcycledelayseconds waitCycleDelaySeconds�� ,0 waitsavetotalseconds waitSaveTotalSeconds�� 0 waitcyclemax waitCycleMax�� (0 managedbwindowname manageDbWindowName�� 0 errmsg errMsg�� 0 errnum errNum)C !�����������������X���)E�o�y����������� ,0 notinmanagedbiserror notInManageDbIsError�� 
�� <
� 
min 
� 
dire
� olierndD
� .sysorondlong        doub
� 
pcap� (0 fmgui_appfrontmost fmGUI_AppFrontMost
� 
cwin
� 
pnam
� 
butT
� .prcsclicnull��� ��� uiel
� .sysodelanull��� ��� nmbr� 0 errmsg errMsg)E ���
� 
errn� 0 errnum errNum�  
� 
errn� � 0 
windowname 
windowName�  0 windownametest windowNameTest� 0 whichwindow whichWindow� .0 waitcycledelayseconds waitCycleDelaySeconds� 0 waitcyclemax waitCycleMax� "0 windowwaituntil windowWaitUntil�� ��elE�O��%E�O�E�O�E�O�� E�O��!��l E�O �� �*��/ c)j+ O*�k/�,� 8 !*�k/�,E�O*�k/��/j Okj OPW X  )a �la �%Y ��,E )a a la Y eOPUO)a �a a a a a �a ��k+ Okj OeOPUOPW X  )a �la  �%OP(� ����)F)G�� &0 fmgui_checkboxset fmGUI_CheckboxSet� �)H� )H  ���  0 checkboxobject checkboxObject� 0 checkboxvalue checkboxValue�  )F �����  0 checkboxobject checkboxObject� 0 checkboxvalue checkboxValue� 0 errmsg errMsg� 0 errnum errNum)G 	�����)I���
� 
null
� 
valL
� .prcsclicnull��� ��� uiel� 0 errmsg errMsg)I ���
� 
errn� 0 errnum errNum�  
� 
errn� :�Z %�� ��,� 
�j Y hY hOeOPW X  )�l�%�%�%(� ����)J)K�� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� �)L� )L  �� 0 	buttonref 	buttonRef�  )J �� 0 	buttonref 	buttonRef)K 	�� *0 clickobjectbycoords clickObjectByCoords� �Z)�k+ OP(� ���)M)N�� :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand� �)O� )O  �� 	0 prefs  �  )M 	���������� 	0 prefs  � 0 defaultprefs defaultPrefs� 0 popupobject popupObject� 0 selectcommand selectCommand� 0 popupchoice popupChoice� &0 clickifalreadyset clickIfAlreadySet� 0 mustpick mustPick� 0 errmsg errMsg� 0 errnum errNum)N $�~�}�|�{*�z�y�x<�w�vy�u�t�s��r���
�qE�p�o)�nWo��m)P����~ 0 popupobject popupObject
�} 
null�| 0 popupchoice popupChoice�{ 0 selectcommand selectCommand�z &0 clickifalreadyset clickIfAlreadySet�y 
�x 
pcls
�w 
cobj�v 
�u .coredoexnull���     ****
�t 
errn�s 
�r 
valL
�q .prcsclicnull��� ��� uiel
�p 
menE
�o 
menI
�n 
pnam�m 0 errmsg errMsg)P �l�k�j
�l 
errn�k 0 errnum errNum�j  ��������f�E�O��,�llv�,  ��k/��l/�E�Y hO��%E�O��,E�O��,E�O��,E�O��,E�O�Z��j  )��l�OPY�fE�O�a ,j  
eE�OPY �� 
eE�OPY ��a   �a ,� eE�Y hOPY �a   �a ,� eE�Y hOPY `�a   �a ,� eE�Y hOPY A�a   �a ,� eE�Y hOPY "�a   �a ,� eE�Y hOPY hO� ��� ��j O�a   !�a k/a k/a [a ,\Z�81j Y ~�a   #�a k/a k/a [a ,\Z�@1j OPY U�a   #�a k/a k/a [a ,\Z�>1j OPY ,�a   #�a k/a k/a [a ,\Z�?1j OPY hOPY hY hOeOPW X   )��la !�%a "%�%a #%�%(� �i��h�g)Q)R�f�i  0 fmgui_popupset fmGUI_PopupSet�h �e)S�e )S  �d�c�d 0 popupobject popupObject�c 0 popupchoice popupChoice�g  )Q �b�a�`�_�b 0 popupobject popupObject�a 0 popupchoice popupChoice�` 0 errmsg errMsg�_ 0 errnum errNum)R ��^�]�\�[�Z�Y)T�X���^ 0 popupobject popupObject�] 0 popupchoice popupChoice�\ �[ :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand
�Z 
rslt�Y 0 errmsg errMsg)T �W�V�U
�W 
errn�V 0 errnum errNum�U  
�X 
errn�f +�Z *���k+ O�EOPW X  )�l�%�%�%(� �T��S�R)U)V�Q�T 00 fmgui_selectallandcopy fmGUI_SelectAllAndCopy�S �P)W�P )W  �O�O 	0 prefs  �R  )U �N�M�L�K�N 	0 prefs  �M $0 clipboardchanged clipboardChanged�L 0 errmsg errMsg�K 0 errnum errNum)V �J��I��H�G�F*�E�D)�C/�B�A)X�@8OGY�?�>�=�<�;�:�9�8�7
�J .JonspClpnull���     ****
�I 
pcap�H (0 fmgui_appfrontmost fmGUI_AppFrontMost
�G 
mbar
�F 
mbri
�E 
menE
�D 
menI
�C 
pnam
�B .prcsclicnull��� ��� uiel�A 0 errmsg errMsg)X �6�5�4
�6 
errn�5 0 errnum errNum�4  
�@ 
errn�? 

�> 
rtyp
�= 
utf8
�< .JonsgClp****    ��� null
�; 
rslt
�: 
leng�9  �8  
�7 .sysodelanull��� ��� nmbr�Q ��j OfE�O� �*��/ �)j+ O *�k/��/�k/�k/�[�,\Z�81j W X  )a �la �%O *�k/�a /�k/�a /j W X  )a �la �%O Da kh &*a a l O_ a ,j 
eE�OY hW X  eE�OOkj [OY��OPUUO�OP(� �3��2�1)Y)Z�0�3 (0 fmgui_textfieldset fmGUI_TextFieldSet�2 �/)[�/ )[  �.�-�. "0 textfieldobject textfieldObject�-  0 textfieldvalue textfieldValue�1  )Y �,�+�*�)�, "0 textfieldobject textfieldObject�+  0 textfieldvalue textfieldValue�* 0 errmsg errMsg�) 0 errnum errNum)Z 	��(�'�&�%)\�$��
�( 
null
�' 
valL
�& 
focu�% 0 errmsg errMsg)\ �#�"�!
�# 
errn�" 0 errnum errNum�!  
�$ 
errn�0 A�Z ,�� ��,� e��,FO���,FY fY hOeOPW X  )�l�%�%�%(� � ���)])^��  (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �  )]  )^ 
�������
� 
pcap
� 
pisf
� .sysodelanull��� ��� nmbr
� 
cwin
� 
pnam
� 
butT
� .prcsclicnull��� ��� uiel� F� B*��/ :*�,e 1e*�,FOkj O*�k/�,�  *�k/�k/j 	Okj Y hY hUU(� �$��)_)`�� 00 fmgui_dataviewer_close fmGUI_DataViewer_Close�  �  )_  )` I�G��)�D����

� 
pcap� (0 fmgui_appfrontmost fmGUI_AppFrontMost
� 
cwin
� 
pnam
� 
butT
� .prcsclicnull��� ��� uiel�  �
  � 4� 0*��/ ()j+ O *�k/�[�,\Z�81�k/j 	W X 
 hUU(� �	O��)a)b��	 .0 fmgui_inspector_close fmGUI_Inspector_Close�  �  )a  )b �����)�u�� ��������
� 
pcap� (0 fmgui_appfrontmost fmGUI_AppFrontMost
� 
cwin
� 
pnam
� 
pidx�   ��  
�� 
butT
�� .prcsclicnull��� ��� uiel� s� o*��/ g)j+ O k*�k/�[�,\Z�81�,FW X 	 
hO *�k/�[�,\Z�81�k/j W X 	 
hO *�k/�[�,\Z�81�k/j W X 	 
hUU(� �������)c)d���� 00 fmgui_inspector_ensure fmGUI_Inspector_Ensure��  ��  )c ������ 0 errmsg errMsg�� 0 errnum errNum)d ����������)�������������������)e����� 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout
�� 
pcap�� (0 fmgui_appfrontmost fmGUI_AppFrontMost
�� 
cwin
�� 
pnam
�� .coredoexnull���     ****
�� 
mbar
�� 
mbri
�� 
menE
�� 
menI
�� .prcsclicnull��� ��� uiel�� 0 errmsg errMsg)e ������
�� 
errn�� 0 errnum errNum��  
�� 
errn�� i T*j+  O� F*��/ >)j+ O*�k/�[�,\Z�@1j 	 *�k/��/�k/�k/�[�,\Z�81j Y hOeUUW X  )a �la �%OP(� �������)f)g���� 20 fmgui_modeensure_browse fmGUI_ModeEnsure_Browse��  ��  )f ������ 0 errmsg errMsg�� 0 errnum errNum)g 
����)h���� $0 fmgui_modeselect fmGUI_ModeSelect�� 0 errmsg errMsg)h ������
�� 
errn�� 0 errnum errNum��  
�� 
errn��  *�k+ OPW X  )�l�%OP(� ������)i)j���� .0 fmgui_modeensure_find fmGUI_ModeEnsure_Find��  ��  )i ������ 0 errmsg errMsg�� 0 errnum errNum)j 2����)k��<�� $0 fmgui_modeselect fmGUI_ModeSelect�� 0 errmsg errMsg)k ������
�� 
errn�� 0 errnum errNum��  
�� 
errn��  *�k+ OPW X  )�l�%OP(� ��G����)l)m���� 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout��  ��  )l ������ 0 errmsg errMsg�� 0 errnum errNum)m Z����)n��d�� $0 fmgui_modeselect fmGUI_ModeSelect�� 0 errmsg errMsg)n ������
�� 
errn�� 0 errnum errNum��  
�� 
errn��  *�k+ OPW X  )�l�%OP(� ��m����)o)p��� $0 fmgui_modeselect fmGUI_ModeSelect�� �)q� )q  �� 0 modetoselect modeToSelect��  )o ��������� 0 modetoselect modeToSelect� 0 
modewindow 
modeWindow� "0 modecontentarea modeContentArea� *0 modecontentareadesc modeContentAreaDesc� 0 currentmode currentMode� 0 menuitemname menuItemName� 0 errmsg errMsg� 0 errnum errNum)p �������)�������������)r���
� 
pcap� (0 fmgui_appfrontmost fmGUI_AppFrontMost� .0 fmgui_inspector_close fmGUI_Inspector_Close
� 
cwin
� 
sgrp
� 
desc
� 
cwor
� .sysodelanull��� ��� nmbr
� 
mbar
� 
mbri
� 
menE
� 
menI
� .prcsclicnull��� ��� uiel� 0 errmsg errMsg)r ���
� 
errn� 0 errnum errNum�  
� 
errn� � t� l*��/ d)j+ O)j+ O*�k/E�O��k/�[�,\Z�?1E�O��,E�O��k/E�O�� (�j O��%E�O*�k/�a /a k/a �/j Y hOeOPUUW X  )a �la �%a %�%(� ����)s)t�� (0 fmgui_window_close fmGUI_Window_Close� �)u� )u  ��  0 somewindowname someWindowName�  )s ��  0 somewindowname someWindowName)t �
���
� 
capp
� kfrmID  
� 
cwin
� .coreclosnull���    obj � )���0 *�/j OPUOeOP(� ���)v)w�� "0 windowwaituntil windowWaitUntil� �)x� )x  �� 	0 prefs  �  )v ��������� 	0 prefs  � 0 defaultprefs defaultPrefs� 0 
windowname 
windowName�  0 windownametest windowNameTest� 0 whichwindow whichWindow� 0 checkresult checkResult� "0 windownamecheck windowNameCheck� 0 windowindex windowIndex)w ���+�/�3����f�o��u��~������� 
  )�}� 0 
windowname 
windowName
� 
null�  0 windownametest windowNameTest� 0 whichwindow whichWindow� .0 waitcycledelayseconds waitCycleDelaySeconds� 0 waitcyclemax waitCycleMax� � 

� 
pcap
� 
cwin
� 
pnam
�~ 
nmbr
�} .sysodelanull��� ��� nmbr�D�����������E�O��%E�O��,E�O��,E�O��,E�OfE�O��,Ekh� H��  *��/�-a ,E�Y 3�a   *�a /�k/a ,E�Y �a &E�O*�a /�/a ,E�UO�a   ��E�OPY ��a   ��E�OPY ��a   �� E�OPY o�a   �� E�OPY ]�a   ��E�OPY K�a   ��E�OPY 8�a   ��E�OPY &�a   ��E�Y �a   ��E�OPY hO� Y hO��,j OP[OY��O�OP(� �| R�{�z)y)z�y�| 20 windowwaituntil_frontis windowWaitUntil_FrontIS�{ �x){�x ){  �w�w 	0 prefs  �z  )y �v�u�v 	0 prefs  �u 0 defaultprefs defaultPrefs)z �t�s�r f�q j�p n�o�n�m�l�t 0 
windowname 
windowName
�s 
null�r  0 windownametest windowNameTest�q 0 whichwindow whichWindow�p .0 waitcycledelayseconds waitCycleDelaySeconds�o 0 waitcyclemax waitCycleMax�n d�m 
�l "0 windowwaituntil windowWaitUntil�y �����������E�O��%E�O*�k+ OP(� �k ��j�i)|)}�h�k "0 indexoflistitem indexOfListItem�j �g)~�g )~  �f�e�f 0 somelist someList�e 0 somelistitem someListItem�i  )| �d�c�b�a�d 0 somelist someList�c 0 somelistitem someListItem�b 0 i  �a 0 onelistitem oneListItem)} �`�_
�` .corecnte****       ****
�_ 
cobj�h 9�� iY hO 'k�j  kh ��/E�O��  �Y hOP[OY��OP(� �^ ��]�\))��[�^ 0 listcontains listContains�] �Z)��Z )�  �Y�X�Y 0 somelist someList�X "0 somecomplexitem someComplexItem�\  ) �W�V�U�W 0 somelist someList�V "0 somecomplexitem someComplexItem�U 0 oneitem oneItem)� �T�S�R�Q
�T 
kocl
�S 
cobj
�R .corecnte****       ****
�Q 
pcnt�[ 1 *�[��l kh ��,E�O��  	eOPY hOP[OY��OfOP(� �P ��O�N)�)��M�P $0 listuniquevalues listUniqueValues�O �L)��L )�  �K�K 	0 prefs  �N  )� �J�I�H�G�J 	0 prefs  �I 0 	inputlist 	inputList�H 0 
uniquelist 
uniqueList�G 0 oneitem oneItem)� �F�E�D�C�B�F 0 	inputlist 	inputList
�E 
kocl
�D 
cobj
�C .corecnte****       ****
�B 
pcnt�M ;��,E�OjvE�O )�[��l kh ��,E�O�� 	��6GY h[OY��O�OP(� �A!*�@�?)�)��>�A 0 sort  �@ �=)��= )�  �<�< 0 oldlist oldList�?  )� �;�:�9�8�7�; 0 oldlist oldList�: 0 od  �9 0 	textblock 	textBlock�8 0 sortedblock sortedBlock�7 0 
sortedlist 
sortedList)� �6�5�4�3�2�1!U�0!Y�/�.�-
�6 
ascr
�5 
txdl�4 

�3 .sysontocTEXT       shor
�2 
cobj
�1 
TEXT
�0 
strq
�/ .sysoexecTEXT���     TEXT
�. 
ret 
�- 
citm�> E��,�j lvE[�k/E�Z[�l/��,FZO��&E�O��,%�%j 	E�O���,FO��-E�O���,FO�(� �,!v�+�*)�)��)�, 0 
logconsole 
logConsole�+ �()��( )�  �'�&�' 0 processname processName�& 0 
consolemsg 
consoleMsg�*  )� �%�$�#�% 0 processname processName�$ 0 
consolemsg 
consoleMsg�# 0 shellcommand shellCommand)� �"�!!�� �!�!��!����"  0 coercetostring coerceToString
�! .sysontocTEXT       shor�  0 replacesimple replaceSimple
� 
leng
� 
spac
� 
strq
� .sysoexecTEXT���     TEXT�) I*�k+  E�O*�jj �mvk+ E�O��,j  �E�Y hO��%�%�%��,%�%��,%E�O�j 
O�OP(� �!���)�)��� 0 loglevel logLEVEL� �)�� )�  ��� 	0 level  � 0 somemsg someMsg�  )� ������� 	0 level  � 0 somemsg someMsg� 0 	maxxcount 	maxXcount� 0 logname logName� 0 xcount xCount� 0 i  )� �!�"�� � 0 
logconsole 
logConsole� 5�E�Ob  �%E�O��kE�O k�kh ��%E�[OY��O*��l+ OP(� �"��
)�)��	� 0 logmain logMAIN� �)�� )�  �� 0 somemsg someMsg�
  )� �� 0 somemsg someMsg)� �� 0 loglevel logLEVEL�	 *j�l+  (� �"*��)�)��� (0 systemnotification systemNotification� � )��  )�  ���� 	0 prefs  �  )� ������ 	0 prefs  �� 0 defaultprefs defaultPrefs)� ��"<��"@��"D��"H�������������������� 0 msg  �� 0 msgtitle msgTitle�� 0 msgsubtitle msgSubtitle�� 0 msgsound msgSound�� 0 nosound noSound
�� 
null�� 

�� 
appr
�� 
subt�� 
�� .sysonotfnull��� ��� TEXT
�� 
nsou�� � G�����������E�O��%E�O��,� ��,��,��,� Y ��,��,��,��,a  OP(� ��"~����)�)����� 0 clickatcoords clickAtCoords�� ��)��� )�  ������ 0 xclick xClick�� 0 yclick yClick��  )� ������ 0 xclick xClick�� 0 yclick yClick)� 	��������"�"�����"�
�� 
dire
�� olierndD
�� .sysorondlong        doub
�� 
strq
�� .sysoexecTEXT���     TEXT
�� 
TEXT�� 1���l E�O���l E�Ob  �,�%�%�%�%j O��&�%�%(� ��"�����)�)����� *0 clickobjectbycoords clickObjectByCoords�� ��)��� )�  ���� 0 
someobject 
someObject��  )� ���������������� 0 
someobject 
someObject�� 0 xcoord xCoord�� 0 ycoord yCoord�� 0 xsize xSize�� 0 ysize ySize�� 0 xclick xClick�� 0 yclick yClick)� "���������������
�� 
posn
�� 
cobj
�� 
ptsz
�� 
dire
�� olierndD
�� .sysorondlong        doub�� 0 clickatcoords clickAtCoords�� N�Z��,E[�k/E�Z[�l/E�ZO��,E[�k/E�Z[�l/E�ZO��l!��l E�O��l!��l E�O*��l+ OP(� ��#����)�)�����  0 coercetostring coerceToString�� ��)��� )�  ����  0 incomingobject incomingObject��  )� �����������������  0 incomingobject incomingObject�� 0 errmsg errMsg�� 0 errnum errNum�� 0 	olddelims 	oldDelims�� 0 
errmsglead 
errMsgLead�� 0 errmsgtrail errMsgTrail�� 0 od  � 0 objectstring objectString)� ������#�#���)���#���#��#�#��#�#�
� 
pcls
� 
TEXT
� 
ctxt
� 
long
� 
doub
� 
utxt� j0 3some_uuid_property_54f827c7379e4073b5a216bb9cde575d 3some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D� 0 errmsg errMsg)� ���
� 
errn� 0 errnum errNum�  
� 
ascr
� 
txdl
� 
cobj
� 
citm�  
� 
bool�����,�  ��&E[�,E�ZO�Yk��,�  ��&E[�,E�ZO��&YQ��,�  ��&E[�,E�ZO��&Y7��,�  ��&E[�,E�ZO��&Y S ���,FOPW 9X 	 
��,�kvlvE[�k/E�Z[�l/��,FZO��-E[�k/E�Z[�l/E�ZO���,FOa ��,FOPW �X 	 �a 	 �a a & Da E�Oa E�O��,�lvE[�k/E�Z[�l/��,FZO��l/E�O���,FO��k/E�O���,FOPY k�E�O�� )��,�lvE[�k/E�Z[�l/��,FZO��l/E�O���,FY hO�� /��,�lvE[�k/E�Z[�l/��,FZO���,FO��k/E�O���,FY hOPO�(� �$���)�)��� 0 gettextbefore getTextBefore� �)�� )�  ��� 0 
sourcetext 
sourceTEXT� 0 stophere stopHere�  )� ������� 0 
sourcetext 
sourceTEXT� 0 stophere stopHere� 0 	olddelims 	oldDelims� 0 finalresult finalResult� 0 errmsg errMsg� 0 errnum errNum)� 	�����$��)�$�
� 
ascr
� 
txdl
� 
cobj
� 
citm
� .corecnte****       ****� 0 errmsg errMsg)� ���
� 
errn� 0 errnum errNum�  � R C��,�lvE[�k/E�Z[�l/��,FZO��-j k  ���,FO�Y ��k/E�O���,FO�W X  ���,FO�(� �$���)�)���  0 gettextbetween getTextBetween� �)�� )�  �� 	0 prefs  �  )� ������������� 	0 prefs  � 0 defaultprefs defaultPrefs� 0 
sourcetext 
sourceTEXT� 0 
beforetext 
beforeText� 0 	aftertext 	afterText� 0 textitemnum textItemNum�  0 includemarkers includeMarkers� 0 	olddelims 	oldDelims� 0 prefixremoved prefixRemoved� 0 finalresult finalResult� 0 errmsg errMsg� 0 errnum errNum)� ������%��~�}%�|�{�z�y�x�w�v�u�t�s)�%�� 0 textitemnum textItemNum�  0 includemarkers includeMarkers� 
� 
pcls
� 
list
� 
TEXT
� 
bool
�~ 
errn�} 
�| .corecnte****       ****
�{ 
cobj�z 0 
sourcetext 
sourceTEXT�y 0 
beforetext 
beforeText�x 0 	aftertext 	afterText�w 
�v 
ascr
�u 
txdl
�t 
citm�s 0 errmsg errMsg)� �r�q�p
�r 
errn�q 0 errnum errNum�p  � ��l�f�E�O��,�	 ��,�&��& )��l�Y hO��,�  1�j �  ���/��,FY hO���k/��l/��m/a E�Y hO��%E�O��,E�O��,E�O��,E�O��,E�O��,E�O \_ a ,�lvE[�k/E�Z[�l/_ a ,FZO�a �/E�O�_ a ,FO�a k/E�O�_ a ,FO� ��%�%E�Y hOPW X  �_ a ,FOa E�O�OP(� �o%��n�m)�)��l�o 0 
parsechars 
parseChars�n �k)��k )�  �j�j 	0 prefs  �m  )� 	�i�h�g�f�e�d�c�b�a�i 	0 prefs  �h 0 defaultprefs defaultPrefs�g 0 
sourcetext 
sourceTEXT�f 0 parsestring parseString�e 0 considercase considerCase�d 0 	olddelims 	oldDelims�c 0 
parsedlist 
parsedList�b 0 errmsg errMsg�a 0 errnum errNum)� �`�_�^�]�\�[�Z�Y�X�W�V�U&2�T�S�R&x�Q�P)��O�N&��` 0 considercase considerCase
�_ 
pcls
�^ 
list
�] .corecnte****       ****�\ 0 
sourcetext 
sourceTEXT
�[ 
cobj�Z 0 parsestring parseString�Y �X �W 0 somekey someKey
�V 
errn�U 
�T 
ascr
�S 
txdl
�R 
TEXT
�Q 
citm�P 0 errmsg errMsg)� �M�L�K
�M 
errn�L 0 errnum errNum�K  �O  �N  �l ��elE�O��,�  5�j l ��k/��l/��m/�E�Y ��k/��l/�E�OPY ��,�ml�, )��l�OPY hO��%E�O��,E�O��,E�O��,E�O��,E�O =��&kv��,FO� a g 
�a -E�VY ga  
�a -E�VO���,FO�W #X   
���,FW X  hO)�la �%(� �J&��I�H)�)��G�J 0 replacesimple replaceSimple�I �F)��F )�  �E�E 	0 prefs  �H  )� 	�D�C�B�A�@�?�>�=�<�D 	0 prefs  �C 0 defaultprefs defaultPrefs�B 0 considercase considerCase�A 0 
sourcetext 
sourceTEXT�@ 0 oldchars oldChars�? 0 newchars newChars�> 0 	olddelims 	oldDelims�= 0 
parsedlist 
parsedList�< 0 newtext newText)� �;�:�9�8�7�6�5�4�3�2�1�0�/�.'�-�,�+'\�*�; 0 considercase considerCase
�: 
pcls
�9 
list
�8 .corecnte****       ****�7 0 
sourcetext 
sourceTEXT
�6 
cobj�5 0 oldchars oldChars�4 0 newchars newChars�3 �2 �1 �0 0 somekey someKey
�/ 
errn�. 
�- 
TEXT
�, 
ascr
�+ 
txdl
�* 
citm�G ��elE�O��,�  ?�j m ��k/��l/��m/���/�E�Y ��k/��l/��m/�E�OPY ��,�ml�, )��l�OPY hO��%E�O��,E�O��,E�O��,E�O��,E�O��&E�O_ a ,E�O�_ a ,FO� (a g �a -E�O��&kv_ a ,FO��&E�VY %ga  �a -E�O��&kv_ a ,FO��&E�VO�_ a ,FO�OP(� �)'��(�')�)��&�) 0 unparsechars unParseChars�( �%)��% )�  �$�#�$ 0 thislist thisList�# 0 newdelim newDelim�'  )� �"�!� ����" 0 thislist thisList�! 0 newdelim newDelim�  0 	olddelims 	oldDelims� 0 unparsedtext unparsedText� 0 errmsg errMsg� 0 errnum errNum)� 	����)����'�
� 
ascr
� 
txdl
� 
TEXT� 0 errmsg errMsg)� ���
� 
errn� 0 errnum errNum�  �  �  
� 
errn�& D��,E�O ��&kv��,FO��&E�O���,FO�W !X   
���,FW X  hO)�l�%)  �'���)�)���  0 versioncompare versionCompare� �)�� )�  �� 	0 prefs  �  )� ���
�	��������� 	0 prefs  � 0 defaultprefs defaultPrefs�
 0 od  �	 0 v1_list  � 0 v2_list  � 0 v1_count  � 0 v2_count  � 0 maxcount maxCount� 0 versionresult versionResult� 0 i  � 0 v1_part  � 0 v2_part  )� � ������'�������������(V(d������(�(��  0 v1  
�� 
null�� 0 v2  �� 	0 delim  �� 
�� 
ascr
�� 
txdl
�� 
cobj
�� 
citm
�� .corecnte****       ****
�� 
nmbr��  ��  ��������E�O��%E�O��,��,lvE[�k/E�Z[�l/��,FZO��,�-��,�-lvE[�k/E�Z[�l/E�ZO���,FO�j 
�j 
lvE[�k/E�Z[�l/E�ZO�� �E�Y �E�O�E�O sk�kh 	�� Y hO�� ��/E�Y jE�O�� ��/E�Y jE�O &��&��& kE�Y ��&��& iE�Y hW X  a E�OP[OY��O�a   jE�Y hO�OPascr  ��ޭ