FasdUAS 1.101.10   ��   ��    k             l     ��  ��      main script     � 	 	    m a i n   s c r i p t   
  
 l     ��  ��      Erik Shagdar, NYHTC     �   (   E r i k   S h a g d a r ,   N Y H T C      l     ��������  ��  ��        l     ��  ��    %  Generated: 2016-07-06 14:34:59     �   >   G e n e r a t e d :   2 0 1 6 - 0 7 - 0 6   1 4 : 3 4 : 5 9      l     ��  ��    n h Run 'main_helper.applescript' to after making changes in any .applescript file and after each git pull.     �   �   R u n   ' m a i n _ h e l p e r . a p p l e s c r i p t '   t o   a f t e r   m a k i n g   c h a n g e s   i n   a n y   . a p p l e s c r i p t   f i l e   a n d   a f t e r   e a c h   g i t   p u l l .      l     ��  ��    � � Assumes file is located at '~/Code/applescript-fm-helper/'. If it is not, make sure to update clickCommandPosix property and 'vendor.sh' script.     �  "   A s s u m e s   f i l e   i s   l o c a t e d   a t   ' ~ / C o d e / a p p l e s c r i p t - f m - h e l p e r / ' .   I f   i t   i s   n o t ,   m a k e   s u r e   t o   u p d a t e   c l i c k C o m m a n d P o s i x   p r o p e r t y   a n d   ' v e n d o r . s h '   s c r i p t .     !   l     ��������  ��  ��   !  " # " j     �� $�� 0 	debugmode 	DebugMode $ m     ��
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
TEXT��   >  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� $0 encodetextforurl encodeTextForURL �  � � � o      ���� 0 	this_text   �  � � � o      ���� 0 encode_url_a encode_URL_A �  ��� � o      ���� 0 encode_url_b encode_URL_B��  ��   � k     f � �  � � � l     �� � ���   �   version 1.0    � � � �    v e r s i o n   1 . 0 �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � / ) this sub-routine is used to encode text     � � � � R   t h i s   s u b - r o u t i n e   i s   u s e d   t o   e n c o d e   t e x t   �  � � � r      � � � m      � � � � � H a b c d e f g h i j k l m n o p q r s t u v w x y z 0 1 2 3 4 5 6 7 8 9 � l      ����� � o      ���� 0 standard_characters  ��  ��   �  � � � l    � � � � r     � � � m     � � � � � 2 $ + ! ' / ? ; & @ = # % > < { } [ ] " ~ ` ^ \ | * � l      ����� � o      ���� 0 url_a_chars URL_A_chars��  ��   � 6 0 double excape this since the code gets compiled    � � � � `   d o u b l e   e x c a p e   t h i s   s i n c e   t h e   c o d e   g e t s   c o m p i l e d �  � � � r     � � � m    	 � � � � �  . - _ : � l      ����� � o      ���� 0 url_b_chars URL_B_chars��  ��   �  � � � r     � � � l    ����� � o    ���� 0 standard_characters  ��  ��   � l      ����� � o      ���� 0 acceptable_characters  ��  ��   �  � � � Z    � ����� � =    � � � o    ���� 0 encode_url_a encode_URL_A � m    ��
�� boovfals � r     �  � b     l   ���� o    ���� 0 acceptable_characters  ��  ��   l   ���� o    ���� 0 url_a_chars URL_A_chars��  ��    l     ��� o      �~�~ 0 acceptable_characters  ��  �  ��  ��   �  Z    /	�}�| =    #

 o     !�{�{ 0 encode_url_b encode_URL_B m   ! "�z
�z boovfals	 r   & + b   & ) l  & '�y�x o   & '�w�w 0 acceptable_characters  �y  �x   l  ' (�v�u o   ' (�t�t 0 url_b_chars URL_B_chars�v  �u   l     �s�r o      �q�q 0 acceptable_characters  �s  �r  �}  �|    r   0 3 m   0 1 �   l     �p�o o      �n�n 0 encoded_text  �p  �o    X   4 c�m Z   D ^�l  E  D G!"! l  D E#�k�j# o   D E�i�i 0 acceptable_characters  �k  �j  " o   E F�h�h 0 	this_char   r   J O$%$ l  J M&�g�f& b   J M'(' l  J K)�e�d) o   J K�c�c 0 encoded_text  �e  �d  ( o   K L�b�b 0 	this_char  �g  �f  % l     *�a�`* o      �_�_ 0 encoded_text  �a  �`  �l    r   R ^+,+ c   R \-.- l  R Z/�^�]/ b   R Z010 l  R S2�\�[2 o   R S�Z�Z 0 encoded_text  �\  �[  1 I   S Y�Y3�X�Y $0 encodecharforurl encodeCharForURL3 4�W4 o   T U�V�V 0 	this_char  �W  �X  �^  �]  . m   Z [�U
�U 
TEXT, l     5�T�S5 o      �R�R 0 encoded_text  �T  �S  �m 0 	this_char   o   7 8�Q�Q 0 	this_text   6�P6 L   d f77 l  d e8�O�N8 o   d e�M�M 0 encoded_text  �O  �N  �P   � 9:9 l     �L�K�J�L  �K  �J  : ;<; l     �I�H�G�I  �H  �G  < =>= i    ?@? I      �FA�E�F 0 
getfromfmp 
getFromFMPA B�DB o      �C�C 	0 prefs  �D  �E  @ k     �CC DED l     �BFG�B  F   version 1.8   G �HH    v e r s i o n   1 . 8E IJI l     �A�@�?�A  �@  �?  J KLK Q     MNOM k    PP QRQ l   �>ST�>  S D > prefs MIGHT be a record that looks like this: {fmType:"Adv"}    T �UU |   p r e f s   M I G H T   b e   a   r e c o r d   t h a t   l o o k s   l i k e   t h i s :   { f m T y p e : " A d v " }  R V�=V r    WXW n    YZY o    �<�< 0 fmtype fmTypeZ o    �;�; 	0 prefs  X o      �:�: 0 fmtype fmType�=  N R      �9�8�7
�9 .ascrerr ****      � ****�8  �7  O r    [\[ m    ]] �^^  U n k\ o      �6�6 0 fmtype fmTypeL _`_ l   �5�4�3�5  �4  �3  ` aba r    cdc m    ee �ff D A p p l e S c r i p t _ T r a n s f e r - D O _ N O T _ R E N A M Ed o      �2�2 0 
astransfer 
asTransferb ghg r    iji m    kk �ll  F i l e M a k e r   P r oj o      �1�1 0 fmpname fmpNameh mnm l   �0�/�.�0  �/  �.  n opo Z    �qr�-sq H    $tt E    #uvu l   !w�,�+w I   !�*x�)
�* .earsffdralis        afdrx  f    �)  �,  �+  v o   ! "�(�( 0 fmpname fmpNamer k   ' {yy z{z O   ' =|}| r   + <~~ n   + :��� 1   8 :�'
�' 
dnam� l  + 8��&�%� 6  + 8��� 4  + /�$�
�$ 
pcap� m   - .�#�# � C  0 7��� 1   1 3�"
�" 
dnam� o   4 6�!�! 0 fmpname fmpName�&  �%   o      � �  0 fmpactivename fmpActiveName} m   ' (���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  { ��� Z   > s����� =  > A��� o   > ?�� 0 fmtype fmType� m   ? @�� ���  U n k� r   D M��� b   D K��� b   D I��� b   D G��� m   D E�� ���  t e l l   a p p   "� o   E F�� 0 fmpactivename fmpActiveName� m   G H�� ���  "� o   I J�
� 
ret � o      �� 0 begintellfm beginTellFM� ��� =  P S��� o   P Q�� 0 fmtype fmType� m   Q R�� ���  A d v� ��� r   V ]��� b   V [��� m   V Y�� ��� Z t e l l   a p p   i d   " c o m . f i l e m a k e r . c l i e n t . a d v a n c e d 1 2 "� o   Y Z�
� 
ret � o      �� 0 begintellfm beginTellFM� ��� =  ` e��� o   ` a�� 0 fmtype fmType� m   a d�� ���  P r o� ��� r   h o��� b   h m��� m   h k�� ��� P t e l l   a p p   i d   " c o m . f i l e m a k e r . c l i e n t . p r o 1 2 "� o   k l�
� 
ret � o      �� 0 begintellfm beginTellFM�  �  � ��� r   t {��� b   t y��� o   t u�
� 
ret � m   u x�� ���  e n d   t e l l� o      �� 0 	endtellfm 	endTellFM�  �-  s k   ~ ��� ��� r   ~ ���� m   ~ ��� ���  � o      �� 0 begintellfm beginTellFM� ��� r   � ���� m   � ��� ���  � o      �� 0 	endtellfm 	endTellFM�  p ��� l  � �����  �  �  � ��� r   � ���� b   � ���� b   � ���� m   � ��� ��� $ c e l l   1   o f   l a y o u t   "� o   � ��
�
 0 
astransfer 
asTransfer� m   � ��� ���  "   o f   w i n d o w   1� o      �	�	 0 	codetoget 	codeToGet� ��� r   � ���� b   � ���� b   � ���� o   � ��� 0 begintellfm beginTellFM� o   � ��� 0 	codetoget 	codeToGet� o   � ��� 0 	endtellfm 	endTellFM� o      �� 0 
sendsource 
sendSource� ��� r   � ���� I  � ����
� .sysodsct****        scpt� o   � ��� 0 
sendsource 
sendSource�  � o      �� 0 	inputdata 	inputData� ��� l  � �� �����   ��  ��  � ���� L   � ��� o   � ����� 0 	inputdata 	inputData��  > ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i    "��� I      ������� 0 	sendtofmp 	sendToFMP� ���� o      ���� 0 somedata someData��  ��  � k    )�� ��� l     ������  �   version 1.6   � ���    v e r s i o n   1 . 6� ��� l     ��������  ��  ��  � ��� Q     � � k      l   ����   b \ someData MIGHT be a record that looks like this: {fmType:"Adv", someData:"BLAH BLAH BLAH"}     � �   s o m e D a t a   M I G H T   b e   a   r e c o r d   t h a t   l o o k s   l i k e   t h i s :   { f m T y p e : " A d v " ,   s o m e D a t a : " B L A H   B L A H   B L A H " }   	 r    

 n     o    ���� 0 fmtype fmType o    ���� 0 somedata someData o      ���� 0 fmtype fmType	 �� r   	  n   	  o   
 ���� 0 somedata someData o   	 
���� 0 somedata someData o      ���� 0 somedata someData��    R      ������
�� .ascrerr ****      � ****��  ��   r     m     �  U n k o      ���� 0 fmtype fmType�  l   ��������  ��  ��    r     m     � D A p p l e S c r i p t _ T r a n s f e r - D O _ N O T _ R E N A M E o      ���� 0 
astransfer 
asTransfer   r    !!"! m    ## �$$  F i l e M a k e r   P r o" o      ���� 0 fmpname fmpName  %&% Z   " �'(��)' H   " *** E   " )+,+ l  " '-����- I  " '��.��
�� .earsffdralis        afdr.  f   " #��  ��  ��  , o   ' (���� 0 fmpname fmpName( k   - �// 010 O   - C232 r   1 B454 n   1 @676 1   > @��
�� 
dnam7 l  1 >8����8 6  1 >9:9 4  1 5��;
�� 
pcap; m   3 4���� : C  6 =<=< 1   7 9��
�� 
dnam= o   : <���� 0 fmpname fmpName��  ��  5 o      ���� 0 fmpactivename fmpActiveName3 m   - .>>�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  1 ?@? Z   D {ABC��A =  D GDED o   D E���� 0 fmtype fmTypeE m   E FFF �GG  U n kB r   J SHIH b   J QJKJ b   J OLML b   J MNON m   J KPP �QQ  t e l l   a p p   "O o   K L���� 0 fmpactivename fmpActiveNameM m   M NRR �SS  "K o   O P��
�� 
ret I o      ���� 0 begintellfm beginTellFMC TUT =  V [VWV o   V W���� 0 fmtype fmTypeW m   W ZXX �YY  A d vU Z[Z r   ^ e\]\ b   ^ c^_^ m   ^ a`` �aa Z t e l l   a p p   i d   " c o m . f i l e m a k e r . c l i e n t . a d v a n c e d 1 2 "_ o   a b��
�� 
ret ] o      ���� 0 begintellfm beginTellFM[ bcb =  h mded o   h i���� 0 fmtype fmTypee m   i lff �gg  P r oc h��h r   p wiji b   p uklk m   p smm �nn P t e l l   a p p   i d   " c o m . f i l e m a k e r . c l i e n t . p r o 1 2 "l o   s t��
�� 
ret j o      ���� 0 begintellfm beginTellFM��  ��  @ opo l  | |��������  ��  ��  p q��q r   | �rsr b   | �tut o   | }��
�� 
ret u m   } �vv �ww  e n d   t e l ls o      ���� 0 	endtellfm 	endTellFM��  ��  ) k   � �xx yzy r   � �{|{ m   � �}} �~~  | o      ���� 0 begintellfm beginTellFMz �� r   � ���� m   � ��� ���  � o      ���� 0 	endtellfm 	endTellFM��  & ��� l  � ���������  ��  ��  � ��� r   � ���� c   � ���� o   � ����� 0 somedata someData� m   � ���
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
TEXT� l     ������ o      ���� "0 somedatacleaned someDataCleaned��  ��  � ��� l  � �������  � ) # reset the AppleScript delimiters	    � ��� F   r e s e t   t h e   A p p l e S c r i p t   d e l i m i t e r s 	  � ��� r   ���� o   � ��� 0 	olddelims 	oldDelims� n     ��� 1  �~
�~ 
txdl� 1   ��}
�} 
ascr� ��� l �|�{�z�|  �{  �z  � ��� r  ��� b  ��� b  ��� b  ��� b  ��� m  �� ��� , s e t   c e l l   1   o f   l a y o u t   "� o  �y�y 0 
astransfer 
asTransfer� m  �� ��� & "   o f   w i n d o w   1   t o   ( "� o  �x�x "0 somedatacleaned someDataCleaned� m  �� �    "   a s   s t r i n g )� o      �w�w 0 	codetoset 	codeToSet�  r  ! b   b   o  �v�v 0 begintellfm beginTellFM o  �u�u 0 	codetoset 	codeToSet o  �t�t 0 	endtellfm 	endTellFM o      �s�s 0 
sendsource 
sendSource 	
	 l ""�r�q�p�r  �q  �p  
  I "'�o�n
�o .sysodsct****        scpt o  "#�m�m 0 
sendsource 
sendSource�n   �l l ((�k�j�i�k  �j  �i  �l  �  l     �h�g�f�h  �g  �f    l     �e�d�c�e  �d  �c    i   # & I      �b�a�b 40 displayfilemakerdatabase displayFileMakerDatabase �` o      �_�_ 	0 prefs  �`  �a   k    �  l     �^�^     version 1.5    �    v e r s i o n   1 . 5   l     �]�\�[�]  �\  �[    !"! Q    �#$%# k   �&& '(' r    )*) K    ++ �Z,-�Z 0 	fmapptype 	fmAppType, m    .. �//  P r o- �Y01�Y .0 waitcycledelayseconds waitCycleDelaySeconds0 m    �X�X 1 �W2�V�W ,0 waitsavetotalseconds waitSaveTotalSeconds2 ]    343 m    	�U�U 4 1   	 
�T
�T 
min �V  * o      �S�S 0 defaultprefs defaultPrefs( 565 r    787 b    9:9 o    �R�R 	0 prefs  : o    �Q�Q 0 defaultprefs defaultPrefs8 o      �P�P 	0 prefs  6 ;<; l   �O�N�M�O  �N  �M  < =>= Z   4?@�L�K? o    �J�J 0 	debugmode 	DebugMode@ I    0�IA�H�I 0 
logconsole 
logConsoleA BCB o    $�G�G 0 
scriptname 
ScriptNameC D�FD b   $ ,EFE m   $ %GG �HH @ d i s p l a y F i l e M a k e r D a t a b a s e   p r e f s :  F I   % +�EI�D�E  0 coercetostring coerceToStringI J�CJ o   & '�B�B 	0 prefs  �C  �D  �F  �H  �L  �K  > KLK l  5 5�A�@�?�A  �@  �?  L MNM r   5 :OPO n   5 8QRQ o   6 8�>�> 0 dbname dbNameR o   5 6�=�= 	0 prefs  P o      �<�< 0 dbname dbNameN STS l  ; ;�;�:�9�;  �:  �9  T UVU r   ; @WXW n   ; >YZY o   < >�8�8 ,0 waitsavetotalseconds waitSaveTotalSecondsZ o   ; <�7�7 	0 prefs  X o      �6�6 ,0 waitsavetotalseconds waitSaveTotalSecondsV [\[ r   A F]^] n   A D_`_ o   B D�5�5 .0 waitcycledelayseconds waitCycleDelaySeconds` o   A B�4�4 	0 prefs  ^ o      �3�3 .0 waitcycledelayseconds waitCycleDelaySeconds\ aba l  G G�2�1�0�2  �1  �0  b cdc r   G Refe I  G P�/gh
�/ .sysorondlong        doubg l  G Ji�.�-i ^   G Jjkj o   G H�,�, ,0 waitsavetotalseconds waitSaveTotalSecondsk o   H I�+�+ .0 waitcycledelayseconds waitCycleDelaySeconds�.  �-  h �*l�)
�* 
direl m   K L�(
�( olierndD�)  f o      �'�' 0 waitcyclemax waitCycleMaxd mnm l  S S�&�%�$�&  �%  �$  n opo Z   S fqr�#sq =  S Xtut n   S Vvwv o   T V�"�" 0 	fmapptype 	fmAppTypew o   S T�!�! 	0 prefs  u m   V Wxx �yy  A d vr r   [ ^z{z m   [ \|| �}} > c o m . f i l e m a k e r . c l i e n t . a d v a n c e d 1 2{ o      � �  0 fmappbundleid fmAppBundleID�#  s r   a f~~ m   a d�� ��� 4 c o m . f i l e m a k e r . c l i e n t . p r o 1 2 o      �� 0 fmappbundleid fmAppBundleIDp ��� l  g g����  �  �  � ��� l  g g����  �  �  � ��� U   g ���� k   n ��� ��� l  n n����  �  �  � ��� r   n s��� m   n q�
� 
null� o      �� 0 doclist docList� ��� Q   t ����� k   w ��� ��� w   w ���� O   { ���� r   � ���� 2   � ��
� 
docu� o      �� 0 doclist docList� 5   { ����
� 
capp� o    ��� 0 fmappbundleid fmAppBundleID
� kfrmID  �2                                                                                  FM12  alis    �  MacintoshSSD               �u8\H+   3�FileMaker Pro Advanced.app                                      4�̙�Q        ����  	                FileMaker Pro 12 Advanced     �u~�      ̚"�     3�   �  PMacintoshSSD:Applications: FileMaker Pro 12 Advanced: FileMaker Pro Advanced.app  6  F i l e M a k e r   P r o   A d v a n c e d . a p p    M a c i n t o s h S S D  AApplications/FileMaker Pro 12 Advanced/FileMaker Pro Advanced.app   / ��  � ��� l  � �����  �  �  � ��� Z  � �����
� >  � ���� o   � ��	�	 0 doclist docList� m   � ��
� 
null�  S   � ��  �
  � ��� l  � �����  �  �  �  � R      ���
� .ascrerr ****      � ****� o      �� 0 errmsg errMsg� ��� 
� 
errn� o      ���� 0 errnum errNum�   � Z   � ������� =  � ���� o   � ����� 0 errnum errNum� m   � �������� l  � �������  � � � just keep trying - this error can be caused when a database is opening and the open script takes a bit too long to finish, or something in the FM interface is slow to respond.    � ���b   j u s t   k e e p   t r y i n g   -   t h i s   e r r o r   c a n   b e   c a u s e d   w h e n   a   d a t a b a s e   i s   o p e n i n g   a n d   t h e   o p e n   s c r i p t   t a k e s   a   b i t   t o o   l o n g   t o   f i n i s h ,   o r   s o m e t h i n g   i n   t h e   F M   i n t e r f a c e   i s   s l o w   t o   r e s p o n d .  ��  � R   � �����
�� .ascrerr ****      � ****� b   � ���� m   � ��� ��� \ E r r o r   g e t t i n g   l i s t   o f   d a t a b a s e s   a l r e a d y   o p e n :  � o   � ����� 0 errmsg errMsg� �����
�� 
errn� o   � ����� 0 errnum errNum��  � ��� l  � ���������  ��  ��  � ���� I  � ������
�� .sysodelanull��� ��� nmbr� o   � ����� .0 waitcycledelayseconds waitCycleDelaySeconds��  ��  � o   j k���� 0 waitcyclemax waitCycleMax� ��� l  � ���������  ��  ��  � ��� X   ������� k   ���� ��� r   � ���� n   � ���� 1   � ���
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
�� .ascrcmnt****      � ****� o  FG���� 0 docname docName��  ��  ��  � ���� P  P� ��  k  W�  l WW����   w qif debugMode then logConsole(ScriptName, "displayFileMakerDatabase docName: " & coerceToString(class of docName))    � � i f   d e b u g M o d e   t h e n   l o g C o n s o l e ( S c r i p t N a m e ,   " d i s p l a y F i l e M a k e r D a t a b a s e   d o c N a m e :   "   &   c o e r c e T o S t r i n g ( c l a s s   o f   d o c N a m e ) ) 	 l WW��
��  
 u oif debugMode then logConsole(ScriptName, "displayFileMakerDatabase dbName: " & coerceToString(class of dbName))    � � i f   d e b u g M o d e   t h e n   l o g C o n s o l e ( S c r i p t N a m e ,   " d i s p l a y F i l e M a k e r D a t a b a s e   d b N a m e :   "   &   c o e r c e T o S t r i n g ( c l a s s   o f   d b N a m e ) )	  l WW��������  ��  ��    l WW��������  ��  ��    l WW����   s m apparently these two TEXT variables have some difference (formatting?) even when they are identical STRINGS:    � �   a p p a r e n t l y   t h e s e   t w o   T E X T   v a r i a b l e s   h a v e   s o m e   d i f f e r e n c e   ( f o r m a t t i n g ? )   e v e n   w h e n   t h e y   a r e   i d e n t i c a l   S T R I N G S : �� Z  W��� = Wb l W\���� c  W\ o  WX���� 0 docname docName m  X[��
�� 
TEXT��  ��   l \a���� c  \a !  o  \]���� 0 dbname dbName! m  ]`��
�� 
TEXT��  ��   k  e�"" #$# l ee��%&��  % " if debugMode then log "SAME"   & �'' 8 i f   d e b u g M o d e   t h e n   l o g   " S A M E "$ ()( w  e�*+* O  i�,-, k  u�.. /0/ I uz��1��
�� .miscmvisnull���    obj 1 o  uv���� 0 onedoc oneDoc��  0 232 Z {�45����4 o  {����� 0 	debugmode 	DebugMode5 n ��676 I  ����8���� 0 
logconsole 
logConsole8 9:9 o  ������ 0 
scriptname 
ScriptName: ;��; b  ��<=< m  ��>> �?? B d i s p l a y F i l e M a k e r D a t a b a s e   o n e D o c :  = n ��@A@ I  ����B����  0 coercetostring coerceToStringB C��C o  ������ 0 onedoc oneDoc��  ��  A  f  ����  ��  7  f  ����  ��  3 D��D l ����EF��  E ( "if debugMode then log (path to it)   F �GG D i f   d e b u g M o d e   t h e n   l o g   ( p a t h   t o   i t )��  - 5  ir��H��
�� 
cappH o  mn���� 0 fmappbundleid fmAppBundleID
�� kfrmID  +2                                                                                  FM12  alis    �  MacintoshSSD               �u8\H+   3�FileMaker Pro Advanced.app                                      4�̙�Q        ����  	                FileMaker Pro 12 Advanced     �u~�      ̚"�     3�   �  PMacintoshSSD:Applications: FileMaker Pro 12 Advanced: FileMaker Pro Advanced.app  6  F i l e M a k e r   P r o   A d v a n c e d . a p p    M a c i n t o s h S S D  AApplications/FileMaker Pro 12 Advanced/FileMaker Pro Advanced.app   / ��  ) I��I L  ��JJ m  ����
�� boovtrue��  ��   l ����KL��  K P Jif debugMode then logConsole(ScriptName, "displayFileMakerDatabase DIFF" )   L �MM � i f   d e b u g M o d e   t h e n   l o g C o n s o l e ( S c r i p t N a m e ,   " d i s p l a y F i l e M a k e r D a t a b a s e   D I F F "   )��  ��   ����
�� conscase��  ��  �� 0 onedoc oneDoc� o   � ����� 0 doclist docList� NON L  ��PP m  ����
�� boovfalsO Q��Q l ����������  ��  ��  ��  $ R      ��RS
�� .ascrerr ****      � ****R o      ���� 0 errmsg errMsgS ��T��
�� 
errnT o      ���� 0 errnum errNum��  % R  ����UV
�� .ascrerr ****      � ****U b  ��WXW b  ��YZY b  ��[\[ m  ��]] �^^ @ d i s p l a y F i l e M a k e r D a t a b a s e   e r r o r :  \ o  ������ 0 errmsg errMsgZ m  ��__ �`` "   -   e r r o r   n u m b e r :  X o  ������ 0 errnum errNumV ��a��
�� 
errna o  ������ 0 errnum errNum��  " b�b l ���~�}�|�~  �}  �|  �   cdc l     �{�z�y�{  �z  �y  d efe l     �x�w�v�x  �w  �v  f ghg i   ' *iji I      �uk�t�u 20 ensurefilemakerdatabase ensureFileMakerDatabasek l�sl o      �r�r 	0 prefs  �s  �t  j k     �mm non l     �qpq�q  p   version 1.3   q �rr    v e r s i o n   1 . 3o sts l     �p�o�n�p  �o  �n  t uvu r     wxw n     yzy o    �m�m 0 dbname dbNamez o     �l�l 	0 prefs  x o      �k�k 0 dbname dbNamev {|{ l   �j�i�h�j  �i  �h  | }~} l   �� r    ��� I    �g��f�g 40 displayfilemakerdatabase displayFileMakerDatabase� ��e� K    �� �d���d 0 dbname dbName� o    	�c�c 0 dbname dbName� �b��a�b 0 	fmapptype 	fmAppType� m   
 �� ���  A d v�a  �e  �f  � o      �`�` 0 isdisplayed isDisplayed� + % first, just see if one is available.   � ��� J   f i r s t ,   j u s t   s e e   i f   o n e   i s   a v a i l a b l e .~ ��� Z   -���_�^� o    �]�] 0 	debugmode 	DebugMode� I    )�\��[�\ 0 
logconsole 
logConsole� ��� o    "�Z�Z 0 
scriptname 
ScriptName� ��Y� b   " %��� m   " #�� ��� $ T r i e d   t o   d i s p l a y :  � o   # $�X�X 0 dbname dbName�Y  �[  �_  �^  � ��W� Z   . ����V�� o   . /�U�U 0 isdisplayed isDisplayed� L   2 4�� m   2 3�T
�T boovtrue�V  � k   7 ��� ��� Z  7 P���S�R� o   7 <�Q�Q 0 	debugmode 	DebugMode� I   ? L�P��O�P 0 
logconsole 
logConsole� ��� o   @ E�N�N 0 
scriptname 
ScriptName� ��M� b   E H��� m   E F�� ��� , A b o u t   t o   t r y   t o   o p e n :  � o   F G�L�L 0 dbname dbName�M  �O  �S  �R  � ��� l  Q Q�K�J�I�K  �J  �I  � ��H� Z   Q ����G�� I   Q W�F��E�F .0 openfilemakerdatabase openFileMakerDatabase� ��D� o   R S�C�C 	0 prefs  �D  �E  � k   Z ��� ��� l  Z Z�B���B  � 2 , was able to open it, so NOW display window.   � ��� X   w a s   a b l e   t o   o p e n   i t ,   s o   N O W   d i s p l a y   w i n d o w .� ��� I  Z _�A��@
�A .sysodelanull��� ��� nmbr� m   Z [�� ?�      �@  � ��� Z  ` y���?�>� o   ` e�=�= 0 	debugmode 	DebugMode� I   h u�<��;�< 0 
logconsole 
logConsole� ��� o   i n�:�: 0 
scriptname 
ScriptName� ��9� b   n q��� m   n o�� ��� R T r i e d   t o   o p e n ,   n o w   t r y   a g a i n   t o   d i s p l a y :  � o   o p�8�8 0 dbname dbName�9  �;  �?  �>  � ��� r   z ���� I   z ��7��6�7 40 displayfilemakerdatabase displayFileMakerDatabase� ��5� K   { ��� �4���4 0 dbname dbName� o   | }�3�3 0 dbname dbName� �2��1�2 0 	fmapptype 	fmAppType� m   ~ �� ���  A d v�1  �5  �6  � o      �0�0 0 isdisplayed isDisplayed� ��/� L   � ��� o   � ��.�. 0 isdisplayed isDisplayed�/  �G  � k   � ��� ��� l  � ��-���-  � 0 * Was NOT able to open it, so return false.   � ��� T   W a s   N O T   a b l e   t o   o p e n   i t ,   s o   r e t u r n   f a l s e .� ��,� L   � ��� m   � ��+
�+ boovfals�,  �H  �W  h ��� l     �*�)�(�*  �)  �(  � ��� l     �'�&�%�'  �&  �%  � ��� i   + .��� I      �$��#�$ .0 openfilemakerdatabase openFileMakerDatabase� ��"� o      �!�! 	0 prefs  �"  �#  � k     ��� ��� l     � ���   �   version 1.3   � ���    v e r s i o n   1 . 3� ��� l     ����  �  �  � ��� Q     ����� k    u�� ��� r    ��� b    
��� b    ��� m    �� �   < h t c l i n k : / / A c c e s s F i l e ? F i l e N a m e =� n     o    �� 0 dbname dbName o    �� 	0 prefs  � m    	 � N & C o m m a n d = O p e n & S i l e n t O p e n = 1 & S h o w W i n d o w = 1� o      �� 0 	customurl 	customURL�  l   ����  �  �    O    p	
	 k    o  l   ����  �  �    r    / b    - b    $ b    " b     b     b     b     m       �!!  F M P : / / n    "#" o    �� 0 serverip serverIP# o    �� 	0 prefs   m    $$ �%%  / n    &'& o    �� 0 
maindbname 
mainDbName' o    �� 	0 prefs   m    (( �))  ? s c r i p t = n    !*+* o    !�� <0 customlinkreceiverscriptname customLinkReceiverScriptName+ o    �� 	0 prefs   m   " #,, �--  & p a r a m = n  $ ,./. I   % ,�0�� $0 encodetextforurl encodeTextForURL0 121 o   % &�� 0 	customurl 	customURL2 343 m   & '�

�
 boovtrue4 5�	5 m   ' (�
� boovfals�	  �  /  f   $ % o      �� 0 fmpurl fmpURL 676 l  0 0����  �  �  7 898 l  0 0�:;�  : [ U we must double-encode equals (%3D) and ampersand (%26) to work-around FileMaker bug:   ; �<< �   w e   m u s t   d o u b l e - e n c o d e   e q u a l s   ( % 3 D )   a n d   a m p e r s a n d   ( % 2 6 )   t o   w o r k - a r o u n d   F i l e M a k e r   b u g :9 =>= r   0 <?@? n  0 :ABA I   1 :�C�� 0 replacesimple replaceSimpleC D� D J   1 6EE FGF o   1 2���� 0 fmpurl fmpURLG HIH m   2 3JJ �KK  % 3 DI L��L m   3 4MM �NN 
 % 2 5 3 D��  �   �  B  f   0 1@ o      ���� 0 fmpurl fmpURL> OPO r   = KQRQ n  = ISTS I   > I��U���� 0 replacesimple replaceSimpleU V��V J   > EWW XYX o   > ?���� 0 fmpurl fmpURLY Z[Z m   ? @\\ �]]  % 2 6[ ^��^ m   @ C__ �`` 
 % 2 5 2 6��  ��  ��  T  f   = >R o      ���� 0 fmpurl fmpURLP aba l  L L��������  ��  ��  b cdc Z  L gef����e o   L Q���� 0 	debugmode 	DebugModef n  T cghg I   U c��i���� 0 
logconsole 
logConsolei jkj o   U Z���� 0 
scriptname 
ScriptNamek l��l b   Z _mnm m   Z ]oo �pp < o p e n F i l e M a k e r D a t a b a s e   f m p U R L :  n o   ] ^���� 0 fmpurl fmpURL��  ��  h  f   T U��  ��  d qrq l  h h��������  ��  ��  r sts I  h m��u��
�� .GURLGURLnull��� ��� TEXTu o   h i���� 0 fmpurl fmpURL��  t v��v l  n n��������  ��  ��  ��  
 m    ww�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��   xyx l  q q��������  ��  ��  y z{z L   q s|| m   q r��
�� boovtrue{ }��} l  t t��������  ��  ��  ��  � R      ��~
�� .ascrerr ****      � ****~ o      ���� 0 errmsg errMsg �����
�� 
errn� o      ���� 0 errnum errNum��  � k   } ��� ��� l  } }������  � A ; ANY error should return FALSE, as in "could not be opened"   � ��� v   A N Y   e r r o r   s h o u l d   r e t u r n   F A L S E ,   a s   i n   " c o u l d   n o t   b e   o p e n e d "� ��� l  } }��������  ��  ��  � ��� l  } ���� L   } �� o   } ~���� 0 errmsg errMsg�  false   � ��� 
 f a l s e� ���� l  � ���������  ��  ��  ��  � ��� l  � ���������  ��  ��  � ���� l  � ���������  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i   / 2��� I      ������� 0 sfr_dictget SFR_DictGet� ��� o      ���� 0 somedict someDict� ���� o      ���� 0 itemname itemName��  ��  � k     X�� ��� l     ������  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     ��������  ��  ��  � ��� r     ��� b     
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
ascr��  ��  � ��� l  O O��������  ��  ��  � � � L   O V I   O U������ 0 sfr_unescape SFR_Unescape �� o   P Q���� 0 	itemvalue 	itemValue��  ��     l  W W��������  ��  ��   �� l  W W��~�}�  �~  �}  ��  �  l     �|�{�z�|  �{  �z   	
	 l     �y�x�w�y  �x  �w  
  i   3 6 I      �v�u�v 0 sfr_dictitem SFR_DictItem  o      �t�t 0 itemname itemName �s o      �r�r 0 	itemvalue 	itemValue�s  �u   k       l     �q�q     version 1.0    �    v e r s i o n   1 . 0  l     �p�o�n�p  �o  �n   �m L      b      b       b     
!"! b     #$# m     %% �&&  < :$ I    �l'�k�l 0 
sfr_escape 
SFR_Escape' (�j( o    �i�i 0 itemname itemName�j  �k  " m    	)) �**  : =  I   
 �h+�g�h 0 
sfr_escape 
SFR_Escape+ ,�f, o    �e�e 0 	itemvalue 	itemValue�f  �g   m    -- �..  : >�m   /0/ l     �d�c�b�d  �c  �b  0 121 l     �a�`�_�a  �`  �_  2 343 i   7 :565 I      �^7�]�^ 0 
sfr_escape 
SFR_Escape7 8�\8 o      �[�[ 0 
somestring 
someString�\  �]  6 k     399 :;: l     �Z<=�Z  <   version 1.0   = �>>    v e r s i o n   1 . 0; ?@? l     �Y�X�W�Y  �X  �W  @ ABA r     CDC J     EE FGF m     HH �II  =G JKJ m    LL �MM  :K NON m    PP �QQ  <O R�VR m    SS �TT  >�V  D o      �U�U  0 escapecharlist escapeCharListB UVU l  	 	�T�S�R�T  �S  �R  V WXW X   	 .Y�QZY k    )[[ \]\ r    '^_^ I    %�P`�O�P 0 replacesimple replaceSimple` a�Na J    !bb cdc o    �M�M 0 
somestring 
someStringd efe o    �L�L 0 onechar oneCharf g�Kg b    hih m    jj �kk  /i o    �J�J 0 onechar oneChar�K  �N  �O  _ o      �I�I 0 
somestring 
someString] l�Hl l  ( (�G�F�E�G  �F  �E  �H  �Q 0 onechar oneCharZ o    �D�D  0 escapecharlist escapeCharListX mnm l  / /�C�B�A�C  �B  �A  n opo L   / 1qq o   / 0�@�@ 0 
somestring 
someStringp r�?r l  2 2�>�=�<�>  �=  �<  �?  4 sts l     �;�:�9�;  �:  �9  t uvu l     �8�7�6�8  �7  �6  v wxw i   ; >yzy I      �5{�4�5 0 sfr_unescape SFR_Unescape{ |�3| o      �2�2 0 
somestring 
someString�3  �4  z k     3}} ~~ l     �1���1  �   version 1.0   � ���    v e r s i o n   1 . 0 ��� l     �0�/�.�0  �/  �.  � ��� r     ��� J     �� ��� m     �� ���  =� ��� m    �� ���  :� ��� m    �� ���  <� ��-� m    �� ���  >�-  � o      �,�,  0 escapecharlist escapeCharList� ��� l  	 	�+�*�)�+  �*  �)  � ��� X   	 .��(�� k    )�� ��� r    '��� I    %�'��&�' 0 replacesimple replaceSimple� ��%� J    !�� ��� o    �$�$ 0 
somestring 
someString� ��� b    ��� m    �� ���  /� o    �#�# 0 onechar oneChar� ��"� o    �!�! 0 onechar oneChar�"  �%  �&  � o      � �  0 
somestring 
someString� ��� l  ( (����  �  �  �  �( 0 onechar oneChar� o    ��  0 escapecharlist escapeCharList� ��� l  / /����  �  �  � ��� L   / 1�� o   / 0�� 0 
somestring 
someString� ��� l  2 2����  �  �  �  x ��� l     ����  �  �  � ��� l     ����  �  �  � ��� i   ? B��� I      ���� L0 $fmgui_managedatasources_ensureexists $fmGUI_ManageDataSources_EnsureExists� ��
� o      �	�	 	0 prefs  �
  �  � k    �� ��� l     ����  �   version 1.2   � ���    v e r s i o n   1 . 2� ��� l     ����  �  �  � ��� r     ��� K     �� ����  0 datasourcename dataSourceName� m    �
� 
null� ����  0 datasourcepath dataSourcePath� m    � 
�  
null�  � o      ���� 0 defaultprefs defaultPrefs� ��� r   	 ��� b   	 ��� o   	 
���� 	0 prefs  � o   
 ���� 0 defaultprefs defaultPrefs� o      ���� 	0 prefs  � ��� l   ��������  ��  ��  � ��� r    ��� n    ��� o    ����  0 datasourcename dataSourceName� o    ���� 	0 prefs  � o      ����  0 datasourcename dataSourceName� ��� r    ��� n    ��� o    ����  0 datasourcepath dataSourcePath� o    ���� 	0 prefs  � o      ����  0 datasourcepath dataSourcePath� ��� l   ��������  ��  ��  � ��� l   ������  � e _ default is just a relative path to data source name in same location as database being edited:   � ��� �   d e f a u l t   i s   j u s t   a   r e l a t i v e   p a t h   t o   d a t a   s o u r c e   n a m e   i n   s a m e   l o c a t i o n   a s   d a t a b a s e   b e i n g   e d i t e d :� ��� Z   *������� =   ��� o    ����  0 datasourcepath dataSourcePath� m    ��
�� 
null� r   ! &��� b   ! $��� m   ! "�� ��� 
 f i l e :� o   " #����  0 datasourcename dataSourceName� o      ����  0 datasourcepath dataSourcePath��  ��  � ��� l  + +��������  ��  ��  � ��� l  + +��������  ��  ��  � ��� Q   +�� � k   . �  I   . 5������ <0 fmgui_managedatasources_open fmGUI_ManageDataSources_Open �� J   / 1����  ��  ��    O   6 �	 O   : �

 k   A �  n  A F I   B F�������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��    f   A B  l  G G��������  ��  ��    l  G G����   0 * Make sure a specified Data Source exists.    � T   M a k e   s u r e   a   s p e c i f i e d   D a t a   S o u r c e   e x i s t s . �� Z   G ��� H   G g l  G f���� I  G f����
�� .coredoexnull���     **** l  G b���� 6  G b !  n   G T"#" 4  Q T��$
�� 
crow$ m   R S���� # l  G Q%����% n   G Q&'& 4   N Q��(
�� 
tabB( m   O P���� ' n   G N)*) 4   K N��+
�� 
scra+ m   L M���� * 4   G K��,
�� 
cwin, m   I J���� ��  ��  ! =  U a-.- n   V ]/0/ 1   Y ]��
�� 
pnam0 4   V Y��1
�� 
sttx1 m   W X���� . o   ^ `����  0 datasourcename dataSourceName��  ��  ��  ��  ��   k   j �22 343 l  j j��56��  5   need to create it:    6 �77 (   n e e d   t o   c r e a t e   i t :  4 898 l  j j��������  ��  ��  9 :;: n  j �<=< I   k ���>���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow> ?��? 6  k �@A@ n   k tBCB 4  o t��D
�� 
butTD m   r s���� C 4   k o��E
�� 
cwinE m   m n���� A C   u �FGF 1   v z��
�� 
pnamG m   { HH �II  N e w��  ��  =  f   j k; JKJ I  � ���L��
�� .sysodelanull��� ��� nmbrL m   � �MM ?�      ��  K NON l  � ���������  ��  ��  O PQP r   � �RSR o   � �����  0 datasourcename dataSourceNameS n      TUT 1   � ���
�� 
valLU n   � �VWV 4   � ���X
�� 
txtfX m   � ����� W 4   � ���Y
�� 
cwinY m   � ����� Q Z[Z r   � �\]\ o   � �����  0 datasourcepath dataSourcePath] n      ^_^ 1   � ���
�� 
valL_ n   � �`a` 4   � ���b
�� 
txtab m   � ����� a n   � �cdc 4   � ���e
�� 
scrae m   � ����� d 4   � ���f
�� 
cwinf m   � ����� [ ghg n  � �iji I   � ���k���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindowk l��l 6  � �mnm n   � �opo 4  � ���q
�� 
butTq m   � ����� p 4   � ���r
�� 
cwinr m   � ����� n C   � �sts 1   � ���
�� 
pnamt m   � �uu �vv  O K��  ��  j  f   � �h wxw I  � ���y��
�� .sysodelanull��� ��� nmbry m   � �zz ?�      ��  x {|{ l  � ���������  ��  ��  | }��} L   � �~~ b   � �� m   � ��� ���  A d d e d :  � o   � �����  0 datasourcename dataSourceName��  ��   l  � ����� L   � ��� b   � ���� m   � ��� ���  E x i s t e d :  � o   � �����  0 datasourcename dataSourceName�   already existed:   � ��� "   a l r e a d y   e x i s t e d :��   4   : >���
�� 
pcap� m   < =�� ��� , F i l e M a k e r   P r o   A d v a n c e d	 m   6 7���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��   ���� l  � ���������  ��  ��  ��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� �����
�� 
errn� o      ���� 0 errnum errNum��    R   �����
�� .ascrerr ****      � ****� b   ���� b   � ���� b   � ���� m   � ��� ��� T C o u l d n ' t   e n s u r e   e x i s t e n c e   o f   d a t a   s o u r c e   '� o   � �����  0 datasourcename dataSourceName� m   � ��� ���  '   -  � o   � ���� 0 errmsg errMsg� �����
�� 
errn� o   � ����� 0 errnum errNum��  � ���� l �������  ��  �  ��  � ��� l     �~�}�|�~  �}  �|  � ��� l     �{�z�y�{  �z  �y  � ��� i   C F��� I      �x��w�x @0 fmgui_managedatasources_modify fmGUI_ManageDataSources_Modify� ��v� o      �u�u 	0 prefs  �v  �w  � k    %�� ��� l     �t���t  �   version 1.2   � ���    v e r s i o n   1 . 2� ��� l     �s�r�q�s  �r  �q  � ��� r     ��� K     �� �p���p  0 datasourcename dataSourceName� m    �o
�o 
null� �n��m�n  0 datasourcepath dataSourcePath� m    �l
�l 
null�m  � o      �k�k 0 defaultprefs defaultPrefs� ��� r   	 ��� b   	 ��� o   	 
�j�j 	0 prefs  � o   
 �i�i 0 defaultprefs defaultPrefs� o      �h�h 	0 prefs  � ��� l   �g�f�e�g  �f  �e  � ��� r    ��� n    ��� o    �d�d  0 datasourcename dataSourceName� o    �c�c 	0 prefs  � o      �b�b  0 datasourcename dataSourceName� ��� r    ��� n    ��� o    �a�a  0 datasourcepath dataSourcePath� o    �`�` 	0 prefs  � o      �_�_  0 datasourcepath dataSourcePath� ��� l   �^�]�\�^  �]  �\  � ��� l   �[���[  � f ` default is just a relative path to data source name in same location as database being edited:	   � ��� �   d e f a u l t   i s   j u s t   a   r e l a t i v e   p a t h   t o   d a t a   s o u r c e   n a m e   i n   s a m e   l o c a t i o n   a s   d a t a b a s e   b e i n g   e d i t e d : 	� ��� Z   *���Z�Y� =   ��� o    �X�X  0 datasourcepath dataSourcePath� m    �W
�W 
null� r   ! &��� b   ! $��� m   ! "�� ��� 
 f i l e :� o   " #�V�V  0 datasourcename dataSourceName� o      �U�U  0 datasourcepath dataSourcePath�Z  �Y  � ��� l  + +�T�S�R�T  �S  �R  � ��� l  + +�Q�P�O�Q  �P  �O  � ��� Q   +#���� k   .	�� ��� I   . 5�N��M�N <0 fmgui_managedatasources_open fmGUI_ManageDataSources_Open� ��L� J   / 1�K�K  �L  �M  � ��� O   6��� O   :��� k   A�� ��� n  A F��� I   B F�J�I�H�J (0 fmgui_appfrontmost fmGUI_AppFrontMost�I  �H  �  f   A B� ��G� Z   G���F�� l  G f �E�D  I  G f�C�B
�C .coredoexnull���     **** l  G b�A�@ 6  G b n   G T 4  Q T�?
�? 
crow m   R S�>�>  l  G Q�=�< n   G Q	
	 4   N Q�;
�; 
tabB m   O P�:�: 
 n   G N 4   K N�9
�9 
scra m   L M�8�8  4   G K�7
�7 
cwin m   I J�6�6 �=  �<   =  U a n   V ] 1   Y ]�5
�5 
pnam 4   V Y�4
�4 
sttx m   W X�3�3  o   ^ `�2�2  0 datasourcename dataSourceName�A  �@  �B  �E  �D  � k   i �  l  i i�1�1   $  it DOES exist, so modify it:     � <   i t   D O E S   e x i s t ,   s o   m o d i f y   i t :    l  i i�0�/�.�0  �/  �.    I  i ��-�,
�- .miscslctnull���     uiel l  i � �+�*  6  i �!"! n   i v#$# 4  s v�)%
�) 
crow% m   t u�(�( $ l  i s&�'�&& n   i s'(' 4   p s�%)
�% 
tabB) m   q r�$�$ ( n   i p*+* 4   m p�#,
�# 
scra, m   n o�"�" + 4   i m�!-
�! 
cwin- m   k l� �  �'  �&  " =  w �./. n   x 010 1   { �
� 
pnam1 4   x {�2
� 
sttx2 m   y z�� / o   � ���  0 datasourcename dataSourceName�+  �*  �,   343 n  � �565 I   � ��7�� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow7 8�8 6  � �9:9 n   � �;<; 4  � ��=
� 
butT= m   � ��� < 4   � ��>
� 
cwin> m   � ��� : C   � �?@? 1   � ��
� 
pnam@ m   � �AA �BB  E d i t�  �  6  f   � �4 CDC I  � ��E�
� .sysodelanull��� ��� nmbrE m   � �FF ?�      �  D GHG l  � �����  �  �  H IJI r   � �KLK o   � ���  0 datasourcename dataSourceNameL n      MNM 1   � ��
� 
valLN n   � �OPO 4   � ��Q
� 
txtfQ m   � ��� P 4   � ��
R
�
 
cwinR m   � ��	�	 J STS r   � �UVU o   � ���  0 datasourcepath dataSourcePathV n      WXW 1   � ��
� 
valLX n   � �YZY 4   � ��[
� 
txta[ m   � ��� Z n   � �\]\ 4   � ��^
� 
scra^ m   � ��� ] 4   � ��_
� 
cwin_ m   � ��� T `a` n  � �bcb I   � �� d���  B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindowd e��e 6  � �fgf n   � �hih 4  � ���j
�� 
butTj m   � ����� i 4   � ���k
�� 
cwink m   � ����� g C   � �lml 1   � ���
�� 
pnamm m   � �nn �oo  O K��  ��  c  f   � �a pqp I  � ���r��
�� .sysodelanull��� ��� nmbrr m   � �ss ?�      ��  q tut l  � ���������  ��  ��  u v��v L   � �ww b   � �xyx m   � �zz �{{  E x i s t e d :  y o   � �����  0 datasourcename dataSourceName��  �F  � l  �|}~| k   � ��� L   ��� b   ���� m   � �� ���  D o   N O T   E x i s t :  � o   ����  0 datasourcename dataSourceName� ���� l ��������  ��  ��  ��  }   DOES NOT  exist:   ~ ��� "   D O E S   N O T     e x i s t :�G  � 4   : >���
�� 
pcap� m   < =�� ��� , F i l e M a k e r   P r o   A d v a n c e d� m   6 7���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  � ���� l ��������  ��  ��  ��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� �����
�� 
errn� o      ���� 0 errnum errNum��  � R  #����
�� .ascrerr ****      � ****� b  "��� b   ��� b  ��� m  �� ��� T C o u l d n ' t   e n s u r e   e x i s t e n c e   o f   d a t a   s o u r c e   '� o  ����  0 datasourcename dataSourceName� m  �� ���  '   -  � o   !���� 0 errmsg errMsg� �����
�� 
errn� o  ���� 0 errnum errNum��  � ���� l $$��������  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i   G J��� I      ������� <0 fmgui_managedatasources_open fmGUI_ManageDataSources_Open� ���� o      ���� 	0 prefs  ��  ��  � k     _�� ��� l     ������  �   version 1.1   � ���    v e r s i o n   1 . 1� ��� l     ��������  ��  ��  � ��� Q     ]���� O    I��� O    H��� k    G�� ��� n   ��� I    �������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��  �  f    � ��� l   ��������  ��  ��  � ��� l   ������  � !  try to open Manage window:   � ��� 6   t r y   t o   o p e n   M a n a g e   w i n d o w :� ���� Z    G������ C    ��� n    ��� 1    ��
�� 
pnam� 4    ���
�� 
cwin� m    ���� � m    �� ��� 8 M a n a g e   E x t e r n a l   D a t a   S o u r c e s� L    !�� m     ��
�� boovtrue��  � k   $ G�� ��� I  $ D�����
�� .prcsclicnull��� ��� uiel� l  $ @������ 6  $ @��� n   $ 7��� 4  4 7���
�� 
menI� m   5 6���� � n   $ 4��� 4   1 4���
�� 
menE� m   2 3���� � n   $ 1��� 4   . 1���
�� 
menI� m   / 0�� ���  M a n a g e� n   $ .��� 4   + .���
�� 
menE� m   , -���� � n   $ +��� 4   ( +���
�� 
mbri� m   ) *�� ���  F i l e� 4   $ (���
�� 
mbar� m   & '���� � C   8 ?��� 1   9 ;��
�� 
pnam� m   < >�� ��� ( E x t e r n a l   D a t a   S o u r c e��  ��  ��  � ���� L   E G�� m   E F��
�� boovtrue��  ��  � 4    ���
�� 
pcap� m   	 
�� ��� , F i l e M a k e r   P r o   A d v a n c e d� m    ���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� �����
�� 
errn� o      ���� 0 errnum errNum��  � R   Q ]����
�� .ascrerr ****      � ****� b   W \��� m   W Z�� ��� H C o u l d n ' t   o p e n   M a n a g e   D a t a   S o u r c e s   -  � o   Z [���� 0 errmsg errMsg� ��	 ��
�� 
errn	  o   U V���� 0 errnum errNum��  � 	��	 l  ^ ^��������  ��  ��  ��  � 			 l     ��������  ��  ��  	 			 l     ��������  ��  ��  	 			 i   K N				 I      ��	
���� <0 fmgui_managedatasources_save fmGUI_ManageDataSources_Save	
 	��	 o      ���� 	0 prefs  ��  ��  		 k     �		 			 l     ��		��  	   version 1.4   	 �		    v e r s i o n   1 . 4	 			 l     ��������  ��  ��  	 			 r     			 K     		 ��	���� 40 notinmanagewindowiserror notInManageWindowIsError	 m    ��
�� boovtrue��  	 o      ���� 0 defaultprefs defaultPrefs	 			 l   ��������  ��  ��  	 			 r    			 b    
	 	!	  o    ���� 	0 prefs  	! o    	���� 0 defaultprefs defaultPrefs	 o      ���� 	0 prefs  	 	"	#	" l   ��������  ��  ��  	# 	$	%	$ l   ��������  ��  ��  	% 	&	'	& r    	(	)	( m    	*	* �	+	+ 8 M a n a g e   E x t e r n a l   D a t a   S o u r c e s	) o      �� 00 managewindownameprefix manageWindowNamePrefix	' 	,	-	, l   	.	/	0	. r    	1	2	1 m    �~�~ 	2 o      �}�} .0 waitcycledelayseconds waitCycleDelaySeconds	/   seconds   	0 �	3	3    s e c o n d s	- 	4	5	4 l   	6	7	8	6 r    	9	:	9 ]    	;	<	; m    �|�| 	< 1    �{
�{ 
min 	: o      �z�z ,0 waitsavetotalseconds waitSaveTotalSeconds	7  seconds   	8 �	=	=  s e c o n d s	5 	>	?	> l   �y�x�w�y  �x  �w  	? 	@	A	@ r    &	B	C	B I   $�v	D	E
�v .sysorondlong        doub	D l   	F�u�t	F ^    	G	H	G o    �s�s ,0 waitsavetotalseconds waitSaveTotalSeconds	H o    �r�r .0 waitcycledelayseconds waitCycleDelaySeconds�u  �t  	E �q	I�p
�q 
dire	I m     �o
�o olierndD�p  	C o      �n�n 0 waitcyclemax waitCycleMax	A 	J	K	J l  ' '�m�l�k�m  �l  �k  	K 	L	M	L Q   ' �	N	O	P	N O   * �	Q	R	Q k   . �	S	S 	T	U	T O   . �	V	W	V k   5 �	X	X 	Y	Z	Y n  5 :	[	\	[ I   6 :�j�i�h�j (0 fmgui_appfrontmost fmGUI_AppFrontMost�i  �h  	\  f   5 6	Z 	]	^	] l  ; ;�g�f�e�g  �f  �e  	^ 	_	`	_ Z   ; �	a	b�d	c	a C   ; C	d	e	d n   ; A	f	g	f 1   ? A�c
�c 
pnam	g 4   ; ?�b	h
�b 
cwin	h m   = >�a�a 	e o   A B�`�` 00 managewindownameprefix manageWindowNamePrefix	b Q   F y	i	j	k	i k   I e	l	l 	m	n	m r   I Q	o	p	o n   I O	q	r	q 1   M O�_
�_ 
pnam	r 4   I M�^	s
�^ 
cwin	s m   K L�]�] 	p o      �\�\ $0 managewindowname manageWindowName	n 	t	u	t I  R ]�[	v�Z
�[ .prcsclicnull��� ��� uiel	v l  R Y	w�Y�X	w n   R Y	x	y	x 4   V Y�W	z
�W 
butT	z m   W X	{	{ �	|	|  O K	y 4   R V�V	}
�V 
cwin	} m   T U�U�U �Y  �X  �Z  	u 	~		~ l  ^ c	�	�	�	� I  ^ c�T	��S
�T .sysodelanull��� ��� nmbr	� m   ^ _�R�R �S  	�   let click register.   	� �	�	� (   l e t   c l i c k   r e g i s t e r .	 	�	�	� l  d d�Q	�	��Q  	� 6 0 will continue below to wait for window to close   	� �	�	� `   w i l l   c o n t i n u e   b e l o w   t o   w a i t   f o r   w i n d o w   t o   c l o s e	� 	��P	� l  d d�O�N�M�O  �N  �M  �P  	j R      �L	�	�
�L .ascrerr ****      � ****	� o      �K�K 0 errmsg errMsg	� �J	��I
�J 
errn	� o      �H�H 0 errnum errNum�I  	k R   m y�G	�	�
�G .ascrerr ****      � ****	� b   s x	�	�	� m   s v	�	� �	�	� H C o u l d n ' t   s a v e   M a n a g e   D a t a   S o u r c e s   -  	� o   v w�F�F 0 errmsg errMsg	� �E	��D
�E 
errn	� o   q r�C�C 0 errnum errNum�D  �d  	c Z   | �	�	��B	�	� n   | �	�	�	� o   } �A�A 40 notinmanagewindowiserror notInManageWindowIsError	� o   | }�@�@ 	0 prefs  	� R   � ��?	�	�
�? .ascrerr ****      � ****	� m   � �	�	� �	�	� v M a n a g e   D a t a   S o u r c e   w i n d o w   w a s n ' t   o p e n ,   s o   n o t h i n g   t o   c l o s e .	� �>	��=
�> 
errn	� m   � ��<�< �=  �B  	� k   � �	�	� 	�	�	� l  � ��;	�	��;  	� 1 + Not in Manage Data Source, but that is OK.   	� �	�	� V   N o t   i n   M a n a g e   D a t a   S o u r c e ,   b u t   t h a t   i s   O K .	� 	��:	� L   � �	�	� m   � ��9
�9 boovtrue�:  	` 	��8	� l  � ��7�6�5�7  �6  �5  �8  	W 4   . 2�4	�
�4 
pcap	� m   0 1	�	� �	�	� , F i l e M a k e r   P r o   A d v a n c e d	U 	�	�	� l  � ��3�2�1�3  �2  �1  	� 	�	�	� l  � ��0�/�.�0  �/  �.  	� 	�	�	� n  � �	�	�	� I   � ��-	��,�- "0 windowwaituntil windowWaitUntil	� 	��+	� K   � �	�	� �*	�	��* 0 
windowname 
windowName	� o   � ��)�) $0 managewindowname manageWindowName	� �(	�	��(  0 windownametest windowNameTest	� m   � �	�	� �	�	�   d o e s   n o t   c o n t a i n	� �'	�	��' 0 whichwindow whichWindow	� m   � �	�	� �	�	�  a n y	� �&	�	��& .0 waitcycledelayseconds waitCycleDelaySeconds	� o   � ��%�% .0 waitcycledelayseconds waitCycleDelaySeconds	� �$	��#�$ 0 waitcyclemax waitCycleMax	� o   � ��"�" 0 waitcyclemax waitCycleMax�#  �+  �,  	�  f   � �	� 	�	�	� l  � ��!� ��!  �   �  	� 	�	�	� l  � �����  �  �  	� 	�	�	� l  � �	�	�	�	� I  � ��	��
� .sysodelanull��� ��� nmbr	� m   � ��� �  	� ( " let normal window come to front.    	� �	�	� D   l e t   n o r m a l   w i n d o w   c o m e   t o   f r o n t .  	� 	�	�	� l  � �����  �  �  	� 	�	�	� L   � �	�	� m   � ��
� boovtrue	� 	�	�	� l  � �����  �  �  	� 	��	� l  � �����  �  �  �  	R m   * +	�	��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  	O R      �	�	�
� .ascrerr ****      � ****	� o      �� 0 errmsg errMsg	� �	��

� 
errn	� o      �	�	 0 errnum errNum�
  	P R   � ��	�	�
� .ascrerr ****      � ****	� b   � �	�	�	� m   � �	�	� �	�	� H C o u l d n ' t   s a v e   M a n a g e   D a t a   S o u r c e s   -  	� o   � ��� 0 errmsg errMsg	� �	��
� 
errn	� o   � ��� 0 errnum errNum�  	M 	��	� l  � ���� �  �  �   �  	 	�	�	� l     ��������  ��  ��  	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� i   O R	�	�	� I      ��	����� 60 fmgui_managedb_field_edit fmGUI_ManageDb_Field_Edit	� 	���	� o      ���� 	0 prefs  ��  ��  	� k    �	�	� 	�	�	� l     ��	�	���  	�   version 1.2   	� �	�	�    v e r s i o n   1 . 2	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� l     ��	�	���  	� � � any BOOLEAN parameters can be either actually boolean, or 1/0.  This function will change that to match UI scripting interface needs.   	� �	�	�   a n y   B O O L E A N   p a r a m e t e r s   c a n   b e   e i t h e r   a c t u a l l y   b o o l e a n ,   o r   1 / 0 .     T h i s   f u n c t i o n   w i l l   c h a n g e   t h a t   t o   m a t c h   U I   s c r i p t i n g   i n t e r f a c e   n e e d s .	� 	�	�	� l     ��������  ��  ��  	� 	�	�	� r     Z	�	�	� K     X	�	� ��
 
�� 0 editmode editMode
  m    

 �

  C O N F O R M
 ��

�� 0 	tablename 	tableName
 m    ��
�� 
null
 ��

�� 0 	fieldname 	fieldName
 m    ��
�� 
null
 ��

	�� 0 altpatterns altPatterns
 m    ��
�� 
null
	 ��


�� 0 fieldcomment fieldComment

 m   	 
��
�� 
null
 ��

�� 0 datatype dataType
 m    ��
�� 
null
 ��

�� 0 	fieldtype 	fieldType
 m    ��
�� 
null
 ��

�� 0 calccode calcCode
 m    ��
�� 
null
 ��

�� &0 autoentercalccode autoEnterCalcCode
 m    ��
�� 
null
 ��

�� 20 autoentercalccontexttoc autoEnterCalcContextTOC
 m    ��
�� 
null
 ��

��  0 alwaysevaluate alwaysEvaluate
 m    ��
�� 
null
 ��

��  0 calccontexttoc calcContextTOC
 m    ��
�� 
null
 ��

�� 0 storageglobal storageGlobal
 m    ��
�� 
null
 ��

�� 20 storecalculationresults storeCalculationResults
 m    ��
�� 
null
 ��

�� (0 storageindexchoice storageIndexChoice
 m     ��
�� 
null
 ��
 
!�� 0 	autoindex 	autoIndex
  m   # $��
�� 
null
! ��
"
#�� 0 maxrepetition maxRepetition
" m   ' (��
�� 
null
# ��
$
%�� 0 indexlanguage indexLanguage
$ m   + ,��
�� 
null
% ��
&
'�� 0 allowediting allowEditing
& m   / 0��
�� 
null
' ��
(
)�� 00 overwriteexistingvalue overwriteExistingValue
( m   3 4��
�� 
null
) ��
*
+�� *0 autoenterisconstant autoEnterIsConstant
* m   7 8��
�� 
null
+ ��
,
-�� 00 autoenteriscalculation autoEnterIsCalculation
, m   ; <��
�� 
null
- ��
.
/�� &0 autoenterislookup autoEnterIsLookup
. m   ? @��
�� 
null
/ ��
0
1�� .0 autoenterspecialvalue autoEnterSpecialValue
0 m   C D��
�� 
null
1 ��
2
3�� 0 
autoserial 
autoSerial
2 m   G H��
�� 
null
3 ��
4
5�� .0 autoenterconstantdata autoEnterConstantData
4 m   K L��
�� 
null
5 ��
6
7�� (0 validationcalccode validationCalcCode
6 m   O P��
�� 
null
7 ��
8���� 40 validationcalccontexttoc validationCalcContextTOC
8 m   S T��
�� 
null��  	� o      ���� 0 defaultprefs defaultPrefs	� 
9
:
9 l  [ [��
;
<��  
; � � editMode: "CONFORM" means make field exactly match the entire specified data structure, while "TWEAK" means only to change which things were specified, leaving the other settings alone.    
< �
=
=v   e d i t M o d e :   " C O N F O R M "   m e a n s   m a k e   f i e l d   e x a c t l y   m a t c h   t h e   e n t i r e   s p e c i f i e d   d a t a   s t r u c t u r e ,   w h i l e   " T W E A K "   m e a n s   o n l y   t o   c h a n g e   w h i c h   t h i n g s   w e r e   s p e c i f i e d ,   l e a v i n g   t h e   o t h e r   s e t t i n g s   a l o n e .  
: 
>
?
> l  [ [��
@
A��  
@ � � autoEnterSpecialValue: keywords used in FM-XML: NONE, CreationAccountName, CreationUserName,CreationTimestamp, ModificationAccountName, et al.   
A �
B
B   a u t o E n t e r S p e c i a l V a l u e :   k e y w o r d s   u s e d   i n   F M - X M L :   N O N E ,   C r e a t i o n A c c o u n t N a m e ,   C r e a t i o n U s e r N a m e , C r e a t i o n T i m e s t a m p ,   M o d i f i c a t i o n A c c o u n t N a m e ,   e t   a l .
? 
C
D
C l  [ [��
E
F��  
E a [ autoSerial:false or autoSerial:{autoNextValue:null, autoIncrement:null, autoGenerate:null}   
F �
G
G �   a u t o S e r i a l : f a l s e   o r   a u t o S e r i a l : { a u t o N e x t V a l u e : n u l l ,   a u t o I n c r e m e n t : n u l l ,   a u t o G e n e r a t e : n u l l }
D 
H
I
H l  [ [��������  ��  ��  
I 
J
K
J l  [ [��
L
M��  
L a [ autoEnterIsLookup - LOOKUP FUNCTIONS NOT YET SUPPORTED - WOULD NEED TO HANDLE SUB-ELEMENT.   
M �
N
N �   a u t o E n t e r I s L o o k u p   -   L O O K U P   F U N C T I O N S   N O T   Y E T   S U P P O R T E D   -   W O U L D   N E E D   T O   H A N D L E   S U B - E L E M E N T .
K 
O
P
O l  [ [��������  ��  ��  
P 
Q
R
Q l  [ [��������  ��  ��  
R 
S
T
S r   [ `
U
V
U b   [ ^
W
X
W o   [ \���� 	0 prefs  
X o   \ ]���� 0 defaultprefs defaultPrefs
V o      ���� 	0 prefs  
T 
Y
Z
Y l  a a��������  ��  ��  
Z 
[
\
[ r   a f
]
^
] n   a d
_
`
_ o   b d���� 0 editmode editMode
` o   a b���� 	0 prefs  
^ o      ���� 0 editmode editMode
\ 
a
b
a l  g g��������  ��  ��  
b 
c
d
c Z  g z
e
f����
e >  g l
g
h
g n   g j
i
j
i o   h j���� &0 autoentercalccode autoEnterCalcCode
j o   g h���� 	0 prefs  
h m   j k��
�� 
null
f r   o v
k
l
k m   o p��
�� boovtrue
l n      
m
n
m o   q u���� 00 autoenteriscalculation autoEnterIsCalculation
n o   p q���� 	0 prefs  ��  ��  
d 
o
p
o l  { {��������  ��  ��  
p 
q
r
q l   { {��
s
t��  
s � �   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   
DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   	
   
t �
u
uD       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       
 D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       	 

r 
v
w
v l  { {��������  ��  ��  
w 
x
y
x Q   {�
z
{
|
z k   ~�
}
} 
~

~ l  ~ ~��������  ��  ��  
 
�
�
� l  ~ ~��������  ��  ��  
� 
�
�
� l  ~ ~��������  ��  ��  
� 
�
�
� l  ~ ~��������  ��  ��  
� 
�
�
� l  ~ ~��
�
���  
�   try to select it first:   
� �
�
� 0   t r y   t o   s e l e c t   i t   f i r s t :
� 
�
�
� r   ~ �
�
�
� I   ~ ��
��~� :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_Select
� 
��}
� o    ��|�| 	0 prefs  �}  �~  
� o      �{�{ $0 fieldnowselected fieldNowSelected
� 
�
�
� l  � ��z�y�x�z  �y  �x  
� 
�
�
� Z  � �
�
��w�v
� H   � �
�
� o   � ��u�u $0 fieldnowselected fieldNowSelected
� L   � �
�
� m   � ��t
�t boovfals�w  �v  
� 
�
�
� l  � ��s�r�q�s  �r  �q  
� 
�
�
� O   ��
�
�
� O   ��
�
�
� k   ��
�
� 
�
�
� n  � �
�
�
� I   � ��p�o�n�p (0 fmgui_appfrontmost fmGUI_AppFrontMost�o  �n  
�  f   � �
� 
�
�
� l  � ��m�l�k�m  �l  �k  
� 
�
�
� l  � ��j�i�h�j  �i  �h  
� 
�
�
� r   � �
�
�
� 6  � �
�
�
� n   � �
�
�
� 4  � ��g
�
�g 
butT
� m   � ��f�f 
� n   � �
�
�
� 4   � ��e
�
�e 
tabg
� m   � ��d�d 
� 4   � ��c
�
�c 
cwin
� m   � ��b�b 
� =  � �
�
�
� 1   � ��a
�a 
titl
� m   � �
�
� �
�
�  C h a n g e
� o      �`�` 0 changebutton changeButton
� 
�
�
� l  � ��_�^�]�_  �^  �]  
� 
�
�
� l  � ��\
�
��\  
� %  COMMENT is for any field type:   
� �
�
� >   C O M M E N T   i s   f o r   a n y   f i e l d   t y p e :
� 
�
�
� Z   �
�
��[�Z
� >  � �
�
�
� n   � �
�
�
� o   � ��Y�Y 0 fieldcomment fieldComment
� o   � ��X�X 	0 prefs  
� m   � ��W
�W 
null
� k   �
�
� 
�
�
� Z   � �
�
��V�U
� n  � �
�
�
� I   � ��T
��S�T (0 fmgui_textfieldset fmGUI_TextFieldSet
� 
�
�
� n   � �
�
�
� 4   � ��R
�
�R 
txtf
� m   � �
�
� �
�
�  C o m m e n t :
� n   � �
�
�
� 4   � ��Q
�
�Q 
tabg
� m   � ��P�P 
� 4   � ��O
�
�O 
cwin
� m   � ��N�N 
� 
��M
� n   � �
�
�
� o   � ��L�L 0 fieldcomment fieldComment
� o   � ��K�K 	0 prefs  �M  �S  
�  f   � �
� I  � ��J
��I
�J .prcsclicnull��� ��� uiel
� o   � ��H�H 0 changebutton changeButton�I  �V  �U  
� 
�
�
� l  � ��G�F�E�G  �F  �E  
� 
��D
� I  ��C
��B
�C .sysodelanull��� ��� nmbr
� m   � �
�
� ?�      �B  �D  �[  �Z  
� 
�
�
� l �A�@�?�A  �@  �?  
� 
�
�
� Z  g
�
��>�=
� F  
�
�
� = 
�
�
� o  �<�< 0 editmode editMode
� m  
�
� �
�
� 
 T W E A K
� = 
�
�
� n  
�
�
� o  �;�; 0 	fieldtype 	fieldType
� o  �:�: 	0 prefs  
� m  �9
�9 
null
� k  c
�
� 
�
�
� l �8
�
��8  
� 6 0 just find out what it already is and use that:    
� �
�
� `   j u s t   f i n d   o u t   w h a t   i t   a l r e a d y   i s   a n d   u s e   t h a t :  
� 
�
�
� r  /
�
�
� n  -   4  &-�7
�7 
popB m  ), � 
 T y p e : n  & 4  !&�6
�6 
tabg m  $%�5�5  4  !�4
�4 
cwin m   �3�3 
� o      �2�2  0 fieldtypepopup fieldTypePopup
� 	�1	 Z  0c

 = 09 n  05 1  15�0
�0 
valL o  01�/�/  0 fieldtypepopup fieldTypePopup m  58 �  C a l c u l a t i o n r  <C m  <? �  C a l c u l a t e d n       o  @B�.�. 0 	fieldtype 	fieldType o  ?@�-�- 	0 prefs    = FO n  FK 1  GK�,
�, 
valL o  FG�+�+  0 fieldtypepopup fieldTypePopup m  KN   �!!  S u m m a r y "�*" r  RY#$# m  RU%% �&&  S u m m a r y$ n      '(' o  VX�)�) 0 	fieldtype 	fieldType( o  UV�(�( 	0 prefs  �*   r  \c)*) m  \_++ �,,  N o r m a l* n      -.- o  `b�'�' 0 	fieldtype 	fieldType. o  _`�&�& 	0 prefs  �1  �>  �=  
� /0/ l hh�%�$�#�%  �$  �#  0 121 Z  h�345�"3 = hm676 n  hk898 o  ik�!�! 0 	fieldtype 	fieldType9 o  hi� �  	0 prefs  7 m  kl�
� 
null4 k  p~:: ;<; R  p|�=>
� .ascrerr ****      � ****= m  x{?? �@@ 8 P a r a m e t e r   m i s s i n g :   f i e l d T y p e> �A�
� 
errnA m  tw�� �  < B�B l }}����  �  �  �  5 CDC = ��EFE n  ��GHG o  ���� 0 	fieldtype 	fieldTypeH o  ���� 	0 prefs  F m  ��II �JJ  C a l c u l a t e dD KLK k  ��MM NON l ������  �  �  O PQP l ���RS�  R  	 IF CALC:   S �TT    I F   C A L C :Q UVU l ���WX�  W   Field Type = Calculated   X �YY 0   F i e l d   T y p e   =   C a l c u l a t e dV Z[Z l ���\]�  \   click "contains Options"   ] �^^ 2   c l i c k   " c o n t a i n s   O p t i o n s "[ _`_ l ���ab�  a / ) Data Type: popup "Calculation result is"   b �cc R   D a t a   T y p e :   p o p u p   " C a l c u l a t i o n   r e s u l t   i s "` ded l ���fg�  f   Calc Context Table   g �hh &   C a l c   C o n t e x t   T a b l ee iji l ���kl�  k   Calculation itself   l �mm &   C a l c u l a t i o n   i t s e l fj non l ���pq�  p   Do Not Evaluate�   q �rr "   D o   N o t   E v a l u a t e &o sts l ���
uv�
  u  	 Storage:   v �ww    S t o r a g e :t xyx l ���	z{�	  z - '	Global, Do Not Store, None/Minimal/All   { �|| N 	 G l o b a l ,   D o   N o t   S t o r e ,   N o n e / M i n i m a l / A l ly }~} l ������  �  �  ~ � l ������  �   FIELD TYPE:   � ���    F I E L D   T Y P E :� ��� r  ����� n  ����� 4  ����
� 
popB� m  ���� ��� 
 T y p e :� n  ����� 4  ����
� 
tabg� m  ���� � 4  ����
� 
cwin� m  ��� �  � o      ����  0 fieldtypepopup fieldTypePopup� ��� Z  �A������ > ����� n  ����� 1  ����
�� 
valL� o  ������  0 fieldtypepopup fieldTypePopup� m  ���� ���  C a l c u l a t i o n� k  �
�� ��� n ����� I  ���������  0 fmgui_popupset fmGUI_PopupSet� ��� o  ������  0 fieldtypepopup fieldTypePopup� ���� m  ���� ���  C a l c u l a t i o n��  ��  �  f  ��� ��� l ����������  ��  ��  � ��� l ��������  � * $ click CHANGE to save the data type.   � ��� H   c l i c k   C H A N G E   t o   s a v e   t h e   d a t a   t y p e .� ��� n ����� I  ��������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� n  ����� 4  �����
�� 
butT� m  ���� ���  C h a n g e� n  ����� 4  �����
�� 
tabg� m  ������ � 4  �����
�� 
cwin� m  ������ ��  ��  �  f  ��� ��� l ����������  ��  ��  � ��� I �������
�� .sysodelanull��� ��� nmbr� m  ���� ?�      ��  � ��� l ����������  ��  ��  � ��� l ��������  � m g if existing field was NOT ALREADY a calc, will get a warning message. Need to handle that possibility.   � ��� �   i f   e x i s t i n g   f i e l d   w a s   N O T   A L R E A D Y   a   c a l c ,   w i l l   g e t   a   w a r n i n g   m e s s a g e .   N e e d   t o   h a n d l e   t h a t   p o s s i b i l i t y .� ��� Z  �������� H  ���� C  ����� n  ����� 1  ����
�� 
pnam� 4  �����
�� 
cwin� m  ������ � m  ���� ��� & M a n a g e   D a t a b a s e   F o r� k  ��� ��� l ��������  � ' ! click OK to confirm the change:    � ��� B   c l i c k   O K   t o   c o n f i r m   t h e   c h a n g e :  � ��� n ����� I  ��������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� n  ����� 4  �����
�� 
butT� m  ���� ���  O K� 4  �����
�� 
cwin� m  ������ ��  ��  �  f  ��� ��� l ����������  ��  ��  � ��� I ������
�� .sysodelanull��� ��� nmbr� m  ���� ?�      ��  � ���� l ��������  ��  ��  ��  ��  ��  � ���� l 		��������  ��  ��  ��  ��  � l A���� k  A�� ��� l ������  �   click Options:    � ���     c l i c k   O p t i o n s :  � ��� n 1��� I  1������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� 6 -� � n   4 ��
�� 
butT m  ����  n   4  ��
�� 
tabg m  ����  4  ��
�� 
cwin m  ����   C  !,	 1  "&��
�� 
pnam	 m  '+

 �  O p t i o n s��  ��  �  f  �  l 22��������  ��  ��    n 2? I  3?������ 20 windowwaituntil_frontis windowWaitUntil_FrontIS �� K  3; ������ 0 
windowname 
windowName m  69 � & S p e c i f y   C a l c u l a t i o n��  ��  ��    f  23 �� l @@��������  ��  ��  ��  � B < ALREADY was a Calculation field, so need to click OPTIONS:    � � x   A L R E A D Y   w a s   a   C a l c u l a t i o n   f i e l d ,   s o   n e e d   t o   c l i c k   O P T I O N S :  �  l BB��������  ��  ��    l BB��������  ��  ��    l BB��������  ��  ��    !  Z  Bt"#����" G  BS$%$ = BG&'& o  BC���� 0 editmode editMode' m  CF(( �))  C O N F O R M% > JO*+* n  JM,-, o  KM���� 0 calccode calcCode- o  JK���� 	0 prefs  + m  MN��
�� 
null# k  Vp.. /0/ l VV��12��  1   CALCULATION CODE:   2 �33 $   C A L C U L A T I O N   C O D E :0 4��4 n Vp565 I  Wp��7���� (0 fmgui_textfieldset fmGUI_TextFieldSet7 898 n  Wi:;: 4  di��<
�� 
txta< m  gh���� ; n  Wd=>= 4  ]d��?
�� 
scra? m  `c���� > 4  W]��@
�� 
cwin@ m  [\���� 9 A��A n  ilBCB o  jl���� 0 calccode calcCodeC o  ij���� 	0 prefs  ��  ��  6  f  VW��  ��  ��  ! DED l uu��������  ��  ��  E FGF l uu��HI��  H ' ! Calc CONTEXT Table (occurrence):   I �JJ B   C a l c   C O N T E X T   T a b l e   ( o c c u r r e n c e ) :G KLK Z  u�MN����M > uzOPO n  uxQRQ o  vx����  0 calccontexttoc calcContextTOCR o  uv���� 	0 prefs  P m  xy��
�� 
nullN n }�STS I  ~���U����  0 fmgui_popupset fmGUI_PopupSetU VWV 6 ~�XYX n  ~�Z[Z 4 ����\
�� 
popB\ m  ������ [ 4  ~���]
�� 
cwin] m  ������ Y E  ��^_^ 1  ����
�� 
pnam_ m  ��`` �aa  c o n t e x tW b��b n  ��cdc o  ������  0 calccontexttoc calcContextTOCd o  ������ 	0 prefs  ��  ��  T  f  }~��  ��  L efe l ����������  ��  ��  f ghg l ����ij��  i   Calc Result TYPE:   j �kk $   C a l c   R e s u l t   T Y P E :h lml Z  ��no��~n > ��pqp n  ��rsr o  ���}�} 0 datatype dataTypes o  ���|�| 	0 prefs  q m  ���{
�{ 
nullo n ��tut I  ���zv�y�z  0 fmgui_popupset fmGUI_PopupSetv wxw 6 ��yzy n  ��{|{ 4 ���x}
�x 
popB} m  ���w�w | 4  ���v~
�v 
cwin~ m  ���u�u z E  ��� 1  ���t
�t 
pnam� m  ���� ��� * C a l c u l a t i o n   r e s u l t   i sx ��s� n  ����� o  ���r�r 0 datatype dataType� o  ���q�q 	0 prefs  �s  �y  u  f  ���  �~  m ��� l ���p�o�n�p  �o  �n  � ��� l ���m���m  � 9 3 Do Not Evaluate if all referenced field are empty:   � ��� f   D o   N o t   E v a l u a t e   i f   a l l   r e f e r e n c e d   f i e l d   a r e   e m p t y :� ��� Z  ����l�k� > ����� n  ����� o  ���j�j  0 alwaysevaluate alwaysEvaluate� o  ���i�i 	0 prefs  � m  ���h
�h 
null� k  ��� ��� r  ����� 6 ����� n  ����� 4 ���g�
�g 
chbx� m  ���f�f � 4  ���e�
�e 
cwin� m  ���d�d � E  ����� 1  ���c
�c 
pnam� m  ���� ��� J n o t   e v a l u a t e   i f   a l l   r e f e r e n c e d   f i e l d s� o      �b�b *0 notevaluatecheckbox notEvaluateCheckbox� ��a� Z  ����`�� n  ����� o  ���_�_  0 alwaysevaluate alwaysEvaluate� o  ���^�^ 	0 prefs  � n ���� I   �]��\�] &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o   �[�[ *0 notevaluatecheckbox notEvaluateCheckbox� ��Z� m  �Y�Y  �Z  �\  �  f  � �`  � n 	��� I  
�X��W�X &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  
�V�V *0 notevaluatecheckbox notEvaluateCheckbox� ��U� m  �T�T �U  �W  �  f  	
�a  �l  �k  � ��� l �S�R�Q�S  �R  �Q  � ��� l �P���P  �   Repetitions:    � ���    R e p e t i t i o n s :  � ��� Z  S���O�N� G  (��� = ��� o  �M�M 0 editmode editMode� m  �� ���  C O N F O R M� > $��� n  "��� o  "�L�L 0 maxrepetition maxRepetition� o  �K�K 	0 prefs  � m  "#�J
�J 
null� n +O��� I  ,O�I��H�I (0 fmgui_textfieldset fmGUI_TextFieldSet� ��� 6 ,F��� n  ,7��� 4 27�G�
�G 
txtf� m  56�F�F � 4  ,2�E�
�E 
cwin� m  01�D�D � E  :E��� 1  ;?�C
�C 
pnam� m  @D�� ���  r e p e t i t i o n s� ��B� n  FK��� o  GK�A�A 0 maxrepetition maxRepetition� o  FG�@�@ 	0 prefs  �B  �H  �  f  +,�O  �N  � ��� l TT�?�>�=�?  �>  �=  � ��� l TT�<�;�:�<  �;  �:  � ��� l TT�9�8�7�9  �8  �7  � ��� Z  T����6�5� G  T���� G  T��� G  Tq��� G  Te��� = TY��� o  TU�4�4 0 editmode editMode� l 	UX��3�2� m  UX�� ���  C O N F O R M�3  �2  � > \a��� n  \_��� o  ]_�1�1 0 storageglobal storageGlobal� o  \]�0�0 	0 prefs  � l 
_`��/�.� m  _`�-
�- 
null�/  �.  � > hm��� n  hk��� o  ik�,�, 20 storecalculationresults storeCalculationResults� o  hi�+�+ 	0 prefs  � l 
kl��*�)� m  kl�(
�( 
null�*  �)  � > t{��� n  ty   o  uy�'�' 0 indexlanguage indexLanguage o  tu�&�& 	0 prefs  � l 
yz�%�$ m  yz�#
�# 
null�%  �$  � > �� n  �� o  ���"�" 0 	autoindex 	autoIndex o  ���!�! 	0 prefs   l 
��� � m  ���
� 
null�   �  � k  �� 	
	 l ����     BEGIN: STORAGE OPTIONS    � .   B E G I N :   S T O R A G E   O P T I O N S
  l ������  �  �    l ����     click Storage Options:     � 0   c l i c k   S t o r a g e   O p t i o n s :    n �� I  ����� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow � 6 �� n  �� 4 ���
� 
butT m  ����  4  ��� 
� 
cwin  m  ����  E  ��!"! 1  ���
� 
pnam" m  ��## �$$  S t o r a g e   O p t i o n s�  �    f  �� %&% n ��'(' I  ���)�� "0 windowwaituntil windowWaitUntil) *�* K  ��++ �,-� 0 
windowname 
windowName, m  ��.. �// & S t o r a g e   O p t i o n s   f o r- �01�  0 windownametest windowNameTest0 m  ��22 �33  s t a r t s   w i t h1 �4�
� 0 whichwindow whichWindow4 m  ��55 �66 
 f r o n t�
  �  �  (  f  ��& 787 l ���	���	  �  �  8 9:9 l ������  �  �  : ;<; r  ��=>= 4  ���?
� 
cwin? m  ���� > o      �� 0 workingarea workingArea< @A@ l ��� �����   ��  ��  A BCB r  ��DED 6 ��FGF n  ��HIH 4 ����J
�� 
chbxJ m  ������ I o  ������ 0 workingarea workingAreaG E  ��KLK 1  ����
�� 
pnamL m  ��MM �NN  g l o b a l   s t o r a g eE o      ���� .0 globalstoragecheckbox globalStorageCheckboxC OPO r  �QRQ 6 �STS n  ��UVU 4 ����W
�� 
chbxW m  ������ V o  ������ 0 workingarea workingAreaT E  �XYX 1  ����
�� 
pnamY m  � ZZ �[[  D o   n o t   s t o r eR o      ���� (0 donotstorecheckbox doNotStoreCheckboxP \]\ l ��������  ��  ��  ] ^_^ Z  B`a����` = 
bcb o  ���� 0 editmode editModec m  	dd �ee  C O N F O R Ma k  >ff ghg l ��ij��  i F @ These two CANNOT BE NULL if you are making this field CONFORM.    j �kk �   T h e s e   t w o   C A N N O T   B E   N U L L   i f   y o u   a r e   m a k i n g   t h i s   f i e l d   C O N F O R M .  h lml Z %no����n = pqp n  rsr o  ���� 0 storageglobal storageGlobals o  ���� 	0 prefs  q m  ��
�� 
nullo R  !��tu
�� .ascrerr ****      � ****t m   vv �ww @ s t o r a g e G l o b a l   m u s t   b e   s p e c i f i e d !u ��x��
�� 
errnx m  ���� ��  ��  ��  m y��y Z &>z{����z = &+|}| n  &)~~ o  ')���� 20 storecalculationresults storeCalculationResults o  &'���� 	0 prefs  } m  )*��
�� 
null{ R  .:����
�� .ascrerr ****      � ****� m  69�� ��� T s t o r e C a l c u l a t i o n R e s u l t s   m u s t   b e   s p e c i f i e d !� �����
�� 
errn� m  25���� ��  ��  ��  ��  ��  ��  _ ��� l CC��������  ��  ��  � ��� Z  C������ n  CG��� o  DF���� 0 storageglobal storageGlobal� o  CD���� 	0 prefs  � k  JS�� ��� n JQ��� I  KQ������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  KL���� .0 globalstoragecheckbox globalStorageCheckbox� ���� m  LM���� ��  ��  �  f  JK� ���� l RR��������  ��  ��  ��  � ��� H  VZ�� n  VY��� o  WY���� 20 storecalculationresults storeCalculationResults� o  VW���� 	0 prefs  � ���� k  ]f�� ��� n ]d��� I  ^d������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  ^_���� (0 donotstorecheckbox doNotStoreCheckbox� ���� m  _`���� ��  ��  �  f  ]^� ���� l ee��������  ��  ��  ��  ��  � l i����� k  i��� ��� n ip��� I  jp������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  jk���� .0 globalstoragecheckbox globalStorageCheckbox� ���� m  kl����  ��  ��  �  f  ij� ��� n qx��� I  rx������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  rs���� (0 donotstorecheckbox doNotStoreCheckbox� ���� m  st����  ��  ��  �  f  qr� ��� l yy��������  ��  ��  � ��� l yy������  � ; 5 Then see which one of the Indexing choices is needed   � ��� j   T h e n   s e e   w h i c h   o n e   o f   t h e   I n d e x i n g   c h o i c e s   i s   n e e d e d� ���� Z  y������� = y���� n  y~��� o  z~���� (0 storageindexchoice storageIndexChoice� o  yz���� 	0 prefs  � m  ~��� ���  N o n e� k  ���� ��� n ����� I  ��������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� n  ����� 4  �����
�� 
chbx� m  ���� ���  N o n e   1   o f   3� o  ������ 0 workingarea workingArea� ���� m  ������ ��  ��  �  f  ��� ���� l ����������  ��  ��  ��  � ��� = ����� n  ����� o  ������ (0 storageindexchoice storageIndexChoice� o  ������ 	0 prefs  � m  ���� ���  M i n i m a l� ��� k  ���� ��� n ����� I  ��������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� n  ����� 4  �����
�� 
chbx� m  ���� ���  M i n i m a l   2   o f   3� o  ������ 0 workingarea workingArea� ���� m  ������ ��  ��  �  f  ��� ���� l ����������  ��  ��  ��  � ��� = ����� n  ����� o  ������ (0 storageindexchoice storageIndexChoice� o  ������ 	0 prefs  � m  ���� ���  A l l� ���� k  ����    n �� I  �������� &0 fmgui_checkboxset fmGUI_CheckboxSet  n  �� 4  ����	
�� 
chbx	 m  ��

 �  A l l   3   o f   3 o  ������ 0 workingarea workingArea �� m  ������ ��  ��    f  �� �� l ����������  ��  ��  ��  ��  ��  ��  � 2 , NOT EITHER OF THOSE, SO UNCHECK THEM FIRST:   � � X   N O T   E I T H E R   O F   T H O S E ,   S O   U N C H E C K   T H E M   F I R S T :�  l ����������  ��  ��    Z  ����� > �� n  �� o  ������ 0 indexlanguage indexLanguage o  ������ 	0 prefs   m  ����
�� 
null n � I  �������  0 fmgui_popupset fmGUI_PopupSet  6 �� n  �� !  4 ����"
�� 
popB" m  ���� ! o  ���~�~ 0 workingarea workingArea E  ��#$# 1  ���}
�} 
pnam$ m  ��%% �&&   D e f a u l t   l a n g u a g e '�|' n  ��()( o  ���{�{ 0 indexlanguage indexLanguage) o  ���z�z 	0 prefs  �|  ��    f  ����  ��   *+* l �y�x�w�y  �x  �w  + ,-, Z  H./�v�u. > 010 n  232 o  �t�t 0 	autoindex 	autoIndex3 o  �s�s 	0 prefs  1 m  �r
�r 
null/ k  D44 565 r  '787 6 %9:9 n  ;<; 4 �q=
�q 
chbx= m  �p�p < o  �o�o 0 workingarea workingArea: E  $>?> 1  �n
�n 
pnam? m  #@@ �AA  c r e a t e   i n d e x e s8 o      �m�m &0 autoindexcheckbox autoIndexCheckbox6 BCB Z  (BDE�lFD n  (.GHG o  )-�k�k 0 	autoindex 	autoIndexH o  ()�j�j 	0 prefs  E n 18IJI I  28�iK�h�i &0 fmgui_checkboxset fmGUI_CheckboxSetK LML o  23�g�g &0 autoindexcheckbox autoIndexCheckboxM N�fN m  34�e�e �f  �h  J  f  12�l  F n ;BOPO I  <B�dQ�c�d &0 fmgui_checkboxset fmGUI_CheckboxSetQ RSR o  <=�b�b &0 autoindexcheckbox autoIndexCheckboxS T�aT m  =>�`�`  �a  �c  P  f  ;<C U�_U l CC�^�]�\�^  �]  �\  �_  �v  �u  - VWV l II�[�Z�Y�[  �Z  �Y  W XYX l II�XZ[�X  Z %  click OK for Storage Options:    [ �\\ >   c l i c k   O K   f o r   S t o r a g e   O p t i o n s :  Y ]^] n Ic_`_ I  Jc�Wa�V�W B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindowa b�Ub 6 J_cdc n  JPefe 4 KP�Tg
�T 
butTg m  NO�S�S f o  JK�R�R 0 workingarea workingAread E  S^hih 1  TX�Q
�Q 
pnami m  Y]jj �kk  O K�U  �V  `  f  IJ^ lml l dd�P�O�N�P  �O  �N  m non n dpqp I  e�Mr�L�M "0 windowwaituntil windowWaitUntilr s�Ks K  e{tt �Juv�J 0 
windowname 
windowNameu m  hkww �xx & S t o r a g e   O p t i o n s   f o rv �Iyz�I  0 windownametest windowNameTesty m  nq{{ �|| & d o e s   n o t   s t a r t   w i t hz �H}�G�H 0 whichwindow whichWindow} m  tw~~ � 
 f r o n t�G  �K  �L  q  f  deo ��� l ���F�E�D�F  �E  �D  � ��C� l ���B���B  �   END OF: STORAGE OPTIONS   � ��� 0   E N D   O F :   S T O R A G E   O P T I O N S�C  �6  �5  � ��� l ���A�@�?�A  �@  �?  � ��� l ������ r  ����� 4  ���>�
�> 
cwin� m  ���=�= � o      �<�< 0 workingarea workingArea� + % need reference to NEW first window.    � ��� J   n e e d   r e f e r e n c e   t o   N E W   f i r s t   w i n d o w .  � ��� l ���;�:�9�;  �:  �9  � ��� l ���8���8  � - ' click OK to save Specify Calculation:    � ��� N   c l i c k   O K   t o   s a v e   S p e c i f y   C a l c u l a t i o n :  � ��� n ����� I  ���7��6�7 B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ��5� 6 ����� n  ����� 4 ���4�
�4 
butT� m  ���3�3 � o  ���2�2 0 workingarea workingArea� E  ����� 1  ���1
�1 
pnam� m  ���� ���  O K�5  �6  �  f  ��� ��� l ���0�/�.�0  �/  �.  � ��� n ����� I  ���-��,�- "0 windowwaituntil windowWaitUntil� ��+� K  ���� �*���* 0 
windowname 
windowName� m  ���� ��� & S p e c i f y   C a l c u l a t i o n� �)���)  0 windownametest windowNameTest� m  ���� ���   d o e s   n o t   c o n t a i n� �(��'�( 0 whichwindow whichWindow� m  ���� ��� 
 f r o n t�'  �+  �,  �  f  ��� ��� l ���&�%�$�&  �%  �$  � ��� L  ���� m  ���#
�# boovtrue� ��� l ���"�!� �"  �!  �   � ��� l ������  �  �  � ��� l ������  �  �  �  L ��� = ����� n  ����� o  ���� 0 	fieldtype 	fieldType� o  ���� 	0 prefs  � m  ���� ���  S u m m a r y� ��� k  ���� ��� l ������  �  �  � ��� l ������  �   IF SUMMARY:   � ���    I F   S U M M A R Y :� ��� l ������  �   Field Type = Summary   � ��� *   F i e l d   T y p e   =   S u m m a r y� ��� l ������  �   click "contains Options"   � ��� 2   c l i c k   " c o n t a i n s   O p t i o n s "� ��� l ������  � / ) Data Type: popup "Calculation result is"   � ��� R   D a t a   T y p e :   p o p u p   " C a l c u l a t i o n   r e s u l t   i s "� ��� l ������  �   Calc Context Table   � ��� &   C a l c   C o n t e x t   T a b l e� ��� l ������  �   Calculation itself   � ��� &   C a l c u l a t i o n   i t s e l f� ��� l ������  �   Do Not Evaluate�   � ��� "   D o   N o t   E v a l u a t e &� ��� l ������  �  	 Storage:   � ���    S t o r a g e :� ��� l ������  � - '	Global, Do Not Store, None/Minimal/All   � ��� N 	 G l o b a l ,   D o   N o t   S t o r e ,   N o n e / M i n i m a l / A l l� � � l ���
�	��
  �	  �     l ����   p j if existing field was NOT ALREADY a summary, will get a warning message. Need to handle that possibility.    � �   i f   e x i s t i n g   f i e l d   w a s   N O T   A L R E A D Y   a   s u m m a r y ,   w i l l   g e t   a   w a r n i n g   m e s s a g e .   N e e d   t o   h a n d l e   t h a t   p o s s i b i l i t y .  l ������  �  �   	 l ���
�  
   NOT YET SUPPORTED ! ! !     � 2   N O T   Y E T   S U P P O R T E D   !   !   !  	  l ����     NOT YET SUPPORTED ! ! !     � 2   N O T   Y E T   S U P P O R T E D   !   !   !    l ����     NOT YET SUPPORTED ! ! !     � 2   N O T   Y E T   S U P P O R T E D   !   !   !    l ��� �����   ��  ��   �� l ����������  ��  ��  ��  �  = �� n  �� o  ������ 0 	fieldtype 	fieldType o  ������ 	0 prefs   m  ��   �!!  N o r m a l "��" k  ��## $%$ l ����&'��  & / )ELSE IF NOT CALC (Field Type is Normal):	   ' �(( R E L S E   I F   N O T   C A L C   ( F i e l d   T y p e   i s   N o r m a l ) : 	% )*) l ����+,��  +  
 Data Type   , �--    D a t a   T y p e* ./. l ����01��  0   click "contains Options"   1 �22 2   c l i c k   " c o n t a i n s   O p t i o n s "/ 343 l ����56��  5   TAB: Storage:   6 �77    T A B :   S t o r a g e :4 898 l ����:;��  : - '	Global, Do Not Store, None/Minimal/All   ; �<< N 	 G l o b a l ,   D o   N o t   S t o r e ,   N o n e / M i n i m a l / A l l9 =>= l ����?@��  ?   TAB: Auto-Enter   @ �AA     T A B :   A u t o - E n t e r> BCB l ����DE��  D - '	Creation, Modification, Serial, Data,    E �FF N 	 C r e a t i o n ,   M o d i f i c a t i o n ,   S e r i a l ,   D a t a ,  C GHG l ����IJ��  I  	Calculated Value:    J �KK & 	 C a l c u l a t e d   V a l u e :  H LML l ����NO��  N   		Calc Context Table   O �PP *   	 	 C a l c   C o n t e x t   T a b l eM QRQ l ����ST��  S   		Calculation itself   T �UU *   	 	 C a l c u l a t i o n   i t s e l fR VWV l ����XY��  X   		Do Not Evaluate�   Y �ZZ &   	 	 D o   N o t   E v a l u a t e &W [\[ l ����]^��  ] % 	Do not replace existing value�   ^ �__ > 	 D o   n o t   r e p l a c e   e x i s t i n g   v a l u e &\ `a` l ����bc��  b   TAB: Validation:   c �dd "   T A B :   V a l i d a t i o n :a efe l ����gh��  g  	[Skip for now]   h �ii  	 [ S k i p   f o r   n o w ]f jkj l ����lm��  l   Prohibit modification�   m �nn .   P r o h i b i t   m o d i f i c a t i o n &k opo l ����������  ��  ��  p qrq l ����������  ��  ��  r sts l ����������  ��  ��  t uvu l ����wx��  w   field DATA TYPE:   x �yy "   f i e l d   D A T A   T Y P E :v z{z Z  �||}����| G  ��~~ = ����� o  ������ 0 editmode editMode� m  ���� ���  C O N F O R M > ����� n  ����� o  ������ 0 datatype dataType� o  ������ 	0 prefs  � m  ����
�� 
null} k  �x�� ��� r  ���� n  ���� 4  ���
�� 
popB� m  
�� ��� 
 T y p e :� n  ���� 4  ����
�� 
tabg� m  ���� � 4  �����
�� 
cwin� m  ������ � o      ���� 0 datatypepopup dataTypePopup� ���� Z  x������� > ��� n  ��� 1  ��
�� 
valL� o  ���� 0 datatypepopup dataTypePopup� n  ��� o  ���� 0 datatype dataType� o  ���� 	0 prefs  � k  t�� ��� n #��� I  #�������  0 fmgui_popupset fmGUI_PopupSet� ��� o  ���� 0 datatypepopup dataTypePopup� ���� n  ��� o  ���� 0 datatype dataType� o  ���� 	0 prefs  ��  ��  �  f  � ��� l $$��������  ��  ��  � ��� l $$������  � * $ click CHANGE to save the data type.   � ��� H   c l i c k   C H A N G E   t o   s a v e   t h e   d a t a   t y p e .� ��� n $;��� I  %;������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� n  %7��� 4  07���
�� 
butT� m  36�� ���  C h a n g e� n  %0��� 4  +0���
�� 
tabg� m  ./���� � 4  %+���
�� 
cwin� m  )*���� ��  ��  �  f  $%� ��� l <<��������  ��  ��  � ��� I <C�����
�� .sysodelanull��� ��� nmbr� m  <?�� ?�      ��  � ��� l DD��������  ��  ��  � ��� l DD������  � 9 3 MIGHT open a dialog warning about type conversion:   � ��� f   M I G H T   o p e n   a   d i a l o g   w a r n i n g   a b o u t   t y p e   c o n v e r s i o n :� ���� Z  Dt������� H  DS�� C  DR��� n  DN��� 1  JN��
�� 
pnam� 4  DJ���
�� 
cwin� m  HI���� � m  NQ�� ��� & M a n a g e   D a t a b a s e   F o r� k  Vp�� ��� l VV������  � ' ! click OK to confirm the change:    � ��� B   c l i c k   O K   t o   c o n f i r m   t h e   c h a n g e :  � ��� n Vh��� I  Wh������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� n  Wd��� 4  ]d���
�� 
butT� m  `c�� ���  O K� 4  W]���
�� 
cwin� m  [\���� ��  ��  �  f  VW� ��� l ii��������  ��  ��  � ���� I ip�����
�� .sysodelanull��� ��� nmbr� m  il�� ?�      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  { ��� l }}��������  ��  ��  � ��� l }}��������  ��  ��  � ��� l }}������  �   click Options:    � ���     c l i c k   O p t i o n s :  � ��� n }���� I  ~�������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� 6 ~���� n  ~�   4 ����
�� 
butT m  ������  n  ~� 4  ����
�� 
tabg m  ������  4  ~���
�� 
cwin m  ������ � C  �� 1  ����
�� 
pnam m  ��		 �

  O p t i o n s��  ��  �  f  }~�  n �� I  �������� "0 windowwaituntil windowWaitUntil �� K  �� ���� 0 
windowname 
windowName m  �� �  O p t i o n s   f o r ����  0 windownametest windowNameTest m  �� �  s t a r t s   w i t h ������ 0 whichwindow whichWindow m  �� � 
 f r o n t��  ��  ��    f  ��  l ����������  ��  ��     l ���������  ��  �    !"! l ���~#$�~  # P J--------------------------------------------------------------------------   $ �%% � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -" &'& l ���}()�}  (   NORMAL FIELD   ) �**    N O R M A L   F I E L D' +,+ l ���|-.�|  - P J--------------------------------------------------------------------------   . �// � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -, 010 r  ��232 n  ��454 4  ���{6
�{ 
tabg6 m  ���z�z 5 4  ���y7
�y 
cwin7 m  ���x�x 3 o      �w�w 0 workingarea workingArea1 898 l ���v�u�t�v  �u  �t  9 :;: l ���s�r�q�s  �r  �q  ; <=< l ���p>?�p  > P J--------------------------------------------------------------------------   ? �@@ � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -= ABA l ���oCD�o  C   STORAGE TAB:   D �EE    S T O R A G E   T A B :B FGF l ���nHI�n  H P J--------------------------------------------------------------------------   I �JJ � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -G KLK l ���m�l�k�m  �l  �k  L MNM l ���j�i�h�j  �i  �h  N OPO l ���g�f�e�g  �f  �e  P QRQ Z  �	ST�d�cS G  �UVU G  ��WXW G  ��YZY G  ��[\[ = ��]^] o  ���b�b 0 editmode editMode^ l 	��_�a�`_ m  ��`` �aa  C O N F O R M�a  �`  \ > ��bcb n  ��ded o  ���_�_ 0 storageglobal storageGlobale o  ���^�^ 	0 prefs  c l 
��f�]�\f m  ���[
�[ 
null�]  �\  Z > ��ghg n  ��iji o  ���Z�Z (0 storageindexchoice storageIndexChoicej o  ���Y�Y 	0 prefs  h l 
��k�X�Wk m  ���V
�V 
null�X  �W  X > ��lml n  ��non o  ���U�U 0 indexlanguage indexLanguageo o  ���T�T 	0 prefs  m l 
��p�S�Rp m  ���Q
�Q 
null�S  �R  V > �qrq n  �sts o  ��P�P 0 	autoindex 	autoIndext o  ���O�O 	0 prefs  r l 
u�N�Mu m  �L
�L 
null�N  �M  T k  
	vv wxw l 

�K�J�I�K  �J  �I  x yzy I 
�H{�G
�H .prcsclicnull��� ��� uiel{ n  
|}| 4  �F~
�F 
radB~ m   ���  S t o r a g e} o  
�E�E 0 workingarea workingArea�G  z ��� l �D�C�B�D  �C  �B  � ��� l �A���A  �   Repetitions:   � ���    R e p e t i t i o n s :� ��� n 6��� I  6�@��?�@ (0 fmgui_textfieldset fmGUI_TextFieldSet� ��� 6 -��� n  ��� 4 �>�
�> 
txtf� m  �=�= � o  �<�< 0 workingarea workingArea� E  !,��� 1  "&�;
�; 
pnam� m  '+�� ���  r e p e t i t i o n s� ��:� n  -2��� o  .2�9�9 0 maxrepetition maxRepetition� o  -.�8�8 	0 prefs  �:  �?  �  f  � ��� l 77�7�6�5�7  �6  �5  � ��� l 77�4���4  �   Global:   � ���    G l o b a l :� ��� r  7N��� 6 7L��� n  7=��� 4 8=�3�
�3 
chbx� m  ;<�2�2 � o  78�1�1 0 workingarea workingArea� E  @K��� 1  AE�0
�0 
pnam� m  FJ�� ���  g l o b a l   s t o r a g e� o      �/�/ .0 globalstoragecheckbox globalStorageCheckbox� ��� l OO�.�-�,�.  �-  �,  � ��� Z  Os���+�*� = OT��� o  OP�)�) 0 editmode editMode� m  PS�� ���  C O N F O R M� k  Wo�� ��� l WW�(���(  � D > This CANNOT BE NULL, if we are making field conform!!!!!					   � ��� |   T h i s   C A N N O T   B E   N U L L ,   i f   w e   a r e   m a k i n g   f i e l d   c o n f o r m ! ! ! ! ! 	 	 	 	 	� ��'� Z Wo���&�%� = W\��� n  WZ��� o  XZ�$�$ 0 storageglobal storageGlobal� o  WX�#�# 	0 prefs  � m  Z[�"
�" 
null� R  _k�!��
�! .ascrerr ****      � ****� m  gj�� ��� @ s t o r a g e G l o b a l   m u s t   b e   s p e c i f i e d !� � ��
�  
errn� m  cf�� �  �&  �%  �'  �+  �*  � ��� l tt����  �  �  � ��� l tt����  �  �  � ��� l tt����  �  �  � ��� Z  t������ n  tx��� o  uw�� 0 storageglobal storageGlobal� o  tu�� 	0 prefs  � k  {��� ��� l {{����  �  �  � ��� Z  {������ > {���� n  {���� 1  |��
� 
valL� o  {|�� .0 globalstoragecheckbox globalStorageCheckbox� m  ���
�
 � k  ���� ��� l ���	���	  � ( " should be GLOBAL, but is NOT yet:   � ��� D   s h o u l d   b e   G L O B A L ,   b u t   i s   N O T   y e t :� ��� n ����� I  ������ *0 clickobjectbycoords clickObjectByCoords� ��� o  ���� .0 globalstoragecheckbox globalStorageCheckbox�  �  �  f  ��� ��� I �����
� .sysodelanull��� ��� nmbr� m  ���� ?�      �  � ��� l ����� �  �  �   � ��� l ��������  � G A MIGHT open a dialog warning about change to global status:						   � ��� �   M I G H T   o p e n   a   d i a l o g   w a r n i n g   a b o u t   c h a n g e   t o   g l o b a l   s t a t u s : 	 	 	 	 	 	� ���� Z  ��������� H  ���� C  ����� n  ��   1  ����
�� 
pnam 4  ����
�� 
cwin m  ������ � m  �� �  O p t i o n s   f o r� k  ��  l ����	��   ' ! click OK to confirm the change:    	 �

 B   c l i c k   O K   t o   c o n f i r m   t h e   c h a n g e :    n �� I  �������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow �� n  �� 4  ����
�� 
butT m  �� �  O K 4  ����
�� 
cwin m  ������ ��  ��    f  ��  l ����������  ��  ��    l ������   < 6 wait until back to normal "Options for Field" window:    � l   w a i t   u n t i l   b a c k   t o   n o r m a l   " O p t i o n s   f o r   F i e l d "   w i n d o w :  n �� !  I  ����"���� "0 windowwaituntil windowWaitUntil" #��# K  ��$$ ��%&�� 0 
windowname 
windowName% m  ��'' �((  O p t i o n s   f o r& ��)*��  0 windownametest windowNameTest) m  ��++ �,,  s t a r t s   w i t h* ��-���� 0 whichwindow whichWindow- m  ��.. �// 
 f r o n t��  ��  ��  !  f  �� 0��0 l ����������  ��  ��  ��  ��  ��  ��  �  �  � 121 l ����������  ��  ��  2 3��3 l ����������  ��  ��  ��  �  � l ��4564 k  ��77 898 Z  �H:;����: > ��<=< n  ��>?> 1  ����
�� 
valL? o  ������ .0 globalstoragecheckbox globalStorageCheckbox= m  ������  ; k  �D@@ ABA l ����������  ��  ��  B CDC l ����EF��  E $  IS GLOBAL, but should NOT be:   F �GG <   I S   G L O B A L ,   b u t   s h o u l d   N O T   b e :D HIH n ��JKJ I  ����L���� *0 clickobjectbycoords clickObjectByCoordsL M��M o  ������ .0 globalstoragecheckbox globalStorageCheckbox��  ��  K  f  ��I NON I ����P��
�� .sysodelanull��� ��� nmbrP m  ��QQ ?�      ��  O RSR l ����������  ��  ��  S TUT l ����VW��  V G A MIGHT open a dialog warning about change to global status:						   W �XX �   M I G H T   o p e n   a   d i a l o g   w a r n i n g   a b o u t   c h a n g e   t o   g l o b a l   s t a t u s : 	 	 	 	 	 	U YZY Z  �B[\����[ H  �]] C  �
^_^ n  �`a` 1  ��
�� 
pnama 4  ���b
�� 
cwinb m   ���� _ m  	cc �dd  O p t i o n s   f o r\ k  >ee fgf l ��hi��  h ' ! click OK to confirm the change:    i �jj B   c l i c k   O K   t o   c o n f i r m   t h e   c h a n g e :  g klk n  mnm I   ��o���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindowo p��p n  qrq 4  ��s
�� 
butTs m  tt �uu  O Kr 4  ��v
�� 
cwinv m  ���� ��  ��  n  f  l wxw l !!��������  ��  ��  x yzy l !!��{|��  { < 6 wait until back to normal "Options for Field" window:   | �}} l   w a i t   u n t i l   b a c k   t o   n o r m a l   " O p t i o n s   f o r   F i e l d "   w i n d o w :z ~~ n !<��� I  "<������� "0 windowwaituntil windowWaitUntil� ���� K  "8�� ������ 0 
windowname 
windowName� m  %(�� ���  O p t i o n s   f o r� ������  0 windownametest windowNameTest� m  +.�� ���  s t a r t s   w i t h� ������� 0 whichwindow whichWindow� m  14�� ��� 
 f r o n t��  ��  ��  �  f  !" ���� l ==��������  ��  ��  ��  ��  ��  Z ���� l CC��������  ��  ��  ��  ��  ��  9 ��� l II��������  ��  ��  � ��� l II��������  ��  ��  � ��� l II������  � ; 5 Then see which one of the Indexing choices is needed   � ��� j   T h e n   s e e   w h i c h   o n e   o f   t h e   I n d e x i n g   c h o i c e s   i s   n e e d e d� ���� Z  I������� = IR��� n  IN��� o  JN���� (0 storageindexchoice storageIndexChoice� o  IJ���� 	0 prefs  � m  NQ�� ���  N o n e� k  Ue�� ��� n Uc��� I  Vc������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� n  V^��� 4  W^���
�� 
chbx� m  Z]�� ���  N o n e   1   o f   3� o  VW���� 0 workingarea workingArea� ���� m  ^_���� ��  ��  �  f  UV� ���� o  de���� 0 fdsfdsf  ��  � ��� = hq��� n  hm��� o  im���� (0 storageindexchoice storageIndexChoice� o  hi���� 	0 prefs  � m  mp�� ���  M i n i m a l� ��� k  t��� ��� n t���� I  u�������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� n  u}��� 4  v}���
�� 
chbx� m  y|�� ���  M i n i m a l   2   o f   3� o  uv���� 0 workingarea workingArea� ���� m  }~���� ��  ��  �  f  tu� ���� l ����������  ��  ��  ��  � ��� = ����� n  ����� o  ������ (0 storageindexchoice storageIndexChoice� o  ������ 	0 prefs  � m  ���� ���  A l l� ���� k  ���� ��� n ����� I  ��������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� n  ����� 4  �����
�� 
chbx� m  ���� ���  A l l   3   o f   3� o  ������ 0 workingarea workingArea� ���� m  ������ ��  ��  �  f  ��� ���� l ������~��  �  �~  ��  ��  ��  ��  5 ' ! NOT global, SO UNCHECK it FIRST:   6 ��� B   N O T   g l o b a l ,   S O   U N C H E C K   i t   F I R S T :� ��� l ���}�|�{�}  �|  �{  � ��� l ���z���z  �   Index Language:    � ��� "   I n d e x   L a n g u a g e :  � ��� Z  �����y�x� > ����� n  ����� o  ���w�w 0 indexlanguage indexLanguage� o  ���v�v 	0 prefs  � m  ���u
�u 
null� n ����� I  ���t��s�t  0 fmgui_popupset fmGUI_PopupSet� ��� 6 ����� n  ����� 4 ���r�
�r 
popB� m  ���q�q � o  ���p�p 0 workingarea workingArea� E  ��� � 1  ���o
�o 
pnam  m  �� �   D e f a u l t   l a n g u a g e� �n n  �� o  ���m�m 0 indexlanguage indexLanguage o  ���l�l 	0 prefs  �n  �s  �  f  ���y  �x  �  l ���k�j�i�k  �j  �i   	 l ���h
�h  
 %  Create indexes automatically:     � >   C r e a t e   i n d e x e s   a u t o m a t i c a l l y :  	  Z  �	�g�f > �� n  �� o  ���e�e 0 	autoindex 	autoIndex o  ���d�d 	0 prefs   m  ���c
�c 
null k  �	  r  �� 6 �� n  �� 4 ���b
�b 
chbx m  ���a�a  o  ���`�` 0 workingarea workingArea E  ��  1  ���_
�_ 
pnam  m  ��!! �""  c r e a t e   i n d e x e s o      �^�^ &0 autoindexcheckbox autoIndexCheckbox #$# Z  �	%&�]'% n  ��()( o  ���\�\ 0 	autoindex 	autoIndex) o  ���[�[ 	0 prefs  & n 		*+* I  		�Z,�Y�Z &0 fmgui_checkboxset fmGUI_CheckboxSet, -.- o  		�X�X &0 autoindexcheckbox autoIndexCheckbox. /�W/ m  		�V�V �W  �Y  +  f  		�]  ' n 		010 I  		�U2�T�U &0 fmgui_checkboxset fmGUI_CheckboxSet2 343 o  		�S�S &0 autoindexcheckbox autoIndexCheckbox4 5�R5 m  		�Q�Q  �R  �T  1  f  		$ 6�P6 l 		�O�N�M�O  �N  �M  �P  �g  �f   787 l 		�L�K�J�L  �K  �J  8 9�I9 l 		�H:;�H  :   END OF: Storage Tab.   ; �<< *   E N D   O F :   S t o r a g e   T a b .�I  �d  �c  R =>= l 		�G�F�E�G  �F  �E  > ?@? l 		�DAB�D  A P J--------------------------------------------------------------------------   B �CC � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -@ DED l 		�CFG�C  F   NORMAL FIELD   G �HH    N O R M A L   F I E L DE IJI l 		�BKL�B  K U O--------------------------------------------------------------------------					   L �MM � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 	 	 	 	 	J NON l 		�APQ�A  P   AUTO-ENTER TAB:   Q �RR     A U T O - E N T E R   T A B :O STS l 		�@UV�@  U U O--------------------------------------------------------------------------					   V �WW � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 	 	 	 	 	T XYX r  		,Z[Z n  		*\]\ 4  	%	*�?^
�? 
tabg^ m  	(	)�>�> ] 4  		%�=_
�= 
cwin_ m  	#	$�<�< [ o      �;�; 0 workingarea workingAreaY `a` I 	-	9�:b�9
�: .prcsclicnull��� ��� uielb n  	-	5cdc 4  	.	5�8e
�8 
radBe m  	1	4ff �gg  A u t o - E n t e rd o  	-	.�7�7 0 workingarea workingArea�9  a hih l 	:	:�6�5�4�6  �5  �4  i jkj l 	:	:�3lm�3  l   Serial Number:   m �nn    S e r i a l   N u m b e r :k opo Z  	:
qr�2�1q > 	:	Asts n  	:	?uvu o  	;	?�0�0 0 
autoserial 
autoSerialv o  	:	;�/�/ 	0 prefs  t m  	?	@�.
�. 
nullr Z  	D
wx�-yw = 	D	Qz{z n  	D	M|}| m  	I	M�,
�, 
pcls} n  	D	I~~ o  	E	I�+�+ 0 
autoserial 
autoSerial o  	D	E�*�* 	0 prefs  { m  	M	P�)
�) 
boolx n 	T	b��� I  	U	b�(��'�( &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� n  	U	]��� 4  	V	]�&�
�& 
chbx� m  	Y	\�� ���  S e r i a l   n u m b e r� o  	U	V�%�% 0 workingarea workingArea� ��$� m  	]	^�#�#  �$  �'  �  f  	T	U�-  y k  	e
�� ��� l 	e	e�"���"  � * $ autoSerial is a RECORD of settings:   � ��� H   a u t o S e r i a l   i s   a   R E C O R D   o f   s e t t i n g s :� ��� n 	e	s��� I  	f	s�!�� �! &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� n  	f	n��� 4  	g	n��
� 
chbx� m  	j	m�� ���  S e r i a l   n u m b e r� o  	f	g�� 0 workingarea workingArea� ��� m  	n	o�� �  �   �  f  	e	f� ��� l 	t	t����  �  �  � ��� l 	t	t����  �  �  � ��� n 	t	���� I  	u	����� (0 fmgui_textfieldset fmGUI_TextFieldSet� ��� 6 	u	���� n  	u	{��� 4 	v	{��
� 
txtf� m  	y	z�� � o  	u	v�� 0 workingarea workingArea� E  	~	���� 1  		��
� 
pnam� m  	�	��� ���  n e x t   v a l u e� ��� n  	�	���� o  	�	��� 0 autonextvalue autoNextValue� n  	�	���� o  	�	��� 0 
autoserial 
autoSerial� o  	�	��� 	0 prefs  �  �  �  f  	t	u� ��� l 	�	���
�	�  �
  �	  � ��� n 	�	���� I  	�	����� (0 fmgui_textfieldset fmGUI_TextFieldSet� ��� 6 	�	���� n  	�	���� 4 	�	���
� 
txtf� m  	�	��� � o  	�	��� 0 workingarea workingArea� E  	�	���� 1  	�	��
� 
pnam� m  	�	��� ���  i n c r e m e n t� ��� n  	�	���� o  	�	��� 0 autoincrement autoIncrement� n  	�	���� o  	�	�� �  0 
autoserial 
autoSerial� o  	�	����� 	0 prefs  �  �  �  f  	�	�� ��� l 	�	���������  ��  ��  � ��� Z  	�	������� = 	�	���� n  	�	���� o  	�	����� 0 autogenerate autoGenerate� n  	�	���� o  	�	����� 0 
autoserial 
autoSerial� o  	�	����� 	0 prefs  � m  	�	��� ���  O n C r e a t i o n� n 	�	���� I  	�	�������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� n  	�	���� 4  	�	����
�� 
chbx� m  	�	��� ��� $ O n   c r e a t i o n   1   o f   2� o  	�	����� 0 workingarea workingArea� ���� m  	�	����� ��  ��  �  f  	�	�� ��� = 	�	���� n  	�	���� o  	�	����� 0 autogenerate autoGenerate� n  	�	���� o  	�	����� 0 
autoserial 
autoSerial� o  	�	����� 	0 prefs  � m  	�	��� ���  O n C o m m i t� ���� n 	�	���� I  	�	�������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� n  	�	���� 4  	�	����
�� 
chbx� m  	�	��� ���   O n   c o m m i t   2   o f   2� o  	�	����� 0 workingarea workingArea� ���� m  	�	����� ��  ��  �  f  	�	���  ��  � ���� l 
 
 ��������  ��  ��  ��  �2  �1  p � � l 

��������  ��  ��     l 

��������  ��  ��    l 

����   A ; Special Value (creation,modification,last visited record):    � v   S p e c i a l   V a l u e   ( c r e a t i o n , m o d i f i c a t i o n , l a s t   v i s i t e d   r e c o r d ) : 	 Z  
�
����
 > 

 n  

 o  

���� .0 autoenterspecialvalue autoEnterSpecialValue o  

���� 	0 prefs   m  

��
�� 
null k  
�  l 

����   � � autoEnterSpecialValue: keywords used in FM-XML: PreviousRecord, CreationAccountName, CreationUserName,CreationTimestamp, ModificationAccountName, et al.    �2   a u t o E n t e r S p e c i a l V a l u e :   k e y w o r d s   u s e d   i n   F M - X M L :   P r e v i o u s R e c o r d ,   C r e a t i o n A c c o u n t N a m e ,   C r e a t i o n U s e r N a m e , C r e a t i o n T i m e s t a m p ,   M o d i f i c a t i o n A c c o u n t N a m e ,   e t   a l .  Z  
��� = 

 n  

 o  

���� .0 autoenterspecialvalue autoEnterSpecialValue o  

���� 	0 prefs   m  

 �    P r e v i o u s R e c o r d k  

9!! "#" n 

7$%$ I  

7��&���� &0 fmgui_checkboxset fmGUI_CheckboxSet& '(' 6 

2)*) n  

#+,+ 4 

#��-
�� 
chbx- m  
!
"���� , o  

���� 0 workingarea workingArea* E  
&
1./. 1  
'
+��
�� 
pnam/ m  
,
000 �11  l a s t   v i s i t e d( 2��2 m  
2
3���� ��  ��  %  f  

# 3��3 l 
8
8��������  ��  ��  ��   454 C  
<
E676 n  
<
A898 o  
=
A���� .0 autoenterspecialvalue autoEnterSpecialValue9 o  
<
=���� 	0 prefs  7 m  
A
D:: �;;  C r e a t i o n5 <=< k  
H
�>> ?@? Z  
H
�ABC��A = 
H
QDED n  
H
MFGF o  
I
M���� .0 autoenterspecialvalue autoEnterSpecialValueG o  
H
I���� 	0 prefs  E m  
M
PHH �II   C r e a t i o n U s e r N a m eB r  
T
YJKJ m  
T
WLL �MM  N a m eK o      ���� 0 
menuchoice 
menuChoiceC NON = 
\
ePQP n  
\
aRSR o  
]
a���� .0 autoenterspecialvalue autoEnterSpecialValueS o  
\
]���� 	0 prefs  Q m  
a
dTT �UU  C r e a t i o n N a m eO VWV r  
h
mXYX m  
h
kZZ �[[  N a m eY o      ���� 0 
menuchoice 
menuChoiceW \]\ = 
p
y^_^ n  
p
u`a` o  
q
u���� .0 autoenterspecialvalue autoEnterSpecialValuea o  
p
q���� 	0 prefs  _ m  
u
xbb �cc & C r e a t i o n A c c o u n t N a m e] ded r  
|
�fgf m  
|
hh �ii  A c c o u n t   N a m eg o      ���� 0 
menuchoice 
menuChoicee jkj = 
�
�lml n  
�
�non o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValueo o  
�
����� 	0 prefs  m m  
�
�pp �qq " C r e a t i o n T i m e s t a m pk rsr r  
�
�tut m  
�
�vv �ww 2 T i m e s t a m p   ( D a t e   a n d   T i m e )u o      ���� 0 
menuchoice 
menuChoices xyx = 
�
�z{z n  
�
�|}| o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValue} o  
�
����� 	0 prefs  { m  
�
�~~ �  C r e a t i o n T i m ey ��� r  
�
���� m  
�
��� ���  T i m e� o      ���� 0 
menuchoice 
menuChoice� ��� = 
�
���� n  
�
���� o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValue� o  
�
����� 	0 prefs  � m  
�
��� ���  C r e a t i o n D a t e� ���� r  
�
���� m  
�
��� ���  D a t e� o      ���� 0 
menuchoice 
menuChoice��  ��  @ ��� n 
�
���� I  
�
��������  0 fmgui_popupset fmGUI_PopupSet� ��� n  
�
���� 4  
�
����
�� 
popB� m  
�
��� ���  C r e a t i o n� o  
�
����� 0 workingarea workingArea� ���� o  
�
����� 0 
menuchoice 
menuChoice��  ��  �  f  
�
�� ���� l 
�
���������  ��  ��  ��  = ��� C  
�
���� n  
�
���� o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValue� o  
�
����� 	0 prefs  � m  
�
��� ���  M o d i f i c a t i o n� ��� k  
�k�� ��� Z  
�Z������ = 
�
���� n  
�
���� o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValue� o  
�
����� 	0 prefs  � m  
�
��� ��� ( M o d i f i c a t i o n U s e r N a m e� r  
�
���� m  
�
��� ���  N a m e� o      ���� 0 
menuchoice 
menuChoice� ��� = 
�
���� n  
�
���� o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValue� o  
�
����� 	0 prefs  � m  
�
��� ���   M o d i f i c a t i o n N a m e� ��� r  ��� m  �� ���  N a m e� o      ���� 0 
menuchoice 
menuChoice� ��� = 	��� n  	��� o  
���� .0 autoenterspecialvalue autoEnterSpecialValue� o  	
���� 	0 prefs  � m  �� ��� . M o d i f i c a t i o n A c c o u n t N a m e� ��� r  ��� m  �� ���  A c c o u n t   N a m e� o      ���� 0 
menuchoice 
menuChoice� ��� = &��� n  "��� o  "���� .0 autoenterspecialvalue autoEnterSpecialValue� o  ���� 	0 prefs  � m  "%�� ��� * M o d i f i c a t i o n T i m e s t a m p� ��� r  ).��� m  ),�� ��� 2 T i m e s t a m p   ( D a t e   a n d   T i m e )� o      ���� 0 
menuchoice 
menuChoice� ��� = 1:��� n  16��� o  26���� .0 autoenterspecialvalue autoEnterSpecialValue� o  12���� 	0 prefs  � m  69�� ���   M o d i f i c a t i o n T i m e� ��� r  =B��� m  =@�� ���  T i m e� o      ���� 0 
menuchoice 
menuChoice� ��� = EN��� n  EJ��� o  FJ���� .0 autoenterspecialvalue autoEnterSpecialValue� o  EF���� 	0 prefs  � m  JM�� ���   M o d i f i c a t i o n D a t e� ���� r  QV��� m  QT�� ���  D a t e� o      ���� 0 
menuchoice 
menuChoice��  ��  �    n [i I  \i������  0 fmgui_popupset fmGUI_PopupSet  n  \d 4  ]d�	
� 
popB	 m  `c

 �  M o d i f i c a t i o n o  \]�� 0 workingarea workingArea � o  de�� 0 
menuchoice 
menuChoice�  ��    f  [\  l jj����  �  �   � l jj����  �  �  �  �  = nw n  ns o  os�� .0 autoenterspecialvalue autoEnterSpecialValue o  no�� 	0 prefs   m  sv �  N O N E  k  z�  l zz��   : 4 need to make sure NO special values are checked on:    � h   n e e d   t o   m a k e   s u r e   N O   s p e c i a l   v a l u e s   a r e   c h e c k e d   o n :  !  n z�"#" I  {��$�� &0 fmgui_checkboxset fmGUI_CheckboxSet$ %&% 6 {�'(' n  {�)*) 4 |��+
� 
chbx+ m  ��~�~ * o  {|�}�} 0 workingarea workingArea( = ��,-, 1  ���|
�| 
titl- m  ��.. �//  C r e a t i o n& 0�{0 m  ���z�z  �{  �  #  f  z{! 121 n ��343 I  ���y5�x�y &0 fmgui_checkboxset fmGUI_CheckboxSet5 676 6 ��898 n  ��:;: 4 ���w<
�w 
chbx< m  ���v�v ; o  ���u�u 0 workingarea workingArea9 = ��=>= 1  ���t
�t 
titl> m  ��?? �@@  M o d i f i c a t i o n7 A�sA m  ���r�r  �s  �x  4  f  ��2 BCB n ��DED I  ���qF�p�q &0 fmgui_checkboxset fmGUI_CheckboxSetF GHG 6 ��IJI n  ��KLK 4 ���oM
�o 
chbxM m  ���n�n L o  ���m�m 0 workingarea workingAreaJ E  ��NON 1  ���l
�l 
pnamO m  ��PP �QQ  l a s t   v i s i t e dH R�kR m  ���j�j  �k  �p  E  f  ��C S�iS l ���h�g�f�h  �g  �f  �i   TUT = ��VWV n  ��XYX o  ���e�e .0 autoenterspecialvalue autoEnterSpecialValueY o  ���d�d 	0 prefs  W m  ���c
�c 
nullU Z�bZ l ���a[\�a  [ * $ do not change any of the checkboxes   \ �]] H   d o   n o t   c h a n g e   a n y   o f   t h e   c h e c k b o x e s�b  ��   ^_^ l ���`�_�^�`  �_  �^  _ `�]` l ���\�[�Z�\  �[  �Z  �]  ��  ��  	 aba l ���Y�X�W�Y  �X  �W  b cdc l ���Vef�V  e   Constant:    f �gg    C o n s t a n t :  d hih Z  �Rjk�U�Tj > ��lml n  ��non o  ���S�S *0 autoenterisconstant autoEnterIsConstanto o  ���R�R 	0 prefs  m m  ���Q
�Q 
nullk k  �Npp qrq r  �	sts 6 �uvu n  ��wxw 4 ���Py
�P 
chbxy m  ���O�O x o  ���N�N 0 workingarea workingAreav E  �z{z 1  � �M
�M 
pnam{ m  || �}}  D a t at o      �L�L 0 datacheckbox dataCheckboxr ~~ Z  
L���K�� n  
��� o  �J�J *0 autoenterisconstant autoEnterIsConstant� o  
�I�I 	0 prefs  � k  B�� ��� n ��� I  �H��G�H &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  �F�F 0 datacheckbox dataCheckbox� ��E� m  �D�D �E  �G  �  f  � ��C� Z  B���B�� = "��� n   ��� o   �A�A .0 autoenterconstantdata autoEnterConstantData� o  �@�@ 	0 prefs  � m   !�?
�? 
null� l %%�>���>  � 7 1 Possibly null if autoEnterIsConstant is false...   � ��� b   P o s s i b l y   n u l l   i f   a u t o E n t e r I s C o n s t a n t   i s   f a l s e . . .�B  � n )B��� I  *B�=��<�= (0 fmgui_textfieldset fmGUI_TextFieldSet� ��� n  *9��� 4  29�;�
�; 
txta� m  58�� ��� 
 D a t a :� n  *2��� 4  +2�:�
�: 
scra� m  .1�� ��� 
 D a t a :� o  *+�9�9 0 workingarea workingArea� ��8� n  9>��� o  :>�7�7 .0 autoenterconstantdata autoEnterConstantData� o  9:�6�6 	0 prefs  �8  �<  �  f  )*�C  �K  � n EL��� I  FL�5��4�5 &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  FG�3�3 0 datacheckbox dataCheckbox� ��2� m  GH�1�1  �2  �4  �  f  EF ��� l MM�0�/�.�0  �/  �.  � ��� l MM�-�,�+�-  �,  �+  � ��*� l MM�)�(�'�)  �(  �'  �*  �U  �T  i ��� l SS�&�%�$�&  �%  �$  � ��� Z  Sb���#�"� > SZ��� n  SX��� o  TX�!�! &0 autoenterislookup autoEnterIsLookup� o  ST� �  	0 prefs  � m  XY�
� 
null� k  ]]�� ��� l ]]����  �   NOT YET SUPPORTED!!!!!	   � ��� 0   N O T   Y E T   S U P P O R T E D ! ! ! ! ! 	� ��� l ]]����  �   NOT YET SUPPORTED!!!!!	   � ��� 0   N O T   Y E T   S U P P O R T E D ! ! ! ! ! 	� ��� l ]]����  � $  NOT YET SUPPORTED!!!!!							   � ��� <   N O T   Y E T   S U P P O R T E D ! ! ! ! ! 	 	 	 	 	 	 	�  �#  �"  � ��� l cc����  �  �  � ��� l cc����  �  �  � ��� l cc����  �   AutoEnter Calculation:    � ��� 0   A u t o E n t e r   C a l c u l a t i o n :  � ��� Z  c����� > cj��� n  ch��� o  dh�� 00 autoenteriscalculation autoEnterIsCalculation� o  cd�� 	0 prefs  � m  hi�
� 
null� k  m�� ��� Z  m����� H  ms�� n  mr��� o  nr�� 00 autoenteriscalculation autoEnterIsCalculation� o  mn�� 	0 prefs  � k  v��� ��� l vv����  � + % Need to make sure it is NOT checked:   � ��� J   N e e d   t o   m a k e   s u r e   i t   i s   N O T   c h e c k e d :� ��� n v���� I  w��
��	�
 &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� n  w��� 4  x��
� 
chbx� m  {~�� ���   C a l c u l a t e d   v a l u e� o  wx�� 0 workingarea workingArea� ��� m  ���  �  �	  �  f  vw� ��� l ������  �  �  �  �  � l ����� k  �    r  �� n  �� 4  ��� 
�  
chbx m  �� �		   C a l c u l a t e d   v a l u e o  ������ 0 workingarea workingArea o      ���� .0 autoentercalccheckbox autoEnterCalcCheckbox 

 l ������   G A if the checkbox is already checked, need to click Specify button    � �   i f   t h e   c h e c k b o x   i s   a l r e a d y   c h e c k e d ,   n e e d   t o   c l i c k   S p e c i f y   b u t t o n  l ������   ^ X if not already checked, checking it opens the window, so use special function for click    � �   i f   n o t   a l r e a d y   c h e c k e d ,   c h e c k i n g   i t   o p e n s   t h e   w i n d o w ,   s o   u s e   s p e c i a l   f u n c t i o n   f o r   c l i c k  Z  ���� > �� n  �� 1  ����
�� 
valL o  ������ .0 autoentercalccheckbox autoEnterCalcCheckbox m  ������  n �� I  �������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow  ��  o  ������ .0 autoentercalccheckbox autoEnterCalcCheckbox��  ��    f  ����   k  ��!! "#" l ����$%��  $ \ V there are TWO buttons named "Specify�" - the first is for CALC, second is for lookup:   % �&& �   t h e r e   a r e   T W O   b u t t o n s   n a m e d   " S p e c i f y & "   -   t h e   f i r s t   i s   f o r   C A L C ,   s e c o n d   i s   f o r   l o o k u p :# '��' n ��()( I  ����*���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow* +��+ 6 ��,-, n  ��./. 4 ����0
�� 
butT0 m  ������ / o  ������ 0 workingarea workingArea- C  ��121 1  ����
�� 
pnam2 m  ��33 �44  S p e c i f y��  ��  )  f  ����   565 l ����������  ��  ��  6 787 l ����9:��  9 + % wait for Specify Calculation window:   : �;; J   w a i t   f o r   S p e c i f y   C a l c u l a t i o n   w i n d o w :8 <=< n ��>?> I  ����@���� 20 windowwaituntil_frontis windowWaitUntil_FrontIS@ A��A K  ��BB ��C���� 0 
windowname 
windowNameC m  ��DD �EE & S p e c i f y   C a l c u l a t i o n��  ��  ��  ?  f  ��= FGF l ����������  ��  ��  G HIH r  ��JKJ 4  ����L
�� 
cwinL m  ������ K o      ���� 0 workingarea workingAreaI MNM l ����������  ��  ��  N OPO l ����QR��  Q   CALCULATION CODE:   R �SS $   C A L C U L A T I O N   C O D E :P TUT l ����������  ��  ��  U VWV Z  ��XY��ZX = ��[\[ n  ��]^] 1  ����
�� 
leng^ n  ��_`_ o  ������ &0 autoentercalccode autoEnterCalcCode` o  ������ 	0 prefs  \ m  ������  Y k  ��aa bcb l  ����de��  d � � if for some reason an empty string is specified, we want to force an error in FM's syntax checker for the validation calc box instead of silently allowing an empty string as the validation calc.    e �ff�   i f   f o r   s o m e   r e a s o n   a n   e m p t y   s t r i n g   i s   s p e c i f i e d ,   w e   w a n t   t o   f o r c e   a n   e r r o r   i n   F M ' s   s y n t a x   c h e c k e r   f o r   t h e   v a l i d a t i o n   c a l c   b o x   i n s t e a d   o f   s i l e n t l y   a l l o w i n g   a n   e m p t y   s t r i n g   a s   t h e   v a l i d a t i o n   c a l c .  c g��g r  ��hih m  ��jj �kk i f   (   / *   a u t o - e n t e r   c a l c   w a s   s p e c i f i e d   a s   a n   e m p t y   s t r i n g   r a t h e r   t h a n   a   n u l l   v a l u e   i n d i c a t i n g   a   b u g   i n   t h e   s c r i p t   r u n n i n g   t h e   s e t u p   t o o l .   * /   )i o      ���� 20 autoentercalccode_value autoEnterCalcCode_VALUE��  ��  Z r  ��lml n  ��non o  ������ &0 autoentercalccode autoEnterCalcCodeo o  ������ 	0 prefs  m o      ���� 20 autoentercalccode_value autoEnterCalcCode_VALUEW pqp l ����������  ��  ��  q rsr n �tut I  ���v���� (0 fmgui_textfieldset fmGUI_TextFieldSetv wxw n  �
yzy 4  
��{
�� 
txta{ m  	���� z n  �|}| 4  ���~
�� 
scra~ m  ���� } 4  ����
�� 
cwin m  ���� x ��� o  
�� 20 autoentercalccode_value autoEnterCalcCode_VALUE�  ��  u  f  ��s ��� l ����  �  �  � ��� l ����  �  �  � ��� l ����  � ' ! Calc CONTEXT Table (occurrence):   � ��� B   C a l c   C O N T E X T   T a b l e   ( o c c u r r e n c e ) :� ��� Z  ;����� > ��� n  ��� o  �� 20 autoentercalccontexttoc autoEnterCalcContextTOC� o  �� 	0 prefs  � m  �
� 
null� n 7��� I  7����  0 fmgui_popupset fmGUI_PopupSet� ��� 6 0��� n  !��� 4 !��
� 
popB� m   �� � o  �� 0 workingarea workingArea� E  $/��� 1  %)�
� 
pnam� m  *.�� ���  c o n t e x t� ��� n  03��� o  13�� 20 autoentercalccontexttoc autoEnterCalcContextTOC� o  01�� 	0 prefs  �  �  �  f  �  �  � ��� l <<����  �  �  � ��� l <<����  � 9 3 Do Not Evaluate if all referenced field are empty:   � ��� f   D o   N o t   E v a l u a t e   i f   a l l   r e f e r e n c e d   f i e l d   a r e   e m p t y :� ��� Z  <x����� > <A��� n  <?��� o  =?��  0 alwaysevaluate alwaysEvaluate� o  <=�� 	0 prefs  � m  ?@�
� 
null� k  Dt�� ��� r  D[��� 6 DY��� n  DJ��� 4 EJ��
� 
chbx� m  HI�� � o  DE�� 0 workingarea workingArea� E  MX��� 1  NR�
� 
pnam� m  SW�� ��� J n o t   e v a l u a t e   i f   a l l   r e f e r e n c e d   f i e l d s� o      �� *0 notevaluatecheckbox notEvaluateCheckbox� ��� Z  \t����� n  \`��� o  ]_��  0 alwaysevaluate alwaysEvaluate� o  \]�� 	0 prefs  � n cj��� I  dj���� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  de�� *0 notevaluatecheckbox notEvaluateCheckbox� ��� m  ef��  �  �  �  f  cd�  � n mt��� I  nt���� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  no�� *0 notevaluatecheckbox notEvaluateCheckbox� ��� m  op�� �  �  �  f  mn�  �  �  � ��� l yy����  �  �  � ��� l yy����  �  �  � ��� l yy����  � - ' click OK to save Specify Calculation:    � ��� N   c l i c k   O K   t o   s a v e   S p e c i f y   C a l c u l a t i o n :  � ��� n y���� I  z����� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ��� 6 z���� n  z���� 4 {���
� 
butT� m  ~�� � o  z{�� 0 workingarea workingArea� E  ����� 1  ���~
�~ 
pnam� m  ���� ���  O K�  �  �  f  yz� ��� l ���}�|�{�}  �|  �{  � ��� n ����� I  ���z��y�z "0 windowwaituntil windowWaitUntil� ��x� K  ���� �w���w 0 
windowname 
windowName� m  ���� ��� & S p e c i f y   C a l c u l a t i o n� �v���v  0 windownametest windowNameTest� m  ���� ���   d o e s   n o t   c o n t a i n� �u��t�u 0 whichwindow whichWindow� m  ���� ��� 
 f r o n t�t  �x  �y  �  f  ��� ��� l ���s�r�q�s  �r  �q  �    r  �� n  �� 4  ���p
�p 
tabg m  ���o�o  4  ���n
�n 
cwin m  ���m�m  o      �l�l 0 workingarea workingArea 	 l ���k�j�i�k  �j  �i  	 

 l ���h�h   7 1 Do not replace existing value of field (if any):    � b   D o   n o t   r e p l a c e   e x i s t i n g   v a l u e   o f   f i e l d   ( i f   a n y ) :  Z  ��g�f > �� n  �� o  ���e�e 00 overwriteexistingvalue overwriteExistingValue o  ���d�d 	0 prefs   m  ���c
�c 
null k  �   r  �� 6 �� n  �� 4 ���b 
�b 
chbx  m  ���a�a  o  ���`�` 0 workingarea workingArea E  ��!"! 1  ���_
�_ 
pnam" m  ��## �$$ . D o   n o t   r e p l a c e   e x i s t i n g o      �^�^ @0 overwriteexistingvaluecheckbox overwriteExistingValueCheckbox %�]% Z  � &'�\(& n  ��)*) o  ���[�[ 00 overwriteexistingvalue overwriteExistingValue* o  ���Z�Z 	0 prefs  ' n ��+,+ I  ���Y-�X�Y &0 fmgui_checkboxset fmGUI_CheckboxSet- ./. o  ���W�W @0 overwriteexistingvaluecheckbox overwriteExistingValueCheckbox/ 0�V0 m  ���U�U  �V  �X  ,  f  ���\  ( n � 121 I  � �T3�S�T &0 fmgui_checkboxset fmGUI_CheckboxSet3 454 o  ���R�R @0 overwriteexistingvaluecheckbox overwriteExistingValueCheckbox5 6�Q6 m  ���P�P �Q  �S  2  f  ���]  �g  �f   787 l �O�N�M�O  �N  �M  8 9�L9 l �K�J�I�K  �J  �I  �L  �   there IS a Calc:   � �:: "   t h e r e   I S   a   C a l c :� ;�H; l �G�F�E�G  �F  �E  �H  �  �  � <=< l �D�C�B�D  �C  �B  = >?> l �A�@�?�A  �@  �?  ? @A@ l �>BC�>  B 8 2 Prohibit modification of value during data entry:   C �DD d   P r o h i b i t   m o d i f i c a t i o n   o f   v a l u e   d u r i n g   d a t a   e n t r y :A EFE Z  SGH�=�<G > IJI n  KLK o  �;�; 0 allowediting allowEditingL o  �:�: 	0 prefs  J m  �9
�9 
nullH k  OMM NON r  0PQP 6 ,RSR n  TUT 4 �8V
�8 
chbxV m  �7�7 U o  �6�6 0 workingarea workingAreaS E   +WXW 1  !%�5
�5 
pnamX m  &*YY �ZZ * P r o h i b i t   m o d i f i c a t i o nQ o      �4�4 *0 prohibitmodcheckbox prohibitModCheckboxO [�3[ Z  1O\]�2^\ n  17_`_ o  26�1�1 0 allowediting allowEditing` o  12�0�0 	0 prefs  ] n :Caba I  ;C�/c�.�/ &0 fmgui_checkboxset fmGUI_CheckboxSetc ded o  ;>�-�- *0 prohibitmodcheckbox prohibitModCheckboxe f�,f m  >?�+�+  �,  �.  b  f  :;�2  ^ n FOghg I  GO�*i�)�* &0 fmgui_checkboxset fmGUI_CheckboxSeti jkj o  GJ�(�( *0 prohibitmodcheckbox prohibitModCheckboxk l�'l m  JK�&�& �'  �)  h  f  FG�3  �=  �<  F mnm l TT�%�$�#�%  �$  �#  n opo l TT�"�!� �"  �!  �   p qrq l TT�st�  s P J--------------------------------------------------------------------------   t �uu � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -r vwv l TT�xy�  x   NORMAL FIELD   y �zz    N O R M A L   F I E L Dw {|{ l TT�}~�  } U O--------------------------------------------------------------------------					   ~ � � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 	 	 	 	 	| ��� l TT����  �   VALIDATION TAB:   � ���     V A L I D A T I O N   T A B :� ��� l TT����  � T N--------------------------------------------------------------------------				   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 	 	 	 	� ��� l TT����  �  �  � ��� l TT����  � 8 2 MOST VALIDATION FEATURES NOT YET SUPPORTED ! ! !    � ��� d   M O S T   V A L I D A T I O N   F E A T U R E S   N O T   Y E T   S U P P O R T E D   !   !   !  � ��� l TT����  � 8 2 MOST VALIDATION FEATURES NOT YET SUPPORTED ! ! !    � ��� d   M O S T   V A L I D A T I O N   F E A T U R E S   N O T   Y E T   S U P P O R T E D   !   !   !  � ��� l TT����  � 8 2 MOST VALIDATION FEATURES NOT YET SUPPORTED ! ! !    � ��� d   M O S T   V A L I D A T I O N   F E A T U R E S   N O T   Y E T   S U P P O R T E D   !   !   !  � ��� l TT����  �  �  � ��� I T`���
� .prcsclicnull��� ��� uiel� n  T\��� 4  U\��
� 
radB� m  X[�� ���  V a l i d a t i o n� o  TU�� 0 workingarea workingArea�  � ��� l aa����  �  �  � ��� Z  aE���
�	� > ah��� n  af��� o  bf�� (0 validationcalccode validationCalcCode� o  ab�� 	0 prefs  � m  fg�
� 
null� k  kA�� ��� l kk����  �  �  � ��� n kx��� I  lx���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� �� � n  lt��� 4  mt���
�� 
butT� m  ps�� ���  S p e c i f y &� o  lm���� 0 workingarea workingArea�   �  �  f  kl� ��� l yy��������  ��  ��  � ��� l yy������  � + % wait for Specify Calculation window:   � ��� J   w a i t   f o r   S p e c i f y   C a l c u l a t i o n   w i n d o w :� ��� n y���� I  z�������� 20 windowwaituntil_frontis windowWaitUntil_FrontIS� ���� K  z��� ������� 0 
windowname 
windowName� m  }��� ��� & S p e c i f y   C a l c u l a t i o n��  ��  ��  �  f  yz� ��� l ����������  ��  ��  � ��� r  ����� 4  �����
�� 
cwin� m  ������ � o      ���� 0 workingarea workingArea� ��� l ����������  ��  ��  � ��� l ��������  �   CALCULATION CODE:    � ��� &   C A L C U L A T I O N   C O D E :  � ��� Z  �������� = ����� n  ����� 1  ����
�� 
leng� n  ����� o  ������ (0 validationcalccode validationCalcCode� o  ������ 	0 prefs  � m  ������  � k  ���� ��� l  ��������  � � � if for some reason an empty string is specified, we want to force an error in FM's syntax checker for the validation calc box instead of silently allowing an empty string as the validation calc.    � ����   i f   f o r   s o m e   r e a s o n   a n   e m p t y   s t r i n g   i s   s p e c i f i e d ,   w e   w a n t   t o   f o r c e   a n   e r r o r   i n   F M ' s   s y n t a x   c h e c k e r   f o r   t h e   v a l i d a t i o n   c a l c   b o x   i n s t e a d   o f   s i l e n t l y   a l l o w i n g   a n   e m p t y   s t r i n g   a s   t h e   v a l i d a t i o n   c a l c .  � ���� r  ����� m  ���� ��� i f   (   / *   v a l i d a t i o n   c a l c   w a s   s p e c i f i e d   a s   a n   e m p t y   s t r i n g   r a t h e r   t h a n   a   n u l l   v a l u e   i n d i c a t i n g   a   b u g   i n   t h e   s c r i p t   r u n n i n g   t h e   s e t u p   t o o l .   * /   )� o      ���� 40 validationcalccode_value validationCalcCode_VALUE��  ��  � r  ����� n  ����� o  ������ (0 validationcalccode validationCalcCode� o  ������ 	0 prefs  � o      ���� 40 validationcalccode_value validationCalcCode_VALUE� ��� l ����������  ��  ��  � ��� n ����� I  ��������� (0 fmgui_textfieldset fmGUI_TextFieldSet� ��� n  ��� � 4  ����
�� 
txta m  ������   n  �� 4  ����
�� 
scra m  ������  4  ����
�� 
cwin m  ������ � �� o  ������ 40 validationcalccode_value validationCalcCode_VALUE��  ��  �  f  ���  l ����������  ��  ��   	
	 l ����������  ��  ��  
  l ������   ' ! Calc CONTEXT Table (occurrence):    � B   C a l c   C O N T E X T   T a b l e   ( o c c u r r e n c e ) :  Z  ������ > �� n  �� o  ������ 40 validationcalccontexttoc validationCalcContextTOC o  ������ 	0 prefs   m  ����
�� 
null n �� I  ��������  0 fmgui_popupset fmGUI_PopupSet  6 �� n  ��  4 ����!
�� 
popB! m  ������   o  ������ 0 workingarea workingArea E  ��"#" 1  ����
�� 
pnam# m  ��$$ �%%  c o n t e x t &��& n  ��'(' o  ���� 40 validationcalccontexttoc validationCalcContextTOC( o  ���� 	0 prefs  ��  ��    f  ����  ��   )*) l ������  �  �  * +,+ l ���-.�  - - ' click OK to save Specify Calculation:    . �// N   c l i c k   O K   t o   s a v e   S p e c i f y   C a l c u l a t i o n :  , 010 n �232 I  ��4�� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow4 5�5 6 �676 n  �898 4 ��:
� 
butT: m   �� 9 o  ���� 0 workingarea workingArea7 E  ;<; 1  
�
� 
pnam< m  == �>>  O K�  �  3  f  ��1 ?@? l ����  �  �  @ ABA n 1CDC I  1�E�� "0 windowwaituntil windowWaitUntilE F�F K  -GG �HI� 0 
windowname 
windowNameH m  JJ �KK & S p e c i f y   C a l c u l a t i o nI �LM�  0 windownametest windowNameTestL m   #NN �OO   d o e s   n o t   c o n t a i nM �P�� 0 whichwindow whichWindowP m  &)QQ �RR 
 f r o n t�  �  �  D  f  B STS l 22����  �  �  T UVU r  2?WXW n  2=YZY 4  8=�[
� 
tabg[ m  ;<�� Z 4  28�\
� 
cwin\ m  67�� X o      �� 0 workingarea workingAreaV ]^] l @@����  �  �  ^ _�_ l @@�`a�  `   END OF: Validation.    a �bb *   E N D   O F :   V a l i d a t i o n .  �  �
  �	  � cdc l FF����  �  �  d efe l FF����  �  �  f ghg l FF�ij�  i #  SAVE NORMAL FIELD - OPTIONS:   j �kk :   S A V E   N O R M A L   F I E L D   -   O P T I O N S :h lml l FF�no�  n #  click OK for field Options:    o �pp :   c l i c k   O K   f o r   f i e l d   O p t i o n s :  m qrq n Fests I  Ge�u�� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindowu v�v 6 Gawxw n  GRyzy 4 MR�{
� 
butT{ m  PQ�� z 4  GM�|
� 
cwin| m  KL�� x E  U`}~} 1  VZ�
� 
pnam~ m  [_ ���  O K�  �  t  f  FGr ��� l ff����  �  �  � ��� n f���� I  g����� "0 windowwaituntil windowWaitUntil� ��� K  g}�� ���� 0 
windowname 
windowName� m  jm�� ���  O p t i o n s   f o r� ����  0 windownametest windowNameTest� m  ps�� ��� & d o e s   n o t   s t a r t   w i t h� ���� 0 whichwindow whichWindow� m  vy�� ��� 
 f r o n t�  �  �  �  f  fg� ��� l ������  �  �  � ��� l ���~�}�|�~  �}  �|  � ��� L  ���� m  ���{
�{ boovtrue� ��� l ���z�y�x�z  �y  �x  � ��� l ���w�v�u�w  �v  �u  � ��t� l ���s�r�q�s  �r  �q  �t  ��  �"  2 ��� l ���p�o�n�p  �o  �n  � ��� l ���m�l�k�m  �l  �k  � ��� L  ���� m  ���j
�j boovtrue� ��i� l ���h�g�f�h  �g  �f  �i  
� 4   � ��e�
�e 
pcap� m   � ��� ��� , F i l e M a k e r   P r o   A d v a n c e d
� m   � ����                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  
� ��� l ���d�c�b�d  �c  �b  � ��� l ���a�`�_�a  �`  �_  � ��� l ���^�]�\�^  �]  �\  � ��[� l  ���Z���Z  � � �   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   
DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   
   � ���B       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       
 D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       
�[  
{ R      �Y��
�Y .ascrerr ****      � ****� o      �X�X 0 errmsg errMsg� �W��V
�W 
errn� o      �U�U 0 errnum errNum�V  
| R  ���T��
�T .ascrerr ****      � ****� b  ����� b  ����� b  ����� m  ���� ��� 0 C o u l d n ' t   e d i t   a   F i e l d   -  � I  ���S��R�S  0 coercetostring coerceToString� ��Q� o  ���P�P 	0 prefs  �Q  �R  � m  ���� ���    -  � o  ���O�O 0 errmsg errMsg� �N��M
�N 
errn� o  ���L�L 0 errnum errNum�M  
y ��� l ���K�J�I�K  �J  �I  � ��H� l ���G�F�E�G  �F  �E  �H  	� ��� l     �D�C�B�D  �C  �B  � ��� l     �A�@�?�A  �@  �?  � ��� i   S V��� I      �>��=�> :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_Select� ��<� o      �;�; 	0 prefs  �<  �=  � k    ��� ��� l     �:���:  �   version 1.2   � ���    v e r s i o n   1 . 2� ��� l     �9�8�7�9  �8  �7  � ��� r     
��� K     �� �6���6 0 	fieldname 	fieldName� m    �5
�5 
null� �4���4 0 	tablename 	tableName� m    �3
�3 
null� �2��1�2 0 altpatterns altPatterns� m    �0
�0 
null�1  � o      �/�/ 0 defaultprefs defaultPrefs� ��� r    ��� b    ��� o    �.�. 	0 prefs  � o    �-�- 0 defaultprefs defaultPrefs� o      �,�, 	0 prefs  � ��� l   �+�*�)�+  �*  �)  � ��� l   �(���(  �   CONSTANTS:    � ���    C O N S T A N T S :  � ��� r    ��� b    ��� b    ��� b    ��� m    �� �   @ t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "� o    �'
�' 
ret � l 	  �&�% m     � b t e l l   a p p l i c a t i o n   p r o c e s s   " F i l e M a k e r   P r o   A d v a n c e d "�&  �%  � o    �$
�$ 
ret � o      �#�#  0 testcodeheader testCodeHeader�  r     m     �		  s e l e c t   ( o      �"�" 0 
selectcode 
selectCode 

 r    " m      � � f i r s t   r o w   o f   ( t a b l e   1   o f   s c r o l l   a r e a   1   o f   t a b   g r o u p   1   o f   w i n d o w   1 ) o      �!�! 0 
rowrefcode 
rowRefCode  r   # & m   # $ �    w h o s e   o      � �  0 	whosecode 	whoseCode  r   ' * m   ' ( � , v a l u e   o f   s t a t i c   t e x t   1 o      �� *0 fieldnameobjectcode fieldNameObjectCode  l  + +��   ( " (then some test will be inserted)    �   D   ( t h e n   s o m e   t e s t   w i l l   b e   i n s e r t e d ) !"! r   + .#$# m   + ,%% �&& 
   a n d  $ o      �� $0 betweentestscode betweenTestsCode" '(' l  / /�)*�  ) 7 1 (then possibly some other test will be inserted)   * �++ b   ( t h e n   p o s s i b l y   s o m e   o t h e r   t e s t   w i l l   b e   i n s e r t e d )( ,-, r   / 2./. m   / 000 �11  )/ o      �� &0 afteralltestscode afterAllTestsCode- 232 r   3 <454 b   3 :676 b   3 8898 b   3 6:;: o   3 4�
� 
ret ; m   4 5<< �==  e n d   t e l l9 o   6 7�
� 
ret 7 m   8 9>> �??  e n d   t e l l5 o      ��  0 testcodefooter testCodeFooter3 @A@ l  = =����  �  �  A BCB Q   =�DEFD k   @�GG HIH l  @ @����  �  �  I JKJ I   @ G�L�� >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocusL M�M J   A C��  �  �  K NON l  H H����  �  �  O PQP Z  H \RS�
�	R >  H MTUT n   H KVWV o   I K�� 0 	tablename 	tableNameW o   H I�� 	0 prefs  U m   K L�
� 
nullS I   P X�X�� @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTableX Y�Y n   Q TZ[Z o   R T�� 0 	tablename 	tableName[ o   Q R�� 	0 prefs  �  �  �
  �	  Q \]\ l  ] ]� �����   ��  ��  ] ^_^ I   ] b�������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��  _ `a` l  c c��������  ��  ��  a bcb Q   c�defd k   f �gg hih O   f �jkj O   l �lml k   w �nn opo l  w w��������  ��  ��  p q��q I  w ���r��
�� .miscslctnull���     uielr l  w �s����s 6  w �tut n   w �vwv 4  � ���x
�� 
crowx m   � ����� w l  w �y����y n   w �z{z 4   � ���|
�� 
tabB| m   � ����� { n   w �}~} 4   � ���
�� 
scra m   � ����� ~ n   w ���� 4   } ����
�� 
tabg� m   � ����� � 4   w }���
�� 
cwin� m   { |���� ��  ��  u =  � ���� n   � ���� 1   � ���
�� 
valL� 4   � ����
�� 
sttx� m   � ����� � n   � ���� o   � ����� 0 	fieldname 	fieldName� o   � ����� 	0 prefs  ��  ��  ��  ��  m 4   l t���
�� 
pcap� m   p s�� ��� , F i l e M a k e r   P r o   A d v a n c e dk m   f i���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  i ���� L   � ��� m   � ���
�� boovtrue��  e R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� �����
�� 
errn� o      ���� 0 errnum errNum��  f Z   �������� >  � ���� o   � ����� 0 errnum errNum� m   � ������I� k   � ��� ��� l  � �������  � / ) some error OTHER than not found in list:   � ��� R   s o m e   e r r o r   O T H E R   t h a n   n o t   f o u n d   i n   l i s t :� ���� R   � �����
�� .ascrerr ****      � ****� o   � ����� 0 errmsg errMsg� �����
�� 
errn� o   � ����� 0 errnum errNum��  ��  ��  � k   ���� ��� l  � �������  � * $ NOT FOUND, so try each altPattern:    � ��� H   N O T   F O U N D ,   s o   t r y   e a c h   a l t P a t t e r n :  � ��� r   � ���� m   � ���
�� boovfals� o      ���� $0 fieldnowselected fieldNowSelected� ��� X   ������� k   ���� ��� r   � ���� n   � ���� 1   � ���
�� 
pcnt� n   � ���� o   � ����� 0 pattern  � o   � ����� 0 onealtpattern oneAltPattern� o      ���� 0 testlist testList� ��� l  � ���������  ��  ��  � ��� Q   ������ k   �l�� ��� l  � �������  � !  BEGIN: try oneAltPattern:    � ��� 6   B E G I N :   t r y   o n e A l t P a t t e r n :  � ��� l  � �������  �  �  � ��� r   � ���� J   � ���  � o      �� 0 testcode testCode� ��� X   �/���� s  *��� l '���� b  '��� b  ��� b  ��� m  �� ���  � n  ��� o  �� 0 testtype testType� o  �� 0 
onetestrec 
oneTestRec� m  �� ���   � n &��� I  &���� 0 quotestring quoteString� ��� n  "��� o  "�� 0 	testmatch 	testMatch� o  �� 0 
onetestrec 
oneTestRec�  �  �  f  �  �  � n      ���  ;  ()� o  '(�� 0 testcode testCode� 0 
onetestrec 
oneTestRec� o   � ��� 0 testlist testList� ��� l 00����  �  �  � ��� r  0?��� n 0=��� I  1=���� 0 unparsechars unParseChars� ��� o  12�� 0 testcode testCode� ��� b  29��� b  25��� o  23�� $0 betweentestscode betweenTestsCode� o  34�� *0 fieldnameobjectcode fieldNameObjectCode� m  58�� ���   �  �  �  f  01� o      �� 0 testcode testCode� ��� l @@����  �  �  � ��� l @@����  �  �  � ��� r  @Q   b  @O b  @M b  @K b  @G	 b  @E

 b  @C o  @A�� 0 
selectcode 
selectCode o  AB�� 0 
rowrefcode 
rowRefCode o  CD�� 0 	whosecode 	whoseCode	 o  EF�� *0 fieldnameobjectcode fieldNameObjectCode m  GJ �    o  KL�� 0 testcode testCode o  MN�� &0 afteralltestscode afterAllTestsCode o      �� 0 testcode testCode�  l RR����  �  �    r  RY b  RW b  RU o  RS��  0 testcodeheader testCodeHeader o  ST�� 0 testcode testCode o  UV��  0 testcodefooter testCodeFooter o      �� 0 testcode testCode  l ZZ����  �  �    l ZZ����  �  �    O Zd !  I ^c�"�
� .sysodsct****        scpt" o  ^_�� 0 testcode testCode�  !  f  Z[ #$# l ee����  �  �  $ %&% l eh'()' r  eh*+* m  ef�
� boovtrue+ o      �� $0 fieldnowselected fieldNowSelected( #  no error, so we selected it.   ) �,, :   n o   e r r o r ,   s o   w e   s e l e c t e d   i t .& -.- l ij/01/  S  ij0 + % no need to keep checking altPatterns   1 �22 J   n o   n e e d   t o   k e e p   c h e c k i n g   a l t P a t t e r n s. 343 l kk����  �  �  4 5�5 l kk�67�  6 !  ERROR: try oneAltPattern.    7 �88 6   E R R O R :   t r y   o n e A l t P a t t e r n .  �  � R      �~9:
�~ .ascrerr ****      � ****9 o      �}�} 0 errmsg errMsg: �|;�{
�| 
errn; o      �z�z 0 errnum errNum�{  � k  t�<< =>= Z  t�?@�yA? > tyBCB o  tu�x�x 0 errnum errNumC m  ux�w�w�I@ k  |�DD EFE l ||�vGH�v  G / ) some error OTHER than not found in list:   H �II R   s o m e   e r r o r   O T H E R   t h a n   n o t   f o u n d   i n   l i s t :F J�uJ R  |��tKL
�t .ascrerr ****      � ****K o  ���s�s 0 errmsg errMsgL �rM�q
�r 
errnM o  ���p�p 0 errnum errNum�q  �u  �y  A l ���oNO�o  N = 7 just try the next altPattern, so continue repeat loop.   O �PP n   j u s t   t r y   t h e   n e x t   a l t P a t t e r n ,   s o   c o n t i n u e   r e p e a t   l o o p .> QRQ l ���n�m�l�n  �m  �l  R S�kS l ���jTU�j  T "  END OF: try oneAltPattern.    U �VV 8   E N D   O F :   t r y   o n e A l t P a t t e r n .  �k  � W�iW l ���h�g�f�h  �g  �f  �i  �� 0 onealtpattern oneAltPattern� n   � �XYX o   � ��e�e 0 altpatterns altPatternsY o   � ��d�d 	0 prefs  � Z[Z l ���c�b�a�c  �b  �a  [ \]\ L  ��^^ o  ���`�` $0 fieldnowselected fieldNowSelected] _�__ l ���^�]�\�^  �]  �\  �_  c `�[` l ���Z�Y�X�Z  �Y  �X  �[  E R      �Wab
�W .ascrerr ****      � ****a o      �V�V 0 errmsg errMsgb �Uc�T
�U 
errnc o      �S�S 0 errnum errNum�T  F R  ���Rde
�R .ascrerr ****      � ****d b  ��fgf b  ��hih b  ��jkj m  ��ll �mm 4 C o u l d n ' t   s e l e c t   a   F i e l d   -  k I  ���Qn�P�Q  0 coercetostring coerceToStringn o�Oo o  ���N�N 	0 prefs  �O  �P  i m  ��pp �qq    -  g o  ���M�M 0 errmsg errMsge �Lr�K
�L 
errnr o  ���J�J 0 errnum errNum�K  C s�Is l ���H�G�F�H  �G  �F  �I  � tut l     �E�D�C�E  �D  �C  u vwv l     �B�A�@�B  �A  �@  w xyx i   W Zz{z I      �?|�>�? >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocus| }�=} o      �<�< 	0 prefs  �=  �>  { k     F~~ � l     �;���;  �   version 1.1   � ���    v e r s i o n   1 . 1� ��� l     �:�9�8�:  �9  �8  � ��� Q     D���� k    4�� ��� I    
�7��6�7 >0 fmgui_managedb_gototab_fields fmGUI_ManageDb_GoToTab_Fields� ��5� J    �4�4  �5  �6  � ��� l   �3�2�1�3  �2  �1  � ��� O    2��� O    1��� k    0�� ��� n   ��� I    �0�/�.�0 (0 fmgui_appfrontmost fmGUI_AppFrontMost�/  �.  �  f    � ��� r    -��� m    �-
�- boovtrue� n      ��� 1   * ,�,
�, 
focu� l   *��+�*� n    *��� 4   ' *�)�
�) 
tabB� m   ( )�(�( � n    '��� 4   $ '�'�
�' 
scra� m   % &�&�& � n    $��� 4   ! $�%�
�% 
tabg� m   " #�$�$ � 4    !�#�
�# 
cwin� m     �"�" �+  �*  � ��!� L   . 0�� m   . /� 
�  boovtrue�!  � 4    ��
� 
pcap� m    �� ��� , F i l e M a k e r   P r o   A d v a n c e d� m    ���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  � ��� l  3 3����  �  �  �  � R      ���
� .ascrerr ****      � ****� o      �� 0 errmsg errMsg� ���
� 
errn� o      �� 0 errnum errNum�  � R   < D���
� .ascrerr ****      � ****� b   @ C��� m   @ A�� ��� > C o u l d n ' t   f o c u s   o n   F i e l d   l i s t   -  � o   A B�� 0 errmsg errMsg� ���
� 
errn� o   > ?�� 0 errnum errNum�  � ��� l  E E����  �  �  �  y ��� l     ���
�  �  �
  � ��� l     �	���	  �  �  � ��� i   [ ^��� I      ���� @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable� ��� o      �� 0 basetablename baseTableName�  �  � k     A�� ��� l     ����  �   version 1.3   � ���    v e r s i o n   1 . 3� ��� l     �� ���  �   ��  � ��� Q     ?���� k    +�� ��� I    
������� >0 fmgui_managedb_gototab_fields fmGUI_ManageDb_GoToTab_Fields� ���� J    ����  ��  ��  � ���� O    +��� O    *��� k    )�� ��� n   &��� I    &�������  0 fmgui_popupset fmGUI_PopupSet� ��� n    !��� 4    !���
�� 
popB� m     �� ���  T a b l e :� n    ��� 4    ���
�� 
tabg� m    ���� � 4    ���
�� 
cwin� m    ���� � ���� o   ! "���� 0 basetablename baseTableName��  ��  �  f    � ���� L   ' )�� m   ' (��
�� boovtrue��  � 4    ���
�� 
pcap� m    �� ��� , F i l e M a k e r   P r o   A d v a n c e d� m    ���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  ��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� �����
�� 
errn� o      ���� 0 errnum errNum��  � R   3 ?����
�� .ascrerr ****      � ****� b   7 >��� b   7 <   b   7 : m   7 8 � . C o u l d n ' t   s e l e c t   t a b l e   ' o   8 9���� 0 basetablename baseTableName m   : ; �  '   -  � o   < =���� 0 errmsg errMsg� ����
�� 
errn o   5 6���� 0 errnum errNum��  � 	��	 l  @ @��������  ��  ��  ��  � 

 l     ��������  ��  ��    l     ��������  ��  ��    i   _ b I      ������ 00 fmgui_managedb_gototab fmGUI_ManageDb_GoToTab �� o      ���� 	0 prefs  ��  ��   k     v  l     ����     version 1.0    �    v e r s i o n   1 . 0  l     ��������  ��  ��    r      K        ��!���� 0 tabname tabName! m    "" �##  T a b l e s��   o      ���� 0 defaultprefs defaultPrefs $%$ r    &'& b    
()( o    ���� 	0 prefs  ) o    	���� 0 defaultprefs defaultPrefs' o      ���� 	0 prefs  % *+* l   ��������  ��  ��  + ,-, Q    t./0. k    X11 232 I    �������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��  3 454 I    ��6���� *0 fmgui_managedb_open fmGUI_ManageDb_Open6 7��7 J    ����  ��  ��  5 8��8 O    X9:9 O   " W;<; k   ) V== >?> r   ) A@A@ N   ) ?BB l  ) >C��C 6  ) >DED n   ) 3FGF 4  0 3�H
� 
radBH m   1 2�� G n   ) 0IJI 4   - 0�K
� 
tabgK m   . /�� J 4   ) -�L
� 
cwinL m   + ,�� E E   4 =MNM 1   5 7�
� 
titlN n   8 <OPO o   : <�� 0 tabname tabNameP o   8 :�� 	0 prefs  �  �  A o      �� 0 	tabobject 	tabObject? QRQ Z   B SST��S >  B GUVU n   B EWXW 1   C E�
� 
valLX o   B C�� 0 	tabobject 	tabObjectV m   E F�� T I  J O�Y�
� .prcsclicnull��� ��� uielY o   J K�� 0 	tabobject 	tabObject�  �  �  R Z�Z L   T V[[ m   T U�
� boovtrue�  < 4   " &�\
� 
pcap\ m   $ %]] �^^ , F i l e M a k e r   P r o   A d v a n c e d: m    __�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  ��  / R      �`a
� .ascrerr ****      � ****` o      �� 0 errmsg errMsga �b�
� 
errnb o      �� 0 errnum errNum�  0 R   ` t�cd
� .ascrerr ****      � ****c b   f sefe b   f qghg b   f miji m   f ikk �ll ( C o u l d n ' t   g o   t o   t h e   'j n   i lmnm o   j l�� 0 tabname tabNamen o   i j�� 	0 prefs  h m   m poo �pp  '   t a b   -  f o   q r�� 0 errmsg errMsgd �q�
� 
errnq o   d e�� 0 errnum errNum�  - r�r l  u u����  �  �  �   sts l     ����  �  �  t uvu l     ����  �  �  v wxw i   c fyzy I      �{�� >0 fmgui_managedb_gototab_fields fmGUI_ManageDb_GoToTab_Fields{ |�| o      ���� 	0 prefs  �  �  z k     }} ~~ l     ������  �   version 1.4   � ���    v e r s i o n   1 . 4 ��� l     ��������  ��  ��  � ��� I     	������� 00 fmgui_managedb_gototab fmGUI_ManageDb_GoToTab� ���� K    �� ������� 0 tabname tabName� m    �� ���  F i e l d s��  ��  ��  � ���� l  
 
��������  ��  ��  ��  x ��� l     �������  ��  �  � ��� l     �~�}�|�~  �}  �|  � ��� i   g j��� I      �{��z�{ L0 $fmgui_managedb_gototab_relationships $fmGUI_ManageDb_GoToTab_Relationships� ��y� o      �x�x 	0 prefs  �y  �z  � k     �� ��� l     �w���w  �   version 1.4   � ���    v e r s i o n   1 . 4� ��� l     �v�u�t�v  �u  �t  � ��� I     	�s��r�s 00 fmgui_managedb_gototab fmGUI_ManageDb_GoToTab� ��q� K    �� �p��o�p 0 tabname tabName� m    �� ���  R e l a t i o n s h i p s�o  �q  �r  � ��� l  
 
�n�m�l�n  �m  �l  � ��k� l  
 
�j�i�h�j  �i  �h  �k  � ��� l     �g�f�e�g  �f  �e  � ��� l     �d�c�b�d  �c  �b  � ��� i   k n��� I      �a��`�a >0 fmgui_managedb_gototab_tables fmGUI_ManageDb_GoToTab_Tables� ��_� o      �^�^ 	0 prefs  �_  �`  � k     �� ��� l     �]���]  �   version 1.4   � ���    v e r s i o n   1 . 4� ��� l     �\�[�Z�\  �[  �Z  � ��� I     	�Y��X�Y 00 fmgui_managedb_gototab fmGUI_ManageDb_GoToTab� ��W� K    �� �V��U�V 0 tabname tabName� m    �� ���  T a b l e s�U  �W  �X  � ��T� l  
 
�S�R�Q�S  �R  �Q  �T  � ��� l     �P�O�N�P  �O  �N  � ��� l     �M�L�K�M  �L  �K  � ��� i   o r��� I      �J��I�J B0 fmgui_managedb_listoftablenames fmGUI_ManageDb_ListOfTableNames� ��H� o      �G�G 	0 prefs  �H  �I  � k     a�� ��� l     �F���F  �   version 1.2   � ���    v e r s i o n   1 . 2� ��� l     �E�D�C�E  �D  �C  � ��� Q     _���� k    K�� ��� I    
�B��A�B >0 fmgui_managedb_gototab_tables fmGUI_ManageDb_GoToTab_Tables� ��@� J    �?�?  �@  �A  � ��>� O    K��� O    J��� k    I�� ��� n   ��� I    �=�<�;�= (0 fmgui_appfrontmost fmGUI_AppFrontMost�<  �;  �  f    � ��� l   �:�9�8�:  �9  �8  � ��� r    >��� n    <��� 1   : <�7
�7 
valL� n    :��� 4   7 :�6�
�6 
sttx� m   8 9�5�5 � l   7��4�3� 6   7��� n    +��� 2   ) +�2
�2 
crow� l   )��1�0� n    )��� 4   & )�/�
�/ 
tabB� m   ' (�.�. � n    &   4   # &�-
�- 
scra m   $ %�,�,  n    # 4     #�+
�+ 
tabg m   ! "�*�*  4     �)
�) 
cwin m    �(�( �1  �0  � =  , 6 n   - 2	
	 1   0 2�'
�' 
valL
 4   - 0�&
�& 
sttx m   . /�%�%  m   3 5 �  F i l e M a k e r�4  �3  � o      �$�$ 0 fmtablenames fmTableNames�  n  ? F I   @ F�#�"�# *0 fmgui_managedb_save fmGUI_ManageDB_Save �! J   @ B� �   �!  �"    f   ? @ � L   G I o   G H�� 0 fmtablenames fmTableNames�  � 4    �
� 
pcap m     � , F i l e M a k e r   P r o   A d v a n c e d� m    �                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �>  � R      �
� .ascrerr ****      � **** o      �� 0 errmsg errMsg ��
� 
errn o      �� 0 errnum errNum�  � R   S _�
� .ascrerr ****      � **** b   Y ^  m   Y \!! �"" F C o u l d n ' t   g e t   l i s t   o f   t a b l e   n a m e s   -    o   \ ]�� 0 errmsg errMsg �#�
� 
errn# o   W X�� 0 errnum errNum�  � $�$ l  ` `����  �  �  �  � %&% l     ����  �  �  & '(' l     ��
�	�  �
  �	  ( )*) i   s v+,+ I      �-�� J0 #fmgui_managedb_listofxdbctablenames #fmGUI_ManageDb_ListOfXDBCTableNames- .�. o      �� 	0 prefs  �  �  , k     a// 010 l     �23�  2   version 1.2   3 �44    v e r s i o n   1 . 21 565 l     ����  �  �  6 787 Q     _9:;9 k    K<< =>= I    
� ?���  >0 fmgui_managedb_gototab_tables fmGUI_ManageDb_GoToTab_Tables? @��@ J    ����  ��  ��  > A��A O    KBCB O    JDED k    IFF GHG n   IJI I    �������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��  J  f    H KLK l   ��������  ��  ��  L MNM r    >OPO n    <QRQ 1   : <��
�� 
valLR n    :STS 4   7 :��U
�� 
sttxU m   8 9���� T l   7V����V 6   7WXW n    +YZY 2   ) +��
�� 
crowZ l   )[����[ n    )\]\ 4   & )��^
�� 
tabB^ m   ' (���� ] n    &_`_ 4   # &��a
�� 
scraa m   $ %���� ` n    #bcb 4     #��d
�� 
tabgd m   ! "���� c 4     ��e
�� 
cwine m    ���� ��  ��  X >  , 6fgf n   - 2hih 1   0 2��
�� 
valLi 4   - 0��j
�� 
sttxj m   . /���� g m   3 5kk �ll  F i l e M a k e r��  ��  P o      ����  0 xdbctablenames xDBCTableNamesN mnm n  ? Fopo I   @ F��q���� *0 fmgui_managedb_save fmGUI_ManageDB_Saveq r��r J   @ B����  ��  ��  p  f   ? @n s��s L   G Itt o   G H����  0 xdbctablenames xDBCTableNames��  E 4    ��u
�� 
pcapu m    vv �ww , F i l e M a k e r   P r o   A d v a n c e dC m    xx�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  ��  : R      ��yz
�� .ascrerr ****      � ****y o      ���� 0 errmsg errMsgz ��{��
�� 
errn{ o      ���� 0 errnum errNum��  ; R   S _��|}
�� .ascrerr ****      � ****| b   Y ^~~ m   Y \�� ��� F C o u l d n ' t   g e t   l i s t   o f   t a b l e   n a m e s   -   o   \ ]���� 0 errmsg errMsg} �����
�� 
errn� o   W X���� 0 errnum errNum��  8 ���� l  ` `��������  ��  ��  ��  * ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i   w z��� I      ������� *0 fmgui_managedb_open fmGUI_ManageDb_Open� ���� o      ���� 	0 prefs  ��  ��  � k    ��� ��� l     ������  �   version 1.2   � ���    v e r s i o n   1 . 2� ��� l     �������  ��  �  � ��� Q    ����� O   ���� O   ���� k   ��� ��� n   ��� I    ���� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �  �  f    � ��� l   ����  �  �  � ��� l   ����  �   try to open Manage DB   � ��� ,   t r y   t o   o p e n   M a n a g e   D B� ��� Z   ������ C    ��� n    ��� 1    �
� 
pnam� 4    ��
� 
cwin� m    �� � m    �� ��� & M a n a g e   D a t a b a s e   f o r� L    !�� m     �
� boovtrue�  � k   $��� ��� I  $ D���
� .prcsclicnull��� ��� uiel� l  $ @���� 6  $ @��� n   $ 7��� 4  4 7��
� 
menI� m   5 6�� � n   $ 4��� 4   1 4��
� 
menE� m   2 3�� � n   $ 1��� 4   . 1��
� 
menI� m   / 0�� ���  M a n a g e� n   $ .��� 4   + .��
� 
menE� m   , -�� � n   $ +��� 4   ( +��
� 
mbri� m   ) *�� ���  F i l e� 4   $ (��
� 
mbar� m   & '�� � C   8 ?��� 1   9 ;�
� 
pnam� m   < >�� ���  D a t a b a s e�  �  �  � ��� l  E E����  �  �  � ��� l  E E����  � 3 - do this in case already on relationships tab   � ��� Z   d o   t h i s   i n   c a s e   a l r e a d y   o n   r e l a t i o n s h i p s   t a b� ��� l  E J���� I  E J���
� .sysodelanull��� ��� nmbr� m   E F�� �  �   seconds   � ���    s e c o n d s� ��� r   K N��� m   K L�
� boovtrue� o      �� *0 lookingforxdbcerror lookingForXDBCError� ��� V   O ���� Z   U ������ C  U _��� n   U [��� 1   Y [�
� 
pnam� 4   U Y��
� 
cwin� m   W X�� � m   [ ^�� ���  C o n n e c t   t o  � k   b ��� ��� I  b z���
� .prcsclicnull��� ��� uiel� l  b v���� 6  b v��� n   b k��� 4  f k��
� 
butT� m   i j�� � 4   b f� 
� 
cwin  m   d e�� � =  l u 1   m o�
� 
pnam m   p t �  C a n c e l�  �  �  � � l  { � I  { ��	�
� .sysodelanull��� ��� nmbr	 m   { |�� �     seconds    �

    s e c o n d s�  �  � r   � � m   � ��
� boovfals o      �� *0 lookingforxdbcerror lookingForXDBCError� o   S T�� *0 lookingforxdbcerror lookingForXDBCError�  l  � �����  �  �    l  � ���   P J to to the TOs tab and dismiss any xDBC connections that failed to connect    � �   t o   t o   t h e   T O s   t a b   a n d   d i s m i s s   a n y   x D B C   c o n n e c t i o n s   t h a t   f a i l e d   t o   c o n n e c t  n  � � I   � ���� L0 $fmgui_managedb_gototab_relationships $fmGUI_ManageDb_GoToTab_Relationships � J   � ��~�~  �  �    f   � �  l  � � I  � ��}�|
�} .sysodelanull��� ��� nmbr m   � ��{�{ �|     seconds    �      s e c o n d s !"! r   � �#$# m   � ��z
�z boovtrue$ o      �y�y *0 lookingforxdbcerror lookingForXDBCError" %&% V   � �'(' Z   � �)*�x+) C  � �,-, n   � �./. 1   � ��w
�w 
pnam/ 4   � ��v0
�v 
cwin0 m   � ��u�u - m   � �11 �22  C o n n e c t   t o  * k   � �33 454 I  � ��t6�s
�t .prcsclicnull��� ��� uiel6 l  � �7�r�q7 6  � �898 n   � �:;: 4  � ��p<
�p 
butT< m   � ��o�o ; 4   � ��n=
�n 
cwin= m   � ��m�m 9 =  � �>?> 1   � ��l
�l 
pnam? m   � �@@ �AA  C a n c e l�r  �q  �s  5 B�kB l  � �CDEC I  � ��jF�i
�j .sysodelanull��� ��� nmbrF m   � ��h�h �i  D   seconds   E �GG    s e c o n d s�k  �x  + r   � �HIH m   � ��g
�g boovfalsI o      �f�f *0 lookingforxdbcerror lookingForXDBCError( o   � ��e�e *0 lookingforxdbcerror lookingForXDBCError& JKJ l  � ��d�c�b�d  �c  �b  K LML l  � ��aNO�a  N M Gzoom out to show all TOs and dismiss any that weren't already dismissed   O �PP � z o o m   o u t   t o   s h o w   a l l   T O s   a n d   d i s m i s s   a n y   t h a t   w e r e n ' t   a l r e a d y   d i s m i s s e dM QRQ I  � ��`ST
�` .prcskprsnull���     ctxtS m   � �UU �VV  iT �_W�^
�_ 
faalW m   � ��]
�] eMdsKcmd�^  R XYX l  � �Z[\Z I  � ��\]�[
�\ .sysodelanull��� ��� nmbr] m   � ��Z�Z �[  [   seconds   \ �^^    s e c o n d sY _`_ r   � �aba m   � ��Y
�Y boovtrueb o      �X�X *0 lookingforxdbcerror lookingForXDBCError` cdc V   �&efe Z   �!gh�Wig C  �jkj n   � �lml 1   � ��V
�V 
pnamm 4   � ��Un
�U 
cwinn m   � ��T�T k m   �oo �pp  C o n n e c t   t o  h k  qq rsr I �St�R
�S .prcsclicnull��� ��� uielt n  uvu 4  
�Qw
�Q 
butTw m  xx �yy  C a n c e lv 4  
�Pz
�P 
cwinz m  	�O�O �R  s {�N{ l |}~| I �M�L
�M .sysodelanull��� ��� nmbr m  �K�K �L  }   seconds   ~ ���    s e c o n d s�N  �W  i r  !��� m  �J
�J boovfals� o      �I�I *0 lookingforxdbcerror lookingForXDBCErrorf o   � ��H�H *0 lookingforxdbcerror lookingForXDBCErrord ��� l ''�G�F�E�G  �F  �E  � ��� l ''�D���D  �   zoom back in   � ���    z o o m   b a c k   i n� ��� r  '7��� n  '5��� 4  05�C�
�C 
txtf� m  34�B�B � n  '0��� 4  +0�A�
�A 
tabg� m  ./�@�@ � 4  '+�?�
�? 
cwin� m  )*�>�> � o      �=�= 0 	zoomfield 	zoomField� ��� r  8?��� m  89�<
�< boovtrue� n      ��� 1  :>�;
�; 
focu� o  9:�:�: 0 	zoomfield 	zoomField� ��� r  @I��� m  @C�� ���  1 0 0� n      ��� 1  DH�9
�9 
valL� o  CD�8�8 0 	zoomfield 	zoomField� ��� r  J^��� m  JK�7
�7 boovtrue� n      ��� 1  Y]�6
�6 
focu� n  KY��� 4  TY�5�
�5 
scra� m  WX�4�4 � n  KT��� 4  OT�3�
�3 
tabg� m  RS�2�2 � 4  KO�1�
�1 
cwin� m  MN�0�0 � ��� r  _x��� m  _`�/�/  � n      ��� 1  sw�.
�. 
valL� n  `s��� 4  ns�-�
�- 
scrb� m  qr�,�, � n  `n��� 4  in�+�
�+ 
scra� m  lm�*�* � n  `i��� 4  di�)�
�) 
tabg� m  gh�(�( � 4  `d�'�
�' 
cwin� m  bc�&�& � ��� r  y���� m  yz�%�%  � n      ��� 1  ���$
�$ 
valL� n  z���� 4  ���#�
�# 
scrb� m  ���"�" � n  z���� 4  ���!�
�! 
scra� m  ��� �  � n  z���� 4  ~���
� 
tabg� m  ���� � 4  z~��
� 
cwin� m  |}�� � ��� l ������  �  �  � ��� L  ���� m  ���
� boovtrue�  �  � 4    ��
� 
pcap� m   	 
�� ��� , F i l e M a k e r   P r o   A d v a n c e d� m    ���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  � R      ���
� .ascrerr ****      � ****� o      �� 0 errmsg errMsg� ���
� 
errn� o      �� 0 errnum errNum�  � R  �����
� .ascrerr ****      � ****� b  ����� m  ���� ��� 4 C o u l d n ' t   o p e n   m a n a g e   D B   -  � o  ���� 0 errmsg errMsg� ���
� 
errn� o  ���� 0 errnum errNum�  � ��� l ���
�	��
  �	  �  �  � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� i   { ~��� I      ��� � *0 fmgui_managedb_save fmGUI_ManageDB_Save� ���� o      ���� 	0 prefs  ��  �   � k     ��� ��� l     ������  �   version 1.4   � ���    v e r s i o n   1 . 4� ��� l     ��������  ��  ��  � ��� r     ��� K     �� ������� ,0 notinmanagedbiserror notInManageDbIsError� m    ��
�� boovtrue��  � o      ���� 0 defaultprefs defaultPrefs� ��� l   ��������  ��  ��  � ��� r    � � b    
 o    ���� 	0 prefs   o    	���� 0 defaultprefs defaultPrefs  o      ���� 	0 prefs  �  l   ��������  ��  ��    l   ��������  ��  ��    r    	
	 m     � & M a n a g e   D a t a b a s e   f o r
 o      ���� 40 managedbwindownameprefix manageDbWindowNamePrefix  l    r     m    ���� 
 o      ���� .0 waitcycledelayseconds waitCycleDelaySeconds   seconds    �    s e c o n d s  l    r     ]     m    ���� < 1    ��
�� 
min  o      ���� ,0 waitsavetotalseconds waitSaveTotalSeconds  seconds    �  s e c o n d s   l   ��������  ��  ��    !"! r    &#$# I   $��%&
�� .sysorondlong        doub% l   '����' ^    ()( o    ���� ,0 waitsavetotalseconds waitSaveTotalSeconds) o    ���� .0 waitcycledelayseconds waitCycleDelaySeconds��  ��  & ��*��
�� 
dire* m     ��
�� olierndD��  $ o      ���� 0 waitcyclemax waitCycleMax" +,+ l  ' '��������  ��  ��  , -.- Q   ' �/01/ k   * �22 343 O   * �565 k   . �77 898 O   . �:;: k   5 �<< =>= l  5 5��������  ��  ��  > ?@? n  5 :ABA I   6 :�������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��  B  f   5 6@ CDC l  ; ;��������  ��  ��  D EFE Z   ; �GH��IG C   ; CJKJ n   ; ALML 1   ? A��
�� 
pnamM 4   ; ?��N
�� 
cwinN m   = >���� K o   A B���� 40 managedbwindownameprefix manageDbWindowNamePrefixH Q   F yOPQO k   I eRR STS r   I QUVU n   I OWXW 1   M O��
�� 
pnamX 4   I M��Y
�� 
cwinY m   K L���� V o      ���� (0 managedbwindowname manageDbWindowNameT Z[Z I  R ]��\��
�� .prcsclicnull��� ��� uiel\ l  R Y]���] n   R Y^_^ 4   V Y�`
� 
butT` m   W Xaa �bb  O K_ 4   R V�c
� 
cwinc m   T U�� ��  �  ��  [ ded l  ^ cfghf I  ^ c�i�
� .sysodelanull��� ��� nmbri m   ^ _�� �  g   let click register.   h �jj (   l e t   c l i c k   r e g i s t e r .e klk l  d d�mn�  m 6 0 will continue below to wait for window to close   n �oo `   w i l l   c o n t i n u e   b e l o w   t o   w a i t   f o r   w i n d o w   t o   c l o s el p�p l  d d����  �  �  �  P R      �qr
� .ascrerr ****      � ****q o      �� 0 errmsg errMsgr �s�
� 
errns o      �� 0 errnum errNum�  Q R   m y�tu
� .ascrerr ****      � ****t b   s xvwv m   s vxx �yy @ C o u l d n ' t   s a v e   M a n a g e   D a t a b a s e   -  w o   v w�� 0 errmsg errMsgu �z�
� 
errnz o   q r�� 0 errnum errNum�  ��  I Z   | �{|�}{ n   | �~~ o   } �� ,0 notinmanagedbiserror notInManageDbIsError o   | }�� 	0 prefs  | R   � ����
� .ascrerr ****      � ****� m   � ��� ��� p M a n a g e   D a t a b a s e   w i n d o w   w a s n ' t   o p e n ,   s o   n o t h i n g   t o   c l o s e .� ���
� 
errn� m   � ��� �  �  } k   � ��� ��� l  � �����  � . ( Not in Manage Database, but that is OK.   � ��� P   N o t   i n   M a n a g e   D a t a b a s e ,   b u t   t h a t   i s   O K .� ��� L   � ��� m   � ��
� boovtrue�  F ��� l  � �����  �  �  �  ; 4   . 2��
� 
pcap� m   0 1�� ��� , F i l e M a k e r   P r o   A d v a n c e d9 ��� l  � �����  �  �  � ��� n  � ���� I   � ����� "0 windowwaituntil windowWaitUntil� ��� K   � ��� ���� 0 
windowname 
windowName� o   � ��� (0 managedbwindowname manageDbWindowName� ����  0 windownametest windowNameTest� m   � ��� ���   d o e s   n o t   c o n t a i n� ���� 0 whichwindow whichWindow� m   � ��� ���  a n y� ���� .0 waitcycledelayseconds waitCycleDelaySeconds� o   � ��� .0 waitcycledelayseconds waitCycleDelaySeconds� ���� 0 waitcyclemax waitCycleMax� o   � ��� 0 waitcyclemax waitCycleMax�  �  �  �  f   � �� ��� l  � �����  �  �  � ��� l  � ����� I  � ����
� .sysodelanull��� ��� nmbr� m   � ��� �  � ( " let normal window come to front.    � ��� D   l e t   n o r m a l   w i n d o w   c o m e   t o   f r o n t .  � ��� l  � �����  �  �  � ��� L   � ��� m   � ��
� boovtrue� ��� l  � ����~�  �  �~  �  6 m   * +���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  4 ��� l  � ��}�|�{�}  �|  �{  � ��z� l  � ��y�x�w�y  �x  �w  �z  0 R      �v��
�v .ascrerr ****      � ****� o      �u�u 0 errmsg errMsg� �t��s
�t 
errn� o      �r�r 0 errnum errNum�s  1 R   � ��q��
�q .ascrerr ****      � ****� b   � ���� m   � ��� ��� @ C o u l d n ' t   s a v e   M a n a g e   D a t a b a s e   -  � o   � ��p�p 0 errmsg errMsg� �o��n
�o 
errn� o   � ��m�m 0 errnum errNum�n  . ��l� l  � ��k�j�i�k  �j  �i  �l  � ��� l     �h�g�f�h  �g  �f  � ��� l     �e�d�c�e  �d  �c  � ��� i    ���� I      �b��a�b N0 %fmgui_managedb_table_listoffieldnames %fmGUI_ManageDb_Table_ListOfFieldNames� ��`� o      �_�_ 0 basetablename baseTableName�`  �a  � k     H�� ��� l     �^���^  �   version 1.1   � ���    v e r s i o n   1 . 1� ��� l     �]�\�[�]  �\  �[  � ��� Q     F���� k    0�� ��� I    	�Z��Y�Z @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable� ��X� o    �W�W 0 basetablename baseTableName�X  �Y  � ��� l  
 
�V�U�T�V  �U  �T  � ��S� O   
 0��� O    /��� k    .�� ��� n    *��� 1   ' )�R
�R 
valL� n    '��� 4   $ '�Q�
�Q 
sttx� m   % &�P�P � n    $��� 2   " $�O
�O 
crow� n    "��� 4    "�N�
�N 
tabB� m     !�M�M � n    ��� 4    �L�
�L 
scra� m    �K�K � n    ��� 4    �J�
�J 
tabg� m    �I�I � 4    �H�
�H 
cwin� m    �G�G � ��F� L   + .�� 1   + -�E
�E 
rslt�F  � 4    �D�
�D 
pcap� m    �� �   , F i l e M a k e r   P r o   A d v a n c e d� m   
 �                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �S  � R      �C
�C .ascrerr ****      � **** o      �B�B 0 errmsg errMsg �A�@
�A 
errn o      �?�? 0 errnum errNum�@  � R   8 F�>
�> .ascrerr ****      � **** b   < E b   < C	
	 b   < ? m   < = � X C o u l d n ' t   g e t   l i s t   o f   f i e l d   n a m e s   f o r   t a b l e   ' o   = >�=�= 0 basetablename baseTableName
 m   ? B �  '   -   o   C D�<�< 0 errmsg errMsg �;�:
�; 
errn o   : ;�9�9 0 errnum errNum�:  � �8 l  G G�7�6�5�7  �6  �5  �8  �  l     �4�3�2�4  �3  �2    l     �1�0�/�1  �0  �/    i   � � I      �.�-�. >0 fmgui_managedb_tablelistfocus fmGUI_ManageDb_TableListFocus �, o      �+�+ 	0 prefs  �,  �-   k     @  l     �* !�*      version 1.1   ! �""    v e r s i o n   1 . 1 #$# l     �)�(�'�)  �(  �'  $ %&% Q     >'()' k    .** +,+ I    
�&-�%�& >0 fmgui_managedb_gototab_tables fmGUI_ManageDb_GoToTab_Tables- .�$. J    �#�#  �$  �%  , /0/ l   �"�!� �"  �!  �   0 121 O    ,343 O    +565 k    *77 898 r    ':;: m    �
� boovtrue; n      <=< 1   $ &�
� 
focu= l   $>��> n    $?@? 4   ! $�A
� 
tabBA m   " #�� @ n    !BCB 4    !�D
� 
scraD m     �� C n    EFE 4    �G
� 
tabgG m    �� F 4    �H
� 
cwinH m    �� �  �  9 I�I L   ( *JJ m   ( )�
� boovtrue�  6 4    �K
� 
pcapK m    LL �MM , F i l e M a k e r   P r o   A d v a n c e d4 m    NN�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  2 O�O l  - -����  �  �  �  ( R      �PQ
� .ascrerr ****      � ****P o      �� 0 errmsg errMsgQ �
R�	
�
 
errnR o      �� 0 errnum errNum�	  ) R   6 >�ST
� .ascrerr ****      � ****S b   : =UVU m   : ;WW �XX > C o u l d n ' t   f o c u s   o n   F i e l d   l i s t   -  V o   ; <�� 0 errmsg errMsgT �Y�
� 
errnY o   8 9�� 0 errnum errNum�  & Z�Z l  ? ?�� ���  �   ��  �   [\[ l     ��������  ��  ��  \ ]^] l     ��������  ��  ��  ^ _`_ i   � �aba I      ��c���� .0 fmgui_managedb_to_add fmGUI_ManageDb_TO_Addc d��d o      ���� 	0 prefs  ��  ��  b k    Oee fgf l     ��hi��  h   version 1.3   i �jj    v e r s i o n   1 . 3g klk l     ��������  ��  ��  l mnm r     opo K     
qq ��rs�� 0 tocname tocNamer m    ��
�� 
nulls ��tu�� 0 dbname dbNamet m    ��
�� 
nullu ��vw�� *0 donotchangeexisting doNotChangeExistingv m    ��
�� boovfalsw ��x���� 0 basetablename baseTableNamex m    ��
�� 
null��  p o      ���� 0 defaultprefs defaultPrefsn yzy l   ��������  ��  ��  z {|{ r    }~} b    � o    ���� 	0 prefs  � o    ���� 0 defaultprefs defaultPrefs~ o      ���� 	0 prefs  | ��� l   ��������  ��  ��  � ��� l   ��������  ��  ��  � ��� l   ��������  ��  ��  � ��� Q   M���� k   9�� ��� I    ������� L0 $fmgui_managedb_gototab_relationships $fmGUI_ManageDb_GoToTab_Relationships� ���� J    ����  ��  ��  � ���� O   9��� O   "8��� k   )7�� ��� n  ) .��� I   * .�������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��  �  f   ) *� ��� r   / F��� 6  / D��� n   / 9��� 4  6 9���
�� 
butT� m   7 8���� � n   / 6��� 4   3 6���
�� 
tabg� m   4 5���� � 4   / 3���
�� 
cwin� m   1 2���� � E   : C��� 1   ; =��
�� 
desc� m   > B�� ���  A d d   a   t a b l e� o      ���� 0 addtocbutton addTocButton� ��� n  G M��� I   H M������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� o   H I���� 0 addtocbutton addTocButton��  ��  �  f   G H� ��� I  N S�����
�� .sysodelanull��� ��� nmbr� m   N O���� ��  � ��� Q   T���� k   W ��� ��� n  W j��� I   X j�������  0 fmgui_popupset fmGUI_PopupSet� ��� n   X c��� 4   \ c���
�� 
popB� m   _ b�� ���  D a t a   S o u r c e :� 4   X \���
�� 
cwin� m   Z [���� � ���� n   c f��� o   d f���� 0 dbname dbName� o   c d���� 	0 prefs  ��  ��  �  f   W X� ���� I  k ������
�� .miscslctnull���     uiel� l  k ������� 6  k ���� n   k ~��� 4  y ~���
�� 
crow� m   | }���� � n   k y��� 4   t y���
�� 
tabB� m   w x���� � n   k t��� 4   o t���
�� 
scra� m   r s���� � 4   k o���
�� 
cwin� m   m n���� � =   ���� n   � ���� 1   � ���
�� 
valL� 4   � ����
�� 
sttx� m   � ����� � n   � ���� o   � ����� 0 basetablename baseTableName� o   � ����� 	0 prefs  ��  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � k   ��� ��� l  � �������  � / )Not an existing data source, so create it   � ��� R N o t   a n   e x i s t i n g   d a t a   s o u r c e ,   s o   c r e a t e   i t� ��� l  � ����� I  � ������
�� .prcskcodnull���     ****� m   � ����� 5��  � !  Hit 'Esc' to close pop up.   � ��� 6   H i t   ' E s c '   t o   c l o s e   p o p   u p .� ��� l  � �����  �  �  � ��� l  � �����  � 9 3 add data source from within adding a new TO window   � ��� f   a d d   d a t a   s o u r c e   f r o m   w i t h i n   a d d i n g   a   n e w   T O   w i n d o w� ��� n  � ���� I   � �����  0 fmgui_popupset fmGUI_PopupSet� ��� n   � ���� 4   � ���
� 
popB� m   � ��� �    D a t a   S o u r c e :� 4   � ��
� 
cwin m   � ��� � � m   � � � ( M a n a g e   D a t a   S o u r c e s &�  �  �  f   � ��  n  � � I   � ��	�� L0 $fmgui_managedatasources_ensureexists $fmGUI_ManageDataSources_EnsureExists	 
�
 K   � � ���  0 datasourcename dataSourceName n   � � o   � ��� 0 dbname dbName o   � ��� 	0 prefs  �  �  �    f   � �  n  � � I   � ���� <0 fmgui_managedatasources_save fmGUI_ManageDataSources_Save � J   � ���  �  �    f   � �  I  � ���
� .sysodelanull��� ��� nmbr m   � ��� �    l  � �����  �  �    l  � ���   9 3 now that we've added the data source, try again...    � f   n o w   t h a t   w e ' v e   a d d e d   t h e   d a t a   s o u r c e ,   t r y   a g a i n . . .   n  � �!"! I   � ��#��  0 fmgui_popupset fmGUI_PopupSet# $%$ n   � �&'& 4   � ��(
� 
popB( m   � �)) �**  D a t a   S o u r c e :' 4   � ��+
� 
cwin+ m   � ��� % ,�~, n   � �-.- o   � ��}�} 0 dbname dbName. o   � ��|�| 	0 prefs  �~  �  "  f   � �  /�{/ I  ��z0�y
�z .miscslctnull���     uiel0 l  �1�x�w1 6  �232 n   � �454 4  � ��v6
�v 
crow6 m   � ��u�u 5 n   � �787 4   � ��t9
�t 
tabB9 m   � ��s�s 8 n   � �:;: 4   � ��r<
�r 
scra< m   � ��q�q ; 4   � ��p=
�p 
cwin= m   � ��o�o 3 =  �>?> n   �@A@ 1  �n
�n 
valLA 4   ��mB
�m 
sttxB m   �l�l ? n  CDC o  	�k�k 0 basetablename baseTableNameD o  	�j�j 	0 prefs  �x  �w  �y  �{  � EFE l �i�h�g�i  �h  �g  F GHG r  %IJI n  KLK o  �f�f 0 tocname tocNameL o  �e�e 	0 prefs  J n      MNM 1   $�d
�d 
valLN n   OPO 4   �cQ
�c 
txtfQ m  RR �SS  N a m eP 4  �bT
�b 
cwinT m  �a�a H UVU n &4WXW I  '4�`Y�_�` B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindowY Z�^Z n  '0[\[ 4  +0�]]
�] 
butT] m  ,/^^ �__  O K\ 4  '+�\`
�\ 
cwin` m  )*�[�[ �^  �_  X  f  &'V aba l 55�Z�Y�X�Z  �Y  �X  b c�Wc L  57dd m  56�V
�V boovtrue�W  � 4   " &�Ue
�U 
pcape m   $ %ff �gg , F i l e M a k e r   P r o   A d v a n c e d� m    hh�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  ��  � R      �Tij
�T .ascrerr ****      � ****i o      �S�S 0 errmsg errMsgj �Rk�Q
�R 
errnk o      �P�P 0 errnum errNum�Q  � R  AM�Olm
�O .ascrerr ****      � ****l b  GLnon m  GJpp �qq > C o u l d n ' t   a d d   T O   i n   M a n a g e   D B   -  o o  JK�N�N 0 errmsg errMsgm �Mr�L
�M 
errnr o  EF�K�K 0 errnum errNum�L  � s�Js l NN�I�H�G�I  �H  �G  �J  ` tut l     �F�E�D�F  �E  �D  u vwv l     �C�B�A�C  �B  �A  w xyx i   � �z{z I      �@|�?�@ 60 fmgui_managedb_to_listadd fmGUI_ManageDB_TO_ListAdd| }�>} o      �=�= 	0 prefs  �>  �?  { k     �~~ � l     �<���<  �   version 1.1   � ���    v e r s i o n   1 . 1� ��� l     �;�:�9�;  �:  �9  � ��� r     ��� K     �� �8��7�8 0 tolist TOList� m    �� ���  �7  � o      �6�6 0 defaultprefs defaultPrefs� ��� r    ��� b    
��� o    �5�5 	0 prefs  � o    	�4�4 0 defaultprefs defaultPrefs� o      �3�3 	0 prefs  � ��� l   �2�1�0�2  �1  �0  � ��� Q    ����� k    ��� ��� r    ��� n    ��� o    �/�/ 0 tolist TOList� o    �.�. 	0 prefs  � o      �-�- 0 tolist TOList� ��� r    "��� I     �,��+�, 0 replacesimple replaceSimple� ��*� J    �� ��� o    �)�) 0 tolist TOList� ��� o    �(�( 0 cr CR� ��'� o    �&�& 0 lf LF�'  �*  �+  � o      �%�% 0 tolist TOList� ��� r   # 0��� I   # .�$��#�$ 0 
parsechars 
parseChars� ��"� K   $ *�� �!���! 0 
sourcetext 
sourceTEXT� o   % &� �  0 tolist TOList� ���� 0 parsestring parseString� o   ' (�� 0 lf LF�  �"  �#  � o      �� 0 tolist TOList� ��� l  1 1����  �  �  � ��� Z   1 ������ ?  1 8��� l  1 6���� I  1 6���
� .corecnte****       ****� o   1 2�� 0 tolist TOList�  �  �  � m   6 7��  � k   ; ��� ��� l  ; ;����  �  �  � ��� l  ; ;����  � H B loop over and get list of DBs that need to exist as data sources.   � ��� �   l o o p   o v e r   a n d   g e t   l i s t   o f   D B s   t h a t   n e e d   t o   e x i s t   a s   d a t a   s o u r c e s .� ��� X   ; ����� k   K |�� ��� r   K X��� I   K V���
� 0 
parsechars 
parseChars� ��	� K   L R�� ���� 0 
sourcetext 
sourceTEXT� o   M N�� 0 oneto oneTO� ���� 0 parsestring parseString� m   O P�� ���  | |�  �	  �
  � o      �� 0 torec TORec� ��� r   Y _��� n   Y ]��� 4   Z ]��
� 
cobj� m   [ \�� � o   Y Z�� 0 torec TORec� o      � �  0 	onedbname 	oneDBName� ��� r   ` f��� n   ` d��� 4   a d���
�� 
cobj� m   b c���� � o   ` a���� 0 torec TORec� o      ���� 0 onetablename oneTableName� ��� r   g u��� K   g s�� ������ 0 dbname dbName� o   h i���� 0 	onedbname 	oneDBName� ������ 0 basetablename baseTableName� o   j k���� 0 onetablename oneTableName� ������� 0 toname TOName� b   l q��� b   l o��� o   l m���� 0 	onedbname 	oneDBName� m   m n�� ���  _ _� o   o p���� 0 onetablename oneTableName��  � o      ���� 0 toparam TOParam� ��� l  v v��������  ��  ��  � ���� I   v |������� .0 fmgui_managedb_to_add fmGUI_ManageDb_TO_Add� ���� o   w x���� 0 toparam TOParam��  ��  ��  � 0 oneto oneTO� o   > ?���� 0 tolist TOList� ��� l  � ���������  ��  ��  �   ��   I   � ��� ���� *0 fmgui_managedb_save fmGUI_ManageDB_Save   ��  J   � �����  ��  ��  ��  �  �  �  ��  L   � �   m   � ���
�� boovtrue��  � R      ��  
�� .ascrerr ****      � ****  o      ���� 0 errmsg errMsg  �� ��
�� 
errn  o      ���� 0 errnum errNum��  � R   � ���  	
�� .ascrerr ****      � ****  b   � � 
  
 m   � �   �   J C o u l d n ' t   f m G U I _ M a n a g e D B _ T O _ L i s t A d d   -    o   � ����� 0 errmsg errMsg 	 �� ��
�� 
errn  o   � ����� 0 errnum errNum��  �  ��  l  � ���������  ��  ��  ��  y     l     ��������  ��  ��        l     ��������  ��  ��        i   � �    I      �� ���� &0 fmgui_checkboxset fmGUI_CheckboxSet      o      ����  0 checkboxobject checkboxObject   ��  o      ���� 0 checkboxvalue checkboxValue��  ��    k     9       l     ��   ��      version 1.0      � ! !    v e r s i o n   1 . 0   " # " l     ��������  ��  ��   #  $�� $ w     9 % & % Q    9 ' ( ) ' k    % * *  + , + Z      - .���� - >    / 0 / o    �� 0 checkboxvalue checkboxValue 0 m    �
� 
null . Z     1 2�� 1 >    3 4 3 n     5 6 5 1    �
� 
valL 6 o    ��  0 checkboxobject checkboxObject 4 o    �� 0 checkboxvalue checkboxValue 2 I   � 7�
� .prcsclicnull��� ��� uiel 7 o    ��  0 checkboxobject checkboxObject�  �  �  ��  ��   ,  8 9 8 L   ! # : : m   ! "�
� boovtrue 9  ;� ; l  $ $����  �  �  �   ( R      � < =
� .ascrerr ****      � **** < o      �� 0 errmsg errMsg = � >�
� 
errn > o      �� 0 errnum errNum�   ) R   - 9� ? @
� .ascrerr ****      � **** ? b   1 8 A B A b   1 6 C D C b   1 4 E F E m   1 2 G G � H H " C o u l d n ' t   s e l e c t   ' F o   2 3�� 0 checkboxvalue checkboxValue D m   4 5 I I � J J " '   f o r   c h e c k b o x   -   B o   6 7�� 0 errmsg errMsg @ � K�
� 
errn K o   / 0�� 0 errnum errNum�   &�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  ��     L M L l     ����  �  �   M  N O N l     ����  �  �   O  P Q P i   � � R S R I      � T�� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow T  U� U o      �� 0 	buttonref 	buttonRef�  �   S k     
 V V  W X W l     � Y Z�   Y   version 1.0    Z � [ [    v e r s i o n   1 . 0 X  \ ] \ l     ����  �  �   ]  ^ _ ^ w      ` a ` n    b c b I    � d�� *0 clickobjectbycoords clickObjectByCoords d  e� e o    �� 0 	buttonref 	buttonRef�  �   c  f     a�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��   _  f� f l  	 	����  �  �  �   Q  g h g l     ����  �  �   h  i j i l     ����  �  �   j  k l k i   � � m n m I      ���� 40 fmgui_pastefromclipboard fmGUI_PasteFromClipboard�  �   n k     � o o  p q p l     � r s�   r    version 1.0, Erik Shagdar    s � t t 4   v e r s i o n   1 . 0 ,   E r i k   S h a g d a r q  u v u l     ����  �  �   v  w x w r      y z y m     �
� boovfals z o      �� (0 pasemenuitemexists paseMenuItemExists x  { | { l   ���~�  �  �~   |  } ~ } O    ~  �  O    } � � � k    | � �  � � � l   �}�|�{�}  �|  �{   �  � � � n    � � � I    �z�y�x�z (0 fmgui_appfrontmost fmGUI_AppFrontMost�y  �x   �  f     �  � � � l   �w�v�u�w  �v  �u   �  � � � r    - � � � 6   + � � � n    " � � � 4   "�t �
�t 
menI � m     !�s�s  � n     � � � 4    �r �
�r 
menE � m    �q�q  � n     � � � 4    �p �
�p 
mbri � m     � � � � �  E d i t � 4    �o �
�o 
mbar � m    �n�n  � =  # * � � � 1   $ &�m
�m 
pnam � m   ' ) � � � � � 
 P a s t e � o      �l�l 0 pastemenuitem pasteMenuItem �  � � � Q   . H � � � � I  1 6�k ��j
�k .prcsclicnull��� ��� uiel � o   1 2�i�i 0 pastemenuitem pasteMenuItem�j   � R      �h � �
�h .ascrerr ****      � **** � o      �g�g 0 errmsg errMsg � �f ��e
�f 
errn � o      �d�d 0 errnum errNum�e   � R   > H�c � �
�c .ascrerr ****      � **** � b   B G � � � m   B E � � � � � R U n a b l e   t o   c l i c k   ' S e l e c t   A l l '   m e n u   i t e m   -   � o   E F�b�b 0 errmsg errMsg � �a ��`
�a 
errn � o   @ A�_�_ 0 errnum errNum�`   �  � � � l  I I�^�]�\�^  �]  �\   �  � � � l  I I�[�Z�Y�[  �Z  �Y   �  � � � l  I I�X � ��X   � G A waiting until the paste item exists suggests the paste completed    � � � � �   w a i t i n g   u n t i l   t h e   p a s t e   i t e m   e x i s t s   s u g g e s t s   t h e   p a s t e   c o m p l e t e d �  ��W � U   I | � � � k   R w � �  � � � Q   R o � ��V � Z   U f � ��U�T � I  U Z�S ��R
�S .coredoexnull���     **** � o   U V�Q�Q 0 pastemenuitem pasteMenuItem�R   � k   ] b � �  � � � r   ] ` � � � m   ] ^�P
�P boovtrue � o      �O�O (0 pasemenuitemexists paseMenuItemExists �  ��N �  S   a b�N  �U  �T   � R      �M�L�K
�M .ascrerr ****      � ****�L  �K  �V   �  ��J � I  p w�I ��H
�I .sysodelanull��� ��� nmbr � m   p s � � ?�      �H  �J   � m   L O�G�G �W   � 4    �F �
�F 
pcap � m   
  � � � � � , F i l e M a k e r   P r o   A d v a n c e d � m     � ��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��   ~  � � � l   �E�D�C�E  �D  �C   �  � � � L    � � � o    ��B�B (0 pasemenuitemexists paseMenuItemExists �  ��A � l  � ��@�?�>�@  �?  �>  �A   l  � � � l     �=�<�;�=  �<  �;   �  � � � l     �:�9�8�:  �9  �8   �  � � � i   � � � � � I      �7 ��6�7 :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand �  ��5 � o      �4�4 	0 prefs  �5  �6   � k     � �  � � � l     �3 � ��3   �   version 1.0    � � � �    v e r s i o n   1 . 0 �  � � � l     �2�1�0�2  �1  �0   �  � � � r      � � � K     
 � � �/ � ��/ 0 popupobject popupObject � m    �.
�. 
null � �- � ��- 0 popupchoice popupChoice � m    �,
�, 
null � �+ � ��+ 0 selectcommand selectCommand � m     � � � � �  i s � �* ��)�* &0 clickifalreadyset clickIfAlreadySet � m    �(
�( boovfals�)   � o      �'�' 0 defaultprefs defaultPrefs �  � � � l   �&�%�$�&  �%  �$   �  � � � Z    , � ��#�" � =    �!  � n    !!! m    �!
�! 
pcls! o    � �  	0 prefs  !  n    !!! m    �
� 
pcls! J    !! !!! m    !! �!	!	  a! !
�!
 m    �� �   � r    (!!! K    &!! �!!� 0 popupobject popupObject! n    !!! 4    �!
� 
cobj! m    �� ! o    �� 	0 prefs  ! �!�� 0 popupchoice popupChoice! n     $!!! 4   ! $�!
� 
cobj! m   " #�� ! o     !�� 	0 prefs  �  ! o      �� 	0 prefs  �#  �"   � !!! l  - -����  �  �  ! !!! l  - -����  �  �  ! !!! r   - 2!!! b   - 0!! ! o   - .�� 	0 prefs  !  o   . /�� 0 defaultprefs defaultPrefs! o      �
�
 	0 prefs  ! !!!"!! l  3 3�	���	  �  �  !" !#!$!# r   3 8!%!&!% n   3 6!'!(!' o   4 6�� 0 popupobject popupObject!( o   3 4�� 	0 prefs  !& o      �� 0 popupobject popupObject!$ !)!*!) r   9 >!+!,!+ n   9 <!-!.!- o   : <�� 0 selectcommand selectCommand!. o   9 :�� 	0 prefs  !, o      �� 0 selectcommand selectCommand!* !/!0!/ r   ? D!1!2!1 n   ? B!3!4!3 o   @ B� �  0 popupchoice popupChoice!4 o   ? @���� 	0 prefs  !2 o      ���� 0 popupchoice popupChoice!0 !5!6!5 l  E J!7!8!9!7 r   E J!:!;!: n   E H!<!=!< o   F H���� &0 clickifalreadyset clickIfAlreadySet!= o   E F���� 	0 prefs  !; o      ���� &0 clickifalreadyset clickIfAlreadySet!8 6 0 re-select even if popup is the requested value.   !9 �!>!> `   r e - s e l e c t   e v e n   i f   p o p u p   i s   t h e   r e q u e s t e d   v a l u e .!6 !?!@!? l  K K��������  ��  ��  !@ !A!B!A l  K K��������  ��  ��  !B !C��!C w   K!D!E!D Q   M!F!G!H!F Z   P�!I!J��!K!I H   P V!L!L l  P U!M����!M I  P U��!N��
�� .coredoexnull���     ****!N o   P Q���� 0 popupobject popupObject��  ��  ��  !J k   Y a!O!O !P!Q!P l  Y Y��!R!S��  !R * $ does NOT exist, so error with that:   !S �!T!T H   d o e s   N O T   e x i s t ,   s o   e r r o r   w i t h   t h a t :!Q !U!V!U R   Y _��!W!X
�� .ascrerr ****      � ****!W m   ] ^!Y!Y �!Z!Z R T h e   s p e c i f i e d   p o p u p O b j e c t   d o e s   n o t   e x i s t .!X ��![��
�� 
errn![ m   [ \���� ��  !V !\��!\ l  ` `��������  ��  ��  ��  ��  !K k   d�!]!] !^!_!^ l  d d��!`!a��  !` !  the popupObject DOES exist   !a �!b!b 6   t h e   p o p u p O b j e c t   D O E S   e x i s t!_ !c!d!c r   d g!e!f!e m   d e��
�� boovfals!f o      ���� 0 mustpick mustPick!d !g!h!g Z   h$!i!j��!k!i H   h r!l!l l  h q!m����!m I  h q��!n��
�� .coredoexnull���     ****!n n   h m!o!p!o 1   i m��
�� 
valL!p o   h i���� 0 popupobject popupObject��  ��  ��  !j k   u z!q!q !r!s!r l  u u��!t!u��  !t i c first check if the value of the popupObject exists - if it doesn't, then we can't test it directly   !u �!v!v �   f i r s t   c h e c k   i f   t h e   v a l u e   o f   t h e   p o p u p O b j e c t   e x i s t s   -   i f   i t   d o e s n ' t ,   t h e n   w e   c a n ' t   t e s t   i t   d i r e c t l y!s !w!x!w r   u x!y!z!y m   u v��
�� boovtrue!z o      ���� 0 mustpick mustPick!x !{��!{ l  y y��������  ��  ��  ��  ��  !k l  }$!|!}!~!| k   }$!! !�!�!� l  } }��!�!���  !� K E note that our selection might be one of several 'matching' commands:   !� �!�!� �   n o t e   t h a t   o u r   s e l e c t i o n   m i g h t   b e   o n e   o f   s e v e r a l   ' m a t c h i n g '   c o m m a n d s :!� !���!� Z   }$!�!�!���!� o   } ~���� &0 clickifalreadyset clickIfAlreadySet!� k   � �!�!� !�!�!� l  � ���!�!���  !� > 8 RE-SELECT even if popup already is the requested value.   !� �!�!� p   R E - S E L E C T   e v e n   i f   p o p u p   a l r e a d y   i s   t h e   r e q u e s t e d   v a l u e .!� !�!�!� r   � �!�!�!� m   � ���
�� boovtrue!� o      ���� 0 mustpick mustPick!� !���!� l  � ���������  ��  ��  ��  !� !�!�!� =  � �!�!�!� o   � ����� 0 selectcommand selectCommand!� m   � �!�!� �!�!�  i s!� !�!�!� k   � �!�!� !�!�!� Z   � �!�!�����!� >  � �!�!�!� n   � �!�!�!� 1   � ���
�� 
valL!� o   � ����� 0 popupobject popupObject!� o   � ����� 0 popupchoice popupChoice!� r   � �!�!�!� m   � ���
�� boovtrue!� o      ���� 0 mustpick mustPick��  ��  !� !���!� l  � �����  �  �  ��  !� !�!�!� =  � �!�!�!� o   � ��� 0 selectcommand selectCommand!� m   � �!�!� �!�!�  c o n t a i n s!� !�!�!� k   � �!�!� !�!�!� Z   � �!�!���!� H   � �!�!� E   � �!�!�!� n   � �!�!�!� 1   � ��
� 
valL!� o   � ��� 0 popupobject popupObject!� o   � ��� 0 popupchoice popupChoice!� r   � �!�!�!� m   � ��
� boovtrue!� o      �� 0 mustpick mustPick�  �  !� !��!� l  � �����  �  �  �  !� !�!�!� =  � �!�!�!� o   � ��� 0 selectcommand selectCommand!� m   � �!�!� �!�!�  s t a r t s W i t h!� !�!�!� k   � �!�!� !�!�!� Z   � �!�!���!� H   � �!�!� C   � �!�!�!� n   � �!�!�!� 1   � ��
� 
valL!� o   � ��� 0 popupobject popupObject!� o   � ��� 0 popupchoice popupChoice!� r   � �!�!�!� m   � ��
� boovtrue!� o      �� 0 mustpick mustPick�  �  !� !��!� l  � �����  �  �  �  !� !�!�!� =  � �!�!�!� o   � ��� 0 selectcommand selectCommand!� m   � �!�!� �!�!�  b e g i n s W i t h!� !�!�!� k   �!�!� !�!�!� Z   � �!�!���!� H   � �!�!� C   � �!�!�!� n   � �!�!�!� 1   � ��
� 
valL!� o   � ��� 0 popupobject popupObject!� o   � ��� 0 popupchoice popupChoice!� r   � �!�!�!� m   � ��
� boovtrue!� o      �� 0 mustpick mustPick�  �  !� !��!� l   ����  �  �  �  !� !�!�!� = 	!�!�!� o  �� 0 selectcommand selectCommand!� m  !�!� �!�!�  e n d s W i t h!� !��!� k   !�!� !�!�!� Z  !�!���!� H  !�!� D  !�!�!� n  !�!�!� 1  �
� 
valL!� o  �� 0 popupobject popupObject!� o  �� 0 popupchoice popupChoice!� r  !�!�!� m  �
� boovtrue!� o      �� 0 mustpick mustPick�  �  !� !��!� l ����  �  �  �  �  ��  ��  !} C = we can see the value without 'picking' the menu, so test it:   !~ �!�!� z   w e   c a n   s e e   t h e   v a l u e   w i t h o u t   ' p i c k i n g '   t h e   m e n u ,   s o   t e s t   i t :!h !�!�!� l %%����  �  �  !� !�!�!� Z  %�" "��"  o  %&�� 0 mustpick mustPick" Z  )�""��" > ),""" o  )*�� 0 popupchoice popupChoice" m  *+�
� 
null" k  /�"" """ I /4�"	�
� .prcsclicnull��� ��� uiel"	 o  /0�� 0 popupobject popupObject�  " "
""
 Z  5�"""�~" = 5:""" o  56�}�} 0 selectcommand selectCommand" m  69"" �""  i s" I =Y�|"�{
�| .prcsclicnull��� ��� uiel" l =U"�z�y" 6 =U""" n  =H""" 4 CH�x"
�x 
menI" m  FG�w�w " n  =C""" 4  >C�v"
�v 
menE" m  AB�u�u " o  =>�t�t 0 popupobject popupObject" = KT""" 1  LP�s
�s 
pnam" o  QS�r�r 0 popupchoice popupChoice�z  �y  �{  " "" " = \a"!"""! o  \]�q�q 0 selectcommand selectCommand"" m  ]`"#"# �"$"$  c o n t a i n s"  "%"&"% k  d�"'"' "(")"( I d��p"*�o
�p .prcsclicnull��� ��� uiel"* l d|"+�n�m"+ 6 d|","-", n  do"."/". 4 jo�l"0
�l 
menI"0 m  mn�k�k "/ n  dj"1"2"1 4  ej�j"3
�j 
menE"3 m  hi�i�i "2 o  de�h�h 0 popupobject popupObject"- E  r{"4"5"4 1  sw�g
�g 
pnam"5 o  xz�f�f 0 popupchoice popupChoice�n  �m  �o  ") "6�e"6 l ���d�c�b�d  �c  �b  �e  "& "7"8"7 = ��"9":"9 o  ���a�a 0 selectcommand selectCommand": m  ��";"; �"<"<  b e g i n s W i t h"8 "=">"= k  ��"?"? "@"A"@ I ���`"B�_
�` .prcsclicnull��� ��� uiel"B l ��"C�^�]"C 6 ��"D"E"D n  ��"F"G"F 4 ���\"H
�\ 
menI"H m  ���[�[ "G n  ��"I"J"I 4  ���Z"K
�Z 
menE"K m  ���Y�Y "J o  ���X�X 0 popupobject popupObject"E C  ��"L"M"L 1  ���W
�W 
pnam"M o  ���V�V 0 popupchoice popupChoice�^  �]  �_  "A "N�U"N l ���T�S�R�T  �S  �R  �U  "> "O"P"O = ��"Q"R"Q o  ���Q�Q 0 selectcommand selectCommand"R m  ��"S"S �"T"T  e n d s W i t h"P "U�P"U k  ��"V"V "W"X"W I ���O"Y�N
�O .prcsclicnull��� ��� uiel"Y l ��"Z�M�L"Z 6 ��"["\"[ n  ��"]"^"] 4 ���K"_
�K 
menI"_ m  ���J�J "^ n  ��"`"a"` 4  ���I"b
�I 
menE"b m  ���H�H "a o  ���G�G 0 popupobject popupObject"\ D  ��"c"d"c 1  ���F
�F 
pnam"d o  ���E�E 0 popupchoice popupChoice�M  �L  �N  "X "e�D"e l ���C�B�A�C  �B  �A  �D  �P  �~  " "f�@"f l ���?�>�=�?  �>  �=  �@  �  �  �  �  !� "g"h"g l ���<�;�:�<  �;  �:  "h "i"j"i L  ��"k"k m  ���9
�9 boovtrue"j "l�8"l l ���7�6�5�7  �6  �5  �8  !G R      �4"m"n
�4 .ascrerr ****      � ****"m o      �3�3 0 errmsg errMsg"n �2"o�1
�2 
errn"o o      �0�0 0 errnum errNum�1  !H R  ��/"p"q
�/ .ascrerr ****      � ****"p b  �"r"s"r b  �"t"u"t b  ��"v"w"v b  ��"x"y"x b  ��"z"{"z m  ��"|"| �"}"} N C o u l d n ' t   s e l e c t   m e n u   i t e m   w h o s e   v a l u e   _"{ o  ���.�. 0 selectcommand selectCommand"y m  ��"~"~ �""  _   '"w o  ���-�- 0 popupchoice popupChoice"u m  �"�"� �"�"�  '   i n   p o p u p   -  "s o  �,�, 0 errmsg errMsg"q �+"��*
�+ 
errn"� o  ���)�) 0 errnum errNum�*  !E�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  ��   � "�"�"� l     �(�'�&�(  �'  �&  "� "�"�"� l     �%�$�#�%  �$  �#  "� "�"�"� i   � �"�"�"� I      �""��!�"  0 fmgui_popupset fmGUI_PopupSet"� "�"�"� o      � �  0 popupobject popupObject"� "��"� o      �� 0 popupchoice popupChoice�  �!  "� k     ,"�"� "�"�"� l     �"�"��  "�   version 1.0   "� �"�"�    v e r s i o n   1 . 0"� "�"�"� l     ����  �  �  "� "��"� w     ,"�"�"� Q    ,"�"�"�"� k    "�"� "�"�"� I    �"��� :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand"� "��"� K    "�"� �"�"�� 0 popupobject popupObject"� o    �� 0 popupobject popupObject"� �"�"�� 0 popupchoice popupChoice"� o   	 
�� 0 popupchoice popupChoice"� �"��� 0 selectcommand selectCommand"� m    "�"� �"�"�  c o n t a i n s�  �  �  "� "�"�"� L    "�"� 1    �
� 
rslt"� "��"� l   ����  �  �  �  "� R      �
"�"�
�
 .ascrerr ****      � ****"� o      �	�	 0 errmsg errMsg"� �"��
� 
errn"� o      �� 0 errnum errNum�  "� R     ,�"�"�
� .ascrerr ****      � ****"� b   $ +"�"�"� b   $ )"�"�"� b   $ '"�"�"� m   $ %"�"� �"�"� " C o u l d n ' t   s e l e c t   '"� o   % &�� 0 popupchoice popupChoice"� m   ' ("�"� �"�"�  '   i n   p o p u p   -  "� o   ) *�� 0 errmsg errMsg"� �"��
� 
errn"� o   " #� �  0 errnum errNum�  "��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �  "� "�"�"� l     ��������  ��  ��  "� "�"�"� l     ��������  ��  ��  "� "�"�"� i   � �"�"�"� I      �������� 00 fmgui_selectallandcopy fmGUI_SelectAllAndCopy��  ��  "� k     �"�"� "�"�"� l     ��"�"���  "�   version 1.0   "� �"�"�    v e r s i o n   1 . 0"� "�"�"� l     ��������  ��  ��  "� "�"�"� I    ��"���
�� .JonspClpnull���     ****"� m     "�"� �"�"�  ��  "� "�"�"� r    	"�"�"� m    ��
�� boovfals"� o      ���� $0 clipboardchanged clipboardChanged"� "�"�"� l  
 
��������  ��  ��  "� "�"�"� O   
 �"�"�"� O    �"�"�"� k    �"�"� "�"�"� n   "�"�"� I    �������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��  "�  f    "� "�"�"� l   ��������  ��  ��  "� "�"�"� Q    L"�"�"�"� I   8��"���
�� .prcsclicnull��� ��� uiel"� l   4"�����"� 6   4"�"�"� n    +"�"�"� 4  ( +��"�
�� 
menI"� m   ) *���� "� n    ("�"�"� 4   % (��"�
�� 
menE"� m   & '���� "� n    %"�"�"� 4   " %��"�
�� 
mbri"� m   # $"�"� �"�"�  E d i t"� 4    "��"�
�� 
mbar"� m     !���� "� =  , 3"�"�"� 1   - /��
�� 
pnam"� m   0 2"�"� �"�"�  S e l e c t   A l l��  ��  ��  "� R      ��"�# 
�� .ascrerr ****      � ****"� o      ���� 0 errmsg errMsg#  ��#��
�� 
errn# o      ���� 0 errnum errNum��  "� R   @ L��##
�� .ascrerr ****      � ****# b   F K### m   F I## �## R U n a b l e   t o   c l i c k   ' S e l e c t   A l l '   m e n u   i t e m   -  # o   I J���� 0 errmsg errMsg# ��#��
�� 
errn# o   D E���� 0 errnum errNum��  "� #	#
#	 l  M M��������  ��  ��  #
 ### Q   M y#### I  P e��#��
�� .prcsclicnull��� ��� uiel# l  P a#����# n   P a### 4   \ a��#
�� 
menI# m   ] `## �##  C o p y# n   P \### 4   Y \��#
�� 
menE# m   Z [���� # n   P Y### 4   T Y��#
�� 
mbri# m   U X## �##  E d i t# 4   P T��#
�� 
mbar# m   R S���� ��  ��  ��  # R      ��# #!
�� .ascrerr ****      � ****#  o      ���� 0 errmsg errMsg#! ��#"�
�� 
errn#" o      �� 0 errnum errNum�  # R   m y�###$
� .ascrerr ****      � ****## b   s x#%#&#% m   s v#'#' �#(#( F U n a b l e   t o   c l i c k   ' C o p y '   m e n u   i t e m   -  #& o   v w�� 0 errmsg errMsg#$ �#)�
� 
errn#) o   q r�� 0 errnum errNum�  # #*#+#* l  z z����  �  �  #+ #,#-#, l  z z����  �  �  #- #.#/#. U   z �#0#1#0 k   � �#2#2 #3#4#3 Q   � �#5#6#7#5 k   � �#8#8 #9#:#9 l  � ��#;#<�  #; � � We set the clipboard to an empty string. Once utf8 is no longer in it (or isn't empty), we must have picked up the objects copied above.   #< �#=#=   W e   s e t   t h e   c l i p b o a r d   t o   a n   e m p t y   s t r i n g .   O n c e   u t f 8   i s   n o   l o n g e r   i n   i t   ( o r   i s n ' t   e m p t y ) ,   w e   m u s t   h a v e   p i c k e d   u p   t h e   o b j e c t s   c o p i e d   a b o v e .#: #>#?#> e   � �#@#@ I  � ���#A
� .JonsgClp****    ��� null�  #A �#B�
� 
rtyp#B m   � ��
� 
utf8�  #? #C�#C Z   � �#D#E��#D ?  � �#F#G#F n   � �#H#I#H 1   � ��
� 
leng#I 1   � ��
� 
rslt#G m   � ���  #E k   � �#J#J #K#L#K r   � �#M#N#M m   � ��
� boovtrue#N o      �� $0 clipboardchanged clipboardChanged#L #O�#O  S   � ��  �  �  �  #6 R      ���
� .ascrerr ****      � ****�  �  #7 k   � �#P#P #Q#R#Q r   � �#S#T#S m   � ��
� boovtrue#T o      �� $0 clipboardchanged clipboardChanged#R #U�#U  S   � ��  #4 #V�#V I  � ��#W�
� .sysodelanull��� ��� nmbr#W m   � ��� �  �  #1 m   } ��� 
#/ #X�#X l  � �����  �  �  �  "� 4    �#Y
� 
pcap#Y m    #Z#Z �#[#[ , F i l e M a k e r   P r o   A d v a n c e d"� m   
 #\#\�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  "� #]#^#] l  � �����  �  �  #^ #_#`#_ L   � �#a#a o   � ��� $0 clipboardchanged clipboardChanged#` #b�#b l  � �����  �  �  �  "� #c#d#c l     ����  �  �  #d #e#f#e l     ����  �  �  #f #g#h#g i   � �#i#j#i I      �#k�� (0 fmgui_textfieldset fmGUI_TextFieldSet#k #l#m#l o      �� "0 textfieldobject textfieldObject#m #n�#n o      ��  0 textfieldvalue textfieldValue�  �  #j k     @#o#o #p#q#p l     �#r#s�  #r   version 1.0   #s �#t#t    v e r s i o n   1 . 0#q #u#v#u l     ��~�}�  �~  �}  #v #w�|#w w     @#x#y#x Q    @#z#{#|#z k    ,#}#} #~##~ Z    '#�#��{�z#� >   #�#�#� o    �y�y  0 textfieldvalue textfieldValue#� m    �x
�x 
null#� Z    ##�#��w#�#� >   #�#�#� n    #�#�#� 1    �v
�v 
valL#� o    �u�u "0 textfieldobject textfieldObject#� l   #��t�s#� o    �r�r  0 textfieldvalue textfieldValue�t  �s  #� k    #�#� #�#�#� r    #�#�#� m    �q
�q boovtrue#� n      #�#�#� 1    �p
�p 
focu#� o    �o�o "0 textfieldobject textfieldObject#� #��n#� r    #�#�#� o    �m�m  0 textfieldvalue textfieldValue#� n      #�#�#� 1    �l
�l 
valL#� o    �k�k "0 textfieldobject textfieldObject�n  �w  #� l  ! ##�#�#�#� L   ! ##�#� m   ! "�j
�j boovfals#�   did not need to change.   #� �#�#� 0   d i d   n o t   n e e d   t o   c h a n g e .�{  �z  # #�#�#� L   ( *#�#� m   ( )�i
�i boovtrue#� #��h#� l  + +�g�f�e�g  �f  �e  �h  #{ R      �d#�#�
�d .ascrerr ****      � ****#� o      �c�c 0 errmsg errMsg#� �b#��a
�b 
errn#� o      �`�` 0 errnum errNum�a  #| R   4 @�_#�#�
�_ .ascrerr ****      � ****#� b   8 ?#�#�#� b   8 =#�#�#� b   8 ;#�#�#� m   8 9#�#� �#�#� " C o u l d n ' t   s e l e c t   '#� o   9 :�^�^  0 textfieldvalue textfieldValue#� m   ; <#�#� �#�#� & '   f o r   t e x t   f i e l d   -  #� o   = >�]�] 0 errmsg errMsg#� �\#��[
�\ 
errn#� o   6 7�Z�Z 0 errnum errNum�[  #y�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �|  #h #�#�#� l     �Y�X�W�Y  �X  �W  #� #�#�#� l     �V�U�T�V  �U  �T  #� #�#�#� i   � �#�#�#� I      �S�R�Q�S (0 fmgui_appfrontmost fmGUI_AppFrontMost�R  �Q  #� k     E#�#� #�#�#� l     �P#�#��P  #�   version 1.1   #� �#�#�    v e r s i o n   1 . 1#� #�#�#� l     �O�N�M�O  �N  �M  #� #��L#� O     E#�#�#� O    D#�#�#� Z    C#�#��K�J#� >   #�#�#� 1    �I
�I 
pisf#� m    �H
�H boovtrue#� k    ?#�#� #�#�#� r    #�#�#� m    �G
�G boovtrue#� 1    �F
�F 
pisf#� #�#�#� I   �E#��D
�E .sysodelanull��� ��� nmbr#� m    �C�C �D  #� #�#�#� l   �B�A�@�B  �A  �@  #� #�#�#� l   �?#�#��?  #� ) #close FMEmpower window if it's open   #� �#�#� F c l o s e   F M E m p o w e r   w i n d o w   i f   i t ' s   o p e n#� #��>#� Z    ?#�#��=�<#� =   '#�#�#� n    %#�#�#� 1   # %�;
�; 
pnam#� 4    #�:#�
�: 
cwin#� m   ! "�9�9 #� m   % &#�#� �#�#� $ 2 e m p o w e r F M   T o o l b o x#� k   * ;#�#� #�#�#� I  * 5�8#��7
�8 .prcsclicnull��� ��� uiel#� n   * 1#�#�#� 4   . 1�6#�
�6 
butT#� m   / 0�5�5 #� 4   * .�4#�
�4 
cwin#� m   , -�3�3 �7  #� #��2#� I  6 ;�1#��0
�1 .sysodelanull��� ��� nmbr#� m   6 7�/�/ �0  �2  �=  �<  �>  �K  �J  #� 4    �.#�
�. 
pcap#� m    #�#� �#�#� , F i l e M a k e r   P r o   A d v a n c e d#� m     #�#��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �L  #� #�#�#� l     �-�,�+�-  �,  �+  #� #�#�#� l     �*�)�(�*  �)  �(  #� #�#�#� i   � �#�#�#� I      �'�&�%�' 00 fmgui_dataviewer_close fmGUI_DataViewer_Close�&  �%  #� k     3#�#� #�#�#� l     �$#�#��$  #�   version 1.0   #� �#�#�    v e r s i o n   1 . 0#� #�$ #� l     �#�"�!�#  �"  �!  $  $� $ O     3$$$ O    2$$$ k    1$$ $$$ n   $	$
$	 I    ���� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �  $
  f    $ $�$ Q    1$$�$ I   (�$�
� .prcsclicnull��� ��� uiel$ n    $$$$ 4   ! $�$
� 
butT$ m   " #�� $ l   !$��$ 6   !$$$ 4   �$
� 
cwin$ m    �� $ =    $$$ 1    �
� 
pnam$ m    $$ �$$  D a t a   V i e w e r�  �  �  $ R      ���
� .ascrerr ****      � ****�  �  �  �  $ 4    �$
� 
pcap$ m    $$ �$$ , F i l e M a k e r   P r o   A d v a n c e d$ m     $$�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �   #� $$$ l     ����  �  �  $ $ $!$  l     �
�	��
  �	  �  $! $"$#$" i   � �$$$%$$ I      ���� .0 fmgui_inspector_close fmGUI_Inspector_Close�  �  $% k     r$&$& $'$($' l     �$)$*�  $)   version 1.0   $* �$+$+    v e r s i o n   1 . 0$( $,$-$, l     ����  �  �  $- $.� $. O     r$/$0$/ O    q$1$2$1 k    p$3$3 $4$5$4 n   $6$7$6 I    �������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��  $7  f    $5 $8$9$8 l   ��$:$;��  $: I C try the click twice in case the first only brings window to front.   $; �$<$< �   t r y   t h e   c l i c k   t w i c e   i n   c a s e   t h e   f i r s t   o n l y   b r i n g s   w i n d o w   t o   f r o n t .$9 $=$>$= Q    .$?$@��$? r    %$A$B$A m    ���� $B n      $C$D$C 1   " $��
�� 
pidx$D l   "$E����$E 6   "$F$G$F 4   ��$H
�� 
cwin$H m    ���� $G =   !$I$J$I 1    ��
�� 
pnam$J m     $K$K �$L$L  I n s p e c t o r��  ��  $@ R      ������
�� .ascrerr ****      � ****��  ��  ��  $> $M$N$M Q   / O$O$P��$O I  2 F��$Q��
�� .prcsclicnull��� ��� uiel$Q n   2 B$R$S$R 4   ? B��$T
�� 
butT$T m   @ A���� $S l  2 ?$U����$U 6  2 ?$V$W$V 4  2 6��$X
�� 
cwin$X m   4 5���� $W =  7 >$Y$Z$Y 1   8 :��
�� 
pnam$Z m   ; =$[$[ �$\$\  I n s p e c t o r��  ��  ��  $P R      ������
�� .ascrerr ****      � ****��  ��  ��  $N $]��$] Q   P p$^$_��$^ I  S g��$`��
�� .prcsclicnull��� ��� uiel$` n   S c$a$b$a 4   ` c��$c
�� 
butT$c m   a b���� $b l  S `$d����$d 6  S `$e$f$e 4  S W��$g
�� 
cwin$g m   U V���� $f =  X _$h$i$h 1   Y [��
�� 
pnam$i m   \ ^$j$j �$k$k  I n s p e c t o r��  ��  ��  $_ R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  $2 4    ��$l
�� 
pcap$l m    $m$m �$n$n , F i l e M a k e r   P r o   A d v a n c e d$0 m     $o$o�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �   $# $p$q$p l     ��������  ��  ��  $q $r$s$r l     ��������  ��  ��  $s $t$u$t i   � �$v$w$v I      �������� 00 fmgui_inspector_ensure fmGUI_Inspector_Ensure��  ��  $w k     h$x$x $y$z$y l     ��${$|��  ${   version 1.1   $| �$}$}    v e r s i o n   1 . 1$z $~$$~ l     ��������  ��  ��  $ $�$�$� Q     f$�$�$�$� k    R$�$� $�$�$� I    �������� 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout��  ��  $� $���$� O   	 R$�$�$� O    Q$�$�$� k    P$�$� $�$�$� l   ��������  ��  ��  $� $�$�$� n   $�$�$� I    ������ (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �  $�  f    $� $�$�$� l   ����  �  �  $� $�$�$� Z    M$�$���$� H    ,$�$� l   +$���$� I   +�$��
� .coredoexnull���     ****$� l   '$���$� 6   '$�$�$� 4   �$�
� 
cwin$� m    �� $� E    &$�$�$� 1     "�
� 
pnam$� m   # %$�$� �$�$�  I n s p e c t o r�  �  �  �  �  $� I  / I�$��
� .prcsclicnull��� ��� uiel$� l  / E$���$� 6  / E$�$�$� n   / <$�$�$� 4  9 <�$�
� 
menI$� m   : ;�� $� n   / 9$�$�$� 4   6 9�$�
� 
menE$� m   7 8�� $� n   / 6$�$�$� 4   3 6�$�
� 
mbri$� m   4 5$�$� �$�$�  V i e w$� 4   / 3�$�
� 
mbar$� m   1 2�� $� =  = D$�$�$� 1   > @�
� 
pnam$� m   A C$�$� �$�$�  I n s p e c t o r�  �  �  �  �  $� $��$� L   N P$�$� m   N O�
� boovtrue�  $� 4    �$�
� 
pcap$� m    $�$� �$�$� , F i l e M a k e r   P r o   A d v a n c e d$� m   	 
$�$��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  ��  $� R      �$�$�
� .ascrerr ****      � ****$� o      �� 0 errmsg errMsg$� �$��
� 
errn$� o      �� 0 errnum errNum�  $� R   Z f�$�$�
� .ascrerr ****      � ****$� b   ` e$�$�$� m   ` c$�$� �$�$� 4 C o u l d n ' t   o p e n   I n s p e c t o r   -  $� o   c d�� 0 errmsg errMsg$� �$��
� 
errn$� o   ^ _�� 0 errnum errNum�  $� $��$� l  g g����  �  �  �  $u $�$�$� l     ����  �  �  $� $�$�$� l     ����  �  �  $� $�$�$� i   � �$�$�$� I      ���� 20 fmgui_modeensure_browse fmGUI_ModeEnsure_Browse�  �  $� k     $�$� $�$�$� l     �$�$��  $�   version 1.0   $� �$�$�    v e r s i o n   1 . 0$� $�$�$� l     ����  �  �  $� $�$�$� Q     $�$�$�$� k    $�$� $�$�$� I    	�$��� $0 fmgui_modeselect fmGUI_ModeSelect$� $��$� m    $�$� �$�$�  B r o w s e�  �  $� $��$� l  
 
����  �  �  �  $� R      �~$�$�
�~ .ascrerr ****      � ****$� o      �}�} 0 errmsg errMsg$� �|$��{
�| 
errn$� o      �z�z 0 errnum errNum�{  $� R    �y$�$�
�y .ascrerr ****      � ****$� b    $�$�$� m    $�$� �$�$� B C o u l d n ' t   e n s u r e   i n   B r o w s e   M o d e   -  $� o    �x�x 0 errmsg errMsg$� �w$��v
�w 
errn$� o    �u�u 0 errnum errNum�v  $� $�$�$� l   �t�s�r�t  �s  �r  $� $��q$� l   �p�o�n�p  �o  �n  �q  $� $�$�$� l     �m�l�k�m  �l  �k  $� $�$�$� l     �j�i�h�j  �i  �h  $� $�$�$� i   � �$�$�$� I      �g�f�e�g .0 fmgui_modeensure_find fmGUI_ModeEnsure_Find�f  �e  $� k     $�$� $�$�$� l     �d$�% �d  $�   version 1.0   %  �%%    v e r s i o n   1 . 0$� %%% l     �c�b�a�c  �b  �a  % %%% Q     %%%% k    %	%	 %
%%
 I    	�`%�_�` $0 fmgui_modeselect fmGUI_ModeSelect% %�^% m    %% �%%  F i n d�^  �_  % %�]% l  
 
�\�[�Z�\  �[  �Z  �]  % R      �Y%%
�Y .ascrerr ****      � ****% o      �X�X 0 errmsg errMsg% �W%�V
�W 
errn% o      �U�U 0 errnum errNum�V  % R    �T%%
�T .ascrerr ****      � ****% b    %%% m    %% �%% B C o u l d n ' t   e n s u r e   i n   B r o w s e   M o d e   -  % o    �S�S 0 errmsg errMsg% �R%�Q
�R 
errn% o    �P�P 0 errnum errNum�Q  % %%% l   �O�N�M�O  �N  �M  % %�L% l   �K�J�I�K  �J  �I  �L  $� %%% l     �H�G�F�H  �G  �F  % % %!%  l     �E�D�C�E  �D  �C  %! %"%#%" i   � �%$%%%$ I      �B�A�@�B 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout�A  �@  %% k     %&%& %'%(%' l     �?%)%*�?  %)   version 1.0   %* �%+%+    v e r s i o n   1 . 0%( %,%-%, l     �>�=�<�>  �=  �<  %- %.%/%. Q     %0%1%2%0 k    %3%3 %4%5%4 I    	�;%6�:�; $0 fmgui_modeselect fmGUI_ModeSelect%6 %7�9%7 m    %8%8 �%9%9  L a y o u t�9  �:  %5 %:�8%: l  
 
�7�6�5�7  �6  �5  �8  %1 R      �4%;%<
�4 .ascrerr ****      � ****%; o      �3�3 0 errmsg errMsg%< �2%=�1
�2 
errn%= o      �0�0 0 errnum errNum�1  %2 R    �/%>%?
�/ .ascrerr ****      � ****%> b    %@%A%@ m    %B%B �%C%C B C o u l d n ' t   e n s u r e   i n   B r o w s e   M o d e   -  %A o    �.�. 0 errmsg errMsg%? �-%D�,
�- 
errn%D o    �+�+ 0 errnum errNum�,  %/ %E�*%E l   �)�(�'�)  �(  �'  �*  %# %F%G%F l     �&�%�$�&  �%  �$  %G %H%I%H l     �#�"�!�#  �"  �!  %I %J%K%J i   � �%L%M%L I      � %N��  $0 fmgui_modeselect fmGUI_ModeSelect%N %O�%O o      �� 0 modetoselect modeToSelect�  �  %M k     �%P%P %Q%R%Q l     �%S%T�  %S   version 1.0   %T �%U%U    v e r s i o n   1 . 0%R %V%W%V l     ����  �  �  %W %X�%X Q     �%Y%Z%[%Y O    r%\%]%\ O    q%^%_%^ k    p%`%` %a%b%a n   %c%d%c I    ���� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �  %d  f    %b %e%f%e n   %g%h%g I    ���� .0 fmgui_inspector_close fmGUI_Inspector_Close�  �  %h  f    %f %i%j%i l   ����  �  �  %j %k%l%k l   �%m%n�  %m @ : Need to click in upper-left corner of area before pasting   %n �%o%o t   N e e d   t o   c l i c k   i n   u p p e r - l e f t   c o r n e r   o f   a r e a   b e f o r e   p a s t i n g%l %p%q%p r     %r%s%r 4    �%t
� 
cwin%t m    �� %s o      �� 0 
modewindow 
modeWindow%q %u%v%u r   ! 0%w%x%w 6  ! .%y%z%y n   ! %%{%|%{ 4  " %�
%}
�
 
sgrp%} m   # $�	�	 %| o   ! "�� 0 
modewindow 
modeWindow%z D   & -%~%%~ 1   ' )�
� 
desc% m   * ,%�%� �%�%� " M o d e   C o n t e n t   A r e a%x o      �� "0 modecontentarea modeContentArea%v %�%�%� r   1 6%�%�%� n   1 4%�%�%� 1   2 4�
� 
desc%� o   1 2�� "0 modecontentarea modeContentArea%� o      �� *0 modecontentareadesc modeContentAreaDesc%� %�%�%� r   7 =%�%�%� n   7 ;%�%�%� 4  8 ;�%�
� 
cwor%� m   9 :�� %� o   7 8� �  *0 modecontentareadesc modeContentAreaDesc%� o      ���� 0 currentmode currentMode%� %�%�%� l  > >��������  ��  ��  %� %�%�%� Z   > k%�%�����%� >  > A%�%�%� o   > ?���� 0 currentmode currentMode%� o   ? @���� 0 modetoselect modeToSelect%� k   D g%�%� %�%�%� I  D I��%���
�� .sysodelanull��� ��� nmbr%� m   D E%�%� ?�      ��  %� %�%�%� r   J O%�%�%� b   J M%�%�%� o   J K���� 0 modetoselect modeToSelect%� m   K L%�%� �%�%� 
   M o d e%� o      ���� 0 menuitemname menuItemName%� %���%� I  P g��%���
�� .prcsclicnull��� ��� uiel%� l  P c%�����%� n   P c%�%�%� 4   ^ c��%�
�� 
menI%� o   a b���� 0 menuitemname menuItemName%� n   P ^%�%�%� 4   Y ^��%�
�� 
menE%� m   \ ]���� %� n   P Y%�%�%� 4   T Y��%�
�� 
mbri%� m   U X%�%� �%�%�  V i e w%� 4   P T��%�
�� 
mbar%� m   R S���� ��  ��  ��  ��  ��  ��  %� %�%�%� l  l l��������  ��  ��  %� %�%�%� L   l n%�%� m   l m��
�� boovtrue%� %���%� l  o o��������  ��  ��  ��  %_ 4    ��%�
�� 
pcap%� m   	 
%�%� �%�%� , F i l e M a k e r   P r o   A d v a n c e d%] m    %�%��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  %Z R      ��%�%�
�� .ascrerr ****      � ****%� o      ���� 0 errmsg errMsg%� ��%���
�� 
errn%� o      ���� 0 errnum errNum��  %[ R   z ���%�%�
�� .ascrerr ****      � ****%� b   � �%�%�%� b   � �%�%�%� b   � �%�%�%� m   � �%�%� �%�%� 2 C o u l d n ' t   s w i t c h   t o   m o d e   '%� o   � ����� 0 modetoselect modeToSelect%� m   � �%�%� �%�%�  '   -  %� o   � ����� 0 errmsg errMsg%� ��%���
�� 
errn%� o   ~ ���� 0 errnum errNum��  �  %K %�%�%� l     ��������  ��  ��  %� %�%�%� l     ��������  ��  ��  %� %�%�%� i   � �%�%�%� I      ��%����� (0 fmgui_window_close fmGUI_Window_Close%� %���%� o      ����  0 somewindowname someWindowName��  ��  %� k     %�%� %�%�%� l     ��%�%���  %�   version 1.1   %� �%�%�    v e r s i o n   1 . 1%� %�%�%� l     ��������  ��  ��  %� %�%�%� O     %�%�%� k    %�%� %�%�%� l   ��������  ��  ��  %� %�%�%� I   ��%���
�� .coreclosnull���    obj %� 4    ��%�
�� 
cwin%� o   
 ��  0 somewindowname someWindowName��  %� %��%� l   ����  �  �  �  %� 5     �%��
� 
capp%� m    %�%� �%�%� > c o m . f i l e m a k e r . c l i e n t . a d v a n c e d 1 2
� kfrmID  %� %�%�%� l   ����  �  �  %� %�%�%� L    %�%� m    �
� boovtrue%� %��%� l   ����  �  �  �  %� %�%�%� l     ����  �  �  %� %�%�%� l     ����  �  �  %� %�%�%� i   � �%�%�%� I      �%��� "0 windowwaituntil windowWaitUntil%� %��%� o      �� 	0 prefs  �  �  %� k    C%�%� %�& %� l     �&&�  &   version 1.2   & �&&    v e r s i o n   1 . 2&  &&& l     ����  �  �  & &&& r     &&	& K     &
&
 �&&� 0 
windowname 
windowName& m    �
� 
null& �&&�  0 windownametest windowNameTest& m    && �&&  c o n t a i n s& �&&� 0 whichwindow whichWindow& m    && �&&  a n y& �&&� .0 waitcycledelayseconds waitCycleDelaySeconds& m    && ?�      & �&�� 0 waitcyclemax waitCycleMax& m   	 
�� �  &	 o      �� 0 defaultprefs defaultPrefs& &&& r    &&& b    &&& o    �� 	0 prefs  & o    �� 0 defaultprefs defaultPrefs& o      �� 	0 prefs  & && & l   ����  �  �  &  &!&"&! r    &#&$&# n    &%&&&% o    �� 0 
windowname 
windowName&& o    �� 	0 prefs  &$ o      �� 0 
windowname 
windowName&" &'&(&' r     &)&*&) n    &+&,&+ o    ��  0 windownametest windowNameTest&, o    �� 	0 prefs  &* o      ��  0 windownametest windowNameTest&( &-&.&- r   ! &&/&0&/ n   ! $&1&2&1 o   " $�� 0 whichwindow whichWindow&2 o   ! "�� 	0 prefs  &0 o      �� 0 whichwindow whichWindow&. &3&4&3 l  ' '����  �  �  &4 &5&6&5 r   ' *&7&8&7 m   ' (�
� boovfals&8 o      �� 0 checkresult checkResult&6 &9&:&9 l  + +����  �  �  &: &;&<&; U   +>&=&>&= k   59&?&? &@&A&@ O   5 �&B&C&B Z   9 &D&E&F&G&D =  9 <&H&I&H o   9 :�� 0 whichwindow whichWindow&I m   : ;&J&J �&K&K  a n y&E r   ? K&L&M&L n   ? I&N&O&N 1   E I�
� 
pnam&O n   ? E&P&Q&P 2   C E�
� 
cwin&Q 4   ? C�&R
� 
pcap&R m   A B&S&S �&T&T , F i l e M a k e r   P r o   A d v a n c e d&M o      �~�~ "0 windownamecheck windowNameCheck&F &U&V&U =  N S&W&X&W o   N O�}�} 0 whichwindow whichWindow&X m   O R&Y&Y �&Z&Z 
 f r o n t&V &[�|&[ r   V e&\&]&\ n   V c&^&_&^ 1   _ c�{
�{ 
pnam&_ n   V _&`&a&` 4   \ _�z&b
�z 
cwin&b m   ] ^�y�y &a 4   V \�x&c
�x 
pcap&c m   X [&d&d �&e&e , F i l e M a k e r   P r o   A d v a n c e d&] o      �w�w "0 windownamecheck windowNameCheck�|  &G l  h &f&g&h&f k   h &i&i &j&k&j r   h o&l&m&l c   h m&n&o&n o   h i�v�v 0 whichwindow whichWindow&o m   i l�u
�u 
nmbr&m o      �t�t 0 windowindex windowIndex&k &p�s&p r   p &q&r&q n   p }&s&t&s 1   y }�r
�r 
pnam&t n   p y&u&v&u 4   v y�q&w
�q 
cwin&w o   w x�p�p 0 windowindex windowIndex&v 4   p v�o&x
�o 
pcap&x m   r u&y&y �&z&z , F i l e M a k e r   P r o   A d v a n c e d&r o      �n�n "0 windownamecheck windowNameCheck�s  &g + % whichWindow  is window index number:   &h �&{&{ J   w h i c h W i n d o w     i s   w i n d o w   i n d e x   n u m b e r :&C m   5 6&|&|�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  &A &}&~&} l  � ��m�l�k�m  �l  �k  &~ &&�& l  � ��j�i�h�j  �i  �h  &� &�&�&� Z   �%&�&�&��g&� =  � �&�&�&� o   � ��f�f  0 windownametest windowNameTest&� m   � �&�&� �&�&�  c o n t a i n s&� k   � �&�&� &�&�&� r   � �&�&�&� l  � �&��e�d&� E   � �&�&�&� o   � ��c�c "0 windownamecheck windowNameCheck&� o   � ��b�b 0 
windowname 
windowName�e  �d  &� o      �a�a 0 checkresult checkResult&� &��`&� l  � ��_�^�]�_  �^  �]  �`  &� &�&�&� =  � �&�&�&� o   � ��\�\  0 windownametest windowNameTest&� m   � �&�&� �&�&�   d o e s   n o t   c o n t a i n&� &�&�&� k   � �&�&� &�&�&� r   � �&�&�&� l  � �&��[�Z&� H   � �&�&� E   � �&�&�&� o   � ��Y�Y "0 windownamecheck windowNameCheck&� o   � ��X�X 0 
windowname 
windowName�[  �Z  &� o      �W�W 0 checkresult checkResult&� &��V&� l  � ��U�T�S�U  �T  �S  �V  &� &�&�&� =  � �&�&�&� o   � ��R�R  0 windownametest windowNameTest&� m   � �&�&� �&�&�  e q u a l s&� &�&�&� k   � �&�&� &�&�&� r   � �&�&�&� l  � �&��Q�P&� =  � �&�&�&� o   � ��O�O "0 windownamecheck windowNameCheck&� o   � ��N�N 0 
windowname 
windowName�Q  �P  &� o      �M�M 0 checkresult checkResult&� &��L&� l  � ��K�J�I�K  �J  �I  �L  &� &�&�&� =  � �&�&�&� o   � ��H�H  0 windownametest windowNameTest&� m   � �&�&� �&�&�  i s&� &�&�&� k   � �&�&� &�&�&� r   � �&�&�&� l  � �&��G�F&� =  � �&�&�&� o   � ��E�E "0 windownamecheck windowNameCheck&� o   � ��D�D 0 
windowname 
windowName�G  �F  &� o      �C�C 0 checkresult checkResult&� &��B&� l  � ��A�@�?�A  �@  �?  �B  &� &�&�&� =  � �&�&�&� o   � ��>�>  0 windownametest windowNameTest&� m   � �&�&� �&�&�  s t a r t s   w i t h&� &�&�&� k   � �&�&� &�&�&� r   � �&�&�&� l  � �&��=�<&� C   � �&�&�&� o   � ��;�; "0 windownamecheck windowNameCheck&� o   � ��:�: 0 
windowname 
windowName�=  �<  &� o      �9�9 0 checkresult checkResult&� &��8&� l  � ��7�6�5�7  �6  �5  �8  &� &�&�&� =  � �&�&�&� o   � ��4�4  0 windownametest windowNameTest&� m   � �&�&� �&�&� & d o e s   n o t   s t a r t   w i t h&� &�&�&� k   � �&�&� &�&�&� r   � �&�&�&� l  � �&��3�2&� H   � �&�&� C   � �&�&�&� o   � ��1�1 "0 windownamecheck windowNameCheck&� o   � ��0�0 0 
windowname 
windowName�3  �2  &� o      �/�/ 0 checkresult checkResult&� &��.&� l  � ��-�,�+�-  �,  �+  �.  &� &�&�&� =  � �&�&�&� o   � ��*�*  0 windownametest windowNameTest&� m   � �&�&� �&�&�  e n d s   w i t h&� &�&�&� k   � �&�&� &�&�&� r   � �&�&�&� l  � �&��)�(&� D   � �&�&�&� o   � ��'�' "0 windownamecheck windowNameCheck&� o   � ��&�& 0 
windowname 
windowName�)  �(  &� o      �%�% 0 checkresult checkResult&� &��$&� l  � ��#�"�!�#  �"  �!  �$  &� &�&�&� = &�&�&� o  � �   0 windownametest windowNameTest&� m  &�&� �' '  " d o e s   n o t   e n d   w i t h&� ''' r  	''' l 	'��' H  	'' D  	''' o  	
�� "0 windownamecheck windowNameCheck' o  
�� 0 
windowname 
windowName�  �  ' o      �� 0 checkresult checkResult' '	'
'	 = ''' o  ��  0 windownametest windowNameTest' m  '' �''  i s   n o t'
 '�' k  !'' ''' r  ''' l '��' > ''' o  �� "0 windownamecheck windowNameCheck' o  �� 0 
windowname 
windowName�  �  ' o      �� 0 checkresult checkResult' '�' l   ����  �  �  �  �  �g  &� ''' l &&����  �  �  ' ''' Z &/''��' o  &'�
�
 0 checkresult checkResult'  S  *+�  �  ' '' ' l 00�	���	  �  �  '  '!'"'! I 07�'#�
� .sysodelanull��� ��� nmbr'# n  03'$'%'$ o  13�� .0 waitcycledelayseconds waitCycleDelaySeconds'% o  01�� 	0 prefs  �  '" '&'''& l 88��� �  �  �   '' '(��'( l 88��������  ��  ��  ��  &> n   . 2')'*') o   / 1���� 0 waitcyclemax waitCycleMax'* o   . /���� 	0 prefs  &< '+','+ l ??��������  ��  ��  ', '-'.'- L  ?A'/'/ o  ?@���� 0 checkresult checkResult'. '0��'0 l BB��������  ��  ��  ��  %� '1'2'1 l     ��������  ��  ��  '2 '3'4'3 l     ��������  ��  ��  '4 '5'6'5 i   � �'7'8'7 I      ��'9���� 20 windowwaituntil_frontis windowWaitUntil_FrontIS'9 ':��': o      ���� 	0 prefs  ��  ��  '8 k     ';'; '<'='< l     ��'>'?��  '>   version 1.0   '? �'@'@    v e r s i o n   1 . 0'= 'A'B'A l     ��������  ��  ��  'B 'C'D'C r     'E'F'E K     'G'G ��'H'I�� 0 
windowname 
windowName'H m    ��
�� 
null'I ��'J'K��  0 windownametest windowNameTest'J m    'L'L �'M'M  i s'K ��'N'O�� 0 whichwindow whichWindow'N m    'P'P �'Q'Q 
 f r o n t'O ��'R'S�� .0 waitcycledelayseconds waitCycleDelaySeconds'R m    'T'T ?�������'S ��'U���� 0 waitcyclemax waitCycleMax'U m   	 
���� d��  'F o      ���� 0 defaultprefs defaultPrefs'D 'V'W'V r    'X'Y'X b    'Z'['Z o    ���� 	0 prefs  '[ o    ���� 0 defaultprefs defaultPrefs'Y o      ���� 	0 prefs  'W '\']'\ l   ��������  ��  ��  '] '^'_'^ L    '`'` I    ��'a���� "0 windowwaituntil windowWaitUntil'a 'b��'b o    ���� 	0 prefs  ��  ��  '_ 'c'd'c l   ��������  ��  ��  'd 'e��'e l   ��������  ��  ��  ��  '6 'f'g'f l     ��������  ��  ��  'g 'h'i'h l     ��������  ��  ��  'i 'j'k'j i   � �'l'm'l I      ��'n���� "0 indexoflistitem indexOfListItem'n 'o'p'o o      ���� 0 somelist someList'p 'q��'q o      �� 0 somelistitem someListItem��  ��  'm k     8'r'r 's't's l     �'u'v�  'u   version 1.0   'v �'w'w    v e r s i o n   1 . 0't 'x'y'x l     ����  �  �  'y 'z'{'z Z    '|'}��'| H     '~'~ E     ''�' o     �� 0 somelist someList'� o    �� 0 somelistitem someListItem'} L    	'�'� m    �����  �  '{ '�'�'� l   ����  �  �  '� '�'�'� Y    6'��'�'��'� k    1'�'� '�'�'� r    "'�'�'� n     '�'�'� 4     �'�
� 
cobj'� o    �� 0 i  '� o    �� 0 somelist someList'� o      �� 0 onelistitem oneListItem'� '�'�'� l  # #����  �  �  '� '�'�'� Z  # /'�'���'� =  # &'�'�'� o   # $�� 0 onelistitem oneListItem'� o   $ %�� 0 somelistitem someListItem'� L   ) +'�'� o   ) *�� 0 i  �  �  '� '��'� l  0 0����  �  �  �  � 0 i  '� m    �� '� I   �'��
� .corecnte****       ****'� o    �� 0 somelist someList�  �  '� '��'� l  7 7����  �  �  �  'k '�'�'� l     ����  �  �  '� '�'�'� l     ����  �  �  '� '�'�'� i   � �'�'�'� I      �'��� 0 listcontains listContains'� '�'�'� o      �� 0 somelist someList'� '��'� o      �� "0 somecomplexitem someComplexItem�  �  '� k     0'�'� '�'�'� l     �'�'��  '�   version 1.0   '� �'�'�    v e r s i o n   1 . 0'� '�'�'� l     ����  �  �  '� '�'�'� X     +'��'�'� k    &'�'� '�'�'� r    '�'�'� n    '�'�'� 1    �
� 
pcnt'� o    �� 0 oneitem oneItem'� o      �� 0 oneitem oneItem'� '�'�'� Z    $'�'���'� =   '�'�'� o    �� 0 oneitem oneItem'� o    �� "0 somecomplexitem someComplexItem'� k     '�'� '�'�'� l   ����  �  �  '� '�'�'� L    '�'� m    �~
�~ boovtrue'� '��}'� l   �|�{�z�|  �{  �z  �}  �  �  '� '�'�'� l  % %�y�x�w�y  �x  �w  '� '��v'� l  % %�u�t�s�u  �t  �s  �v  � 0 oneitem oneItem'� o    �r�r 0 somelist someList'� '�'�'� l  , ,�q�p�o�q  �p  �o  '� '�'�'� L   , .'�'� m   , -�n
�n boovfals'� '��m'� l  / /�l�k�j�l  �k  �j  �m  '� '�'�'� l     �i�h�g�i  �h  �g  '� '�'�'� l     �f�e�d�f  �e  �d  '� '�'�'� i   � �'�'�'� I      �c'��b�c $0 listuniquevalues listUniqueValues'� '��a'� o      �`�` 	0 prefs  �a  �b  '� k     :'�'� '�'�'� l     �_'�'��_  '�   version 1.0   '� �'�'�    v e r s i o n   1 . 0'� '�'�'� l     �^�]�\�^  �]  �\  '� '�'�'� r     '�'�'� n     '�'�'� o    �[�[ 0 	inputlist 	inputList'� o     �Z�Z 	0 prefs  '� o      �Y�Y 0 	inputlist 	inputList'� '�'�'� l   �X�W�V�X  �W  �V  '� '�'�'� r    
'�'�'� J    �U�U  '� o      �T�T 0 
uniquelist 
uniqueList'� '�'�'� l   �S�R�Q�S  �R  �Q  '� '�'�'� l   �P�O�N�P  �O  �N  '� '�'�'� X    5'��M'�'� k    0'�'� '�'�'� r     '�'�'� n    '�'�'� 1    �L
�L 
pcnt'� o    �K�K 0 oneitem oneItem'� o      �J�J 0 oneitem oneItem'� '��I'� Z   ! 0( (�H�G(  H   ! %(( E   ! $((( o   ! "�F�F 0 
uniquelist 
uniqueList( o   " #�E�E 0 oneitem oneItem( s   ( ,((( o   ( )�D�D 0 oneitem oneItem( n      (((  ;   * +( o   ) *�C�C 0 
uniquelist 
uniqueList�H  �G  �I  �M 0 oneitem oneItem'� o    �B�B 0 	inputlist 	inputList'� (	(
(	 l  6 6�A�@�?�A  �@  �?  (
 ((( L   6 8(( o   6 7�>�> 0 
uniquelist 
uniqueList( (�=( l  9 9�<�;�:�<  �;  �:  �=  '� ((( l     �9�8�7�9  �8  �7  ( ((( l     �6�5�4�6  �5  �4  ( ((( i   � �((( I      �3(�2�3 0 sort  ( (�1( o      �0�0 0 oldlist oldList�1  �2  ( k     D(( ((( l     �/((�/  (   version 1.0   ( �((    v e r s i o n   1 . 0( (( ( l     �.�-�,�.  �-  �,  (  (!("(! r     (#($(# J     
(%(% (&('(& n    ((()(( 1    �+
�+ 
txdl() 1     �*
�* 
ascr(' (*�)(* I   �((+�'
�( .sysontocTEXT       shor(+ m    �&�& 
�'  �)  ($ J      (,(, (-(.(- o      �%�% 0 od  (. (/�$(/ n     (0(1(0 1    �#
�# 
txdl(1 1    �"
�" 
ascr�$  (" (2(3(2 r    !(4(5(4 c    (6(7(6 o    �!�! 0 oldlist oldList(7 m    � 
�  
TEXT(5 o      �� 0 	textblock 	textBlock(3 (8(9(8 r   " /(:(;(: I  " -�(<�
� .sysoexecTEXT���     TEXT(< b   " )(=(>(= b   " '(?(@(? m   " #(A(A �(B(B 
 e c h o  (@ n   # &(C(D(C 1   $ &�
� 
strq(D o   # $�� 0 	textblock 	textBlock(> m   ' ((E(E �(F(F    |   s o r t�  (; o      �� 0 sortedblock sortedBlock(9 (G(H(G r   0 5(I(J(I o   0 1�
� 
ret (J n     (K(L(K 1   2 4�
� 
txdl(L 1   1 2�
� 
ascr(H (M(N(M r   6 ;(O(P(O n   6 9(Q(R(Q 2   7 9�
� 
citm(R o   6 7�� 0 sortedblock sortedBlock(P o      �� 0 
sortedlist 
sortedList(N (S(T(S r   < A(U(V(U o   < =�� 0 od  (V n     (W(X(W 1   > @�
� 
txdl(X 1   = >�
� 
ascr(T (Y(Z(Y l  B B����  �  �  (Z ([�([ L   B D(\(\ o   B C�� 0 
sortedlist 
sortedList�  ( (](^(] l     ��
�	�  �
  �	  (^ (_(`(_ l     ����  �  �  (` (a(b(a i   � �(c(d(c I      �(e�� 0 
logconsole 
logConsole(e (f(g(f o      �� 0 processname processName(g (h�(h o      �� 0 
consolemsg 
consoleMsg�  �  (d k     H(i(i (j(k(j l     � (l(m�   (l   version 2.0   (m �(n(n    v e r s i o n   2 . 0(k (o(p(o l     ��������  ��  ��  (p (q(r(q r     (s(t(s I     ��(u����  0 coercetostring coerceToString(u (v��(v o    ���� 0 
consolemsg 
consoleMsg��  ��  (t o      ���� 0 
consolemsg 
consoleMsg(r (w(x(w l  	 (y(z({(y r   	 (|(}(| I   	 ��(~���� 0 replacesimple replaceSimple(~ (��( J   
 (�(� (�(�(� o   
 ���� 0 
consolemsg 
consoleMsg(� (�(�(� I   ��(���
�� .sysontocTEXT       shor(� m    ����  ��  (� (���(� m    (�(� �(�(�  ��  ��  ��  (} o      ���� 0 
consolemsg 
consoleMsg(z %  ASCII 0 breaks shell scripting   ({ �(�(� >   A S C I I   0   b r e a k s   s h e l l   s c r i p t i n g(x (�(�(� Z    )(�(�����(� =   (�(�(� n    (�(�(� 1    ��
�� 
leng(� o    ���� 0 
consolemsg 
consoleMsg(� m    ����  (� k   " %(�(� (�(�(� l  " "��(�(���  (� H B we still want this function to log that an empty string was sent:   (� �(�(� �   w e   s t i l l   w a n t   t h i s   f u n c t i o n   t o   l o g   t h a t   a n   e m p t y   s t r i n g   w a s   s e n t :(� (���(� r   " %(�(�(� m   " #(�(� �(�(�  [ E M P T Y   S T R I N G ](� o      ���� 0 
consolemsg 
consoleMsg��  ��  ��  (� (�(�(� r   * =(�(�(� b   * ;(�(�(� b   * 7(�(�(� b   * 5(�(�(� b   * 1(�(�(� b   * /(�(�(� b   * -(�(�(� m   * +(�(� �(�(�  l o g g e r(� 1   + ,��
�� 
spac(� m   - .(�(� �(�(�  - t(� 1   / 0��
�� 
spac(� n   1 4(�(�(� 1   2 4��
�� 
strq(� o   1 2���� 0 processname processName(� 1   5 6��
�� 
spac(� n   7 :(�(�(� 1   8 :��
�� 
strq(� o   7 8���� 0 
consolemsg 
consoleMsg(� o      ���� 0 shellcommand shellCommand(� (�(�(� l  > >��������  ��  ��  (� (�(�(� I  > C��(���
�� .sysoexecTEXT���     TEXT(� o   > ?���� 0 shellcommand shellCommand��  (� (�(�(� L   D F(�(� o   D E���� 0 shellcommand shellCommand(� (���(� l  G G��������  ��  ��  ��  (b (�(�(� l     ��������  ��  ��  (� (�(�(� l     ��������  ��  ��  (� (�(�(� i   � �(�(�(� I      ��(����� 0 loglevel logLEVEL(� (�(�(� o      ���� 	0 level  (� (���(� o      ���� 0 somemsg someMsg��  ��  (� k     4(�(� (�(�(� l     ��(�(���  (�   version 1.0   (� �(�(�    v e r s i o n   1 . 0(� (�(�(� l     ��������  ��  ��  (� (�(�(� r     (�(�(� m     ���� (� o      ���� 0 	maxxcount 	maxXcount(� (�(�(� r    (�(�(� b    (�(�(� o    	���� 0 
scriptname 
ScriptName(� m   	 
(�(� �(�(�  _(� o      ���� 0 logname logName(� (�(�(� r    (�(�(� [    (�(�(� \    (�(�(� o    ���� 0 	maxxcount 	maxXcount(� o    �� 	0 level  (� m    �� (� o      �� 0 xcount xCount(� (�(�(� l   ����  �  �  (� (�(�(� Y    *(��(�(��(� r     %(�(�(� b     #(�(�(� o     !�� 0 logname logName(� m   ! "(�(� �(�(�  X(� o      �� 0 logname logName� 0 i  (� m    �� (� o    �� 0 xcount xCount�  (� (�(�(� l  + +����  �  �  (� (�(�(� I   + 2�(��� 0 
logconsole 
logConsole(� (�(�(� o   , -�� 0 logname logName(� (��(� o   - .�� 0 somemsg someMsg�  �  (� (��(� l  3 3����  �  �  �  (� (�(�(� l     ����  �  �  (� (�(�(� l     ����  �  �  (� ) ))  i   � �))) I      �)�� 0 logmain logMAIN) )�) o      �� 0 somemsg someMsg�  �  ) k     )) ))) l     �)	)
�  )	   version 1.0   )
 �))    v e r s i o n   1 . 0) ))) l     ����  �  �  ) )�) l    )))) I     �)�� 0 loglevel logLEVEL) ))) m    ��  ) )�) o    �� 0 somemsg someMsg�  �  )    log at highest importance   ) �)) 4   l o g   a t   h i g h e s t   i m p o r t a n c e�  ) ))) l     ����  �  �  ) ))) l     ����  �  �  ) ))) i   � �))) I      �)�� (0 systemnotification systemNotification) ) �)  o      �� 	0 prefs  �  �  ) k     F)!)! )")#)" l     �)$)%�  )$   version 1.0   )% �)&)&    v e r s i o n   1 . 0)# )')()' l     ����  �  �  )( )))*)) r     )+),)+ K     )-)- �).)/� 0 msg  ). m    )0)0 �)1)1  )/ �)2)3� 0 msgtitle msgTitle)2 m    )4)4 �)5)5  )3 �)6)7� 0 msgsubtitle msgSubtitle)6 m    )8)8 �)9)9  )7 �):);� 0 msgsound msgSound): m    )<)< �)=)=  d e f a u l t); �)>�� 0 nosound noSound)> m   	 
�
� 
null�  ), o      �~�~ 0 defaultprefs defaultPrefs)* )?)@)? r    )A)B)A b    )C)D)C o    �}�} 	0 prefs  )D o    �|�| 0 defaultprefs defaultPrefs)B o      �{�{ 	0 prefs  )@ )E)F)E l   �z�y�x�z  �y  �x  )F )G)H)G Z    D)I)J�w)K)I >   )L)M)L n    )N)O)N o    �v�v 0 nosound noSound)O o    �u�u 	0 prefs  )M m    �t
�t 
null)J I   ,�s)P)Q
�s .sysonotfnull��� ��� TEXT)P n     )R)S)R o     �r�r 0 msg  )S o    �q�q 	0 prefs  )Q �p)T)U
�p 
appr)T n   ! $)V)W)V o   " $�o�o 0 msgtitle msgTitle)W o   ! "�n�n 	0 prefs  )U �m)X�l
�m 
subt)X n   % ()Y)Z)Y o   & (�k�k 0 msgsubtitle msgSubtitle)Z o   % &�j�j 	0 prefs  �l  �w  )K I  / D�i)[)\
�i .sysonotfnull��� ��� TEXT)[ n   / 2)])^)] o   0 2�h�h 0 msg  )^ o   / 0�g�g 	0 prefs  )\ �f)_)`
�f 
appr)_ n   3 6)a)b)a o   4 6�e�e 0 msgtitle msgTitle)b o   3 4�d�d 	0 prefs  )` �c)c)d
�c 
subt)c n   7 :)e)f)e o   8 :�b�b 0 msgsubtitle msgSubtitle)f o   7 8�a�a 	0 prefs  )d �`)g�_
�` 
nsou)g n   ; >)h)i)h o   < >�^�^ 0 msgsound msgSound)i o   ; <�]�] 	0 prefs  �_  )H )j)k)j l  E E�\�[�Z�\  �[  �Z  )k )l�Y)l l  E E�X�W�V�X  �W  �V  �Y  ) )m)n)m l     �U�T�S�U  �T  �S  )n )o)p)o l     �R�Q�P�R  �Q  �P  )p )q)r)q i   � �)s)t)s I      �O)u�N�O 0 writetofile writeToFile)u )v�M)v o      �L�L 	0 prefs  �M  �N  )t k     �)w)w )x)y)x l     �K)z){�K  )z   version 1.0   ){ �)|)|    v e r s i o n   1 . 0)y )})~)} l     �J�I�H�J  �I  �H  )~ ))�) r     )�)�)� K     )�)� �G)�)��G 0 fullfilepath fullFilePath)� m    �F
�F 
null)� �E)�)��E 0 filename fileName)� m    �D
�D 
null)� �C)�)��C 0 filedirectory fileDirectory)� c    )�)�)� l   
)��B�A)� I   
�@)��?
�@ .earsffdralis        afdr)� m    �>
�> afdrdesk�?  �B  �A  )� m   
 �=
�= 
TEXT)� �<)��;�< 0 
outputtext 
outputText)� m    �:
�: 
null�;  )� o      �9�9 0 defaultprefs defaultPrefs)� )�)�)� r    )�)�)� b    )�)�)� o    �8�8 	0 prefs  )� o    �7�7 0 defaultprefs defaultPrefs)� o      �6�6 	0 prefs  )� )�)�)� l   �5�4�3�5  �4  �3  )� )�)�)� l   �2)�)��2  )�   determine file path   )� �)�)� (   d e t e r m i n e   f i l e   p a t h)� )�)�)� Z    H)�)�)�)�)� >   )�)�)� n    )�)�)� o    �1�1 0 fullfilepath fullFilePath)� o    �0�0 	0 prefs  )� m    �/
�/ 
null)� r   ! &)�)�)� n   ! $)�)�)� o   " $�.�. 0 fullfilepath fullFilePath)� o   ! "�-�- 	0 prefs  )� o      �,�, 0 
outputfile 
outputFile)� )�)�)� >  ) .)�)�)� n   ) ,)�)�)� o   * ,�+�+ 0 filename fileName)� o   ) *�*�* 	0 prefs  )� m   , -�)
�) 
null)� )��()� r   1 :)�)�)� b   1 8)�)�)� n   1 4)�)�)� o   2 4�'�' 0 filedirectory fileDirectory)� o   1 2�&�& 	0 prefs  )� n   4 7)�)�)� o   5 7�%�% 0 filename fileName)� o   4 5�$�$ 	0 prefs  )� o      �#�# 0 
outputfile 
outputFile�(  )� r   = H)�)�)� b   = F)�)�)� l  = D)��"�!)� c   = D)�)�)� l  = B)�� �)� I  = B�)��
� .earsffdralis        afdr)� m   = >�
� afdrdesk�  �   �  )� m   B C�
� 
TEXT�"  �!  )� m   D E)�)� �)�)� 2 A S F i l e W r i t t e n B y _ f m G U I . t x t)� o      �� 0 
outputfile 
outputFile)� )�)�)� l  I I����  �  �  )� )�)�)� l  I I����  �  �  )� )�)�)� l  I I�)�)��  )� $  now write output text to file   )� �)�)� <   n o w   w r i t e   o u t p u t   t e x t   t o   f i l e)� )��)� Q   I �)�)�)�)� k   L h)�)� )�)�)� r   L X)�)�)� I  L V�)�)�
� .rdwropenshor       file)� 4   L P�)�
� 
file)� o   N O�� 0 
outputfile 
outputFile)� �)��
� 
perm)� m   Q R�
� boovtrue�  )� o      �� 0 filereference fileReference)� )�)�)� I  Y b�
)�)�
�
 .rdwrwritnull���     ****)� n   Y \)�)�)� o   Z \�	�	 0 
outputtext 
outputText)� o   Y Z�� 	0 prefs  )� �)��
� 
refn)� o   ] ^�� 0 filereference fileReference�  )� )��)� I  c h�)��
� .rdwrclosnull���     ****)� o   c d�� 0 filereference fileReference�  �  )� R      � ����
�  .ascrerr ****      � ****��  ��  )� Q   p �)�)���)� I  s {��)���
�� .rdwrclosnull���     ****)� 4   s w��)�
�� 
file)� o   u v���� 0 
outputfile 
outputFile��  )� R      ������
�� .ascrerr ****      � ****��  ��  ��  �  )r )�)�)� l     ��������  ��  ��  )� )�)�)� l     ��������  ��  ��  )� )�)�)� i   � �)�)�)� I      ��)����� 0 clickatcoords clickAtCoords)� )�)�)� o      ���� 0 xclick xClick)� )���)� o      ���� 0 yclick yClick��  ��  )� k     0)�)� )�)�)� l     ��)�)���  )�   version 1.0   )� �)�)�    v e r s i o n   1 . 0)� )�)�)� l     ��������  ��  ��  )� )�)�)� r     	)�)�)� I    ��)�* 
�� .sysorondlong        doub)� o     ���� 0 xclick xClick*  ��*��
�� 
dire* m    ��
�� olierndD��  )� o      ���� 0 xclick xClick)� *** r   
 *** I  
 ��**
�� .sysorondlong        doub* o   
 ���� 0 yclick yClick* ��*��
�� 
dire* m    ��
�� olierndD��  * o      ���� 0 yclick yClick* *	*
*	 I   '��*��
�� .sysoexecTEXT���     TEXT* b    #*** b    !*** b    *** b    *** n    *** 1    ��
�� 
strq* o    ���� &0 clickcommandposix clickCommandPosix* m    ** �**    - r   c :* o    ���� 0 xclick xClick* m     ** �**  ,* o   ! "���� 0 yclick yClick��  *
 *��* L   ( 0** l  ( /*����* b   ( /*** b   ( -** * l  ( +*!����*! c   ( +*"*#*" o   ( )���� 0 xclick xClick*# m   ) *��
�� 
TEXT��  ��  *  m   + ,*$*$ �*%*%  ,* o   - .���� 0 yclick yClick��  ��  ��  )� *&*'*& l     ��������  ��  ��  *' *(*)*( l     ��������  ��  ��  *) ***+** i   �*,*-*, I      ��*.���� *0 clickobjectbycoords clickObjectByCoords*. */��*/ o      ���� 0 
someobject 
someObject��  ��  *- k     M*0*0 *1*2*1 l     ��*3*4��  *3   version 1.0   *4 �*5*5    v e r s i o n   1 . 0*2 *6*7*6 l     �������  ��  �  *7 *8*9*8 w     '*:*;*: k    '*<*< *=*>*= r    *?*@*? n    *A*B*A 1    �
� 
posn*B o    �� 0 
someobject 
someObject*@ J      *C*C *D*E*D o      �� 0 xcoord xCoord*E *F�*F o      �� 0 ycoord yCoord�  *> *G�*G r    '*H*I*H n    *J*K*J 1    �
� 
ptsz*K o    �� 0 
someobject 
someObject*I J      *L*L *M*N*M o      �� 0 xsize xSize*N *O�*O o      �� 0 ysize ySize�  �  *;�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  *9 *P*Q*P l  ( (����  �  �  *Q *R*S*R l  ( 5*T*U*V*T r   ( 5*W*X*W I  ( 3�*Y*Z
� .sysorondlong        doub*Y l  ( -*[��*[ [   ( -*\*]*\ o   ( )�� 0 xcoord xCoord*] ^   ) ,*^*_*^ o   ) *�� 0 xsize xSize*_ m   * +�� �  �  *Z �*`�
� 
dire*` m   . /�
� olierndD�  *X o      �� 0 xclick xClick*U   middle   *V �*a*a    m i d d l e*S *b*c*b l  6 C*d*e*f*d r   6 C*g*h*g I  6 A�*i*j
� .sysorondlong        doub*i l  6 ;*k��*k [   6 ;*l*m*l o   6 7�� 0 ycoord yCoord*m ^   7 :*n*o*n o   7 8�� 0 ysize ySize*o m   8 9�� �  �  *j �*p�
� 
dire*p m   < =�
� olierndD�  *h o      �� 0 yclick yClick*e   middle   *f �*q*q    m i d d l e*c *r*s*r l  D D����  �  �  *s *t*u*t I   D K�*v�� 0 clickatcoords clickAtCoords*v *w*x*w o   E F�� 0 xclick xClick*x *y�*y o   F G�� 0 yclick yClick�  �  *u *z�*z l  L L����  �  �  �  *+ *{*|*{ l     ����  �  �  *| *}*~*} l     ����  �  �  *~ **�* i  *�*�*� I      �*���  0 coercetostring coerceToString*� *��*� o      ��  0 incomingobject incomingObject�  �  *� k    �*�*� *�*�*� l     �*�*��  *�   version 2.2   *� �*�*�    v e r s i o n   2 . 2*� *�*�*� l     ����  �  �  *� *��*� Z    �*�*�*�*�*� =    *�*�*� n     *�*�*� m    �
� 
pcls*� o     ��  0 incomingobject incomingObject*� m    �
� 
TEXT*� k    *�*� *�*�*� r    *�*�*� l   *��~�}*� c    *�*�*� o    	�|�|  0 incomingobject incomingObject*� m   	 
�{
�{ 
TEXT�~  �}  *� K      *�*� �z*��y
�z 
ctxt*� o      �x�x  0 incomingobject incomingObject�y  *� *��w*� L    *�*� o    �v�v  0 incomingobject incomingObject�w  *� *�*�*� =   *�*�*� n    *�*�*� m    �u
�u 
pcls*� o    �t�t  0 incomingobject incomingObject*� m    �s
�s 
long*� *�*�*� k     /*�*� *�*�*� r     **�*�*� l    #*��r�q*� c     #*�*�*� o     !�p�p  0 incomingobject incomingObject*� m   ! "�o
�o 
TEXT�r  �q  *� K      *�*� �n*��m
�n 
ctxt*� o      �l�l  0 incomingobject incomingObject�m  *� *��k*� L   + /*�*� c   + .*�*�*� o   + ,�j�j  0 incomingobject incomingObject*� m   , -�i
�i 
TEXT�k  *� *�*�*� =  2 7*�*�*� n   2 5*�*�*� m   3 5�h
�h 
pcls*� o   2 3�g�g  0 incomingobject incomingObject*� m   5 6�f
�f 
doub*� *�*�*� k   : I*�*� *�*�*� r   : D*�*�*� l  : =*��e�d*� c   : =*�*�*� o   : ;�c�c  0 incomingobject incomingObject*� m   ; <�b
�b 
TEXT�e  �d  *� K      *�*� �a*��`
�a 
ctxt*� o      �_�_  0 incomingobject incomingObject�`  *� *��^*� L   E I*�*� c   E H*�*�*� o   E F�]�]  0 incomingobject incomingObject*� m   F G�\
�\ 
TEXT�^  *� *�*�*� =  L Q*�*�*� n   L O*�*�*� m   M O�[
�[ 
pcls*� o   L M�Z�Z  0 incomingobject incomingObject*� m   O P�Y
�Y 
utxt*� *��X*� k   T c*�*� *�*�*� r   T ^*�*�*� l  T W*��W�V*� c   T W*�*�*� o   T U�U�U  0 incomingobject incomingObject*� m   U V�T
�T 
TEXT�W  �V  *� K      *�*� �S*��R
�S 
ctxt*� o      �Q�Q  0 incomingobject incomingObject�R  *� *��P*� L   _ c*�*� c   _ b*�*�*� o   _ `�O�O  0 incomingobject incomingObject*� m   ` a�N
�N 
TEXT�P  �X  *� k   f�*�*� *�*�*� l  f f�M*�*��M  *� , & LIST, RECORD, styled text, or unknown   *� �*�*� L   L I S T ,   R E C O R D ,   s t y l e d   t e x t ,   o r   u n k n o w n*� *�*�*� Q   f~*�*�*�*� k   i �*�*� *�*�*� Q   i �*�*�*�*� k   l s*�*� *�*�*� r   l q*�*�*� m   l m*�*� �*�*� ` s o m e _ U U I D _ V a l u e _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 D*� n      *�*�*� o   n p�L�L j0 3some_uuid_property_54f827c7379e4073b5a216bb9cde575d 3some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D*� m   m n*�*� �*�*�  X X X X*� *�+ *� l  r r�K�J�I�K  �J  �I  +  +++ l  r r�H++�H  + V P GENERATE the error message for a known 'object' (here, a string) so we can get    + �++ �   G E N E R A T E   t h e   e r r o r   m e s s a g e   f o r   a   k n o w n   ' o b j e c t '   ( h e r e ,   a   s t r i n g )   s o   w e   c a n   g e t  + +�G+ l  r r�F++�F  + 7 1 the 'lead' and 'trail' part of the error message   + �+	+	 b   t h e   ' l e a d '   a n d   ' t r a i l '   p a r t   o f   t h e   e r r o r   m e s s a g e�G  *� R      �E+
+
�E .ascrerr ****      � ****+
 o      �D�D 0 errmsg errMsg+ �C+�B
�C 
errn+ o      �A�A 0 errnum errNum�B  *� k   { �++ +++ r   { �+++ J   { �++ +++ n  { ~+++ 1   | ~�@
�@ 
txdl+ 1   { |�?
�? 
ascr+ +�>+ J   ~ �++ +�=+ m   ~ ++ �++  " X X X X "�=  �>  + J      ++ +++ o      �<�< 0 	olddelims 	oldDelims+ +�;+ n     + +!+  1   � ��:
�: 
txdl+! 1   � ��9
�9 
ascr�;  + +"+#+" r   � �+$+%+$ n   � �+&+'+& 2  � ��8
�8 
citm+' o   � ��7�7 0 errmsg errMsg+% J      +(+( +)+*+) o      �6�6 0 
errmsglead 
errMsgLead+* ++�5++ o      �4�4 0 errmsgtrail errMsgTrail�5  +# +,�3+, r   � �+-+.+- o   � ��2�2 0 	olddelims 	oldDelims+. n     +/+0+/ 1   � ��1
�1 
txdl+0 1   � ��0
�0 
ascr�3  *� +1+2+1 l  � ��/�.�-�/  �.  �-  +2 +3+4+3 l  � ��,+5+6�,  +5 = 7 now, generate error message for the SPECIFIED object:    +6 �+7+7 n   n o w ,   g e n e r a t e   e r r o r   m e s s a g e   f o r   t h e   S P E C I F I E D   o b j e c t :  +4 +8+9+8 r   � �+:+;+: m   � �+<+< �+=+= ` s o m e _ U U I D _ V a l u e _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 D+; n      +>+?+> o   � ��+�+ j0 3some_uuid_property_54f827c7379e4073b5a216bb9cde575d 3some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D+? o   � ��*�*  0 incomingobject incomingObject+9 +@+A+@ l  � ��)�(�'�)  �(  �'  +A +B�&+B l  � ��%�$�#�%  �$  �#  �&  *� R      �"+C�!
�" .ascrerr ****      � ****+C o      � �  0 errmsg errMsg�!  *� Z   �~+D+E�+F+D F   � �+G+H+G C   � �+I+J+I o   � ��� 0 errmsg errMsg+J m   � �+K+K �+L+L � S y s t e m   E v e n t s   g o t   a n   e r r o r :   C a n  t   m a k e   s o m e _ U U I D _ P r o p e r t y _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 D   o f  +H D   � �+M+N+M o   � ��� 0 errmsg errMsg+N m   � �+O+O �+P+P ( i n t o   t y p e   s p e c i f i e r .+E k   �+Q+Q +R+S+R r   � �+T+U+T m   � �+V+V �+W+W � S y s t e m   E v e n t s   g o t   a n   e r r o r :   C a n  t   m a k e   s o m e _ U U I D _ P r o p e r t y _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 D   o f  +U o      �� 0 
errmsglead 
errMsgLead+S +X+Y+X r   � �+Z+[+Z m   � �+\+\ �+]+] *   i n t o   t y p e   s p e c i f i e r .+[ o      �� 0 errmsgtrail errMsgTrail+Y +^+_+^ l  � �����  �  �  +_ +`+a+` r   � �+b+c+b J   � �+d+d +e+f+e n  � �+g+h+g 1   � ��
� 
txdl+h 1   � ��
� 
ascr+f +i�+i o   � ��� 0 
errmsglead 
errMsgLead�  +c J      +j+j +k+l+k o      �� 0 od  +l +m�+m n     +n+o+n 1   � ��
� 
txdl+o 1   � ��
� 
ascr�  +a +p+q+p l  � �����  �  �  +q +r+s+r r   � �+t+u+t n   � �+v+w+v 4   � ��+x
� 
citm+x m   � ��� +w o   � ��
�
 0 errmsg errMsg+u o      �	�	 0 objectstring objectString+s +y+z+y r   �+{+|+{ o   � ��� 0 errmsgtrail errMsgTrail+| n     +}+~+} 1   �
� 
txdl+~ 1   � �
� 
ascr+z ++�+ l ����  �  �  +� +�+�+� r  
+�+�+� n  +�+�+� 4  �+�
� 
citm+� m  �� +� o  � �  0 objectstring objectString+� o      ���� 0 objectstring objectString+� +�+�+� r  +�+�+� o  ���� 0 od  +� n     +�+�+� 1  ��
�� 
txdl+� 1  ��
�� 
ascr+� +�+�+� l ��������  ��  ��  +� +�+�+� l ��������  ��  ��  +� +���+� l ��������  ��  ��  ��  �  +F k  ~+�+� +�+�+� l ��+�+���  +�  tell me to log errMsg   +� �+�+� * t e l l   m e   t o   l o g   e r r M s g+� +�+�+� r  +�+�+� o  ���� 0 errmsg errMsg+� o      ���� 0 objectstring objectString+� +�+�+� l ��������  ��  ��  +� +�+�+� Z  G+�+�����+� E  +�+�+� o  ���� 0 objectstring objectString+� o  ���� 0 
errmsglead 
errMsgLead+� k  C+�+� +�+�+� r  6+�+�+� J  %+�+� +�+�+� n "+�+�+� 1   "��
�� 
txdl+� 1   ��
�� 
ascr+� +���+� o  "#���� 0 
errmsglead 
errMsgLead��  +� J      +�+� +�+�+� o      ���� 0 od  +� +���+� n     +�+�+� 1  24��
�� 
txdl+� 1  12��
�� 
ascr��  +� +�+�+� r  7=+�+�+� n  7;+�+�+� 4  8;��+�
�� 
citm+� m  9:���� +� o  78���� 0 objectstring objectString+� o      ���� 0 objectstring objectString+� +���+� r  >C+�+�+� o  >?���� 0 od  +� n     +�+�+� 1  @B��
�� 
txdl+� 1  ?@��
�� 
ascr��  ��  ��  +� +�+�+� l HH��������  ��  ��  +� +�+�+� Z  H|+�+�����+� E  HK+�+�+� o  HI���� 0 objectstring objectString+� o  IJ���� 0 errmsgtrail errMsgTrail+� k  Nx+�+� +�+�+� r  Ne+�+�+� J  NT+�+� +�+�+� n NQ+�+�+� 1  OQ��
�� 
txdl+� 1  NO��
�� 
ascr+� +���+� o  QR���� 0 errmsgtrail errMsgTrail��  +� J      +�+� +�+�+� o      ���� 0 od  +� +���+� n     +�+�+� 1  ac��
�� 
txdl+� 1  `a��
�� 
ascr��  +� +�+�+� r  fk+�+�+� o  fg���� 0 errmsgtrail errMsgTrail+� n     +�+�+� 1  hj��
�� 
txdl+� 1  gh��
�� 
ascr+� +�+�+� r  lr+�+�+� n  lp+�+�+� 4  mp��+�
�� 
citm+� m  no���� +� o  lm���� 0 objectstring objectString+� o      ���� 0 objectstring objectString+� +���+� r  sx+�+�+� o  st���� 0 od  +� n     +�+�+� 1  uw�
� 
txdl+� 1  tu�
� 
ascr��  ��  ��  +� +�+�+� l }}����  �  �  +� +��+� l }}�+�+��  +� O Iset {text:objectString} to (objectString as string) -- what does THIS do?   +� �+�+� � s e t   { t e x t : o b j e c t S t r i n g }   t o   ( o b j e c t S t r i n g   a s   s t r i n g )   - -   w h a t   d o e s   T H I S   d o ?�  *� +�+�+� l ����  �  �  +� +��+� L  �+�+� o  ��� 0 objectstring objectString�  �  *� +�+�+� l     ����  �  �  +� +�+�+� l     ����  �  �  +� +�+�+� i  
+�+�+� I      �+��� 0 gettextbefore getTextBefore+� , ,,  o      �� 0 
sourcetext 
sourceTEXT, ,�, o      �� 0 stophere stopHere�  �  +� k     Q,, ,,, l     �,,�  ,   version 1.1   , �,,    v e r s i o n   1 . 1, ,	,
,	 l     ����  �  �  ,
 ,�, Q     Q,,,, k    A,, ,,, r    ,,, J    	,, ,,, n   ,,, 1    �
� 
txdl, 1    �
� 
ascr, ,�, o    �� 0 stophere stopHere�  , J      ,, ,,, o      �� 0 	olddelims 	oldDelims, ,�, n     ,,, 1    �
� 
txdl, 1    �
� 
ascr�  , , ,!,  Z    8,",#�,$," =   $,%,&,% l   ",'��,' I   "�,(�
� .corecnte****       ****,( n    ,),*,) 2   �
� 
citm,* o    �� 0 
sourcetext 
sourceTEXT�  �  �  ,& m   " #�� ,# k   ' /,+,+ ,,,-,, r   ' ,,.,/,. o   ' (�� 0 	olddelims 	oldDelims,/ n     ,0,1,0 1   ) +�
� 
txdl,1 1   ( )�
� 
ascr,- ,2�,2 L   - /,3,3 m   - .,4,4 �,5,5  �  �  ,$ r   2 8,6,7,6 n   2 6,8,9,8 4   3 6�,:
� 
citm,: m   4 5�� ,9 o   2 3�� 0 
sourcetext 
sourceTEXT,7 l     ,;��,; o      �� 0 finalresult finalResult�  �  ,! ,<,=,< r   9 >,>,?,> o   9 :�� 0 	olddelims 	oldDelims,? n     ,@,A,@ 1   ; =�
� 
txdl,A 1   : ;�
� 
ascr,= ,B�,B L   ? A,C,C o   ? @�� 0 finalresult finalResult�  , R      �,D,E
� .ascrerr ****      � ****,D o      �� 0 errmsg errMsg,E �,F�
� 
errn,F o      �� 0 errnum errNum�  , k   I Q,G,G ,H,I,H r   I N,J,K,J o   I J�� 0 	olddelims 	oldDelims,K n     ,L,M,L 1   K M�~
�~ 
txdl,M 1   J K�}
�} 
ascr,I ,N�|,N l  O Q,O,P,Q,O L   O Q,R,R m   O P,S,S �,T,T  ,P 3 - return nothing if the stop text is not found   ,Q �,U,U Z   r e t u r n   n o t h i n g   i f   t h e   s t o p   t e x t   i s   n o t   f o u n d�|  �  +� ,V,W,V l     �{�z�y�{  �z  �y  ,W ,X,Y,X l     �x�w�v�x  �w  �v  ,Y ,Z,[,Z i  ,\,],\ I      �u,^�t�u  0 gettextbetween getTextBetween,^ ,_�s,_ o      �r�r 	0 prefs  �s  �t  ,] k     �,`,` ,a,b,a l     �q,c,d�q  ,c   version 1.6   ,d �,e,e    v e r s i o n   1 . 6,b ,f,g,f l     �p�o�n�p  �o  �n  ,g ,h,i,h r     ,j,k,j K     ,l,l �m,m,n�m 0 textitemnum textItemNum,m m    �l�l ,n �k,o�j�k  0 includemarkers includeMarkers,o m    �i
�i boovfals�j  ,k o      �h�h 0 defaultprefs defaultPrefs,i ,p,q,p l  	 	�g�f�e�g  �f  �e  ,q ,r,s,r Z   	 ',t,u�d�c,t F   	 ,v,w,v l  	 ,x�b�a,x >  	 ,y,z,y n   	 ,{,|,{ m   
 �`
�` 
pcls,| o   	 
�_�_ 	0 prefs  ,z m    �^
�^ 
list�b  �a  ,w l   ,}�]�\,} >   ,~,,~ c    ,�,�,� l   ,��[�Z,� n    ,�,�,� m    �Y
�Y 
pcls,� o    �X�X 	0 prefs  �[  �Z  ,� m    �W
�W 
TEXT, m    ,�,� �,�,�  r e c o r d�]  �\  ,u R    #�V,�,�
�V .ascrerr ****      � ****,� m   ! ",�,� �,�,� g e t T e x t B e t w e e n   F A I L E D :   p a r a m e t e r   s h o u l d   b e   a   r e c o r d   o r   l i s t .   I f   i t   i s   m u l t i p l e   i t e m s ,   j u s t   m a k e   i t   i n t o   a   l i s t   t o   u p g r a d e   t o   t h i s   h a n d l e r .,� �U,��T
�U 
errn,� m     �S�S �T  �d  �c  ,s ,�,�,� Z   ( `,�,��R�Q,� =  ( -,�,�,� n   ( +,�,�,� m   ) +�P
�P 
pcls,� o   ( )�O�O 	0 prefs  ,� m   + ,�N
�N 
list,� k   0 \,�,� ,�,�,� Z   0 F,�,��M�L,� =  0 7,�,�,� l  0 5,��K�J,� I  0 5�I,��H
�I .corecnte****       ****,� o   0 1�G�G 	0 prefs  �H  �K  �J  ,� m   5 6�F�F ,� r   : B,�,�,� n   : >,�,�,� 4   ; >�E,�
�E 
cobj,� m   < =�D�D ,� o   : ;�C�C 	0 prefs  ,� n      ,�,�,� o   ? A�B�B 0 textitemnum textItemNum,� o   > ?�A�A 0 defaultprefs defaultPrefs�M  �L  ,� ,��@,� r   G \,�,�,� K   G Z,�,� �?,�,��? 0 
sourcetext 
sourceTEXT,� n   H L,�,�,� 4   I L�>,�
�> 
cobj,� m   J K�=�= ,� o   H I�<�< 	0 prefs  ,� �;,�,��; 0 
beforetext 
beforeText,� n   M Q,�,�,� 4   N Q�:,�
�: 
cobj,� m   O P�9�9 ,� o   M N�8�8 	0 prefs  ,� �7,��6�7 0 	aftertext 	afterText,� n   R V,�,�,� 4   S V�5,�
�5 
cobj,� m   T U�4�4 ,� o   R S�3�3 	0 prefs  �6  ,� o      �2�2 	0 prefs  �@  �R  �Q  ,� ,�,�,� l  a f,�,�,�,� r   a f,�,�,� b   a d,�,�,� o   a b�1�1 	0 prefs  ,� o   b c�0�0 0 defaultprefs defaultPrefs,� o      �/�/ 	0 prefs  ,� , & add on default preferences, if needed   ,� �,�,� L   a d d   o n   d e f a u l t   p r e f e r e n c e s ,   i f   n e e d e d,� ,�,�,� r   g l,�,�,� n   g j,�,�,� o   h j�.�. 0 
sourcetext 
sourceTEXT,� o   g h�-�- 	0 prefs  ,� o      �,�, 0 
sourcetext 
sourceTEXT,� ,�,�,� r   m r,�,�,� n   m p,�,�,� o   n p�+�+ 0 
beforetext 
beforeText,� o   m n�*�* 	0 prefs  ,� o      �)�) 0 
beforetext 
beforeText,� ,�,�,� r   s x,�,�,� n   s v,�,�,� o   t v�(�( 0 	aftertext 	afterText,� o   s t�'�' 	0 prefs  ,� o      �&�& 0 	aftertext 	afterText,� ,�,�,� r   y ~,�,�,� n   y |,�,�,� o   z |�%�% 0 textitemnum textItemNum,� o   y z�$�$ 	0 prefs  ,� o      �#�# 0 textitemnum textItemNum,� ,�,�,� r    �,�,�,� n    �,�,�,� o   � ��"�"  0 includemarkers includeMarkers,� o    ��!�! 	0 prefs  ,� o      � �   0 includemarkers includeMarkers,� ,�,�,� l  � �����  �  �  ,� ,�,�,� Q   � �,�,�,�,� k   � �,�,� ,�,�,� r   � �,�,�,� J   � �,�,� ,�,�,� n  � �,�,�,� 1   � ��
� 
txdl,� 1   � ��
� 
ascr,� ,��,� o   � ��� 0 
beforetext 
beforeText�  ,� J      ,�,� ,�,�,� o      �� 0 	olddelims 	oldDelims,� ,��,� n     ,�,�,� 1   � ��
� 
txdl,� 1   � ��
� 
ascr�  ,� ,�,�,� r   � �,�,�,� n   � �,�,�,� 4   � ��,�
� 
citm,� o   � ��� 0 textitemnum textItemNum,� o   � ��� 0 
sourcetext 
sourceTEXT,� l     ,���,� o      �� 0 prefixremoved prefixRemoved�  �  ,� ,�,�,� r   � �- --  o   � ��� 0 	aftertext 	afterText- n     --- 1   � ��
� 
txdl- 1   � ��
� 
ascr,� --- r   � �--- n   � �--	- 4   � ��-

� 
citm-
 m   � ��
�
 -	 o   � ��	�	 0 prefixremoved prefixRemoved- l     -��- o      �� 0 finalresult finalResult�  �  - --- r   � �--- o   � ��� 0 	olddelims 	oldDelims- n     --- 1   � ��
� 
txdl- 1   � ��
� 
ascr- --- l  � ���� �  �  �   - --- Z  � �--����- o   � �����  0 includemarkers includeMarkers- r   � �--- b   � �--- b   � �--- o   � ����� 0 
beforetext 
beforeText- o   � ����� 0 finalresult finalResult- o   � ����� 0 	aftertext 	afterText- o      ���� 0 finalresult finalResult��  ��  - -��- l  � ���������  ��  ��  ��  ,� R      ��-- 
�� .ascrerr ****      � ****- o      ���� 0 errmsg errMsg-  ��-!��
�� 
errn-! o      ���� 0 errnum errNum��  ,� k   � �-"-" -#-$-# r   � �-%-&-% o   � ����� 0 	olddelims 	oldDelims-& n     -'-(-' 1   � ���
�� 
txdl-( 1   � ���
�� 
ascr-$ -)-*-) l  � ���-+-,��  -+ > 8 	tell me to log "Error in getTextBetween() : " & errMsg   -, �---- p   	 t e l l   m e   t o   l o g   " E r r o r   i n   g e t T e x t B e t w e e n ( )   :   "   &   e r r M s g-* -.��-. l  � �-/-0-1-/ r   � �-2-3-2 m   � �-4-4 �-5-5  -3 l     -6����-6 o      ���� 0 finalresult finalResult��  ��  -0 : 4 return nothing if the surrounding text is not found   -1 �-7-7 h   r e t u r n   n o t h i n g   i f   t h e   s u r r o u n d i n g   t e x t   i s   n o t   f o u n d��  ,� -8-9-8 l  � ���������  ��  ��  -9 -:-;-: l  � ���������  ��  ��  -; -<-=-< L   � �->-> o   � ����� 0 finalresult finalResult-= -?��-? l  � ���������  ��  ��  ��  ,[ -@-A-@ l     ��������  ��  ��  -A -B-C-B l     ��������  ��  ��  -C -D-E-D i  -F-G-F I      ��-H���� 0 
parsechars 
parseChars-H -I��-I o      ���� 	0 prefs  ��  ��  -G k     �-J-J -K-L-K l     ��-M-N��  -M   version 1.3   -N �-O-O    v e r s i o n   1 . 3-L -P-Q-P l     ��������  ��  ��  -Q -R-S-R r     -T-U-T K     -V-V ��-W���� 0 considercase considerCase-W m    ��
�� boovtrue��  -U o      ���� 0 defaultprefs defaultPrefs-S -X-Y-X l   ��������  ��  ��  -Y -Z-[-Z l   ��������  ��  ��  -[ -\-]-\ Z    [-^-_-`��-^ =   -a-b-a n    
-c-d-c m    
��
�� 
pcls-d o    ���� 	0 prefs  -b m   
 ��
�� 
list-_ k    ?-e-e -f-g-f Z    =-h-i��-j-h ?   -k-l-k l   -m��-m I   �-n�
� .corecnte****       ****-n o    �� 	0 prefs  �  �  �  -l m    �� -i k    ,-o-o -p-q-p l   �-r-s�  -r - ' get any parameters after the initial 3   -s �-t-t N   g e t   a n y   p a r a m e t e r s   a f t e r   t h e   i n i t i a l   3-q -u�-u r    ,-v-w-v K    *-x-x �-y-z� 0 
sourcetext 
sourceTEXT-y n    -{-|-{ 4    �-}
� 
cobj-} m    �� -| o    �� 	0 prefs  -z �-~-� 0 parsestring parseString-~ n    #-�-�-� 4     #�-�
� 
cobj-� m   ! "�� -� o     �� 	0 prefs  - �-��� 0 considercase considerCase-� n   $ (-�-�-� 4   % (�-�
� 
cobj-� m   & '�� -� o   $ %�� 	0 prefs  �  -w o      �� 	0 prefs  �  ��  -j r   / =-�-�-� K   / ;-�-� �-�-�� 0 
sourcetext 
sourceTEXT-� n   0 4-�-�-� 4   1 4�-�
� 
cobj-� m   2 3�� -� o   0 1�� 	0 prefs  -� �-��� 0 parsestring parseString-� n   5 9-�-�-� 4   6 9�-�
� 
cobj-� m   7 8�� -� o   5 6�� 	0 prefs  �  -� o      �� 	0 prefs  -g -��-� l  > >����  �  �  �  -` -�-�-� >  B L-�-�-� n   B E-�-�-� m   C E�
� 
pcls-� o   B C�� 	0 prefs  -� l  E K-���-� n   E K-�-�-� m   I K�
� 
pcls-� K   E I-�-� �-��� 0 somekey someKey-� m   F G�� �  �  �  -� -��-� k   O W-�-� -�-�-� l  O O�-�-��  -� x r Test by matching class to something that IS a record to avoid FileMaker namespace conflict with the term "record"   -� �-�-� �   T e s t   b y   m a t c h i n g   c l a s s   t o   s o m e t h i n g   t h a t   I S   a   r e c o r d   t o   a v o i d   F i l e M a k e r   n a m e s p a c e   c o n f l i c t   w i t h   t h e   t e r m   " r e c o r d "-� -�-�-� l  O O����  �  �  -� -�-�-� R   O U�-�-�
� .ascrerr ****      � ****-� m   S T-�-� �-�-�> T h e   p a r a m e t e r   f o r   ' p a r s e C h a r s ( ) '   s h o u l d   b e   a   r e c o r d   o r   a t   l e a s t   a   l i s t .   W r a p   t h e   p a r a m e t e r ( s )   i n   c u r l y   b r a c k e t s   f o r   e a s y   u p g r a d e   t o   ' p a r s e C h a r s ( )   v e r s i o n   1 . 3 .  -� �-��
� 
errn-� m   Q R�� �  -� -��-� l  V V����  �  �  �  �  ��  -] -�-�-� l  \ \����  �  �  -� -�-�-� l  \ \����  �  �  -� -�-�-� r   \ a-�-�-� b   \ _-�-�-� o   \ ]�� 	0 prefs  -� o   ] ^�� 0 defaultprefs defaultPrefs-� o      �~�~ 	0 prefs  -� -�-�-� l  b b�}�|�{�}  �|  �{  -� -�-�-� l  b b�z�y�x�z  �y  �x  -� -�-�-� r   b g-�-�-� n   b e-�-�-� o   c e�w�w 0 
sourcetext 
sourceTEXT-� o   b c�v�v 	0 prefs  -� o      �u�u 0 
sourcetext 
sourceTEXT-� -�-�-� r   h m-�-�-� n   h k-�-�-� o   i k�t�t 0 parsestring parseString-� o   h i�s�s 	0 prefs  -� o      �r�r 0 parsestring parseString-� -�-�-� r   n s-�-�-� n   n q-�-�-� o   o q�q�q 0 considercase considerCase-� o   n o�p�p 	0 prefs  -� o      �o�o 0 considercase considerCase-� -�-�-� l  t t�n�m�l�n  �m  �l  -� -�-�-� l  t t�k�j�i�k  �j  �i  -� -�-�-� r   t y-�-�-� n  t w-�-�-� 1   u w�h
�h 
txdl-� 1   t u�g
�g 
ascr-� o      �f�f 0 	olddelims 	oldDelims-� -��e-� Q   z �-�-�-�-� k   } �-�-� -�-�-� r   } �-�-�-� l  } �-��d�c-� J   } �-�-� -��b-� c   } �-�-�-� o   } ~�a�a 0 parsestring parseString-� m   ~ �`
�` 
TEXT�b  �d  �c  -� n     -�-�-� 1   � ��_
�_ 
txdl-� 1   � ��^
�^ 
ascr-� -�-�-� l  � ��]�\�[�]  �\  �[  -� -�-�-� Z   � �-�-��Z-�-� o   � ��Y�Y 0 considercase considerCase-� P   � �-�-��X-� r   � �-�-�-� n   � �-�-�-� 2   � ��W
�W 
citm-� o   � ��V�V 0 
sourcetext 
sourceTEXT-� l     -��U�T-� o      �S�S 0 
parsedlist 
parsedList�U  �T  -� �R�Q
�R conscase�Q  �X  �Z  -� P   � �-��P-�-� r   � �-�-�-� n   � �-�-�-� 2   � ��O
�O 
citm-� o   � ��N�N 0 
sourcetext 
sourceTEXT-� l     -��M�L-� o      �K�K 0 
parsedlist 
parsedList�M  �L  �P  -� �J�I
�J conscase�I  -� -�. -� l  � ��H�G�F�H  �G  �F  .  ... r   � �... o   � ��E�E 0 	olddelims 	oldDelims. n     ... 1   � ��D
�D 
txdl. 1   � ��C
�C 
ascr. .�B. L   � �.. o   � ��A�A 0 
parsedlist 
parsedList�B  -� R      �@.	.

�@ .ascrerr ****      � ****.	 o      �?�? 0 errmsg errMsg.
 �>.�=
�> 
errn. o      �<�< 0 errnum errNum�=  -� k   � �.. ... Q   � �..�;. r   � �... o   � ��:�: 0 	olddelims 	oldDelims. n     ... 1   � ��9
�9 
txdl. 1   � ��8
�8 
ascr. R      �7�6�5
�7 .ascrerr ****      � ****�6  �5  �;  . .�4. R   � ��3..
�3 .ascrerr ****      � ****. b   � �... m   � �.. �.. : E R R O R :   p a r s e C h a r s ( )   h a n d l e r :  . o   � ��2�2 0 errmsg errMsg. �1.�0
�1 
errn. o   � ��/�/ 0 errnum errNum�0  �4  �e  -E ... l     �.�-�,�.  �-  �,  . .. . l     �+�*�)�+  �*  �)  .  .!.".! i  .#.$.# I      �(.%�'�( 0 replacesimple replaceSimple.% .&�&.& o      �%�% 	0 prefs  �&  �'  .$ k     �.'.' .(.).( l     �$.*.+�$  .*   version 1.4   .+ �.,.,    v e r s i o n   1 . 4.) .-...- l     �#�"�!�#  �"  �!  .. ./.0./ r     .1.2.1 K     .3.3 � .4��  0 considercase considerCase.4 m    �
� boovtrue�  .2 o      �� 0 defaultprefs defaultPrefs.0 .5.6.5 l   ����  �  �  .6 .7.8.7 Z    e.9.:.;�.9 =   .<.=.< n    
.>.?.> m    
�
� 
pcls.? o    �� 	0 prefs  .= m   
 �
� 
list.: k    I.@.@ .A.B.A Z    G.C.D�.E.C ?   .F.G.F l   .H��.H I   �.I�
� .corecnte****       ****.I o    �� 	0 prefs  �  �  �  .G m    �� .D k    1.J.J .K.L.K l   �.M.N�  .M - ' get any parameters after the initial 3   .N �.O.O N   g e t   a n y   p a r a m e t e r s   a f t e r   t h e   i n i t i a l   3.L .P�.P r    1.Q.R.Q K    /.S.S �.T.U� 0 
sourcetext 
sourceTEXT.T n    .V.W.V 4    �.X
� 
cobj.X m    �
�
 .W o    �	�	 	0 prefs  .U �.Y.Z� 0 oldchars oldChars.Y n    #.[.\.[ 4     #�.]
� 
cobj.] m   ! "�� .\ o     �� 	0 prefs  .Z �.^._� 0 newchars newChars.^ n   $ (.`.a.` 4   % (�.b
� 
cobj.b m   & '�� .a o   $ %�� 	0 prefs  ._ � .c���  0 considercase considerCase.c n   ) -.d.e.d 4   * -��.f
�� 
cobj.f m   + ,���� .e o   ) *���� 	0 prefs  ��  .R o      ���� 	0 prefs  �  �  .E r   4 G.g.h.g K   4 E.i.i ��.j.k�� 0 
sourcetext 
sourceTEXT.j n   5 9.l.m.l 4   6 9��.n
�� 
cobj.n m   7 8���� .m o   5 6���� 	0 prefs  .k ��.o.p�� 0 oldchars oldChars.o n   : >.q.r.q 4   ; >��.s
�� 
cobj.s m   < =���� .r o   : ;���� 	0 prefs  .p ��.t���� 0 newchars newChars.t n   ? C.u.v.u 4   @ C��.w
�� 
cobj.w m   A B���� .v o   ? @���� 	0 prefs  ��  .h o      ���� 	0 prefs  .B .x��.x l  H H��������  ��  ��  ��  .; .y.z.y >  L V.{.|.{ n   L O.}.~.} m   M O��
�� 
pcls.~ o   L M���� 	0 prefs  .| l  O U.����. n   O U.�.�.� m   S U��
�� 
pcls.� K   O S.�.� ��.����� 0 somekey someKey.� m   P Q���� ��  ��  ��  .z .���.� k   Y a.�.� .�.�.� l  Y Y��.�.���  .� x r Test by matching class to something that IS a record to avoid FileMaker namespace conflict with the term "record"   .� �.�.� �   T e s t   b y   m a t c h i n g   c l a s s   t o   s o m e t h i n g   t h a t   I S   a   r e c o r d   t o   a v o i d   F i l e M a k e r   n a m e s p a c e   c o n f l i c t   w i t h   t h e   t e r m   " r e c o r d ".� .�.�.� l  Y Y��������  ��  ��  .� .�.�.� R   Y _��.�.�
�� .ascrerr ****      � ****.� m   ] ^.�.� �.�.�J T h e   p a r a m e t e r   f o r   ' r e p l a c e S i m p l e ( ) '   s h o u l d   b e   a   r e c o r d   o r   a t   l e a s t   a   l i s t .   W r a p   t h e   p a r a m e t e r ( s )   i n   c u r l y   b r a c k e t s   f o r   e a s y   u p g r a d e   t o   ' r e p l a c e S i m p l e ( )   v e r s i o n   1 . 3 .  .� ��.���
�� 
errn.� m   [ \���� ��  .� .���.� l  ` `��������  ��  ��  ��  ��  �  .8 .�.�.� l  f f��������  ��  ��  .� .�.�.� l  f f��������  ��  ��  .� .�.�.� r   f k.�.�.� b   f i.�.�.� o   f g���� 	0 prefs  .� o   g h���� 0 defaultprefs defaultPrefs.� o      ���� 	0 prefs  .� .�.�.� l  l l��������  ��  ��  .� .�.�.� l  l l��������  ��  ��  .� .�.�.� r   l q.�.�.� n   l o.�.�.� o   m o���� 0 considercase considerCase.� o   l m���� 	0 prefs  .� o      ���� 0 considercase considerCase.� .�.�.� r   r w.�.�.� n   r u.�.�.� o   s u���� 0 
sourcetext 
sourceTEXT.� o   r s���� 	0 prefs  .� o      �� 0 
sourcetext 
sourceTEXT.� .�.�.� r   x }.�.�.� n   x {.�.�.� o   y {�� 0 oldchars oldChars.� o   x y�� 	0 prefs  .� o      �� 0 oldchars oldChars.� .�.�.� r   ~ �.�.�.� n   ~ �.�.�.� o    ��� 0 newchars newChars.� o   ~ �� 	0 prefs  .� o      �� 0 newchars newChars.� .�.�.� l  � �����  �  �  .� .�.�.� r   � �.�.�.� c   � �.�.�.� o   � ��� 0 
sourcetext 
sourceTEXT.� m   � ��
� 
TEXT.� o      �� 0 
sourcetext 
sourceTEXT.� .�.�.� l  � �����  �  �  .� .�.�.� r   � �.�.�.� n  � �.�.�.� 1   � ��
� 
txdl.� 1   � ��
� 
ascr.� o      �� 0 	olddelims 	oldDelims.� .�.�.� r   � �.�.�.� l  � �.���.� o   � ��� 0 oldchars oldChars�  �  .� n     .�.�.� 1   � ��
� 
txdl.� 1   � ��
� 
ascr.� .�.�.� Z   � �.�.��.�.� o   � ��� 0 considercase considerCase.� P   � �.�.��.� k   � �.�.� .�.�.� r   � �.�.�.� n   � �.�.�.� 2   � ��
� 
citm.� o   � ��� 0 
sourcetext 
sourceTEXT.� l     .���.� o      �� 0 
parsedlist 
parsedList�  �  .� .�.�.� r   � �.�.�.� l  � �.���.� J   � �.�.� .��.� l  � �.���.� c   � �.�.�.� o   � ��� 0 newchars newChars.� m   � ��
� 
TEXT�  �  �  �  �  .� n     .�.�.� 1   � ��
� 
txdl.� 1   � ��
� 
ascr.� .��.� r   � �.�.�.� c   � �.�.�.� l  � �.���.� o   � ��� 0 
parsedlist 
parsedList�  �  .� m   � ��
� 
TEXT.� l     .���.� o      �� 0 newtext newText�  �  �  .� ��
� conscase�  �  �  .� P   � �.��.�.� k   � �.�.� .�.�.� r   � �.�.�.� n   � �.�.�.� 2   � ��
� 
citm.� o   � ��� 0 
sourcetext 
sourceTEXT.� l     .���.� o      �� 0 
parsedlist 
parsedList�  �  .� .�.�.� r   � �/ //  l  � �/��/ J   � �// /�/ l  � �/��/ c   � �/// o   � ��� 0 newchars newChars/ m   � ��
� 
TEXT�  �  �  �  �  / n     //	/ 1   � ��
� 
txdl/	 1   � ��~
�~ 
ascr.� /
�}/
 r   � �/// c   � �/// l  � �/�|�{/ o   � ��z�z 0 
parsedlist 
parsedList�|  �{  / m   � ��y
�y 
TEXT/ l     /�x�w/ o      �v�v 0 newtext newText�x  �w  �}  �  .� �u�t
�u conscase�t  .� /// r   � �/// o   � ��s�s 0 	olddelims 	oldDelims/ n     /// 1   � ��r
�r 
txdl/ 1   � ��q
�q 
ascr/ /// L   � �// o   � ��p�p 0 newtext newText/ /�o/ l  � ��n�m�l�n  �m  �l  �o  ." /// l     �k�j�i�k  �j  �i  / /// l     �h�g�f�h  �g  �f  / // / i  /!/"/! I      �e/#�d�e 0 unparsechars unParseChars/# /$/%/$ o      �c�c 0 thislist thisList/% /&�b/& o      �a�a 0 newdelim newDelim�b  �d  /" k     C/'/' /(/)/( l     �`/*/+�`  /*   version 1.2   /+ �/,/,    v e r s i o n   1 . 2/) /-/./- l     �_�^�]�_  �^  �]  /. ///0// r     /1/2/1 n    /3/4/3 1    �\
�\ 
txdl/4 1     �[
�[ 
ascr/2 o      �Z�Z 0 	olddelims 	oldDelims/0 /5�Y/5 Q    C/6/7/8/6 k   	 !/9/9 /:/;/: r   	 /</=/< l  	 />�X�W/> J   	 /?/? /@�V/@ c   	 /A/B/A o   	 
�U�U 0 newdelim newDelim/B m   
 �T
�T 
TEXT�V  �X  �W  /= n     /C/D/C 1    �S
�S 
txdl/D 1    �R
�R 
ascr/; /E/F/E r    /G/H/G c    /I/J/I o    �Q�Q 0 thislist thisList/J m    �P
�P 
TEXT/H l     /K�O�N/K o      �M�M 0 unparsedtext unparsedText�O  �N  /F /L/M/L r    /N/O/N o    �L�L 0 	olddelims 	oldDelims/O n     /P/Q/P 1    �K
�K 
txdl/Q 1    �J
�J 
ascr/M /R�I/R L    !/S/S o     �H�H 0 unparsedtext unparsedText�I  /7 R      �G/T/U
�G .ascrerr ****      � ****/T o      �F�F 0 errmsg errMsg/U �E/V�D
�E 
errn/V o      �C�C 0 errnum errNum�D  /8 k   ) C/W/W /X/Y/X Q   ) :/Z/[�B/Z r   , 1/\/]/\ o   , -�A�A 0 	olddelims 	oldDelims/] n     /^/_/^ 1   . 0�@
�@ 
txdl/_ 1   - .�?
�? 
ascr/[ R      �>�=�<
�> .ascrerr ****      � ****�=  �<  �B  /Y /`�;/` R   ; C�:/a/b
�: .ascrerr ****      � ****/a b   ? B/c/d/c m   ? @/e/e �/f/f > E R R O R :   u n P a r s e C h a r s ( )   h a n d l e r :  /d o   @ A�9�9 0 errmsg errMsg/b �8/g�7
�8 
errn/g o   = >�6�6 0 errnum errNum�7  �;  �Y  /  /h/i/h l     �5�4�3�5  �4  �3  /i /j/k/j l     �2�1�0�2  �1  �0  /k /l/m/l i  /n/o/n I      �//p�.�/  0 versioncompare versionCompare/p /q�-/q o      �,�, 	0 prefs  �-  �.  /o k    /r/r /s/t/s l     �+�*�)�+  �*  �)  /t /u/v/u r     
/w/x/w K     /y/y �(/z/{�( 0 v1  /z m    �'
�' 
null/{ �&/|/}�& 0 v2  /| m    �%
�% 
null/} �$/~�#�$ 	0 delim  /~ m    // �/�/�  .�#  /x o      �"�" 0 defaultprefs defaultPrefs/v /�/�/� r    /�/�/� b    /�/�/� o    �!�! 	0 prefs  /� o    � �  0 defaultprefs defaultPrefs/� o      �� 	0 prefs  /� /�/�/� l   ����  �  �  /� /�/�/� r    */�/�/� J    /�/� /�/�/� n   /�/�/� 1    �
� 
txdl/� 1    �
� 
ascr/� /��/� n    /�/�/� o    �� 	0 delim  /� o    �� 	0 prefs  �  /� J      /�/� /�/�/� o      �� 0 od  /� /��/� n     /�/�/� 1   & (�
� 
txdl/� 1   % &�
� 
ascr�  /� /�/�/� r   + F/�/�/� J   + 7/�/� /�/�/� n   + 0/�/�/� 2   . 0�
� 
citm/� n   + ./�/�/� o   , .�� 0 v1  /� o   + ,�� 	0 prefs  /� /��/� n   0 5/�/�/� 2   3 5�
� 
citm/� n   0 3/�/�/� o   1 3�� 0 v2  /� o   0 1�� 	0 prefs  �  /� J      /�/� /�/�/� o      �� 0 v1_list  /� /��
/� o      �	�	 0 v2_list  �
  /� /�/�/� r   G L/�/�/� o   G H�� 0 od  /� n     /�/�/� 1   I K�
� 
txdl/� 1   H I�
� 
ascr/� /�/�/� l  M M����  �  �  /� /�/�/� r   M h/�/�/� J   M Y/�/� /�/�/� I  M R�/��
� .corecnte****       ****/� o   M N� �  0 v1_list  �  /� /���/� I  R W��/���
�� .corecnte****       ****/� o   R S���� 0 v2_list  ��  ��  /� J      /�/� /�/�/� o      ���� 0 v1_count  /� /���/� o      ���� 0 v2_count  ��  /� /�/�/� Z   i x/�/���/�/� ?  i l/�/�/� o   i j���� 0 v1_count  /� o   j k���� 0 v2_count  /� r   o r/�/�/� o   o p���� 0 v1_count  /� o      ���� 0 maxcount maxCount��  /� r   u x/�/�/� o   u v���� 0 v2_count  /� o      ���� 0 maxcount maxCount/� /�/�/� l  y y��������  ��  ��  /� /�/�/� r   y |/�/�/� m   y z/�/� �/�/�  /� o      ���� 0 versionresult versionResult/� /�/�/� Y   } �/���/�/���/� k   � �/�/� /�/�/� Z  � �/�/�����/� >  � �/�/�/� o   � ����� 0 versionresult versionResult/� m   � �/�/� �/�/�  /�  S   � ���  ��  /� /�/�/� Z   � �/�/���/�/� B   � �/�/�/� o   � ����� 0 i  /� o   � ����� 0 v1_count  /� r   � �/�/�/� n   � �/�/�/� 4   � ���/�
�� 
cobj/� o   � ����� 0 i  /� o   � ����� 0 v1_list  /� o      ���� 0 v1_part  ��  /� r   � �/�/�/� m   � �����  /� o      ���� 0 v1_part  /� /�/�/� Z   � �/�/���/�/� B   � �/�/�/� o   � ����� 0 i  /� o   � ����� 0 v2_count  /� r   � �/�/�/� n   � �/�/�/� 4   � ���/�
�� 
cobj/� o   � ����� 0 i  /� o   � ����� 0 v2_list  /� o      ���� 0 v2_part  ��  /� r   � �0 00  m   � �����  0 o      ���� 0 v2_part  /� 000 l  � ���������  ��  ��  0 000 l  � ���������  ��  ��  0 000 Q   � �00	0
0 k   � �00 000 l  � ���00��  0 > 8log ("v1_part: " & v1_part & "   | v2_part: " & v2_part)   0 �00 p l o g   ( " v 1 _ p a r t :   "   &   v 1 _ p a r t   &   "       |   v 2 _ p a r t :   "   &   v 2 _ p a r t )0 0��0 Z   � �00000 ?  � �000 l  � �0����0 c   � �000 o   � ����� 0 v1_part  0 m   � ���
�� 
nmbr��  ��  0 l  � �0����0 c   � �000 o   � ����� 0 v2_part  0 m   � ���
�� 
nmbr��  ��  0 r   � �000 m   � ����� 0 o      ���� 0 versionresult versionResult0 0 0!0  A  � �0"0#0" l  � �0$����0$ c   � �0%0&0% o   � ����� 0 v1_part  0& m   � ���
�� 
nmbr��  ��  0# l  � �0'���0' c   � �0(0)0( o   � ��� 0 v2_part  0) m   � ��
� 
nmbr��  �  0! 0*�0* r   � �0+0,0+ m   � �����0, o      �� 0 versionresult versionResult�  0 l  � ��0-0.�  0- 1 + the two versions are the same, so continue   0. �0/0/ V   t h e   t w o   v e r s i o n s   a r e   t h e   s a m e ,   s o   c o n t i n u e��  0	 R      ���
� .ascrerr ****      � ****�  �  0
 r   � �000100 m   � �0202 �0303  ?01 o      �� 0 versionresult versionResult0 040504 l  � �����  �  �  05 06�06 l  � �����  �  �  �  �� 0 i  /� m   � ��� /� o   � ��� 0 maxcount maxCount��  /� 070807 l  � �����  �  �  08 090:09 Z  �0;0<��0; =  � �0=0>0= o   � ��� 0 versionresult versionResult0> m   � �0?0? �0@0@  0< r   � �0A0B0A m   � ���  0B o      �� 0 versionresult versionResult�  �  0: 0C0D0C l ����  �  �  0D 0E0F0E L  0G0G o  �� 0 versionresult versionResult0F 0H�0H l ����  �  �  �  /m 0I�0I l     ����  �  �  �       H�0J� (0K0L0M0N0O0P0Q0R0S0T0U0V0W0X0Y0Z0[0\0]0^0_0`0a0b0c0d0e0f0g0h0i0j0k0l0m0n0o0p0q0r0s0t0u0v0w0x0y0z0{0|0}0~00�0�0�0�0�0�0�0�0�0�0�0�0�0�0��  0J F������������������������~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�T�S�R�Q�P� 0 	debugmode 	DebugMode� 0 
scriptname 
ScriptName� &0 clickcommandposix clickCommandPosix� $0 encodecharforurl encodeCharForURL� $0 encodetextforurl encodeTextForURL� 0 
getfromfmp 
getFromFMP� 0 	sendtofmp 	sendToFMP� 40 displayfilemakerdatabase displayFileMakerDatabase� 20 ensurefilemakerdatabase ensureFileMakerDatabase� .0 openfilemakerdatabase openFileMakerDatabase� 0 sfr_dictget SFR_DictGet� 0 sfr_dictitem SFR_DictItem� 0 
sfr_escape 
SFR_Escape� 0 sfr_unescape SFR_Unescape� L0 $fmgui_managedatasources_ensureexists $fmGUI_ManageDataSources_EnsureExists� @0 fmgui_managedatasources_modify fmGUI_ManageDataSources_Modify� <0 fmgui_managedatasources_open fmGUI_ManageDataSources_Open� <0 fmgui_managedatasources_save fmGUI_ManageDataSources_Save� 60 fmgui_managedb_field_edit fmGUI_ManageDb_Field_Edit� :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_Select� >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocus� @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable� 00 fmgui_managedb_gototab fmGUI_ManageDb_GoToTab�~ >0 fmgui_managedb_gototab_fields fmGUI_ManageDb_GoToTab_Fields�} L0 $fmgui_managedb_gototab_relationships $fmGUI_ManageDb_GoToTab_Relationships�| >0 fmgui_managedb_gototab_tables fmGUI_ManageDb_GoToTab_Tables�{ B0 fmgui_managedb_listoftablenames fmGUI_ManageDb_ListOfTableNames�z J0 #fmgui_managedb_listofxdbctablenames #fmGUI_ManageDb_ListOfXDBCTableNames�y *0 fmgui_managedb_open fmGUI_ManageDb_Open�x *0 fmgui_managedb_save fmGUI_ManageDB_Save�w N0 %fmgui_managedb_table_listoffieldnames %fmGUI_ManageDb_Table_ListOfFieldNames�v >0 fmgui_managedb_tablelistfocus fmGUI_ManageDb_TableListFocus�u .0 fmgui_managedb_to_add fmGUI_ManageDb_TO_Add�t 60 fmgui_managedb_to_listadd fmGUI_ManageDB_TO_ListAdd�s &0 fmgui_checkboxset fmGUI_CheckboxSet�r B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow�q 40 fmgui_pastefromclipboard fmGUI_PasteFromClipboard�p :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand�o  0 fmgui_popupset fmGUI_PopupSet�n 00 fmgui_selectallandcopy fmGUI_SelectAllAndCopy�m (0 fmgui_textfieldset fmGUI_TextFieldSet�l (0 fmgui_appfrontmost fmGUI_AppFrontMost�k 00 fmgui_dataviewer_close fmGUI_DataViewer_Close�j .0 fmgui_inspector_close fmGUI_Inspector_Close�i 00 fmgui_inspector_ensure fmGUI_Inspector_Ensure�h 20 fmgui_modeensure_browse fmGUI_ModeEnsure_Browse�g .0 fmgui_modeensure_find fmGUI_ModeEnsure_Find�f 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout�e $0 fmgui_modeselect fmGUI_ModeSelect�d (0 fmgui_window_close fmGUI_Window_Close�c "0 windowwaituntil windowWaitUntil�b 20 windowwaituntil_frontis windowWaitUntil_FrontIS�a "0 indexoflistitem indexOfListItem�` 0 listcontains listContains�_ $0 listuniquevalues listUniqueValues�^ 0 sort  �] 0 
logconsole 
logConsole�\ 0 loglevel logLEVEL�[ 0 logmain logMAIN�Z (0 systemnotification systemNotification�Y 0 writetofile writeToFile�X 0 clickatcoords clickAtCoords�W *0 clickobjectbycoords clickObjectByCoords�V  0 coercetostring coerceToString�U 0 gettextbefore getTextBefore�T  0 gettextbetween getTextBetween�S 0 
parsechars 
parseChars�R 0 replacesimple replaceSimple�Q 0 unparsechars unParseChars�P  0 versioncompare versionCompare
� boovfals0K �0�0� � / U s e r s / e s h a g d a r / C o d e / a p p l e s c r i p t - f m - h e l p e r / v e n d o r / c l i c l i c k / c l i c l i c k0L �O @�N�M0�0��L�O $0 encodecharforurl encodeCharForURL�N �K0��K 0�  �J�J 0 	this_char  �M  0� �I�H�G�F�E�I 0 	this_char  �H 0 	ascii_num 	ASCII_num�G 0 hex_list  �F 0 x  �E 0 y  0� �D Z ^ b f j n r v z ~ � � � � � ��C�B ��A
�D .sysoctonshor       TEXT�C 
�B 
cobj
�A 
TEXT�L L�j  E�O���������������a a vE�O�a �a "k/E�O�a �a #k/E�Oa �%�%a &0M �@ ��?�>0�0��=�@ $0 encodetextforurl encodeTextForURL�? �<0��< 0�  �;�:�9�; 0 	this_text  �: 0 encode_url_a encode_URL_A�9 0 encode_url_b encode_URL_B�>  0� 	�8�7�6�5�4�3�2�1�0�8 0 	this_text  �7 0 encode_url_a encode_URL_A�6 0 encode_url_b encode_URL_B�5 0 standard_characters  �4 0 url_a_chars URL_A_chars�3 0 url_b_chars URL_B_chars�2 0 acceptable_characters  �1 0 encoded_text  �0 0 	this_char  0� 	 � � ��/�.�-�,�+
�/ 
kocl
�. 
cobj
�- .corecnte****       ****�, $0 encodecharforurl encodeCharForURL
�+ 
TEXT�= g�E�O�E�O�E�O�E�O�f  
��%E�Y hO�f  
��%E�Y hO�E�O .�[��l kh �� 
��%E�Y �*�k+ %�&E�[OY��O�0N �*@�)�(0�0��'�* 0 
getfromfmp 
getFromFMP�) �&0��& 0�  �%�% 	0 prefs  �(  0� 
�$�#�"�!� ������$ 	0 prefs  �# 0 fmtype fmType�" 0 
astransfer 
asTransfer�! 0 fmpname fmpName�  0 fmpactivename fmpActiveName� 0 begintellfm beginTellFM� 0 	endtellfm 	endTellFM� 0 	codetoget 	codeToGet� 0 
sendsource 
sendSource� 0 	inputdata 	inputData0� ���]ek���0����������������� 0 fmtype fmType�  �  
� .earsffdralis        afdr
� 
pcap0�  
� 
dnam
� 
ret 
� .sysodsct****        scpt�' � 
��,E�W 
X  �E�O�E�O�E�O)j � Y� *�k/�[�,\Z�>1�,E�UO��  �%�%�%E�Y %��  a �%E�Y �a   a �%E�Y hO�a %E�Y a E�Oa E�Oa �%a %E�O��%�%E�O�j E�O�0O ����0�0��� 0 	sendtofmp 	sendToFMP� �0�� 0�  �� 0 somedata someData�  0� ���
�	��������� 0 somedata someData� 0 fmtype fmType�
 0 
astransfer 
asTransfer�	 0 fmpname fmpName� 0 fmpactivename fmpActiveName� 0 begintellfm beginTellFM� 0 	endtellfm 	endTellFM� "0 somedatacleaned someDataCleaned� 0 	olddelims 	oldDelims� 0 	backslash  � 0 	codetoset 	codeToSet� 0 
sendsource 
sendSource0� #� ������#��>��0���FPR��X`fmv}���������������������  0 fmtype fmType�� 0 somedata someData��  ��  
�� .earsffdralis        afdr
�� 
pcap
�� 
dnam
�� 
ret 
�� 
TEXT
�� 
ascr
�� 
txdl�� \
�� .sysontocTEXT       shor
�� 
citm
�� .sysodsct****        scpt�* ��,E�O��,E�W 
X  �E�O�E�O�E�O)j � [� *�k/�[�,\Z�>1�,E�UO��  ��%�%�%E�Y '�a   a �%E�Y �a   a �%E�Y hO�a %E�Y a E�Oa E�O�a &E�O_ a ,E�Oa j E�O�_ a ,FO�a -E�O��%_ a ,FO�a &E�Oa _ a ,FO�a -E�O�a %_ a ,FO�a &E�O�_ a ,FOa �%a  %�%a !%E�O��%�%E�O�j "OP0P ������0�0����� 40 displayfilemakerdatabase displayFileMakerDatabase�� ��0��� 0�  ���� 	0 prefs  ��  0� �������������������������� 	0 prefs  �� 0 defaultprefs defaultPrefs�� 0 dbname dbName�� ,0 waitsavetotalseconds waitSaveTotalSeconds�� .0 waitcycledelayseconds waitCycleDelaySeconds�� 0 waitcyclemax waitCycleMax�� 0 fmappbundleid fmAppBundleID�� 0 doclist docList�� 0 errmsg errMsg�� 0 errnum errNum�� 0 onedoc oneDoc�� 0 docname docName0� 0��.����������G������������x|������������0������������������������������������>]_�� 0 	fmapptype 	fmAppType�� .0 waitcycledelayseconds waitCycleDelaySeconds�� �� ,0 waitsavetotalseconds waitSaveTotalSeconds
�� 
min �� ��  0 coercetostring coerceToString�� 0 
logconsole 
logConsole�� 0 dbname dbName
�� 
dire
�� olierndD
�� .sysorondlong        doub
�� 
null
�� 
capp
�� kfrmID  
�� 
docu�� 0 errmsg errMsg0� ���
� 
errn� 0 errnum errNum�  ����
�� 
errn
�� .sysodelanull��� ��� nmbr
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pnam
�� 
cha 
�� 
rvse
�� 
TEXT
�� 
rslt
�� 
ctxt
�� 
psof
�� 
psin�� 
� .sysooffslong    ��� null
� .ascrcmnt****      � ****
� .miscmvisnull���    obj ���������l� �E�O��%E�Ob    *b  �*�k+ %l+ 	Y hO��,E�O��,E�O��,E�O��!��l E�O��,�  �E�Y a E�O b�kha E�O -a Z*a �a 0 	*a -E�UO�a  Y hOPW X  �a   hY )a �la �%O�j [OY��O ߧ[a a l kh 
�a ,E�O�a  -a !,a "&O_ #[a $\[Z*a %a &a '_ #a ( )k\Zi2EO_ #a  -a !,a "&E�Ob    
�j *Y hOb    
�j *Y hOga + Q�a "&�a "&  Aa Z*a �a 0 *�j ,Ob    )b  a -)�k+ %l+ 	Y hOPUOeY hV[OY�3OfOPW X  )a �la .�%a /%�%OP0Q �j��0�0��� 20 ensurefilemakerdatabase ensureFileMakerDatabase� �0�� 0�  �� 	0 prefs  �  0� ���� 	0 prefs  � 0 dbname dbName� 0 isdisplayed isDisplayed0� �������������� 0 dbname dbName� 0 	fmapptype 	fmAppType� � 40 displayfilemakerdatabase displayFileMakerDatabase� 0 
logconsole 
logConsole� .0 openfilemakerdatabase openFileMakerDatabase
� .sysodelanull��� ��� nmbr� ���,E�O*����k+ E�Ob    *b  �%l+ Y hO� eY Zb    *b  �%l+ Y hO*�k+  5�j 
Ob    *b  �%l+ Y hO*����k+ E�O�Y f0R ����0�0��� .0 openfilemakerdatabase openFileMakerDatabase� �0�� 0�  �� 	0 prefs  �  0� ������� 	0 prefs  � 0 	customurl 	customURL� 0 fmpurl fmpURL� 0 errmsg errMsg�� 0 errnum errNum0� ���w ��$��(��,��JM��\_o������0��� 0 dbname dbName�� 0 serverip serverIP�� 0 
maindbname 
mainDbName�� <0 customlinkreceiverscriptname customLinkReceiverScriptName�� $0 encodetextforurl encodeTextForURL�� 0 replacesimple replaceSimple�� 0 
logconsole 
logConsole
�� .GURLGURLnull��� ��� TEXT�� 0 errmsg errMsg0� ������
�� 
errn�� 0 errnum errNum��  � � w��,%�%E�O� `��,%�%��,%�%��,%�%)�efm+ %E�O)���mvk+ E�O)��a mvk+ E�Ob    )b  a �%l+ Y hO�j OPUOeOPW X  �OPOP0S �������0�0����� 0 sfr_dictget SFR_DictGet�� ��0��� 0�  ������ 0 somedict someDict�� 0 itemname itemName��  0� ���������������� 0 somedict someDict�� 0 itemname itemName�� 0 	keystring 	keyString�� 0 	endstring 	endString�� 0 	olddelims 	oldDelims�� 0 
keyremoved 
keyRemoved�� 0 	itemvalue 	itemValue0� 
����������������� 0 
sfr_escape 
SFR_Escape
�� 
ascr
�� 
txdl
�� 
citm�� 0 sfr_unescape SFR_Unescape�� Y�*�k+ %�%E�O�E�O�� �Y 3��,E�O���,FO��l/E�O�� �Y ���,FO��k/E�O���,FO*�k+ 	OP0T ��~�}0�0��|� 0 sfr_dictitem SFR_DictItem�~ �{0��{ 0�  �z�y�z 0 itemname itemName�y 0 	itemvalue 	itemValue�}  0� �x�w�x 0 itemname itemName�w 0 	itemvalue 	itemValue0� %�v)-�v 0 
sfr_escape 
SFR_Escape�| �*�k+ %�%*�k+ %�%0U �u6�t�s0�0��r�u 0 
sfr_escape 
SFR_Escape�t �q0��q 0�  �p�p 0 
somestring 
someString�s  0� �o�n�m�o 0 
somestring 
someString�n  0 escapecharlist escapeCharList�m 0 onechar oneChar0� 
HLPS�l�k�j�ij�h�l 
�k 
kocl
�j 
cobj
�i .corecnte****       ****�h 0 replacesimple replaceSimple�r 4�����vE�O $�[��l kh *���%mvk+ 	E�OP[OY��O�OP0V �gz�f�e0�0��d�g 0 sfr_unescape SFR_Unescape�f �c0��c 0�  �b�b 0 
somestring 
someString�e  0� �a�`�_�a 0 
somestring 
someString�`  0 escapecharlist escapeCharList�_ 0 onechar oneChar0� 
�����^�]�\�[��Z�^ 
�] 
kocl
�\ 
cobj
�[ .corecnte****       ****�Z 0 replacesimple replaceSimple�d 4�����vE�O $�[��l kh *��%�mvk+ 	E�OP[OY��O�OP0W �Y��X�W0�0��V�Y L0 $fmgui_managedatasources_ensureexists $fmGUI_ManageDataSources_EnsureExists�X �U0��U 0�  �T�T 	0 prefs  �W  0� �S�R�Q�P�O�N�S 	0 prefs  �R 0 defaultprefs defaultPrefs�Q  0 datasourcename dataSourceName�P  0 datasourcepath dataSourcePath�O 0 errmsg errMsg�N 0 errnum errNum0� "�M�L�K�J��I��H��G�F�E�D�C0��B�A�@�?H�>M�=�<�;�:u���90��8���M  0 datasourcename dataSourceName
�L 
null�K  0 datasourcepath dataSourcePath�J �I <0 fmgui_managedatasources_open fmGUI_ManageDataSources_Open
�H 
pcap�G (0 fmgui_appfrontmost fmGUI_AppFrontMost
�F 
cwin
�E 
scra
�D 
tabB
�C 
crow
�B 
sttx
�A 
pnam
�@ .coredoexnull���     ****
�? 
butT�> B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow
�= .sysodelanull��� ��� nmbr
�< 
txtf
�; 
valL
�: 
txta�9 0 errmsg errMsg0� �7�6�5
�7 
errn�6 0 errnum errNum�5  
�8 
errn�V�����E�O��%E�O��,E�O��,E�O��  
�%E�Y hO �*jvk+ O� �*��/ �)j+ 	O*�k/�k/�k/�k/�[�k/a ,\Z�81j  v)*�k/a k/�[a ,\Za >1k+ Oa j O�*�k/a k/a ,FO�*�k/�k/a k/a ,FO)*�k/a k/�[a ,\Za >1k+ Oa j Oa �%Y a �%UUOPW X  )a �la  �%a !%�%OP0X �4��3�20�0��1�4 @0 fmgui_managedatasources_modify fmGUI_ManageDataSources_Modify�3 �00��0 0�  �/�/ 	0 prefs  �2  0� �.�-�,�+�*�)�. 	0 prefs  �- 0 defaultprefs defaultPrefs�,  0 datasourcename dataSourceName�+  0 datasourcepath dataSourcePath�* 0 errmsg errMsg�) 0 errnum errNum0� #�(�'�&�%��$��#��"�!� ��0������A�F����nz��0�����(  0 datasourcename dataSourceName
�' 
null�&  0 datasourcepath dataSourcePath�% �$ <0 fmgui_managedatasources_open fmGUI_ManageDataSources_Open
�# 
pcap�" (0 fmgui_appfrontmost fmGUI_AppFrontMost
�! 
cwin
�  
scra
� 
tabB
� 
crow
� 
sttx
� 
pnam
� .coredoexnull���     ****
� .miscslctnull���     uiel
� 
butT� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow
� .sysodelanull��� ��� nmbr
� 
txtf
� 
valL
� 
txta� 0 errmsg errMsg0� ���
� 
errn� 0 errnum errNum�  
� 
errn�1&�����E�O��%E�O��,E�O��,E�O��  
�%E�Y hO �*jvk+ O� �*��/ �)j+ 	O*�k/�k/�k/�k/�[�k/a ,\Z�81j  �*�k/�k/�k/�k/�[�k/a ,\Z�81j O)*�k/a k/�[a ,\Za >1k+ Oa j O�*�k/a k/a ,FO�*�k/�k/a k/a ,FO)*�k/a k/�[a ,\Za >1k+ Oa j Oa �%Y 
a �%OPUUOPW X  )a  �la !�%a "%�%OP0Y ����0�0��� <0 fmgui_managedatasources_open fmGUI_ManageDataSources_Open� �
0��
 0�  �	�	 	0 prefs  �  0� ���� 	0 prefs  � 0 errmsg errMsg� 0 errnum errNum0� ��������� ������0������0����
� 
pcap� (0 fmgui_appfrontmost fmGUI_AppFrontMost
� 
cwin
� 
pnam
� 
mbar
�  
mbri
�� 
menE
�� 
menI
�� .prcsclicnull��� ��� uiel�� 0 errmsg errMsg0� ������
�� 
errn�� 0 errnum errNum��  
�� 
errn� ` K� C*��/ ;)j+ O*�k/�,� eY %*�k/��/�k/��/�k/�k/�[�,\Z�>1j OeUUW X  )a �la �%OP0Z ��		����0�0����� <0 fmgui_managedatasources_save fmGUI_ManageDataSources_Save�� ��0��� 0�  ���� 	0 prefs  ��  0� 	�������������������� 	0 prefs  �� 0 defaultprefs defaultPrefs�� 00 managewindownameprefix manageWindowNamePrefix�� .0 waitcycledelayseconds waitCycleDelaySeconds�� ,0 waitsavetotalseconds waitSaveTotalSeconds�� 0 waitcyclemax waitCycleMax�� $0 managewindowname manageWindowName�� 0 errmsg errMsg�� 0 errnum errNum0� !��	*����������	���	���������	{������0���	���	�����	���	���������	��� 40 notinmanagewindowiserror notInManageWindowIsError�� 
�� 
min 
�� 
dire
�� olierndD
�� .sysorondlong        doub
�� 
pcap�� (0 fmgui_appfrontmost fmGUI_AppFrontMost
�� 
cwin
�� 
pnam
�� 
butT
�� .prcsclicnull��� ��� uiel
�� .sysodelanull��� ��� nmbr�� 0 errmsg errMsg0� ������
�� 
errn�� 0 errnum errNum��  
�� 
errn�� �� 0 
windowname 
windowName��  0 windownametest windowNameTest�� 0 whichwindow whichWindow�� .0 waitcycledelayseconds waitCycleDelaySeconds�� 0 waitcyclemax waitCycleMax�� 
�� "0 windowwaituntil windowWaitUntil�� ��elE�O��%E�O�E�O�E�O�� E�O��!��l E�O �� �*��/ c)j+ 
O*�k/�,� 8 !*�k/�,E�O*�k/��/j Okj OPW X  )a �la �%Y ��,E )a a la Y eOPUO)a �a a a a a �a �a k+ Okj OeOPUW X  )a �la  �%OP0[ ��	�����0�0����� 60 fmgui_managedb_field_edit fmGUI_ManageDb_Field_Edit�� ��0��� 0�  ���� 	0 prefs  ��  0� ������������������߿߾߽߼߻ߺ߹߸߷߶ߵߴ߳�� 	0 prefs  �� 0 defaultprefs defaultPrefs�� 0 editmode editMode�� $0 fieldnowselected fieldNowSelected�� 0 changebutton changeButton��  0 fieldtypepopup fieldTypePopup�� *0 notevaluatecheckbox notEvaluateCheckbox�� 0 workingarea workingArea�� .0 globalstoragecheckbox globalStorageCheckbox߿ (0 donotstorecheckbox doNotStoreCheckbox߾ &0 autoindexcheckbox autoIndexCheckbox߽ 0 datatypepopup dataTypePopup߼ 0 fdsfdsf  ߻ 0 
menuchoice 
menuChoiceߺ 0 datacheckbox dataCheckbox߹ .0 autoentercalccheckbox autoEnterCalcCheckbox߸ 20 autoentercalccode_value autoEnterCalcCode_VALUE߷ @0 overwriteexistingvaluecheckbox overwriteExistingValueCheckbox߶ *0 prohibitmodcheckbox prohibitModCheckboxߵ 40 validationcalccode_value validationCalcCode_VALUEߴ 0 errmsg errMsg߳ 0 errnum errNum0� �߲
߱߰߯߮߭߬߫ߪߩߨߧߦߥߤߣߢߡߠߟߞߝߜߛߚߙߘߗߖߕߔ�ߓ�ߒߑߐߏ0�ߎ
�ߍ
�ߌߋ
�ߊ
�߉߈߇ %+߆߅?I���߄�߃߂��
߁߀(��~�}`��|��{���#.�z2�y5�x�wMZdv������
%@jw{~����� �����	`�v�����u'+.ct���������!f�t����s��r�q����0:HLTZbhpv~�����������������
.?P|���3D�pj������#Y����$=JNQ����o0���n�߲ 0 editmode editMode߱ 0 	tablename 	tableName
߰ 
null߯ 0 	fieldname 	fieldName߮ 0 altpatterns altPatterns߭ 0 fieldcomment fieldComment߬ 0 datatype dataType߫ 0 	fieldtype 	fieldTypeߪ 0 calccode calcCodeߩ &0 autoentercalccode autoEnterCalcCodeߨ 20 autoentercalccontexttoc autoEnterCalcContextTOCߧ  0 alwaysevaluate alwaysEvaluateߦ  0 calccontexttoc calcContextTOCߥ 0 storageglobal storageGlobalߤ 20 storecalculationresults storeCalculationResultsߣ (0 storageindexchoice storageIndexChoiceߢ 0 	autoindex 	autoIndexߡ 0 maxrepetition maxRepetitionߠ 0 indexlanguage indexLanguageߟ 0 allowediting allowEditingߞ 00 overwriteexistingvalue overwriteExistingValueߝ *0 autoenterisconstant autoEnterIsConstantߜ 00 autoenteriscalculation autoEnterIsCalculationߛ &0 autoenterislookup autoEnterIsLookupߚ .0 autoenterspecialvalue autoEnterSpecialValueߙ 0 
autoserial 
autoSerialߘ .0 autoenterconstantdata autoEnterConstantDataߗ (0 validationcalccode validationCalcCodeߖ 40 validationcalccontexttoc validationCalcContextTOCߕ 8ߔ :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_Select
ߓ 
pcapߒ (0 fmgui_appfrontmost fmGUI_AppFrontMost
ߑ 
cwin
ߐ 
tabg
ߏ 
butT
ߎ 
titl
ߍ 
txtfߌ (0 fmgui_textfieldset fmGUI_TextFieldSet
ߋ .prcsclicnull��� ��� uiel
ߊ .sysodelanull��� ��� nmbr
߉ 
bool
߈ 
popB
߇ 
valL
߆ 
errn߅ ߄  0 fmgui_popupset fmGUI_PopupSet߃ B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow
߂ 
pnam߁ 0 
windowname 
windowName߀ 20 windowwaituntil_frontis windowWaitUntil_FrontIS
� 
scra�~ 
�} 
txta
�| 
chbx�{ &0 fmgui_checkboxset fmGUI_CheckboxSet�z  0 windownametest windowNameTest�y 0 whichwindow whichWindow�x �w "0 windowwaituntil windowWaitUntil
�v 
radB�u *0 clickobjectbycoords clickObjectByCoords
�t 
pcls�s 0 autonextvalue autoNextValue�r 0 autoincrement autoIncrement�q 0 autogenerate autoGenerate
�p 
leng�o 0 errmsg errMsg0� �m�l�k
�m 
errn�l 0 errnum errNum�k  �n  0 coercetostring coerceToString�������������������������������a �a �a �a �a �a �a �a �a �a �a �a �a �a �a E�O��%E�O��,E�O��,� e�a ,FY hO*�k+ E�O� fY hOa  �*a !a "/�)j+ #O*a $k/a %k/a &k/a '[a (,\Za )81E�O��,� 3)*a $k/a %k/a *a +/��,l+ , 
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
a �E�Y hO)�a 2a �/�l+ AOPY u�a ,a �  Z)�a Qk/a '[a (,\Za �81jl+ SO)�a Qk/a '[a (,\Za �81jl+ SO)�a Qk/a '[a D,\Za �@1jl+ SOPY �a ,�  hY hOPY hO�a ,� a�a Qk/a '[a D,\Za �@1E�O�a ,E 4)�kl+ SO�a ,�  hY )�a La �/a Na �/�a ,l+ ,Y 	)�jl+ SOPY hO�a ,� hY hO�a ,���a , )�a Qa �/jl+ SOPY�a Qa �/E�O�a 4,k )�k+ CY )�a &k/a '[a D,\Za �>1k+ CO)a Ha �lk+ JO*a $k/E�O��,a �,j  a �E^ Y 	��,E^ O)*a $k/a La M/a Nk/] l+ ,O��,� ")�a 2k/a '[a D,\Za �@1��,l+ AY hO��,� 5�a Qk/a '[a D,\Za �@1E�O��,E )�jl+ SY 	)�kl+ SY hO)�a &k/a '[a D,\Za �@1k+ CO)a Ha �a Ya �a [a �a ]k+ ^O*a $k/a %k/E�O�a ,� =�a Qk/a '[a D,\Za �@1E^ O�a ,E )] jl+ SY )] kl+ SY hOPOPY hO�a ,� =�a Qk/a '[a D,\Za �@1E^ O�a ,E )] jl+ SY )] kl+ SY hO�a �a �/j -O�a ,� �)�a &a �/k+ CO)a Ha �lk+ JO*a $k/E�O�a ,a �,j  a �E^ Y �a ,E^ O)*a $k/a La M/a Nk/] l+ ,O�a ,� $)�a 2k/a '[a D,\Za �@1�a ,l+ AY hO)�a &k/a '[a D,\Za �@1k+ CO)a Ha �a Ya �a [a �a ]k+ ^O*a $k/a %k/E�OPY hO)*a $k/a &k/a '[a D,\Za �@1k+ CO)a Ha �a Ya �a [a �a ]k+ ^OeOPY hOeOPUUOPW "X � �)a :] la �*�k+ �%a �%] %OP0\ �j��i�h0�0��g�j :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_Select�i �f0��f 0�  �e�e 	0 prefs  �h  0� �d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�T�d 	0 prefs  �c 0 defaultprefs defaultPrefs�b  0 testcodeheader testCodeHeader�a 0 
selectcode 
selectCode�` 0 
rowrefcode 
rowRefCode�_ 0 	whosecode 	whoseCode�^ *0 fieldnameobjectcode fieldNameObjectCode�] $0 betweentestscode betweenTestsCode�\ &0 afteralltestscode afterAllTestsCode�[  0 testcodefooter testCodeFooter�Z 0 errmsg errMsg�Y 0 errnum errNum�X $0 fieldnowselected fieldNowSelected�W 0 onealtpattern oneAltPattern�V 0 testlist testList�U 0 testcode testCode�T 0 
onetestrec 
oneTestRec0� 4�S�R�Q�P�O��N%0<>�M�L�K��J��I�H�G�F�E0��D�C�B�A0��@�?�>�=�<�;�:��9��8�7��6�5l�4p�S 0 	fieldname 	fieldName
�R 
null�Q 0 	tablename 	tableName�P 0 altpatterns altPatterns�O 
�N 
ret �M >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocus�L @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable�K (0 fmgui_appfrontmost fmGUI_AppFrontMost
�J 
pcap
�I 
cwin
�H 
tabg
�G 
scra
�F 
tabB
�E 
crow
�D 
sttx
�C 
valL
�B .miscslctnull���     uiel�A 0 errmsg errMsg0� �3�2�1
�3 
errn�2 0 errnum errNum�1  �@�I
�? 
errn
�> 
kocl
�= 
cobj
�< .corecnte****       ****�; 0 pattern  
�: 
pcnt�9 0 testtype testType�8 0 	testmatch 	testMatch�7 0 quotestring quoteString�6 0 unparsechars unParseChars
�5 .sysodsct****        scpt�4  0 coercetostring coerceToString�g��������E�O��%E�O��%�%�%E�O�E�O�E�O�E�O�E�O�E�O�E�O��%�%�%E�O]*jvk+ O��,� *��,k+ Y hO*j+ O Ma  @*a a / 4*a k/a k/a k/a k/a k/a [a k/a ,\Z��,81j UUOeW �X   �a ! )a "�l�Y �fE�O à�,[a #a $l %kh �a &,a ',E�O jvE�O 7�[a #a $l %kh a (] a ),%a *%)] a +,k+ ,%�6G[OY��O)���%a -%l+ .E�O��%�%�%a /%�%�%E�O��%�%E�O) �j 0UOeE�OOPW X   �a ! )a "�l�Y hOPOP[OY�QO�OPOPW X   )a "�la 1*�k+ 2%a 3%�%OP0] �0{�/�.0�0��-�0 >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocus�/ �,0��, 0�  �+�+ 	0 prefs  �.  0� �*�)�(�* 	0 prefs  �) 0 errmsg errMsg�( 0 errnum errNum0� �'��&��%�$�#�"�!� �0����' >0 fmgui_managedb_gototab_fields fmGUI_ManageDb_GoToTab_Fields
�& 
pcap�% (0 fmgui_appfrontmost fmGUI_AppFrontMost
�$ 
cwin
�# 
tabg
�" 
scra
�! 
tabB
�  
focu� 0 errmsg errMsg0� ���
� 
errn� 0 errnum errNum�  
� 
errn�- G 6*jvk+  O� $*��/ )j+ Oe*�k/�k/�k/�k/�,FOeUUOPW X 
 )�l��%OP0^ ����0�0��� @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable� �0�� 0�  �� 0 basetablename baseTableName�  0� ���� 0 basetablename baseTableName� 0 errmsg errMsg� 0 errnum errNum0� ����������0��
� >0 fmgui_managedb_gototab_fields fmGUI_ManageDb_GoToTab_Fields
� 
pcap
� 
cwin
� 
tabg
� 
popB�  0 fmgui_popupset fmGUI_PopupSet� 0 errmsg errMsg0� �	��
�	 
errn� 0 errnum errNum�  
�
 
errn� B -*jvk+  O� *��/ )*�k/�k/��/�l+ OeUUW X 	 
)�l�%�%�%OP0_ ���0�0��� 00 fmgui_managedb_gototab fmGUI_ManageDb_GoToTab� �0�� 0�  �� 	0 prefs  �  0� � ���������  	0 prefs  �� 0 defaultprefs defaultPrefs�� 0 	tabobject 	tabObject�� 0 errmsg errMsg�� 0 errnum errNum0� ��"����_��]������0���������0���ko�� 0 tabname tabName�� (0 fmgui_appfrontmost fmGUI_AppFrontMost�� *0 fmgui_managedb_open fmGUI_ManageDb_Open
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
�� .prcsclicnull��� ��� uiel�� 0 errmsg errMsg0� ������
�� 
errn�� 0 errnum errNum��  
�� 
errn� w��lE�O��%E�O M*j+ O*jvk+ O� 7*��/ /*�k/�k/�k/�[�,\Z��,@1E�O��,k 
�j Y hOeUUW X  )a �la ��,%a %�%OP0` ��z����0�0����� >0 fmgui_managedb_gototab_fields fmGUI_ManageDb_GoToTab_Fields�� ��0��� 0�  ���� 	0 prefs  ��  0� ���� 	0 prefs  0� ������� 0 tabname tabName�� 00 fmgui_managedb_gototab fmGUI_ManageDb_GoToTab�� *��lk+ OP0a �������0�0����� L0 $fmgui_managedb_gototab_relationships $fmGUI_ManageDb_GoToTab_Relationships�� ��0��� 0�  ���� 	0 prefs  ��  0� ���� 	0 prefs  0� ������� 0 tabname tabName�� 00 fmgui_managedb_gototab fmGUI_ManageDb_GoToTab�� *��lk+ OP0b �������0�0����� >0 fmgui_managedb_gototab_tables fmGUI_ManageDb_GoToTab_Tables�� ��0��� 0�  ���� 	0 prefs  ��  0� ���� 	0 prefs  0� ������� 0 tabname tabName�� 00 fmgui_managedb_gototab fmGUI_ManageDb_GoToTab�� *��lk+ OP0c �������0�0����� B0 fmgui_managedb_listoftablenames fmGUI_ManageDb_ListOfTableNames�� ��0��� 0�  ���� 	0 prefs  ��  0� ���������� 	0 prefs  �� 0 fmtablenames fmTableNames�� 0 errmsg errMsg�� 0 errnum errNum0� ����������������0�޿޾޽޼0�޻!�� >0 fmgui_managedb_gototab_tables fmGUI_ManageDb_GoToTab_Tables
�� 
pcap�� (0 fmgui_appfrontmost fmGUI_AppFrontMost
�� 
cwin
�� 
tabg
�� 
scra
�� 
tabB
�� 
crow
޿ 
sttx
޾ 
valL޽ *0 fmgui_managedb_save fmGUI_ManageDB_Save޼ 0 errmsg errMsg0� ޺޹޸
޺ 
errn޹ 0 errnum errNum޸  
޻ 
errn�� b M*jvk+  O� =*��/ 5)j+ O*�k/�k/�k/�k/�-�[�l/�,\Z�81�k/�,E�O)jvk+ O�UUW X  )a �la �%OP0d ޷,޶޵0�0�޴޷ J0 #fmgui_managedb_listofxdbctablenames #fmGUI_ManageDb_ListOfXDBCTableNames޶ ޳0�޳ 0�  ޲޲ 	0 prefs  ޵  0� ޱްޯޮޱ 	0 prefs  ް  0 xdbctablenames xDBCTableNamesޯ 0 errmsg errMsgޮ 0 errnum errNum0� ޭxެvޫުީިާަ0�ޥޤkޣޢ0�ޡ�ޭ >0 fmgui_managedb_gototab_tables fmGUI_ManageDb_GoToTab_Tables
ެ 
pcapޫ (0 fmgui_appfrontmost fmGUI_AppFrontMost
ު 
cwin
ީ 
tabg
ި 
scra
ާ 
tabB
ަ 
crow
ޥ 
sttx
ޤ 
valLޣ *0 fmgui_managedb_save fmGUI_ManageDB_Saveޢ 0 errmsg errMsg0� ޠޟޞ
ޠ 
errnޟ 0 errnum errNumޞ  
ޡ 
errn޴ b M*jvk+  O� =*��/ 5)j+ O*�k/�k/�k/�k/�-�[�l/�,\Z�91�k/�,E�O)jvk+ O�UUW X  )a �la �%OP0e ޝ�ޜޛ0�0�ޚޝ *0 fmgui_managedb_open fmGUI_ManageDb_Openޜ ޙ0�ޙ 0�  ޘޘ 	0 prefs  ޛ  0� ޗޖޕޔޓޗ 	0 prefs  ޖ *0 lookingforxdbcerror lookingForXDBCErrorޕ 0 	zoomfield 	zoomFieldޔ 0 errmsg errMsgޓ 0 errnum errNum0� (�ޒ�ޑސޏ�ގލ�ތދ�0��ފމ�ވއ1@Uކޅބoxރނށ�ހ��~�}0��|�
ޒ 
pcapޑ (0 fmgui_appfrontmost fmGUI_AppFrontMost
ސ 
cwin
ޏ 
pnam
ގ 
mbar
ލ 
mbri
ތ 
menE
ދ 
menI
ފ .prcsclicnull��� ��� uiel
މ .sysodelanull��� ��� nmbr
ވ 
butTއ L0 $fmgui_managedb_gototab_relationships $fmGUI_ManageDb_GoToTab_Relationships
ކ 
faal
ޅ eMdsKcmd
ބ .prcskprsnull���     ctxt
ރ 
tabg
ނ 
txtf
ށ 
focu
ހ 
valL
� 
scra
�~ 
scrb�} 0 errmsg errMsg0� �{�z�y
�{ 
errn�z 0 errnum errNum�y  
�| 
errnޚ����*��/�)j+ O*�k/�,� eYs*�k/��/�k/��/�k/�k/�[�,\Z�>1j Okj OeE�O ;h�*�k/�,a  #*�k/a k/�[�,\Za 81j Okj Y fE�[OY��O)jvk+ Okj OeE�O ;h�*�k/�,a  #*�k/a k/�[�,\Za 81j Okj Y fE�[OY��Oa a a l Okj OeE�O 2h�*�k/�,a  *�k/a a /j Okj Y fE�[OY��O*�k/a k/a k/E�Oe�a ,FOa  �a !,FOe*�k/a k/a "k/a ,FOj*�k/a k/a "k/a #k/a !,FOj*�k/a k/a "k/a #l/a !,FOeUUW X $ %)a &�la '�%OP0f �x��w�v0�0��u�x *0 fmgui_managedb_save fmGUI_ManageDB_Save�w �t0��t 0�  �s�s 	0 prefs  �v  0� 	�r�q�p�o�n�m�l�k�j�r 	0 prefs  �q 0 defaultprefs defaultPrefs�p 40 managedbwindownameprefix manageDbWindowNamePrefix�o .0 waitcycledelayseconds waitCycleDelaySeconds�n ,0 waitsavetotalseconds waitSaveTotalSeconds�m 0 waitcyclemax waitCycleMax�l (0 managedbwindowname manageDbWindowName�k 0 errmsg errMsg�j 0 errnum errNum0� !�i�h�g�f�e�d�c��b��a�`�_�^a�]�\�[0��Zx�Y��X�W��V��U�T�S��i ,0 notinmanagedbiserror notInManageDbIsError�h 
�g <
�f 
min 
�e 
dire
�d olierndD
�c .sysorondlong        doub
�b 
pcap�a (0 fmgui_appfrontmost fmGUI_AppFrontMost
�` 
cwin
�_ 
pnam
�^ 
butT
�] .prcsclicnull��� ��� uiel
�\ .sysodelanull��� ��� nmbr�[ 0 errmsg errMsg0� �R�Q�P
�R 
errn�Q 0 errnum errNum�P  
�Z 
errn�Y �X 0 
windowname 
windowName�W  0 windownametest windowNameTest�V 0 whichwindow whichWindow�U .0 waitcycledelayseconds waitCycleDelaySeconds�T 0 waitcyclemax waitCycleMax�S "0 windowwaituntil windowWaitUntil�u ��elE�O��%E�O�E�O�E�O�� E�O��!��l E�O �� �*��/ c)j+ O*�k/�,� 8 !*�k/�,E�O*�k/��/j Okj OPW X  )a �la �%Y ��,E )a a la Y eOPUO)a �a a a a a �a ��k+ Okj OeOPUOPW X  )a �la  �%OP0g �O��N�M0�0��L�O N0 %fmgui_managedb_table_listoffieldnames %fmGUI_ManageDb_Table_ListOfFieldNames�N �K0��K 0�  �J�J 0 basetablename baseTableName�M  0� �I�H�G�I 0 basetablename baseTableName�H 0 errmsg errMsg�G 0 errnum errNum0� �F�E��D�C�B�A�@�?�>�=�<0��;�F @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable
�E 
pcap
�D 
cwin
�C 
tabg
�B 
scra
�A 
tabB
�@ 
crow
�? 
sttx
�> 
valL
�= 
rslt�< 0 errmsg errMsg0� �:�9�8
�: 
errn�9 0 errnum errNum�8  
�; 
errn�L I 2*�k+  O� #*��/ *�k/�k/�k/�k/�-�k/�,EO�EUUW X  )�l�%a %�%OP0h �7�6�50�0��4�7 >0 fmgui_managedb_tablelistfocus fmGUI_ManageDb_TableListFocus�6 �30��3 0�  �2�2 	0 prefs  �5  0� �1�0�/�1 	0 prefs  �0 0 errmsg errMsg�/ 0 errnum errNum0� �.N�-L�,�+�*�)�(�'0��&W�. >0 fmgui_managedb_gototab_tables fmGUI_ManageDb_GoToTab_Tables
�- 
pcap
�, 
cwin
�+ 
tabg
�* 
scra
�) 
tabB
�( 
focu�' 0 errmsg errMsg0� �%�$�#
�% 
errn�$ 0 errnum errNum�#  
�& 
errn�4 A 0*jvk+  O� *��/ e*�k/�k/�k/�k/�,FOeUUOPW X 	 
)�l�%OP0i �"b�!� 0�0���" .0 fmgui_managedb_to_add fmGUI_ManageDb_TO_Add�! �0�� 0�  �� 	0 prefs  �   0� ������ 	0 prefs  � 0 defaultprefs defaultPrefs� 0 addtocbutton addTocButton� 0 errmsg errMsg� 0 errnum errNum0� -�������h�f����0����
�	���������� �������������)��R^��0���p� 0 tocname tocName
� 
null� 0 dbname dbName� *0 donotchangeexisting doNotChangeExisting� 0 basetablename baseTableName� � L0 $fmgui_managedb_gototab_relationships $fmGUI_ManageDb_GoToTab_Relationships
� 
pcap� (0 fmgui_appfrontmost fmGUI_AppFrontMost
� 
cwin
� 
tabg
� 
butT
� 
desc�
 B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow
�	 .sysodelanull��� ��� nmbr
� 
popB�  0 fmgui_popupset fmGUI_PopupSet
� 
scra
� 
tabB
� 
crow
� 
sttx
� 
valL
� .miscslctnull���     uiel�   ��  �� 5
�� .prcskcodnull���     ****��  0 datasourcename dataSourceName�� L0 $fmgui_managedatasources_ensureexists $fmGUI_ManageDataSources_EnsureExists�� <0 fmgui_managedatasources_save fmGUI_ManageDataSources_Save
�� 
txtf�� 0 errmsg errMsg0� ������
�� 
errn�� 0 errnum errNum��  
�� 
errn�P�����f���E�O��%E�O(*jvk+ O�*��/)j+ 
O*�k/�k/�k/�[�,\Za @1E�O)�k+ Okj O B)*�k/a a /��,l+ O*�k/a k/a k/a k/�[a k/a ,\Z��,81j W |X  a j O)*�k/a a  /a !l+ O)a "��,lk+ #O)jvk+ $Okj O)*�k/a a %/��,l+ O*�k/a k/a k/a k/�[a k/a ,\Z��,81j O��,*�k/a &a '/a ,FO)*�k/�a (/k+ OeUUW X ) *)a +�la ,�%OP0j ��{����0�0����� 60 fmgui_managedb_to_listadd fmGUI_ManageDB_TO_ListAdd�� ��0��� 0�  ���� 	0 prefs  ��  0� �������������������������� 	0 prefs  �� 0 defaultprefs defaultPrefs�� 0 tolist TOList�� 0 cr CR�� 0 lf LF�� 0 oneto oneTO�� 0 torec TORec�� 0 	onedbname 	oneDBName�� 0 onetablename oneTableName�� 0 toparam TOParam�� 0 errmsg errMsg�� 0 errnum errNum0� �����������������������������������1 �� �� 0 tolist TOList�� 0 replacesimple replaceSimple�� 0 
sourcetext 
sourceTEXT�� 0 parsestring parseString�� �� 0 
parsechars 
parseChars
�� .corecnte****       ****
�� 
kocl
�� 
cobj�� 0 dbname dbName�� 0 basetablename baseTableName�� 0 toname TOName�� �� .0 fmgui_managedb_to_add fmGUI_ManageDb_TO_Add�� *0 fmgui_managedb_save fmGUI_ManageDB_Save�� 0 errmsg errMsg1  ������
�� 
errn�� 0 errnum errNum��  
�� 
errn�� ���lE�O��%E�O ���,E�O*���mvk+ E�O*���k+ E�O�j j S E�[��l kh *����k+ E�O��k/E�O��l/E�O�����%�%�E�O*�k+ [OY��O*jvk+ Y hOeW X  )a �la �%OP0k �� ����11���� &0 fmgui_checkboxset fmGUI_CheckboxSet�� ��1�� 1  ������  0 checkboxobject checkboxObject�� 0 checkboxvalue checkboxValue��  1 ����������  0 checkboxobject checkboxObject�� 0 checkboxvalue checkboxValue�� 0 errmsg errMsg�� 0 errnum errNum1 	 &������ݿ1ݾ G I
�� 
null
�� 
valL
�� .prcsclicnull��� ��� uielݿ 0 errmsg errMsg1 ݽݼݻ
ݽ 
errnݼ 0 errnum errNumݻ  
ݾ 
errn�� :�Z %�� ��,� 
�j Y hY hOeOPW X  )�l�%�%�%0l ݺ Sݹݸ11ݷݺ B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindowݹ ݶ1ݶ 1  ݵݵ 0 	buttonref 	buttonRefݸ  1 ݴݴ 0 	buttonref 	buttonRef1  aݳݳ *0 clickobjectbycoords clickObjectByCoordsݷ �Z)�k+ OP0m ݲ nݱݰ11	ݯݲ 40 fmgui_pastefromclipboard fmGUI_PasteFromClipboardݱ  ݰ  1 ݮݭݬݫݮ (0 pasemenuitemexists paseMenuItemExistsݭ 0 pastemenuitem pasteMenuItemݬ 0 errmsg errMsgݫ 0 errnum errNum1	  �ݪ �ݩݨݧ �ݦݥ0�ݤ �ݣݢ1
ݡ �ݠݟݞݝ �ݜ
ݪ 
pcapݩ (0 fmgui_appfrontmost fmGUI_AppFrontMost
ݨ 
mbar
ݧ 
mbri
ݦ 
menE
ݥ 
menI
ݤ 
pnam
ݣ .prcsclicnull��� ��� uielݢ 0 errmsg errMsg1
 ݛݚݙ
ݛ 
errnݚ 0 errnum errNumݙ  
ݡ 
errnݠ 
ݟ .coredoexnull���     ****ݞ  ݝ  
ݜ .sysodelanull��� ��� nmbrݯ �fE�O� w*��/ o)j+ O*�k/��/�k/�k/�[�,\Z�81E�O 
�j W X  )�la �%O 2a kh �j  
eE�OY hW X  hOa j [OY��UUO�OP0n ݘ �ݗݖ11ݕݘ :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommandݗ ݔ1ݔ 1  ݓݓ 	0 prefs  ݖ  1 	ݒݑݐݏݎݍ݌݋݊ݒ 	0 prefs  ݑ 0 defaultprefs defaultPrefsݐ 0 popupobject popupObjectݏ 0 selectcommand selectCommandݎ 0 popupchoice popupChoiceݍ &0 clickifalreadyset clickIfAlreadySet݌ 0 mustpick mustPick݋ 0 errmsg errMsg݊ 0 errnum errNum1 $݈݆݉݇ �݄݅݃!݂݁!E݀��~!Y�}!�!�!�!�!��|"�{�z0��y"#";"S�x1"|"~"�݉ 0 popupobject popupObject
݈ 
null݇ 0 popupchoice popupChoice݆ 0 selectcommand selectCommand݅ &0 clickifalreadyset clickIfAlreadySet݄ 
݃ 
pcls
݂ 
cobj݁ 
݀ .coredoexnull���     ****
� 
errn�~ 
�} 
valL
�| .prcsclicnull��� ��� uiel
�{ 
menE
�z 
menI
�y 
pnam�x 0 errmsg errMsg1 �w�v�u
�w 
errn�v 0 errnum errNum�u  ݕ�������f�E�O��,�llv�,  ��k/��l/�E�Y hO��%E�O��,E�O��,E�O��,E�O��,E�O�Z��j  )��l�OPY�fE�O�a ,j  
eE�OPY �� 
eE�OPY ��a   �a ,� eE�Y hOPY �a   �a ,� eE�Y hOPY `�a   �a ,� eE�Y hOPY A�a   �a ,� eE�Y hOPY "�a   �a ,� eE�Y hOPY hO� ��� ��j O�a   !�a k/a k/a [a ,\Z�81j Y ~�a   #�a k/a k/a [a ,\Z�@1j OPY U�a   #�a k/a k/a [a ,\Z�>1j OPY ,�a   #�a k/a k/a [a ,\Z�?1j OPY hOPY hY hOeOPW X   )��la !�%a "%�%a #%�%0o �t"��s�r11�q�t  0 fmgui_popupset fmGUI_PopupSet�s �p1�p 1  �o�n�o 0 popupobject popupObject�n 0 popupchoice popupChoice�r  1 �m�l�k�j�m 0 popupobject popupObject�l 0 popupchoice popupChoice�k 0 errmsg errMsg�j 0 errnum errNum1 "��i�h�g"��f�e�d�c1�b"�"��i 0 popupobject popupObject�h 0 popupchoice popupChoice�g 0 selectcommand selectCommand�f �e :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand
�d 
rslt�c 0 errmsg errMsg1 �a�`�_
�a 
errn�` 0 errnum errNum�_  
�b 
errn�q -�Z *�����k+ O�EOPW X  	)�l�%�%�%0p �^"��]�\11�[�^ 00 fmgui_selectallandcopy fmGUI_SelectAllAndCopy�]  �\  1 �Z�Y�X�Z $0 clipboardchanged clipboardChanged�Y 0 errmsg errMsg�X 0 errnum errNum1 "��W#\�V#Z�U�T�S"��R�Q0��P"��O�N1�M####'�L�K�J�I�H�G�F�E�D
�W .JonspClpnull���     ****
�V 
pcap�U (0 fmgui_appfrontmost fmGUI_AppFrontMost
�T 
mbar
�S 
mbri
�R 
menE
�Q 
menI
�P 
pnam
�O .prcsclicnull��� ��� uiel�N 0 errmsg errMsg1 �C�B�A
�C 
errn�B 0 errnum errNum�A  
�M 
errn�L 

�K 
rtyp
�J 
utf8
�I .JonsgClp****    ��� null
�H 
rslt
�G 
leng�F  �E  
�D .sysodelanull��� ��� nmbr�[ ��j OfE�O� �*��/ �)j+ O *�k/��/�k/�k/�[�,\Z�81j W X  )a �la �%O *�k/�a /�k/�a /j W X  )a �la �%O Da kh &*a a l O_ a ,j 
eE�OY hW X  eE�OOkj [OY��OPUUO�OP0q �@#j�?�>11�=�@ (0 fmgui_textfieldset fmGUI_TextFieldSet�? �<1�< 1  �;�:�; "0 textfieldobject textfieldObject�:  0 textfieldvalue textfieldValue�>  1 �9�8�7�6�9 "0 textfieldobject textfieldObject�8  0 textfieldvalue textfieldValue�7 0 errmsg errMsg�6 0 errnum errNum1 	#y�5�4�3�21�1#�#�
�5 
null
�4 
valL
�3 
focu�2 0 errmsg errMsg1 �0�/�.
�0 
errn�/ 0 errnum errNum�.  
�1 
errn�= A�Z ,�� ��,� e��,FO���,FY fY hOeOPW X  )�l�%�%�%0r �-#��,�+11�*�- (0 fmgui_appfrontmost fmGUI_AppFrontMost�,  �+  1  1 
#��)#��(�'�&�%#��$�#
�) 
pcap
�( 
pisf
�' .sysodelanull��� ��� nmbr
�& 
cwin
�% 
pnam
�$ 
butT
�# .prcsclicnull��� ��� uiel�* F� B*��/ :*�,e 1e*�,FOkj O*�k/�,�  *�k/�k/j 	Okj Y hY hUU0s �"#��!� 11��" 00 fmgui_dataviewer_close fmGUI_DataViewer_Close�!  �   1  1 $�$��0��$����
� 
pcap� (0 fmgui_appfrontmost fmGUI_AppFrontMost
� 
cwin
� 
pnam
� 
butT
� .prcsclicnull��� ��� uiel�  �  � 4� 0*��/ ()j+ O *�k/�[�,\Z�81�k/j 	W X 
 hUU0t �$%��11�� .0 fmgui_inspector_close fmGUI_Inspector_Close�  �  1  1 $o�$m��0��$K���$[��
$j
� 
pcap� (0 fmgui_appfrontmost fmGUI_AppFrontMost
� 
cwin
� 
pnam
� 
pidx�  �  
� 
butT
�
 .prcsclicnull��� ��� uiel� s� o*��/ g)j+ O k*�k/�[�,\Z�81�,FW X 	 
hO *�k/�[�,\Z�81�k/j W X 	 
hO *�k/�[�,\Z�81�k/j W X 	 
hUU0u �	$w��1 1!��	 00 fmgui_inspector_ensure fmGUI_Inspector_Ensure�  �  1  ��� 0 errmsg errMsg� 0 errnum errNum1! �$��$��� 0���$�������$�����$�����1"��$�� 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout
� 
pcap� (0 fmgui_appfrontmost fmGUI_AppFrontMost
�  
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
�� .prcsclicnull��� ��� uiel�� 0 errmsg errMsg1" ������
�� 
errn�� 0 errnum errNum��  
�� 
errn� i T*j+  O� F*��/ >)j+ O*�k/�[�,\Z�@1j 	 *�k/��/�k/�k/�[�,\Z�81j Y hOeUUW X  )a �la �%OP0v ��$�����1#1$���� 20 fmgui_modeensure_browse fmGUI_ModeEnsure_Browse��  ��  1# ������ 0 errmsg errMsg�� 0 errnum errNum1$ $�����1%��$��� $0 fmgui_modeselect fmGUI_ModeSelect�� 0 errmsg errMsg1% ������
�� 
errn�� 0 errnum errNum��  
�� 
errn��  *�k+ OPW X  )�l�%OP0w ��$�����1&1'���� .0 fmgui_modeensure_find fmGUI_ModeEnsure_Find��  ��  1& ������ 0 errmsg errMsg�� 0 errnum errNum1' %����1(��%�� $0 fmgui_modeselect fmGUI_ModeSelect�� 0 errmsg errMsg1( ������
�� 
errn�� 0 errnum errNum��  
�� 
errn��  *�k+ OPW X  )�l�%OP0x ��%%����1)1*���� 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout��  ��  1) ������ 0 errmsg errMsg�� 0 errnum errNum1* %8����1+��%B�� $0 fmgui_modeselect fmGUI_ModeSelect�� 0 errmsg errMsg1+ ������
�� 
errn�� 0 errnum errNum��  
�� 
errn��  *�k+ OPW X  )�l�%OP0y ��%M����1,1-���� $0 fmgui_modeselect fmGUI_ModeSelect�� ��1.�� 1.  ���� 0 modetoselect modeToSelect��  1, ������������������ 0 modetoselect modeToSelect�� 0 
modewindow 
modeWindow�� "0 modecontentarea modeContentArea�� *0 modecontentareadesc modeContentAreaDesc�� 0 currentmode currentMode�� 0 menuitemname menuItemName�� 0 errmsg errMsg�� 0 errnum errNum1- %���%���ܾܿܽ0�ܼ%�ܻ%�ܺ%�ܹܸ%�ܷܴܶܵ1/ܳ%�%�
�� 
pcap�� (0 fmgui_appfrontmost fmGUI_AppFrontMostܿ .0 fmgui_inspector_close fmGUI_Inspector_Close
ܾ 
cwin
ܽ 
sgrp
ܼ 
desc
ܻ 
cwor
ܺ .sysodelanull��� ��� nmbr
ܹ 
mbar
ܸ 
mbri
ܷ 
menE
ܶ 
menI
ܵ .prcsclicnull��� ��� uielܴ 0 errmsg errMsg1/ ܱܲܰ
ܲ 
errnܱ 0 errnum errNumܰ  
ܳ 
errn�� � t� l*��/ d)j+ O)j+ O*�k/E�O��k/�[�,\Z�?1E�O��,E�O��k/E�O�� (�j O��%E�O*�k/�a /a k/a �/j Y hOeOPUUW X  )a �la �%a %�%0z ܯ%�ܮܭ1011ܬܯ (0 fmgui_window_close fmGUI_Window_Closeܮ ܫ12ܫ 12  ܪܪ  0 somewindowname someWindowNameܭ  10 ܩܩ  0 somewindowname someWindowName11 ܨ%�ܧܦܥ
ܨ 
capp
ܧ kfrmID  
ܦ 
cwin
ܥ .coreclosnull���    obj ܬ )���0 *�/j OPUOeOP0{ ܤ%�ܣܢ1314ܡܤ "0 windowwaituntil windowWaitUntilܣ ܠ15ܠ 15  ܟܟ 	0 prefs  ܢ  13 ܞܝܜܛܚܙܘܗܞ 	0 prefs  ܝ 0 defaultprefs defaultPrefsܜ 0 
windowname 
windowNameܛ  0 windownametest windowNameTestܚ 0 whichwindow whichWindowܙ 0 checkresult checkResultܘ "0 windownamecheck windowNameCheckܗ 0 windowindex windowIndex14 ܖܕܔ&ܓ&ܒ&ܑܐ܏&|&J܎&S܍܌&Y&d܋&y&�&�&�&�&�&�&�&�'܊ܖ 0 
windowname 
windowName
ܕ 
nullܔ  0 windownametest windowNameTestܓ 0 whichwindow whichWindowܒ .0 waitcycledelayseconds waitCycleDelaySecondsܑ 0 waitcyclemax waitCycleMaxܐ ܏ 

܎ 
pcap
܍ 
cwin
܌ 
pnam
܋ 
nmbr
܊ .sysodelanull��� ��� nmbrܡD�����������E�O��%E�O��,E�O��,E�O��,E�OfE�O��,Ekh� H��  *��/�-a ,E�Y 3�a   *�a /�k/a ,E�Y �a &E�O*�a /�/a ,E�UO�a   ��E�OPY ��a   ��E�OPY ��a   �� E�OPY o�a   �� E�OPY ]�a   ��E�OPY K�a   ��E�OPY 8�a   ��E�OPY &�a   ��E�Y �a   ��E�OPY hO� Y hO��,j OP[OY��O�OP0| ܉'8܈܇1617܆܉ 20 windowwaituntil_frontis windowWaitUntil_FrontIS܈ ܅18܅ 18  ܄܄ 	0 prefs  ܇  16 ܃܂܃ 	0 prefs  ܂ 0 defaultprefs defaultPrefs17 ܁܀�'L�~'P�}'T�|�{�z�y܁ 0 
windowname 
windowName
܀ 
null�  0 windownametest windowNameTest�~ 0 whichwindow whichWindow�} .0 waitcycledelayseconds waitCycleDelaySeconds�| 0 waitcyclemax waitCycleMax�{ d�z 
�y "0 windowwaituntil windowWaitUntil܆ �����������E�O��%E�O*�k+ OP0} �x'm�w�v191:�u�x "0 indexoflistitem indexOfListItem�w �t1;�t 1;  �s�r�s 0 somelist someList�r 0 somelistitem someListItem�v  19 �q�p�o�n�q 0 somelist someList�p 0 somelistitem someListItem�o 0 i  �n 0 onelistitem oneListItem1: �m�l
�m .corecnte****       ****
�l 
cobj�u 9�� iY hO 'k�j  kh ��/E�O��  �Y hOP[OY��OP0~ �k'��j�i1<1=�h�k 0 listcontains listContains�j �g1>�g 1>  �f�e�f 0 somelist someList�e "0 somecomplexitem someComplexItem�i  1< �d�c�b�d 0 somelist someList�c "0 somecomplexitem someComplexItem�b 0 oneitem oneItem1= �a�`�_�^
�a 
kocl
�` 
cobj
�_ .corecnte****       ****
�^ 
pcnt�h 1 *�[��l kh ��,E�O��  	eOPY hOP[OY��OfOP0 �]'��\�[1?1@�Z�] $0 listuniquevalues listUniqueValues�\ �Y1A�Y 1A  �X�X 	0 prefs  �[  1? �W�V�U�T�W 	0 prefs  �V 0 	inputlist 	inputList�U 0 
uniquelist 
uniqueList�T 0 oneitem oneItem1@ �S�R�Q�P�O�S 0 	inputlist 	inputList
�R 
kocl
�Q 
cobj
�P .corecnte****       ****
�O 
pcnt�Z ;��,E�OjvE�O )�[��l kh ��,E�O�� 	��6GY h[OY��O�OP0� �N(�M�L1B1C�K�N 0 sort  �M �J1D�J 1D  �I�I 0 oldlist oldList�L  1B �H�G�F�E�D�H 0 oldlist oldList�G 0 od  �F 0 	textblock 	textBlock�E 0 sortedblock sortedBlock�D 0 
sortedlist 
sortedList1C �C�B�A�@�?�>(A�=(E�<�;�:
�C 
ascr
�B 
txdl�A 

�@ .sysontocTEXT       shor
�? 
cobj
�> 
TEXT
�= 
strq
�< .sysoexecTEXT���     TEXT
�; 
ret 
�: 
citm�K E��,�j lvE[�k/E�Z[�l/��,FZO��&E�O��,%�%j 	E�O���,FO��-E�O���,FO�0� �9(d�8�71E1F�6�9 0 
logconsole 
logConsole�8 �51G�5 1G  �4�3�4 0 processname processName�3 0 
consolemsg 
consoleMsg�7  1E �2�1�0�2 0 processname processName�1 0 
consolemsg 
consoleMsg�0 0 shellcommand shellCommand1F �/�.(��-�,(�(��+(��*�)�/  0 coercetostring coerceToString
�. .sysontocTEXT       shor�- 0 replacesimple replaceSimple
�, 
leng
�+ 
spac
�* 
strq
�) .sysoexecTEXT���     TEXT�6 I*�k+  E�O*�jj �mvk+ E�O��,j  �E�Y hO��%�%�%��,%�%��,%E�O�j 
O�OP0� �((��'�&1H1I�%�( 0 loglevel logLEVEL�' �$1J�$ 1J  �#�"�# 	0 level  �" 0 somemsg someMsg�&  1H �!� �����! 	0 level  �  0 somemsg someMsg� 0 	maxxcount 	maxXcount� 0 logname logName� 0 xcount xCount� 0 i  1I �(�(��� � 0 
logconsole 
logConsole�% 5�E�Ob  �%E�O��kE�O k�kh ��%E�[OY��O*��l+ OP0� �)��1K1L�� 0 logmain logMAIN� �1M� 1M  �� 0 somemsg someMsg�  1K �� 0 somemsg someMsg1L �� 0 loglevel logLEVEL� *j�l+  0� �)��1N1O�� (0 systemnotification systemNotification� �1P� 1P  �� 	0 prefs  �  1N ��
� 	0 prefs  �
 0 defaultprefs defaultPrefs1O �	)0�)4�)8�)<������ �������	 0 msg  � 0 msgtitle msgTitle� 0 msgsubtitle msgSubtitle� 0 msgsound msgSound� 0 nosound noSound
� 
null� 

� 
appr
� 
subt�  
�� .sysonotfnull��� ��� TEXT
�� 
nsou�� � G�����������E�O��%E�O��,� ��,��,��,� Y ��,��,��,��,a  OP0� ��)t����1Q1R���� 0 writetofile writeToFile�� ��1S�� 1S  ���� 	0 prefs  ��  1Q ���������� 	0 prefs  �� 0 defaultprefs defaultPrefs�� 0 
outputfile 
outputFile�� 0 filereference fileReference1R ������������������)������������������� 0 fullfilepath fullFilePath
�� 
null�� 0 filename fileName�� 0 filedirectory fileDirectory
�� afdrdesk
�� .earsffdralis        afdr
�� 
TEXT�� 0 
outputtext 
outputText�� 
�� 
file
�� 
perm
�� .rdwropenshor       file
�� 
refn
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****��  ��  �� �������j �&���E�O��%E�O��,� 
��,E�Y !��,� ��,��,%E�Y �j �&�%E�O !*�/�el E�O��,��l O�j W X   *�/j W X  h0� ��)�����1T1U���� 0 clickatcoords clickAtCoords�� ��1V�� 1V  ������ 0 xclick xClick�� 0 yclick yClick��  1T ������ 0 xclick xClick�� 0 yclick yClick1U 	��������**����*$
�� 
dire
�� olierndD
�� .sysorondlong        doub
�� 
strq
�� .sysoexecTEXT���     TEXT
�� 
TEXT�� 1���l E�O���l E�Ob  �,�%�%�%�%j O��&�%�%0� ��*-����1W1X���� *0 clickobjectbycoords clickObjectByCoords�� ��1Y�� 1Y  ���� 0 
someobject 
someObject��  1W ���������������� 0 
someobject 
someObject�� 0 xcoord xCoord�� 0 ycoord yCoord�� 0 xsize xSize�� 0 ysize ySize�� 0 xclick xClick�� 0 yclick yClick1X *;������������ۿ
�� 
posn
�� 
cobj
�� 
ptsz
�� 
dire
�� olierndD
�� .sysorondlong        doubۿ 0 clickatcoords clickAtCoords�� N�Z��,E[�k/E�Z[�l/E�ZO��,E[�k/E�Z[�l/E�ZO��l!��l E�O��l!��l E�O*��l+ OP0� ۾*�۽ۼ1Z1[ۻ۾  0 coercetostring coerceToString۽ ۺ1\ۺ 1\  ۹۹  0 incomingobject incomingObjectۼ  1Z ۸۷۶۵۴۳۲۱۸  0 incomingobject incomingObject۷ 0 errmsg errMsg۶ 0 errnum errNum۵ 0 	olddelims 	oldDelims۴ 0 
errmsglead 
errMsgLead۳ 0 errmsgtrail errMsgTrail۲ 0 od  ۱ 0 objectstring objectString1[ ۰ۯۮۭ۬۫*�*�۪۩1]ۨۧ+ۦۥ+<ۤ+K+Oۣ+V+\
۰ 
pcls
ۯ 
TEXT
ۮ 
ctxt
ۭ 
long
۬ 
doub
۫ 
utxt۪ j0 3some_uuid_property_54f827c7379e4073b5a216bb9cde575d 3some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D۩ 0 errmsg errMsg1] ۢۡ۠
ۢ 
errnۡ 0 errnum errNum۠  
ۨ 
ascr
ۧ 
txdl
ۦ 
cobj
ۥ 
citmۤ  
ۣ 
boolۻ���,�  ��&E[�,E�ZO�Yk��,�  ��&E[�,E�ZO��&YQ��,�  ��&E[�,E�ZO��&Y7��,�  ��&E[�,E�ZO��&Y S ���,FOPW 9X 	 
��,�kvlvE[�k/E�Z[�l/��,FZO��-E[�k/E�Z[�l/E�ZO���,FOa ��,FOPW �X 	 �a 	 �a a & Da E�Oa E�O��,�lvE[�k/E�Z[�l/��,FZO��l/E�O���,FO��k/E�O���,FOPY k�E�O�� )��,�lvE[�k/E�Z[�l/��,FZO��l/E�O���,FY hO�� /��,�lvE[�k/E�Z[�l/��,FZO���,FO��k/E�O���,FY hOPO�0� ۟+�۞۝1^1_ۜ۟ 0 gettextbefore getTextBefore۞ ۛ1`ۛ 1`  ۚۙۚ 0 
sourcetext 
sourceTEXTۙ 0 stophere stopHere۝  1^ ۘۗۖە۔ۓۘ 0 
sourcetext 
sourceTEXTۗ 0 stophere stopHereۖ 0 	olddelims 	oldDelimsە 0 finalresult finalResult۔ 0 errmsg errMsgۓ 0 errnum errNum1_ 	ےۑېۏێ,4ۍ1a,S
ے 
ascr
ۑ 
txdl
ې 
cobj
ۏ 
citm
ێ .corecnte****       ****ۍ 0 errmsg errMsg1a یۋۊ
ی 
errnۋ 0 errnum errNumۊ  ۜ R C��,�lvE[�k/E�Z[�l/��,FZO��-j k  ���,FO�Y ��k/E�O���,FO�W X  ���,FO�0� ۉ,]ۈۇ1b1cۆۉ  0 gettextbetween getTextBetweenۈ ۅ1dۅ 1d  ۄۄ 	0 prefs  ۇ  1b ۃۂہۀ��~�}�|�{�z�y�xۃ 	0 prefs  ۂ 0 defaultprefs defaultPrefsہ 0 
sourcetext 
sourceTEXTۀ 0 
beforetext 
beforeText� 0 	aftertext 	afterText�~ 0 textitemnum textItemNum�}  0 includemarkers includeMarkers�| 0 	olddelims 	oldDelims�{ 0 prefixremoved prefixRemoved�z 0 finalresult finalResult�y 0 errmsg errMsg�x 0 errnum errNum1c �w�v�u�t�s�r,��q�p�o,��n�m�l�k�j�i�h�g�f�e1e-4�w 0 textitemnum textItemNum�v  0 includemarkers includeMarkers�u 
�t 
pcls
�s 
list
�r 
TEXT
�q 
bool
�p 
errn�o 
�n .corecnte****       ****
�m 
cobj�l 0 
sourcetext 
sourceTEXT�k 0 
beforetext 
beforeText�j 0 	aftertext 	afterText�i 
�h 
ascr
�g 
txdl
�f 
citm�e 0 errmsg errMsg1e �d�c�b
�d 
errn�c 0 errnum errNum�b  ۆ ��l�f�E�O��,�	 ��,�&��& )��l�Y hO��,�  1�j �  ���/��,FY hO���k/��l/��m/a E�Y hO��%E�O��,E�O��,E�O��,E�O��,E�O��,E�O \_ a ,�lvE[�k/E�Z[�l/_ a ,FZO�a �/E�O�_ a ,FO�a k/E�O�_ a ,FO� ��%�%E�Y hOPW X  �_ a ,FOa E�O�OP0� �a-G�`�_1f1g�^�a 0 
parsechars 
parseChars�` �]1h�] 1h  �\�\ 	0 prefs  �_  1f 	�[�Z�Y�X�W�V�U�T�S�[ 	0 prefs  �Z 0 defaultprefs defaultPrefs�Y 0 
sourcetext 
sourceTEXT�X 0 parsestring parseString�W 0 considercase considerCase�V 0 	olddelims 	oldDelims�U 0 
parsedlist 
parsedList�T 0 errmsg errMsg�S 0 errnum errNum1g �R�Q�P�O�N�M�L�K�J�I�H�G-��F�E�D-��C�B1i�A�@.�R 0 considercase considerCase
�Q 
pcls
�P 
list
�O .corecnte****       ****�N 0 
sourcetext 
sourceTEXT
�M 
cobj�L 0 parsestring parseString�K �J �I 0 somekey someKey
�H 
errn�G 
�F 
ascr
�E 
txdl
�D 
TEXT
�C 
citm�B 0 errmsg errMsg1i �?�>�=
�? 
errn�> 0 errnum errNum�=  �A  �@  �^ ��elE�O��,�  5�j l ��k/��l/��m/�E�Y ��k/��l/�E�OPY ��,�ml�, )��l�OPY hO��%E�O��,E�O��,E�O��,E�O��,E�O =��&kv��,FO� a g 
�a -E�VY ga  
�a -E�VO���,FO�W #X   
���,FW X  hO)�la �%0� �<.$�;�:1j1k�9�< 0 replacesimple replaceSimple�; �81l�8 1l  �7�7 	0 prefs  �:  1j 	�6�5�4�3�2�1�0�/�.�6 	0 prefs  �5 0 defaultprefs defaultPrefs�4 0 considercase considerCase�3 0 
sourcetext 
sourceTEXT�2 0 oldchars oldChars�1 0 newchars newChars�0 0 	olddelims 	oldDelims�/ 0 
parsedlist 
parsedList�. 0 newtext newText1k �-�,�+�*�)�(�'�&�%�$�#�"�!� .����.���- 0 considercase considerCase
�, 
pcls
�+ 
list
�* .corecnte****       ****�) 0 
sourcetext 
sourceTEXT
�( 
cobj�' 0 oldchars oldChars�& 0 newchars newChars�% �$ �# �" 0 somekey someKey
�! 
errn�  
� 
TEXT
� 
ascr
� 
txdl
� 
citm�9 ��elE�O��,�  ?�j m ��k/��l/��m/���/�E�Y ��k/��l/��m/�E�OPY ��,�ml�, )��l�OPY hO��%E�O��,E�O��,E�O��,E�O��,E�O��&E�O_ a ,E�O�_ a ,FO� (a g �a -E�O��&kv_ a ,FO��&E�VY %ga  �a -E�O��&kv_ a ,FO��&E�VO�_ a ,FO�OP0� �/"��1m1n�� 0 unparsechars unParseChars� �1o� 1o  ��� 0 thislist thisList� 0 newdelim newDelim�  1m ������� 0 thislist thisList� 0 newdelim newDelim� 0 	olddelims 	oldDelims� 0 unparsedtext unparsedText� 0 errmsg errMsg� 0 errnum errNum1n 	����1p�
�	�/e
� 
ascr
� 
txdl
� 
TEXT� 0 errmsg errMsg1p ���
� 
errn� 0 errnum errNum�  �
  �	  
� 
errn� D��,E�O ��&kv��,FO��&E�O���,FO�W !X   
���,FW X  hO)�l�%0� �/o��1q1r��  0 versioncompare versionCompare� � 1s�  1s  ���� 	0 prefs  �  1q �������������������������� 	0 prefs  �� 0 defaultprefs defaultPrefs�� 0 od  �� 0 v1_list  �� 0 v2_list  �� 0 v1_count  �� 0 v2_count  �� 0 maxcount maxCount�� 0 versionresult versionResult�� 0 i  �� 0 v1_part  �� 0 v2_part  1r ��������/������������/�/�������020?�� 0 v1  
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
nmbr��  ��  ��������E�O��%E�O��,��,lvE[�k/E�Z[�l/��,FZO��,�-��,�-lvE[�k/E�Z[�l/E�ZO���,FO�j 
�j 
lvE[�k/E�Z[�l/E�ZO�� �E�Y �E�O�E�O sk�kh 	�� Y hO�� ��/E�Y jE�O�� ��/E�Y jE�O &��&��& kE�Y ��&��& iE�Y hW X  a E�OP[OY��O�a   jE�Y hO�OPascr  ��ޭ