FasdUAS 1.101.10   ��   ��    k             l     ��  ��      main script     � 	 	    m a i n   s c r i p t   
  
 l     ��  ��      Erik Shagdar, NYHTC     �   (   E r i k   S h a g d a r ,   N Y H T C      l     ��������  ��  ��        l     ��  ��    %  Generated: 2016-07-01 12:16:18     �   >   G e n e r a t e d :   2 0 1 6 - 0 7 - 0 1   1 2 : 1 6 : 1 8      l     ��  ��    n h Run 'main_helper.applescript' to after making changes in any .applescript file and after each git pull.     �   �   R u n   ' m a i n _ h e l p e r . a p p l e s c r i p t '   t o   a f t e r   m a k i n g   c h a n g e s   i n   a n y   . a p p l e s c r i p t   f i l e   a n d   a f t e r   e a c h   g i t   p u l l .      l     ��  ��    � � Assumes file is located at '~/Code/applescript-fm-helper/'. If it is not, make sure to update clickCommandPosix property and 'vendor.sh' script.     �  "   A s s u m e s   f i l e   i s   l o c a t e d   a t   ' ~ / C o d e / a p p l e s c r i p t - f m - h e l p e r / ' .   I f   i t   i s   n o t ,   m a k e   s u r e   t o   u p d a t e   c l i c k C o m m a n d P o s i x   p r o p e r t y   a n d   ' v e n d o r . s h '   s c r i p t .     !   l     ��������  ��  ��   !  " # " j     �� $�� 0 	debugmode 	DebugMode $ m     ��
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
� kfrmID  �2                                                                                  FMP7  alis    �  MacintoshSSD               �u8\H+   Ȣ�FileMaker Pro Advanced.app                                      ȣ��J6        ����  	                FileMaker Pro 11 Advanced     �u~�      �JIv     Ȣ�   �  PMacintoshSSD:Applications: FileMaker Pro 11 Advanced: FileMaker Pro Advanced.app  6  F i l e M a k e r   P r o   A d v a n c e d . a p p    M a c i n t o s h S S D  AApplications/FileMaker Pro 11 Advanced/FileMaker Pro Advanced.app   / ��  � ��� l  � �����  �  �  � ��� Z  � �����
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
�� kfrmID  +2                                                                                  FMP7  alis    �  MacintoshSSD               �u8\H+   Ȣ�FileMaker Pro Advanced.app                                      ȣ��J6        ����  	                FileMaker Pro 11 Advanced     �u~�      �JIv     Ȣ�   �  PMacintoshSSD:Applications: FileMaker Pro 11 Advanced: FileMaker Pro Advanced.app  6  F i l e M a k e r   P r o   A d v a n c e d . a p p    M a c i n t o s h S S D  AApplications/FileMaker Pro 11 Advanced/FileMaker Pro Advanced.app   / ��  ) I��I L  ��JJ m  ����
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
someString� ��� l  2 2����  �  �  �  x ��� l     ����  �  �  � ��� l     ����  �  �  � ��� i   ? B��� I      ���� 60 fmgui_managedb_field_edit fmGUI_ManageDb_Field_Edit� ��
� o      �	�	 	0 prefs  �
  �  � k    ��� ��� l     ����  �   version 1.2   � ���    v e r s i o n   1 . 2� ��� l     ����  �  �  � ��� l     ����  � � � any BOOLEAN parameters can be either actually boolean, or 1/0.  This function will change that to match UI scripting interface needs.   � ���   a n y   B O O L E A N   p a r a m e t e r s   c a n   b e   e i t h e r   a c t u a l l y   b o o l e a n ,   o r   1 / 0 .     T h i s   f u n c t i o n   w i l l   c h a n g e   t h a t   t o   m a t c h   U I   s c r i p t i n g   i n t e r f a c e   n e e d s .� ��� l     ����  �  �  � ��� r     Z��� K     X�� � ���  0 editmode editMode� m    �� ���  C O N F O R M� ������ 0 	tablename 	tableName� m    ��
�� 
null� ������ 0 	fieldname 	fieldName� m    ��
�� 
null� ������ 0 altpatterns altPatterns� m    ��
�� 
null� ������ 0 fieldcomment fieldComment� m   	 
��
�� 
null� ������ 0 datatype dataType� m    ��
�� 
null� ������ 0 	fieldtype 	fieldType� m    ��
�� 
null� ������ 0 calccode calcCode� m    ��
�� 
null� ������ &0 autoentercalccode autoEnterCalcCode� m    ��
�� 
null� ������ 20 autoentercalccontexttoc autoEnterCalcContextTOC� m    ��
�� 
null� ������  0 alwaysevaluate alwaysEvaluate� m    ��
�� 
null� ������  0 calccontexttoc calcContextTOC� m    ��
�� 
null� ������ 0 storageglobal storageGlobal� m    ��
�� 
null� ������ 20 storecalculationresults storeCalculationResults� m    ��
�� 
null� ������ (0 storageindexchoice storageIndexChoice� m     ��
�� 
null� ������ 0 	autoindex 	autoIndex� m   # $��
�� 
null� ������ 0 maxrepetition maxRepetition� m   ' (��
�� 
null� ������ 0 indexlanguage indexLanguage� m   + ,��
�� 
null� ������ 0 allowediting allowEditing� m   / 0��
�� 
null� ������ 00 overwriteexistingvalue overwriteExistingValue� m   3 4��
�� 
null� ��� �� *0 autoenterisconstant autoEnterIsConstant� m   7 8��
�� 
null  ���� 00 autoenteriscalculation autoEnterIsCalculation m   ; <��
�� 
null ���� &0 autoenterislookup autoEnterIsLookup m   ? @��
�� 
null ���� .0 autoenterspecialvalue autoEnterSpecialValue m   C D��
�� 
null ���� 0 
autoserial 
autoSerial m   G H��
�� 
null ��	
�� .0 autoenterconstantdata autoEnterConstantData	 m   K L��
�� 
null
 ���� (0 validationcalccode validationCalcCode m   O P��
�� 
null ������ 40 validationcalccontexttoc validationCalcContextTOC m   S T��
�� 
null��  � o      ���� 0 defaultprefs defaultPrefs�  l  [ [����   � � editMode: "CONFORM" means make field exactly match the entire specified data structure, while "TWEAK" means only to change which things were specified, leaving the other settings alone.     �v   e d i t M o d e :   " C O N F O R M "   m e a n s   m a k e   f i e l d   e x a c t l y   m a t c h   t h e   e n t i r e   s p e c i f i e d   d a t a   s t r u c t u r e ,   w h i l e   " T W E A K "   m e a n s   o n l y   t o   c h a n g e   w h i c h   t h i n g s   w e r e   s p e c i f i e d ,   l e a v i n g   t h e   o t h e r   s e t t i n g s   a l o n e .    l  [ [����   � � autoEnterSpecialValue: keywords used in FM-XML: NONE, CreationAccountName, CreationUserName,CreationTimestamp, ModificationAccountName, et al.    �   a u t o E n t e r S p e c i a l V a l u e :   k e y w o r d s   u s e d   i n   F M - X M L :   N O N E ,   C r e a t i o n A c c o u n t N a m e ,   C r e a t i o n U s e r N a m e , C r e a t i o n T i m e s t a m p ,   M o d i f i c a t i o n A c c o u n t N a m e ,   e t   a l .  l  [ [����   a [ autoSerial:false or autoSerial:{autoNextValue:null, autoIncrement:null, autoGenerate:null}    � �   a u t o S e r i a l : f a l s e   o r   a u t o S e r i a l : { a u t o N e x t V a l u e : n u l l ,   a u t o I n c r e m e n t : n u l l ,   a u t o G e n e r a t e : n u l l }  l  [ [��������  ��  ��     l  [ [��!"��  ! a [ autoEnterIsLookup - LOOKUP FUNCTIONS NOT YET SUPPORTED - WOULD NEED TO HANDLE SUB-ELEMENT.   " �## �   a u t o E n t e r I s L o o k u p   -   L O O K U P   F U N C T I O N S   N O T   Y E T   S U P P O R T E D   -   W O U L D   N E E D   T O   H A N D L E   S U B - E L E M E N T .  $%$ l  [ [��������  ��  ��  % &'& l  [ [��������  ��  ��  ' ()( r   [ `*+* b   [ ^,-, o   [ \���� 	0 prefs  - o   \ ]���� 0 defaultprefs defaultPrefs+ o      ���� 	0 prefs  ) ./. l  a a��������  ��  ��  / 010 r   a f232 n   a d454 o   b d���� 0 editmode editMode5 o   a b���� 	0 prefs  3 o      ���� 0 editmode editMode1 676 l  g g��������  ��  ��  7 898 Z  g z:;����: >  g l<=< n   g j>?> o   h j���� &0 autoentercalccode autoEnterCalcCode? o   g h���� 	0 prefs  = m   j k��
�� 
null; r   o v@A@ m   o p��
�� boovtrueA n      BCB o   q u���� 00 autoenteriscalculation autoEnterIsCalculationC o   p q���� 	0 prefs  ��  ��  9 DED l  { {��������  ��  ��  E FGF l   { {��HI��  H � �   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   
DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   	
   I �JJD       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       
 D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       	 
G KLK l  { {��������  ��  ��  L MNM Q   {�OPQO k   ~�RR STS l  ~ ~��������  ��  ��  T UVU l  ~ ~��������  ��  ��  V WXW l  ~ ~��������  ��  ��  X YZY l  ~ ~��������  ��  ��  Z [\[ l  ~ ~��]^��  ]   try to select it first:   ^ �__ 0   t r y   t o   s e l e c t   i t   f i r s t :\ `a` r   ~ �bcb I   ~ ���d���� :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_Selectd e��e o    ����� 	0 prefs  ��  ��  c o      ���� $0 fieldnowselected fieldNowSelecteda fgf l  � ���������  ��  ��  g hih Z  � �jk����j H   � �ll o   � ����� $0 fieldnowselected fieldNowSelectedk L   � �mm m   � ���
�� boovfals��  ��  i non l  � ���������  ��  ��  o pqp O   ��rsr O   ��tut k   ��vv wxw n  � �yzy I   � ��������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��  z  f   � �x {|{ l  � �����~��  �  �~  | }~} l  � ��}�|�{�}  �|  �{  ~ � r   � ���� 6  � ���� n   � ���� 4  � ��z�
�z 
butT� m   � ��y�y � n   � ���� 4   � ��x�
�x 
tabg� m   � ��w�w � 4   � ��v�
�v 
cwin� m   � ��u�u � =  � ���� 1   � ��t
�t 
titl� m   � ��� ���  C h a n g e� o      �s�s 0 changebutton changeButton� ��� l  � ��r�q�p�r  �q  �p  � ��� l  � ��o���o  � %  COMMENT is for any field type:   � ��� >   C O M M E N T   i s   f o r   a n y   f i e l d   t y p e :� ��� Z   ����n�m� >  � ���� n   � ���� o   � ��l�l 0 fieldcomment fieldComment� o   � ��k�k 	0 prefs  � m   � ��j
�j 
null� k   ��� ��� Z   � ����i�h� n  � ���� I   � ��g��f�g (0 fmgui_textfieldset fmGUI_TextFieldSet� ��� n   � ���� 4   � ��e�
�e 
txtf� m   � ��� ���  C o m m e n t :� n   � ���� 4   � ��d�
�d 
tabg� m   � ��c�c � 4   � ��b�
�b 
cwin� m   � ��a�a � ��`� n   � ���� o   � ��_�_ 0 fieldcomment fieldComment� o   � ��^�^ 	0 prefs  �`  �f  �  f   � �� I  � ��]��\
�] .prcsclicnull��� ��� uiel� o   � ��[�[ 0 changebutton changeButton�\  �i  �h  � ��� l  � ��Z�Y�X�Z  �Y  �X  � ��W� I  ��V��U
�V .sysodelanull��� ��� nmbr� m   � ��� ?�      �U  �W  �n  �m  � ��� l �T�S�R�T  �S  �R  � ��� Z  g���Q�P� F  ��� = ��� o  �O�O 0 editmode editMode� m  �� ��� 
 T W E A K� = ��� n  ��� o  �N�N 0 	fieldtype 	fieldType� o  �M�M 	0 prefs  � m  �L
�L 
null� k  c�� ��� l �K���K  � 6 0 just find out what it already is and use that:    � ��� `   j u s t   f i n d   o u t   w h a t   i t   a l r e a d y   i s   a n d   u s e   t h a t :  � ��� r  /��� n  -��� 4  &-�J�
�J 
popB� m  ),�� ��� 
 T y p e :� n  &��� 4  !&�I�
�I 
tabg� m  $%�H�H � 4  !�G�
�G 
cwin� m   �F�F � o      �E�E  0 fieldtypepopup fieldTypePopup� ��D� Z  0c����� = 09��� n  05��� 1  15�C
�C 
valL� o  01�B�B  0 fieldtypepopup fieldTypePopup� m  58�� ���  C a l c u l a t i o n� r  <C��� m  <?�� ���  C a l c u l a t e d� n      ��� o  @B�A�A 0 	fieldtype 	fieldType� o  ?@�@�@ 	0 prefs  � ��� = FO��� n  FK��� 1  GK�?
�? 
valL� o  FG�>�>  0 fieldtypepopup fieldTypePopup� m  KN�� ���  S u m m a r y� ��=� r  RY��� m  RU�� ���  S u m m a r y� n      ��� o  VX�<�< 0 	fieldtype 	fieldType� o  UV�;�; 	0 prefs  �=  � r  \c��� m  \_   �  N o r m a l� n       o  `b�:�: 0 	fieldtype 	fieldType o  _`�9�9 	0 prefs  �D  �Q  �P  �  l hh�8�7�6�8  �7  �6    Z  h�	
�5 = hm n  hk o  ik�4�4 0 	fieldtype 	fieldType o  hi�3�3 	0 prefs   m  kl�2
�2 
null	 k  p~  R  p|�1
�1 .ascrerr ****      � **** m  x{ � 8 P a r a m e t e r   m i s s i n g :   f i e l d T y p e �0�/
�0 
errn m  tw�.�. �/   �- l }}�,�+�*�,  �+  �*  �-  
  = �� n  �� o  ���)�) 0 	fieldtype 	fieldType o  ���(�( 	0 prefs   m  �� �  C a l c u l a t e d  !  k  ��"" #$# l ���'�&�%�'  �&  �%  $ %&% l ���$'(�$  '  	 IF CALC:   ( �))    I F   C A L C :& *+* l ���#,-�#  ,   Field Type = Calculated   - �.. 0   F i e l d   T y p e   =   C a l c u l a t e d+ /0/ l ���"12�"  1   click "contains Options"   2 �33 2   c l i c k   " c o n t a i n s   O p t i o n s "0 454 l ���!67�!  6 / ) Data Type: popup "Calculation result is"   7 �88 R   D a t a   T y p e :   p o p u p   " C a l c u l a t i o n   r e s u l t   i s "5 9:9 l ��� ;<�   ;   Calc Context Table   < �== &   C a l c   C o n t e x t   T a b l e: >?> l ���@A�  @   Calculation itself   A �BB &   C a l c u l a t i o n   i t s e l f? CDC l ���EF�  E   Do Not Evaluate�   F �GG "   D o   N o t   E v a l u a t e &D HIH l ���JK�  J  	 Storage:   K �LL    S t o r a g e :I MNM l ���OP�  O - '	Global, Do Not Store, None/Minimal/All   P �QQ N 	 G l o b a l ,   D o   N o t   S t o r e ,   N o n e / M i n i m a l / A l lN RSR l ������  �  �  S TUT l ���VW�  V   FIELD TYPE:   W �XX    F I E L D   T Y P E :U YZY r  ��[\[ n  ��]^] 4  ���_
� 
popB_ m  ��`` �aa 
 T y p e :^ n  ��bcb 4  ���d
� 
tabgd m  ���� c 4  ���e
� 
cwine m  ���� \ o      ��  0 fieldtypepopup fieldTypePopupZ fgf Z  �Ahi�jh > ��klk n  ��mnm 1  ���
� 
valLn o  ����  0 fieldtypepopup fieldTypePopupl m  ��oo �pp  C a l c u l a t i o ni k  �
qq rsr n ��tut I  ���v��  0 fmgui_popupset fmGUI_PopupSetv wxw o  ����  0 fieldtypepopup fieldTypePopupx y�y m  ��zz �{{  C a l c u l a t i o n�  �  u  f  ��s |}| l ���
�	��
  �	  �  } ~~ l ������  � * $ click CHANGE to save the data type.   � ��� H   c l i c k   C H A N G E   t o   s a v e   t h e   d a t a   t y p e . ��� n ����� I  ������ B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ��� n  ����� 4  ����
� 
butT� m  ���� ���  C h a n g e� n  ����� 4  ����
� 
tabg� m  ���� � 4  ��� �
�  
cwin� m  ������ �  �  �  f  ��� ��� l ����������  ��  ��  � ��� I �������
�� .sysodelanull��� ��� nmbr� m  ���� ?�      ��  � ��� l ����������  ��  ��  � ��� l ��������  � m g if existing field was NOT ALREADY a calc, will get a warning message. Need to handle that possibility.   � ��� �   i f   e x i s t i n g   f i e l d   w a s   N O T   A L R E A D Y   a   c a l c ,   w i l l   g e t   a   w a r n i n g   m e s s a g e .   N e e d   t o   h a n d l e   t h a t   p o s s i b i l i t y .� ��� Z  �������� H  ���� C  ����� n  ����� 1  ����
�� 
pnam� 4  �����
�� 
cwin� m  ������ � m  ���� ��� & M a n a g e   D a t a b a s e   F o r� k  ��� ��� l ��������  � ' ! click OK to confirm the change:    � ��� B   c l i c k   O K   t o   c o n f i r m   t h e   c h a n g e :  � ��� n ����� I  ��������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� n  ����� 4  �����
�� 
butT� m  ���� ���  O K� 4  �����
�� 
cwin� m  ������ ��  ��  �  f  ��� ��� l ����������  ��  ��  � ��� I ������
�� .sysodelanull��� ��� nmbr� m  ���� ?�      ��  � ���� l ��������  ��  ��  ��  ��  ��  � ���� l 		��������  ��  ��  ��  �  j l A���� k  A�� ��� l ������  �   click Options:    � ���     c l i c k   O p t i o n s :  � ��� n 1��� I  1������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� 6 -��� n  ��� 4 ���
�� 
butT� m  ���� � n  ��� 4  ���
�� 
tabg� m  ���� � 4  ���
�� 
cwin� m  ���� � C  !,��� 1  "&��
�� 
pnam� m  '+�� ���  O p t i o n s��  ��  �  f  � ��� l 22��������  ��  ��  � ��� n 2?��� I  3?������� 20 windowwaituntil_frontis windowWaitUntil_FrontIS� ���� K  3;�� ������� 0 
windowname 
windowName� m  69�� ��� & S p e c i f y   C a l c u l a t i o n��  ��  ��  �  f  23� ���� l @@��������  ��  ��  ��  � B < ALREADY was a Calculation field, so need to click OPTIONS:    � ��� x   A L R E A D Y   w a s   a   C a l c u l a t i o n   f i e l d ,   s o   n e e d   t o   c l i c k   O P T I O N S :  g ��� l BB��������  ��  ��  � ��� l BB��������  ��  ��  � ��� l BB��������  ��  ��  � ��� Z  Bt������� G  BS��� = BG��� o  BC���� 0 editmode editMode� m  CF�� ���  C O N F O R M� > JO�	 � n  JM			 o  KM���� 0 calccode calcCode	 o  JK���� 	0 prefs  	  m  MN��
�� 
null� k  Vp		 			 l VV��		��  	   CALCULATION CODE:   	 �		 $   C A L C U L A T I O N   C O D E :	 		��		 n Vp	
		
 I  Wp��	���� (0 fmgui_textfieldset fmGUI_TextFieldSet	 			 n  Wi			 4  di��	
�� 
txta	 m  gh���� 	 n  Wd			 4  ]d��	
�� 
scra	 m  `c���� 	 4  W]��	
�� 
cwin	 m  [\���� 	 	��	 n  il			 o  jl���� 0 calccode calcCode	 o  ij���� 	0 prefs  ��  ��  	  f  VW��  ��  ��  � 			 l uu��������  ��  ��  	 			 l uu��		��  	 ' ! Calc CONTEXT Table (occurrence):   	 �		 B   C a l c   C O N T E X T   T a b l e   ( o c c u r r e n c e ) :	 	 	!	  Z  u�	"	#����	" > uz	$	%	$ n  ux	&	'	& o  vx����  0 calccontexttoc calcContextTOC	' o  uv���� 	0 prefs  	% m  xy��
�� 
null	# n }�	(	)	( I  ~���	*����  0 fmgui_popupset fmGUI_PopupSet	* 	+	,	+ 6 ~�	-	.	- n  ~�	/	0	/ 4 ����	1
�� 
popB	1 m  ������ 	0 4  ~���	2
�� 
cwin	2 m  ������ 	. E  ��	3	4	3 1  ����
�� 
pnam	4 m  ��	5	5 �	6	6  c o n t e x t	, 	7��	7 n  ��	8	9	8 o  ������  0 calccontexttoc calcContextTOC	9 o  ������ 	0 prefs  ��  ��  	)  f  }~��  ��  	! 	:	;	: l ����������  ��  ��  	; 	<	=	< l ����	>	?��  	>   Calc Result TYPE:   	? �	@	@ $   C a l c   R e s u l t   T Y P E :	= 	A	B	A Z  ��	C	D����	C > ��	E	F	E n  ��	G	H	G o  ������ 0 datatype dataType	H o  ������ 	0 prefs  	F m  ����
�� 
null	D n ��	I	J	I I  ����	K����  0 fmgui_popupset fmGUI_PopupSet	K 	L	M	L 6 ��	N	O	N n  ��	P	Q	P 4 ����	R
�� 
popB	R m  ������ 	Q 4  ����	S
�� 
cwin	S m  ������ 	O E  ��	T	U	T 1  ����
�� 
pnam	U m  ��	V	V �	W	W * C a l c u l a t i o n   r e s u l t   i s	M 	X��	X n  ��	Y	Z	Y o  ������ 0 datatype dataType	Z o  ������ 	0 prefs  ��  ��  	J  f  ����  ��  	B 	[	\	[ l ����������  ��  ��  	\ 	]	^	] l ����	_	`��  	_ 9 3 Do Not Evaluate if all referenced field are empty:   	` �	a	a f   D o   N o t   E v a l u a t e   i f   a l l   r e f e r e n c e d   f i e l d   a r e   e m p t y :	^ 	b	c	b Z  �	d	e��~	d > ��	f	g	f n  ��	h	i	h o  ���}�}  0 alwaysevaluate alwaysEvaluate	i o  ���|�| 	0 prefs  	g m  ���{
�{ 
null	e k  �	j	j 	k	l	k r  ��	m	n	m 6 ��	o	p	o n  ��	q	r	q 4 ���z	s
�z 
chbx	s m  ���y�y 	r 4  ���x	t
�x 
cwin	t m  ���w�w 	p E  ��	u	v	u 1  ���v
�v 
pnam	v m  ��	w	w �	x	x J n o t   e v a l u a t e   i f   a l l   r e f e r e n c e d   f i e l d s	n o      �u�u *0 notevaluatecheckbox notEvaluateCheckbox	l 	y�t	y Z  �	z	{�s	|	z n  ��	}	~	} o  ���r�r  0 alwaysevaluate alwaysEvaluate	~ o  ���q�q 	0 prefs  	{ n �		�	 I   �p	��o�p &0 fmgui_checkboxset fmGUI_CheckboxSet	� 	�	�	� o   �n�n *0 notevaluatecheckbox notEvaluateCheckbox	� 	��m	� m  �l�l  �m  �o  	�  f  � �s  	| n 		�	�	� I  
�k	��j�k &0 fmgui_checkboxset fmGUI_CheckboxSet	� 	�	�	� o  
�i�i *0 notevaluatecheckbox notEvaluateCheckbox	� 	��h	� m  �g�g �h  �j  	�  f  	
�t  �  �~  	c 	�	�	� l �f�e�d�f  �e  �d  	� 	�	�	� l �c	�	��c  	�   Repetitions:    	� �	�	�    R e p e t i t i o n s :  	� 	�	�	� Z  S	�	��b�a	� G  (	�	�	� = 	�	�	� o  �`�` 0 editmode editMode	� m  	�	� �	�	�  C O N F O R M	� > $	�	�	� n  "	�	�	� o  "�_�_ 0 maxrepetition maxRepetition	� o  �^�^ 	0 prefs  	� m  "#�]
�] 
null	� n +O	�	�	� I  ,O�\	��[�\ (0 fmgui_textfieldset fmGUI_TextFieldSet	� 	�	�	� 6 ,F	�	�	� n  ,7	�	�	� 4 27�Z	�
�Z 
txtf	� m  56�Y�Y 	� 4  ,2�X	�
�X 
cwin	� m  01�W�W 	� E  :E	�	�	� 1  ;?�V
�V 
pnam	� m  @D	�	� �	�	�  r e p e t i t i o n s	� 	��U	� n  FK	�	�	� o  GK�T�T 0 maxrepetition maxRepetition	� o  FG�S�S 	0 prefs  �U  �[  	�  f  +,�b  �a  	� 	�	�	� l TT�R�Q�P�R  �Q  �P  	� 	�	�	� l TT�O�N�M�O  �N  �M  	� 	�	�	� l TT�L�K�J�L  �K  �J  	� 	�	�	� Z  T�	�	��I�H	� G  T�	�	�	� G  T	�	�	� G  Tq	�	�	� G  Te	�	�	� = TY	�	�	� o  TU�G�G 0 editmode editMode	� l 	UX	��F�E	� m  UX	�	� �	�	�  C O N F O R M�F  �E  	� > \a	�	�	� n  \_	�	�	� o  ]_�D�D 0 storageglobal storageGlobal	� o  \]�C�C 	0 prefs  	� l 
_`	��B�A	� m  _`�@
�@ 
null�B  �A  	� > hm	�	�	� n  hk	�	�	� o  ik�?�? 20 storecalculationresults storeCalculationResults	� o  hi�>�> 	0 prefs  	� l 
kl	��=�<	� m  kl�;
�; 
null�=  �<  	� > t{	�	�	� n  ty	�	�	� o  uy�:�: 0 indexlanguage indexLanguage	� o  tu�9�9 	0 prefs  	� l 
yz	��8�7	� m  yz�6
�6 
null�8  �7  	� > ��	�	�	� n  ��	�	�	� o  ���5�5 0 	autoindex 	autoIndex	� o  ���4�4 	0 prefs  	� l 
��	��3�2	� m  ���1
�1 
null�3  �2  	� k  ��	�	� 	�	�	� l ���0	�	��0  	�   BEGIN: STORAGE OPTIONS   	� �	�	� .   B E G I N :   S T O R A G E   O P T I O N S	� 	�	�	� l ���/�.�-�/  �.  �-  	� 	�	�	� l ���,	�	��,  	�   click Storage Options:    	� �	�	� 0   c l i c k   S t o r a g e   O p t i o n s :  	� 	�	�	� n ��	�	�	� I  ���+	��*�+ B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow	� 	��)	� 6 ��	�	�	� n  ��	�	�	� 4 ���(	�
�( 
butT	� m  ���'�' 	� 4  ���&	�
�& 
cwin	� m  ���%�% 	� E  ��	�	�	� 1  ���$
�$ 
pnam	� m  ��	�	� �	�	�  S t o r a g e   O p t i o n s�)  �*  	�  f  ��	� 	�	�	� n ��	�	�	� I  ���#	��"�# "0 windowwaituntil windowWaitUntil	� 	��!	� K  ��
 
  � 

�  0 
windowname 
windowName
 m  ��

 �

 & S t o r a g e   O p t i o n s   f o r
 �

�  0 windownametest windowNameTest
 m  ��

 �

  s t a r t s   w i t h
 �
	�� 0 whichwindow whichWindow
	 m  ��



 �

 
 f r o n t�  �!  �"  	�  f  ��	� 


 l ������  �  �  
 


 l ������  �  �  
 


 r  ��


 4  ���

� 
cwin
 m  ���� 
 o      �� 0 workingarea workingArea
 


 l ������  �  �  
 


 r  ��


 6 ��


 n  ��


 4 ���

� 
chbx
 m  ���� 
 o  ���� 0 workingarea workingArea
 E  ��
 
!
  1  ���
� 
pnam
! m  ��
"
" �
#
#  g l o b a l   s t o r a g e
 o      �� .0 globalstoragecheckbox globalStorageCheckbox
 
$
%
$ r  �
&
'
& 6 �
(
)
( n  ��
*
+
* 4 ���
,
� 
chbx
, m  ���
�
 
+ o  ���	�	 0 workingarea workingArea
) E  �
-
.
- 1  ���
� 
pnam
. m  � 
/
/ �
0
0  D o   n o t   s t o r e
' o      �� (0 donotstorecheckbox doNotStoreCheckbox
% 
1
2
1 l ����  �  �  
2 
3
4
3 Z  B
5
6��
5 = 

7
8
7 o  �� 0 editmode editMode
8 m  	
9
9 �
:
:  C O N F O R M
6 k  >
;
; 
<
=
< l � 
>
?�   
> F @ These two CANNOT BE NULL if you are making this field CONFORM.    
? �
@
@ �   T h e s e   t w o   C A N N O T   B E   N U L L   i f   y o u   a r e   m a k i n g   t h i s   f i e l d   C O N F O R M .  
= 
A
B
A Z %
C
D����
C = 
E
F
E n  
G
H
G o  ���� 0 storageglobal storageGlobal
H o  ���� 	0 prefs  
F m  ��
�� 
null
D R  !��
I
J
�� .ascrerr ****      � ****
I m   
K
K �
L
L @ s t o r a g e G l o b a l   m u s t   b e   s p e c i f i e d !
J ��
M��
�� 
errn
M m  ���� ��  ��  ��  
B 
N��
N Z &>
O
P����
O = &+
Q
R
Q n  &)
S
T
S o  ')���� 20 storecalculationresults storeCalculationResults
T o  &'���� 	0 prefs  
R m  )*��
�� 
null
P R  .:��
U
V
�� .ascrerr ****      � ****
U m  69
W
W �
X
X T s t o r e C a l c u l a t i o n R e s u l t s   m u s t   b e   s p e c i f i e d !
V ��
Y��
�� 
errn
Y m  25���� ��  ��  ��  ��  �  �  
4 
Z
[
Z l CC��������  ��  ��  
[ 
\
]
\ Z  C�
^
_
`
a
^ n  CG
b
c
b o  DF���� 0 storageglobal storageGlobal
c o  CD���� 	0 prefs  
_ k  JS
d
d 
e
f
e n JQ
g
h
g I  KQ��
i���� &0 fmgui_checkboxset fmGUI_CheckboxSet
i 
j
k
j o  KL���� .0 globalstoragecheckbox globalStorageCheckbox
k 
l��
l m  LM���� ��  ��  
h  f  JK
f 
m��
m l RR��������  ��  ��  ��  
` 
n
o
n H  VZ
p
p n  VY
q
r
q o  WY���� 20 storecalculationresults storeCalculationResults
r o  VW���� 	0 prefs  
o 
s��
s k  ]f
t
t 
u
v
u n ]d
w
x
w I  ^d��
y���� &0 fmgui_checkboxset fmGUI_CheckboxSet
y 
z
{
z o  ^_���� (0 donotstorecheckbox doNotStoreCheckbox
{ 
|��
| m  _`���� ��  ��  
x  f  ]^
v 
}��
} l ee��������  ��  ��  ��  ��  
a l i�
~

�
~ k  i�
�
� 
�
�
� n ip
�
�
� I  jp��
����� &0 fmgui_checkboxset fmGUI_CheckboxSet
� 
�
�
� o  jk���� .0 globalstoragecheckbox globalStorageCheckbox
� 
���
� m  kl����  ��  ��  
�  f  ij
� 
�
�
� n qx
�
�
� I  rx��
����� &0 fmgui_checkboxset fmGUI_CheckboxSet
� 
�
�
� o  rs���� (0 donotstorecheckbox doNotStoreCheckbox
� 
���
� m  st����  ��  ��  
�  f  qr
� 
�
�
� l yy��������  ��  ��  
� 
�
�
� l yy��
�
���  
� ; 5 Then see which one of the Indexing choices is needed   
� �
�
� j   T h e n   s e e   w h i c h   o n e   o f   t h e   I n d e x i n g   c h o i c e s   i s   n e e d e d
� 
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
 2 , NOT EITHER OF THOSE, SO UNCHECK THEM FIRST:   
� �
�
� X   N O T   E I T H E R   O F   T H O S E ,   S O   U N C H E C K   T H E M   F I R S T :
] 
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
� 
� l ��������  ��  ��     Z  H���� >  n   o  ���� 0 	autoindex 	autoIndex o  ���� 	0 prefs   m  ��
�� 
null k  D		 

 r  ' 6 % n   4 ��
�� 
chbx m  ����  o  ���� 0 workingarea workingArea E  $ 1  ��
�� 
pnam m  # �  c r e a t e   i n d e x e s o      ���� &0 autoindexcheckbox autoIndexCheckbox  Z  (B� n  (. o  )-�~�~ 0 	autoindex 	autoIndex o  ()�}�} 	0 prefs   n 18 I  28�| �{�| &0 fmgui_checkboxset fmGUI_CheckboxSet  !"! o  23�z�z &0 autoindexcheckbox autoIndexCheckbox" #�y# m  34�x�x �y  �{    f  12�   n ;B$%$ I  <B�w&�v�w &0 fmgui_checkboxset fmGUI_CheckboxSet& '(' o  <=�u�u &0 autoindexcheckbox autoIndexCheckbox( )�t) m  =>�s�s  �t  �v  %  f  ;< *�r* l CC�q�p�o�q  �p  �o  �r  ��  ��   +,+ l II�n�m�l�n  �m  �l  , -.- l II�k/0�k  / %  click OK for Storage Options:    0 �11 >   c l i c k   O K   f o r   S t o r a g e   O p t i o n s :  . 232 n Ic454 I  Jc�j6�i�j B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow6 7�h7 6 J_898 n  JP:;: 4 KP�g<
�g 
butT< m  NO�f�f ; o  JK�e�e 0 workingarea workingArea9 E  S^=>= 1  TX�d
�d 
pnam> m  Y]?? �@@  O K�h  �i  5  f  IJ3 ABA l dd�c�b�a�c  �b  �a  B CDC n dEFE I  e�`G�_�` "0 windowwaituntil windowWaitUntilG H�^H K  e{II �]JK�] 0 
windowname 
windowNameJ m  hkLL �MM & S t o r a g e   O p t i o n s   f o rK �\NO�\  0 windownametest windowNameTestN m  nqPP �QQ & d o e s   n o t   s t a r t   w i t hO �[R�Z�[ 0 whichwindow whichWindowR m  twSS �TT 
 f r o n t�Z  �^  �_  F  f  deD UVU l ���Y�X�W�Y  �X  �W  V W�VW l ���UXY�U  X   END OF: STORAGE OPTIONS   Y �ZZ 0   E N D   O F :   S T O R A G E   O P T I O N S�V  �I  �H  	� [\[ l ���T�S�R�T  �S  �R  \ ]^] l ��_`a_ r  ��bcb 4  ���Qd
�Q 
cwind m  ���P�P c o      �O�O 0 workingarea workingArea` + % need reference to NEW first window.    a �ee J   n e e d   r e f e r e n c e   t o   N E W   f i r s t   w i n d o w .  ^ fgf l ���N�M�L�N  �M  �L  g hih l ���Kjk�K  j - ' click OK to save Specify Calculation:    k �ll N   c l i c k   O K   t o   s a v e   S p e c i f y   C a l c u l a t i o n :  i mnm n ��opo I  ���Jq�I�J B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindowq r�Hr 6 ��sts n  ��uvu 4 ���Gw
�G 
butTw m  ���F�F v o  ���E�E 0 workingarea workingAreat E  ��xyx 1  ���D
�D 
pnamy m  ��zz �{{  O K�H  �I  p  f  ��n |}| l ���C�B�A�C  �B  �A  } ~~ n ����� I  ���@��?�@ "0 windowwaituntil windowWaitUntil� ��>� K  ���� �=���= 0 
windowname 
windowName� m  ���� ��� & S p e c i f y   C a l c u l a t i o n� �<���<  0 windownametest windowNameTest� m  ���� ���   d o e s   n o t   c o n t a i n� �;��:�; 0 whichwindow whichWindow� m  ���� ��� 
 f r o n t�:  �>  �?  �  f  �� ��� l ���9�8�7�9  �8  �7  � ��� L  ���� m  ���6
�6 boovtrue� ��� l ���5�4�3�5  �4  �3  � ��� l ���2�1�0�2  �1  �0  � ��/� l ���.�-�,�.  �-  �,  �/  ! ��� = ����� n  ����� o  ���+�+ 0 	fieldtype 	fieldType� o  ���*�* 	0 prefs  � m  ���� ���  S u m m a r y� ��� k  ���� ��� l ���)�(�'�)  �(  �'  � ��� l ���&���&  �   IF SUMMARY:   � ���    I F   S U M M A R Y :� ��� l ���%���%  �   Field Type = Summary   � ��� *   F i e l d   T y p e   =   S u m m a r y� ��� l ���$���$  �   click "contains Options"   � ��� 2   c l i c k   " c o n t a i n s   O p t i o n s "� ��� l ���#���#  � / ) Data Type: popup "Calculation result is"   � ��� R   D a t a   T y p e :   p o p u p   " C a l c u l a t i o n   r e s u l t   i s "� ��� l ���"���"  �   Calc Context Table   � ��� &   C a l c   C o n t e x t   T a b l e� ��� l ���!���!  �   Calculation itself   � ��� &   C a l c u l a t i o n   i t s e l f� ��� l ��� ���   �   Do Not Evaluate�   � ��� "   D o   N o t   E v a l u a t e &� ��� l ������  �  	 Storage:   � ���    S t o r a g e :� ��� l ������  � - '	Global, Do Not Store, None/Minimal/All   � ��� N 	 G l o b a l ,   D o   N o t   S t o r e ,   N o n e / M i n i m a l / A l l� ��� l ������  �  �  � ��� l ������  � p j if existing field was NOT ALREADY a summary, will get a warning message. Need to handle that possibility.   � ��� �   i f   e x i s t i n g   f i e l d   w a s   N O T   A L R E A D Y   a   s u m m a r y ,   w i l l   g e t   a   w a r n i n g   m e s s a g e .   N e e d   t o   h a n d l e   t h a t   p o s s i b i l i t y .� ��� l ������  �  �  � ��� l ������  �   NOT YET SUPPORTED ! ! !    � ��� 2   N O T   Y E T   S U P P O R T E D   !   !   !  � ��� l ������  �   NOT YET SUPPORTED ! ! !    � ��� 2   N O T   Y E T   S U P P O R T E D   !   !   !  � ��� l ������  �   NOT YET SUPPORTED ! ! !    � ��� 2   N O T   Y E T   S U P P O R T E D   !   !   !  � ��� l ������  �  �  � ��� l ������  �  �  �  � ��� = ����� n  ����� o  ���� 0 	fieldtype 	fieldType� o  ���� 	0 prefs  � m  ���� ���  N o r m a l� ��
� k  ���� ��� l ���	���	  � / )ELSE IF NOT CALC (Field Type is Normal):	   � ��� R E L S E   I F   N O T   C A L C   ( F i e l d   T y p e   i s   N o r m a l ) : 	� ��� l ��� �     
 Data Type    �    D a t a   T y p e�  l ����     click "contains Options"    � 2   c l i c k   " c o n t a i n s   O p t i o n s " 	 l ���
�  
   TAB: Storage:    �    T A B :   S t o r a g e :	  l ����   - '	Global, Do Not Store, None/Minimal/All    � N 	 G l o b a l ,   D o   N o t   S t o r e ,   N o n e / M i n i m a l / A l l  l ����     TAB: Auto-Enter    �     T A B :   A u t o - E n t e r  l ����   - '	Creation, Modification, Serial, Data,     � N 	 C r e a t i o n ,   M o d i f i c a t i o n ,   S e r i a l ,   D a t a ,    l ����    	Calculated Value:     �   & 	 C a l c u l a t e d   V a l u e :   !"! l ���#$�  #   		Calc Context Table   $ �%% *   	 	 C a l c   C o n t e x t   T a b l e" &'& l ��� ()�   (   		Calculation itself   ) �** *   	 	 C a l c u l a t i o n   i t s e l f' +,+ l ����-.��  -   		Do Not Evaluate�   . �// &   	 	 D o   N o t   E v a l u a t e &, 010 l ����23��  2 % 	Do not replace existing value�   3 �44 > 	 D o   n o t   r e p l a c e   e x i s t i n g   v a l u e &1 565 l ����78��  7   TAB: Validation:   8 �99 "   T A B :   V a l i d a t i o n :6 :;: l ����<=��  <  	[Skip for now]   = �>>  	 [ S k i p   f o r   n o w ]; ?@? l ����AB��  A   Prohibit modification�   B �CC .   P r o h i b i t   m o d i f i c a t i o n &@ DED l ����������  ��  ��  E FGF l ����������  ��  ��  G HIH l ����������  ��  ��  I JKJ l ����LM��  L   field DATA TYPE:   M �NN "   f i e l d   D A T A   T Y P E :K OPO Z  �|QR����Q G  ��STS = ��UVU o  ������ 0 editmode editModeV m  ��WW �XX  C O N F O R MT > ��YZY n  ��[\[ o  ������ 0 datatype dataType\ o  ������ 	0 prefs  Z m  ����
�� 
nullR k  �x]] ^_^ r  �`a` n  �bcb 4  ��d
�� 
popBd m  
ee �ff 
 T y p e :c n  �ghg 4  ���i
�� 
tabgi m  ���� h 4  ����j
�� 
cwinj m  ������ a o      ���� 0 datatypepopup dataTypePopup_ k��k Z  xlm����l > non n  pqp 1  ��
�� 
valLq o  ���� 0 datatypepopup dataTypePopupo n  rsr o  ���� 0 datatype dataTypes o  ���� 	0 prefs  m k  ttt uvu n #wxw I  #��y����  0 fmgui_popupset fmGUI_PopupSety z{z o  ���� 0 datatypepopup dataTypePopup{ |��| n  }~} o  ���� 0 datatype dataType~ o  ���� 	0 prefs  ��  ��  x  f  v � l $$��������  ��  ��  � ��� l $$������  � * $ click CHANGE to save the data type.   � ��� H   c l i c k   C H A N G E   t o   s a v e   t h e   d a t a   t y p e .� ��� n $;��� I  %;������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� n  %7��� 4  07���
�� 
butT� m  36�� ���  C h a n g e� n  %0��� 4  +0���
�� 
tabg� m  ./���� � 4  %+���
�� 
cwin� m  )*���� ��  ��  �  f  $%� ��� l <<��������  ��  ��  � ��� I <C�����
�� .sysodelanull��� ��� nmbr� m  <?�� ?�      ��  � ��� l DD��������  ��  ��  � ��� l DD������  � 9 3 MIGHT open a dialog warning about type conversion:   � ��� f   M I G H T   o p e n   a   d i a l o g   w a r n i n g   a b o u t   t y p e   c o n v e r s i o n :� ���� Z  Dt������� H  DS�� C  DR��� n  DN��� 1  JN��
�� 
pnam� 4  DJ���
�� 
cwin� m  HI���� � m  NQ�� ��� & M a n a g e   D a t a b a s e   F o r� k  Vp�� ��� l VV������  � ' ! click OK to confirm the change:    � ��� B   c l i c k   O K   t o   c o n f i r m   t h e   c h a n g e :  � ��� n Vh��� I  Wh������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� n  Wd��� 4  ]d���
�� 
butT� m  `c�� ���  O K� 4  W]���
�� 
cwin� m  [\���� ��  ��  �  f  VW� ��� l ii��������  ��  ��  � ���� I ip�����
�� .sysodelanull��� ��� nmbr� m  il�� ?�      ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  P ��� l }}��������  ��  ��  � ��� l }}��������  ��  ��  � ��� l }}������  �   click Options:    � ���     c l i c k   O p t i o n s :  � ��� n }���� I  ~�������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� 6 ~���� n  ~���� 4 �����
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
 f r o n t��  ��  ��  �  f  ��� ��� l ����������  ��  ��  � ��� l ����������  ��  ��  � ��� l ��������  � P J--------------------------------------------------------------------------   � ��� � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l ��������  �   NORMAL FIELD   � ���    N O R M A L   F I E L D�    l ������   P J--------------------------------------------------------------------------    � � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  r  �� n  ��	
	 4  ����
�� 
tabg m  ������ 
 4  ����
�� 
cwin m  ������  o      ���� 0 workingarea workingArea  l ����������  ��  ��    l ����������  ��  ��    l ������   P J--------------------------------------------------------------------------    � � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  l ������     STORAGE TAB:    �    S T O R A G E   T A B :  l ������   P J--------------------------------------------------------------------------    � � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  !  l ������~��  �  �~  ! "#" l ���}�|�{�}  �|  �{  # $%$ l ���z�y�x�z  �y  �x  % &'& Z  �	()�w�v( G  �*+* G  ��,-, G  ��./. G  ��010 = ��232 o  ���u�u 0 editmode editMode3 l 	��4�t�s4 m  ��55 �66  C O N F O R M�t  �s  1 > ��787 n  ��9:9 o  ���r�r 0 storageglobal storageGlobal: o  ���q�q 	0 prefs  8 l 
��;�p�o; m  ���n
�n 
null�p  �o  / > ��<=< n  ��>?> o  ���m�m (0 storageindexchoice storageIndexChoice? o  ���l�l 	0 prefs  = l 
��@�k�j@ m  ���i
�i 
null�k  �j  - > ��ABA n  ��CDC o  ���h�h 0 indexlanguage indexLanguageD o  ���g�g 	0 prefs  B l 
��E�f�eE m  ���d
�d 
null�f  �e  + > �FGF n  �HIH o  ��c�c 0 	autoindex 	autoIndexI o  ���b�b 	0 prefs  G l 
J�a�`J m  �_
�_ 
null�a  �`  ) k  
	KK LML l 

�^�]�\�^  �]  �\  M NON I 
�[P�Z
�[ .prcsclicnull��� ��� uielP n  
QRQ 4  �YS
�Y 
radBS m  TT �UU  S t o r a g eR o  
�X�X 0 workingarea workingArea�Z  O VWV l �W�V�U�W  �V  �U  W XYX l �TZ[�T  Z   Repetitions:   [ �\\    R e p e t i t i o n s :Y ]^] n 6_`_ I  6�Sa�R�S (0 fmgui_textfieldset fmGUI_TextFieldSeta bcb 6 -ded n  fgf 4 �Qh
�Q 
txtfh m  �P�P g o  �O�O 0 workingarea workingAreae E  !,iji 1  "&�N
�N 
pnamj m  '+kk �ll  r e p e t i t i o n sc m�Mm n  -2non o  .2�L�L 0 maxrepetition maxRepetitiono o  -.�K�K 	0 prefs  �M  �R  `  f  ^ pqp l 77�J�I�H�J  �I  �H  q rsr l 77�Gtu�G  t   Global:   u �vv    G l o b a l :s wxw r  7Nyzy 6 7L{|{ n  7=}~} 4 8=�F
�F 
chbx m  ;<�E�E ~ o  78�D�D 0 workingarea workingArea| E  @K��� 1  AE�C
�C 
pnam� m  FJ�� ���  g l o b a l   s t o r a g ez o      �B�B .0 globalstoragecheckbox globalStorageCheckboxx ��� l OO�A�@�?�A  �@  �?  � ��� Z  Os���>�=� = OT��� o  OP�<�< 0 editmode editMode� m  PS�� ���  C O N F O R M� k  Wo�� ��� l WW�;���;  � D > This CANNOT BE NULL, if we are making field conform!!!!!					   � ��� |   T h i s   C A N N O T   B E   N U L L ,   i f   w e   a r e   m a k i n g   f i e l d   c o n f o r m ! ! ! ! ! 	 	 	 	 	� ��:� Z Wo���9�8� = W\��� n  WZ��� o  XZ�7�7 0 storageglobal storageGlobal� o  WX�6�6 	0 prefs  � m  Z[�5
�5 
null� R  _k�4��
�4 .ascrerr ****      � ****� m  gj�� ��� @ s t o r a g e G l o b a l   m u s t   b e   s p e c i f i e d !� �3��2
�3 
errn� m  cf�1�1 �2  �9  �8  �:  �>  �=  � ��� l tt�0�/�.�0  �/  �.  � ��� l tt�-�,�+�-  �,  �+  � ��� l tt�*�)�(�*  �)  �(  � ��� Z  t����'�� n  tx��� o  uw�&�& 0 storageglobal storageGlobal� o  tu�%�% 	0 prefs  � k  {��� ��� l {{�$�#�"�$  �#  �"  � ��� Z  {����!� � > {���� n  {���� 1  |��
� 
valL� o  {|�� .0 globalstoragecheckbox globalStorageCheckbox� m  ���� � k  ���� ��� l ������  � ( " should be GLOBAL, but is NOT yet:   � ��� D   s h o u l d   b e   G L O B A L ,   b u t   i s   N O T   y e t :� ��� n ����� I  ������ *0 clickobjectbycoords clickObjectByCoords� ��� o  ���� .0 globalstoragecheckbox globalStorageCheckbox�  �  �  f  ��� ��� I �����
� .sysodelanull��� ��� nmbr� m  ���� ?�      �  � ��� l ������  �  �  � ��� l ������  � G A MIGHT open a dialog warning about change to global status:						   � ��� �   M I G H T   o p e n   a   d i a l o g   w a r n i n g   a b o u t   c h a n g e   t o   g l o b a l   s t a t u s : 	 	 	 	 	 	� ��� Z  ������� H  ���� C  ����� n  ����� 1  ���
� 
pnam� 4  ����
� 
cwin� m  ���� � m  ���� ���  O p t i o n s   f o r� k  ���� ��� l ������  � ' ! click OK to confirm the change:    � ��� B   c l i c k   O K   t o   c o n f i r m   t h e   c h a n g e :  � ��� n ����� I  ���
��	�
 B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ��� n  ����� 4  ����
� 
butT� m  ���� ���  O K� 4  ����
� 
cwin� m  ���� �  �	  �  f  ��� ��� l ������  �  �  � ��� l ������  � < 6 wait until back to normal "Options for Field" window:   � ��� l   w a i t   u n t i l   b a c k   t o   n o r m a l   " O p t i o n s   f o r   F i e l d "   w i n d o w :� ��� n ����� I  ��� ����  "0 windowwaituntil windowWaitUntil� ���� K  ���� ������ 0 
windowname 
windowName� m  ���� ���  O p t i o n s   f o r� ������  0 windownametest windowNameTest� m  ��   �  s t a r t s   w i t h� ������ 0 whichwindow whichWindow m  �� � 
 f r o n t��  ��  ��  �  f  ��� �� l ����������  ��  ��  ��  �  �  �  �!  �   �  l ����������  ��  ��   �� l ����������  ��  ��  ��  �'  � l ��	
	 k  ��  Z  �H���� > �� n  �� 1  ����
�� 
valL o  ������ .0 globalstoragecheckbox globalStorageCheckbox m  ������   k  �D  l ����������  ��  ��    l ������   $  IS GLOBAL, but should NOT be:    � <   I S   G L O B A L ,   b u t   s h o u l d   N O T   b e :  n ��  I  ����!���� *0 clickobjectbycoords clickObjectByCoords! "��" o  ������ .0 globalstoragecheckbox globalStorageCheckbox��  ��     f  �� #$# I ����%��
�� .sysodelanull��� ��� nmbr% m  ��&& ?�      ��  $ '(' l ����������  ��  ��  ( )*) l ����+,��  + G A MIGHT open a dialog warning about change to global status:						   , �-- �   M I G H T   o p e n   a   d i a l o g   w a r n i n g   a b o u t   c h a n g e   t o   g l o b a l   s t a t u s : 	 	 	 	 	 	* ./. Z  �B01����0 H  �22 C  �
343 n  �565 1  ��
�� 
pnam6 4  ���7
�� 
cwin7 m   ���� 4 m  	88 �99  O p t i o n s   f o r1 k  >:: ;<; l ��=>��  = ' ! click OK to confirm the change:    > �?? B   c l i c k   O K   t o   c o n f i r m   t h e   c h a n g e :  < @A@ n  BCB I   ��D���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindowD E��E n  FGF 4  ��H
�� 
butTH m  II �JJ  O KG 4  ��K
�� 
cwinK m  ���� ��  ��  C  f  A LML l !!��������  ��  ��  M NON l !!��PQ��  P < 6 wait until back to normal "Options for Field" window:   Q �RR l   w a i t   u n t i l   b a c k   t o   n o r m a l   " O p t i o n s   f o r   F i e l d "   w i n d o w :O STS n !<UVU I  "<��W���� "0 windowwaituntil windowWaitUntilW X��X K  "8YY ��Z[�� 0 
windowname 
windowNameZ m  %(\\ �]]  O p t i o n s   f o r[ ��^_��  0 windownametest windowNameTest^ m  +.`` �aa  s t a r t s   w i t h_ ��b���� 0 whichwindow whichWindowb m  14cc �dd 
 f r o n t��  ��  ��  V  f  !"T e��e l ==��������  ��  ��  ��  ��  ��  / f��f l CC��������  ��  ��  ��  ��  ��   ghg l II��������  ��  ��  h iji l II��������  ��  ��  j klk l II��mn��  m ; 5 Then see which one of the Indexing choices is needed   n �oo j   T h e n   s e e   w h i c h   o n e   o f   t h e   I n d e x i n g   c h o i c e s   i s   n e e d e dl p��p Z  I�qrs��q = IRtut n  INvwv o  JN���� (0 storageindexchoice storageIndexChoicew o  IJ���� 	0 prefs  u m  NQxx �yy  N o n er k  Uezz {|{ n Uc}~} I  Vc������ &0 fmgui_checkboxset fmGUI_CheckboxSet ��� n  V^��� 4  W^���
�� 
chbx� m  Z]�� ���  N o n e   1   o f   3� o  VW���� 0 workingarea workingArea� ���� m  ^_���� ��  ��  ~  f  UV| ���� o  de���� 0 fdsfdsf  ��  s ��� = hq��� n  hm��� o  im���� (0 storageindexchoice storageIndexChoice� o  hi���� 	0 prefs  � m  mp�� ���  M i n i m a l� ��� k  t��� ��� n t���� I  u�������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� n  u}��� 4  v}���
�� 
chbx� m  y|�� ���  M i n i m a l   2   o f   3� o  uv���� 0 workingarea workingArea� ���� m  }~���� ��  ��  �  f  tu� ���� l ����������  ��  ��  ��  � ��� = ����� n  ����� o  ������ (0 storageindexchoice storageIndexChoice� o  ������ 	0 prefs  � m  ���� ���  A l l� ���� k  ���� ��� n ����� I  ��������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� n  ����� 4  �����
�� 
chbx� m  ���� ���  A l l   3   o f   3� o  ������ 0 workingarea workingArea� ���� m  ������ ��  ��  �  f  ��� ���� l ����������  ��  ��  ��  ��  ��  ��  
 ' ! NOT global, SO UNCHECK it FIRST:    ��� B   N O T   g l o b a l ,   S O   U N C H E C K   i t   F I R S T :� ��� l ����������  ��  ��  � ��� l ��������  �   Index Language:    � ��� "   I n d e x   L a n g u a g e :  � ��� Z  ��������� > ����� n  ����� o  ������ 0 indexlanguage indexLanguage� o  ������ 	0 prefs  � m  ����
�� 
null� n ����� I  ���������  0 fmgui_popupset fmGUI_PopupSet� ��� 6 ����� n  ����� 4 �����
�� 
popB� m  ������ � o  ������ 0 workingarea workingArea� E  ����� 1  ����
�� 
pnam� m  ���� ���   D e f a u l t   l a n g u a g e� ���� n  ����� o  ������ 0 indexlanguage indexLanguage� o  ���� 	0 prefs  ��  ��  �  f  ����  ��  � ��� l ���~�}�|�~  �}  �|  � ��� l ���{���{  � %  Create indexes automatically:    � ��� >   C r e a t e   i n d e x e s   a u t o m a t i c a l l y :  � ��� Z  �	���z�y� > ����� n  ����� o  ���x�x 0 	autoindex 	autoIndex� o  ���w�w 	0 prefs  � m  ���v
�v 
null� k  �	�� ��� r  ����� 6 ����� n  ����� 4 ���u�
�u 
chbx� m  ���t�t � o  ���s�s 0 workingarea workingArea� E  ����� 1  ���r
�r 
pnam� m  ���� ���  c r e a t e   i n d e x e s� o      �q�q &0 autoindexcheckbox autoIndexCheckbox� ��� Z  �	���p�� n  ����� o  ���o�o 0 	autoindex 	autoIndex� o  ���n�n 	0 prefs  � n 		� � I  		�m�l�m &0 fmgui_checkboxset fmGUI_CheckboxSet  o  		�k�k &0 autoindexcheckbox autoIndexCheckbox �j m  		�i�i �j  �l     f  		�p  � n 		 I  		�h�g�h &0 fmgui_checkboxset fmGUI_CheckboxSet 	 o  		�f�f &0 autoindexcheckbox autoIndexCheckbox	 
�e
 m  		�d�d  �e  �g    f  		� �c l 		�b�a�`�b  �a  �`  �c  �z  �y  �  l 		�_�^�]�_  �^  �]   �\ l 		�[�[     END OF: Storage Tab.    � *   E N D   O F :   S t o r a g e   T a b .�\  �w  �v  '  l 		�Z�Y�X�Z  �Y  �X    l 		�W�W   P J--------------------------------------------------------------------------    � � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  l 		�V�V     NORMAL FIELD    �    N O R M A L   F I E L D  l 		�U !�U    U O--------------------------------------------------------------------------					   ! �"" � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 	 	 	 	 	 #$# l 		�T%&�T  %   AUTO-ENTER TAB:   & �''     A U T O - E N T E R   T A B :$ ()( l 		�S*+�S  * U O--------------------------------------------------------------------------					   + �,, � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 	 	 	 	 	) -.- r  		,/0/ n  		*121 4  	%	*�R3
�R 
tabg3 m  	(	)�Q�Q 2 4  		%�P4
�P 
cwin4 m  	#	$�O�O 0 o      �N�N 0 workingarea workingArea. 565 I 	-	9�M7�L
�M .prcsclicnull��� ��� uiel7 n  	-	5898 4  	.	5�K:
�K 
radB: m  	1	4;; �<<  A u t o - E n t e r9 o  	-	.�J�J 0 workingarea workingArea�L  6 =>= l 	:	:�I�H�G�I  �H  �G  > ?@? l 	:	:�FAB�F  A   Serial Number:   B �CC    S e r i a l   N u m b e r :@ DED Z  	:
FG�E�DF > 	:	AHIH n  	:	?JKJ o  	;	?�C�C 0 
autoserial 
autoSerialK o  	:	;�B�B 	0 prefs  I m  	?	@�A
�A 
nullG Z  	D
LM�@NL = 	D	QOPO n  	D	MQRQ m  	I	M�?
�? 
pclsR n  	D	ISTS o  	E	I�>�> 0 
autoserial 
autoSerialT o  	D	E�=�= 	0 prefs  P m  	M	P�<
�< 
boolM n 	T	bUVU I  	U	b�;W�:�; &0 fmgui_checkboxset fmGUI_CheckboxSetW XYX n  	U	]Z[Z 4  	V	]�9\
�9 
chbx\ m  	Y	\]] �^^  S e r i a l   n u m b e r[ o  	U	V�8�8 0 workingarea workingAreaY _�7_ m  	]	^�6�6  �7  �:  V  f  	T	U�@  N k  	e
`` aba l 	e	e�5cd�5  c * $ autoSerial is a RECORD of settings:   d �ee H   a u t o S e r i a l   i s   a   R E C O R D   o f   s e t t i n g s :b fgf n 	e	shih I  	f	s�4j�3�4 &0 fmgui_checkboxset fmGUI_CheckboxSetj klk n  	f	nmnm 4  	g	n�2o
�2 
chbxo m  	j	mpp �qq  S e r i a l   n u m b e rn o  	f	g�1�1 0 workingarea workingAreal r�0r m  	n	o�/�/ �0  �3  i  f  	e	fg sts l 	t	t�.�-�,�.  �-  �,  t uvu l 	t	t�+�*�)�+  �*  �)  v wxw n 	t	�yzy I  	u	��({�'�( (0 fmgui_textfieldset fmGUI_TextFieldSet{ |}| 6 	u	�~~ n  	u	{��� 4 	v	{�&�
�& 
txtf� m  	y	z�%�% � o  	u	v�$�$ 0 workingarea workingArea E  	~	���� 1  		��#
�# 
pnam� m  	�	��� ���  n e x t   v a l u e} ��"� n  	�	���� o  	�	��!�! 0 autonextvalue autoNextValue� n  	�	���� o  	�	�� �  0 
autoserial 
autoSerial� o  	�	��� 	0 prefs  �"  �'  z  f  	t	ux ��� l 	�	�����  �  �  � ��� n 	�	���� I  	�	����� (0 fmgui_textfieldset fmGUI_TextFieldSet� ��� 6 	�	���� n  	�	���� 4 	�	���
� 
txtf� m  	�	��� � o  	�	��� 0 workingarea workingArea� E  	�	���� 1  	�	��
� 
pnam� m  	�	��� ���  i n c r e m e n t� ��� n  	�	���� o  	�	��� 0 autoincrement autoIncrement� n  	�	���� o  	�	��� 0 
autoserial 
autoSerial� o  	�	��� 	0 prefs  �  �  �  f  	�	�� ��� l 	�	�����  �  �  � ��� Z  	�	������ = 	�	���� n  	�	���� o  	�	��� 0 autogenerate autoGenerate� n  	�	���� o  	�	��� 0 
autoserial 
autoSerial� o  	�	��� 	0 prefs  � m  	�	��� ���  O n C r e a t i o n� n 	�	���� I  	�	��
��	�
 &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� n  	�	���� 4  	�	���
� 
chbx� m  	�	��� ��� $ O n   c r e a t i o n   1   o f   2� o  	�	��� 0 workingarea workingArea� ��� m  	�	��� �  �	  �  f  	�	�� ��� = 	�	���� n  	�	���� o  	�	��� 0 autogenerate autoGenerate� n  	�	���� o  	�	��� 0 
autoserial 
autoSerial� o  	�	��� 	0 prefs  � m  	�	��� ���  O n C o m m i t� ��� n 	�	���� I  	�	�� ����  &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� n  	�	���� 4  	�	����
�� 
chbx� m  	�	��� ���   O n   c o m m i t   2   o f   2� o  	�	����� 0 workingarea workingArea� ���� m  	�	����� ��  ��  �  f  	�	��  �  � ���� l 
 
 ��������  ��  ��  ��  �E  �D  E ��� l 

��������  ��  ��  � ��� l 

��������  ��  ��  � ��� l 

������  � A ; Special Value (creation,modification,last visited record):   � ��� v   S p e c i a l   V a l u e   ( c r e a t i o n , m o d i f i c a t i o n , l a s t   v i s i t e d   r e c o r d ) :� ��� Z  
�������� > 

��� n  

��� o  

���� .0 autoenterspecialvalue autoEnterSpecialValue� o  

���� 	0 prefs  � m  

��
�� 
null� k  
��� ��� l 

������  � � � autoEnterSpecialValue: keywords used in FM-XML: PreviousRecord, CreationAccountName, CreationUserName,CreationTimestamp, ModificationAccountName, et al.   � ���2   a u t o E n t e r S p e c i a l V a l u e :   k e y w o r d s   u s e d   i n   F M - X M L :   P r e v i o u s R e c o r d ,   C r e a t i o n A c c o u n t N a m e ,   C r e a t i o n U s e r N a m e , C r e a t i o n T i m e s t a m p ,   M o d i f i c a t i o n A c c o u n t N a m e ,   e t   a l .� ��� Z  
������� = 

��� n  

��� o  

���� .0 autoenterspecialvalue autoEnterSpecialValue� o  

���� 	0 prefs  � m  

�� ���  P r e v i o u s R e c o r d� k  

9�� ��� n 

7��� I  

7������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� 6 

2��� n  

#   4 

#��
�� 
chbx m  
!
"����  o  

���� 0 workingarea workingArea� E  
&
1 1  
'
+��
�� 
pnam m  
,
0 �  l a s t   v i s i t e d� �� m  
2
3���� ��  ��  �  f  

� �� l 
8
8��������  ��  ��  ��  � 	
	 C  
<
E n  
<
A o  
=
A���� .0 autoenterspecialvalue autoEnterSpecialValue o  
<
=���� 	0 prefs   m  
A
D �  C r e a t i o n
  k  
H
�  Z  
H
��� = 
H
Q n  
H
M o  
I
M���� .0 autoenterspecialvalue autoEnterSpecialValue o  
H
I���� 	0 prefs   m  
M
P �   C r e a t i o n U s e r N a m e r  
T
Y  m  
T
W!! �""  N a m e  o      ���� 0 
menuchoice 
menuChoice #$# = 
\
e%&% n  
\
a'(' o  
]
a���� .0 autoenterspecialvalue autoEnterSpecialValue( o  
\
]���� 	0 prefs  & m  
a
d)) �**  C r e a t i o n N a m e$ +,+ r  
h
m-.- m  
h
k// �00  N a m e. o      ���� 0 
menuchoice 
menuChoice, 121 = 
p
y343 n  
p
u565 o  
q
u���� .0 autoenterspecialvalue autoEnterSpecialValue6 o  
p
q���� 	0 prefs  4 m  
u
x77 �88 & C r e a t i o n A c c o u n t N a m e2 9:9 r  
|
�;<; m  
|
== �>>  A c c o u n t   N a m e< o      ���� 0 
menuchoice 
menuChoice: ?@? = 
�
�ABA n  
�
�CDC o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValueD o  
�
����� 	0 prefs  B m  
�
�EE �FF " C r e a t i o n T i m e s t a m p@ GHG r  
�
�IJI m  
�
�KK �LL 2 T i m e s t a m p   ( D a t e   a n d   T i m e )J o      ���� 0 
menuchoice 
menuChoiceH MNM = 
�
�OPO n  
�
�QRQ o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValueR o  
�
����� 	0 prefs  P m  
�
�SS �TT  C r e a t i o n T i m eN UVU r  
�
�WXW m  
�
�YY �ZZ  T i m eX o      ���� 0 
menuchoice 
menuChoiceV [\[ = 
�
�]^] n  
�
�_`_ o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValue` o  
�
����� 	0 prefs  ^ m  
�
�aa �bb  C r e a t i o n D a t e\ c��c r  
�
�ded m  
�
�ff �gg  D a t ee o      ���� 0 
menuchoice 
menuChoice��  ��   hih n 
�
�jkj I  
�
���l����  0 fmgui_popupset fmGUI_PopupSetl mnm n  
�
�opo 4  
�
���q
�� 
popBq m  
�
�rr �ss  C r e a t i o np o  
�
����� 0 workingarea workingArean t��t o  
�
����� 0 
menuchoice 
menuChoice��  ��  k  f  
�
�i u��u l 
�
���������  ��  ��  ��   vwv C  
�
�xyx n  
�
�z{z o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValue{ o  
�
����� 	0 prefs  y m  
�
�|| �}}  M o d i f i c a t i o nw ~~ k  
�k�� ��� Z  
�Z������ = 
�
���� n  
�
���� o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValue� o  
�
����� 	0 prefs  � m  
�
��� ��� ( M o d i f i c a t i o n U s e r N a m e� r  
�
���� m  
�
��� ���  N a m e� o      ���� 0 
menuchoice 
menuChoice� ��� = 
�
���� n  
�
���� o  
�
����� .0 autoenterspecialvalue autoEnterSpecialValue� o  
�
����� 	0 prefs  � m  
�
��� ���   M o d i f i c a t i o n N a m e� ��� r  ��� m  �� ���  N a m e� o      ���� 0 
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
menuChoice��  ��  � ��� n [i��� I  \i�������  0 fmgui_popupset fmGUI_PopupSet� ��� n  \d��� 4  ]d���
�� 
popB� m  `c�� ���  M o d i f i c a t i o n� o  \]���� 0 workingarea workingArea� ���� o  de���� 0 
menuchoice 
menuChoice��  ��  �  f  [\� ��� l jj��������  ��  ��  � ���� l jj��������  ��  ��  ��   ��� = nw��� n  ns��� o  os���� .0 autoenterspecialvalue autoEnterSpecialValue� o  no���� 	0 prefs  � m  sv�� ���  N O N E� ��� k  z��� ��� l zz������  � : 4 need to make sure NO special values are checked on:   � ��� h   n e e d   t o   m a k e   s u r e   N O   s p e c i a l   v a l u e s   a r e   c h e c k e d   o n :� ��� n z���� I  {�������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� 6 {���� n  {���� 4 |��� 
�� 
chbx  m  ����� � o  {|���� 0 workingarea workingArea� = �� 1  ����
�� 
titl m  �� �  C r e a t i o n� �� m  ������  ��  ��  �  f  z{�  n ��	 I  ����
���� &0 fmgui_checkboxset fmGUI_CheckboxSet
  6 �� n  �� 4 ����
�� 
chbx m  ������  o  ������ 0 workingarea workingArea = �� 1  ����
�� 
titl m  �� �  M o d i f i c a t i o n �� m  ������  ��  ��  	  f  ��  n �� I  �������� &0 fmgui_checkboxset fmGUI_CheckboxSet  6 �� n  �� !  4 ����"
�� 
chbx" m  ������ ! o  ������ 0 workingarea workingArea E  ��#$# 1  ���
� 
pnam$ m  ��%% �&&  l a s t   v i s i t e d '�~' m  ���}�}  �~  ��    f  �� (�|( l ���{�z�y�{  �z  �y  �|  � )*) = ��+,+ n  ��-.- o  ���x�x .0 autoenterspecialvalue autoEnterSpecialValue. o  ���w�w 	0 prefs  , m  ���v
�v 
null* /�u/ l ���t01�t  0 * $ do not change any of the checkboxes   1 �22 H   d o   n o t   c h a n g e   a n y   o f   t h e   c h e c k b o x e s�u  ��  � 343 l ���s�r�q�s  �r  �q  4 5�p5 l ���o�n�m�o  �n  �m  �p  ��  ��  � 676 l ���l�k�j�l  �k  �j  7 898 l ���i:;�i  :   Constant:    ; �<<    C o n s t a n t :  9 =>= Z  �R?@�h�g? > ��ABA n  ��CDC o  ���f�f *0 autoenterisconstant autoEnterIsConstantD o  ���e�e 	0 prefs  B m  ���d
�d 
null@ k  �NEE FGF r  �	HIH 6 �JKJ n  ��LML 4 ���cN
�c 
chbxN m  ���b�b M o  ���a�a 0 workingarea workingAreaK E  �OPO 1  � �`
�` 
pnamP m  QQ �RR  D a t aI o      �_�_ 0 datacheckbox dataCheckboxG STS Z  
LUV�^WU n  
XYX o  �]�] *0 autoenterisconstant autoEnterIsConstantY o  
�\�\ 	0 prefs  V k  BZZ [\[ n ]^] I  �[_�Z�[ &0 fmgui_checkboxset fmGUI_CheckboxSet_ `a` o  �Y�Y 0 datacheckbox dataCheckboxa b�Xb m  �W�W �X  �Z  ^  f  \ c�Vc Z  Bde�Ufd = "ghg n   iji o   �T�T .0 autoenterconstantdata autoEnterConstantDataj o  �S�S 	0 prefs  h m   !�R
�R 
nulle l %%�Qkl�Q  k 7 1 Possibly null if autoEnterIsConstant is false...   l �mm b   P o s s i b l y   n u l l   i f   a u t o E n t e r I s C o n s t a n t   i s   f a l s e . . .�U  f n )Bnon I  *B�Pp�O�P (0 fmgui_textfieldset fmGUI_TextFieldSetp qrq n  *9sts 4  29�Nu
�N 
txtau m  58vv �ww 
 D a t a :t n  *2xyx 4  +2�Mz
�M 
scraz m  .1{{ �|| 
 D a t a :y o  *+�L�L 0 workingarea workingArear }�K} n  9>~~ o  :>�J�J .0 autoenterconstantdata autoEnterConstantData o  9:�I�I 	0 prefs  �K  �O  o  f  )*�V  �^  W n EL��� I  FL�H��G�H &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  FG�F�F 0 datacheckbox dataCheckbox� ��E� m  GH�D�D  �E  �G  �  f  EFT ��� l MM�C�B�A�C  �B  �A  � ��� l MM�@�?�>�@  �?  �>  � ��=� l MM�<�;�:�<  �;  �:  �=  �h  �g  > ��� l SS�9�8�7�9  �8  �7  � ��� Z  Sb���6�5� > SZ��� n  SX��� o  TX�4�4 &0 autoenterislookup autoEnterIsLookup� o  ST�3�3 	0 prefs  � m  XY�2
�2 
null� k  ]]�� ��� l ]]�1���1  �   NOT YET SUPPORTED!!!!!	   � ��� 0   N O T   Y E T   S U P P O R T E D ! ! ! ! ! 	� ��� l ]]�0���0  �   NOT YET SUPPORTED!!!!!	   � ��� 0   N O T   Y E T   S U P P O R T E D ! ! ! ! ! 	� ��/� l ]]�.���.  � $  NOT YET SUPPORTED!!!!!							   � ��� <   N O T   Y E T   S U P P O R T E D ! ! ! ! ! 	 	 	 	 	 	 	�/  �6  �5  � ��� l cc�-�,�+�-  �,  �+  � ��� l cc�*�)�(�*  �)  �(  � ��� l cc�'���'  �   AutoEnter Calculation:    � ��� 0   A u t o E n t e r   C a l c u l a t i o n :  � ��� Z  c���&�%� > cj��� n  ch��� o  dh�$�$ 00 autoenteriscalculation autoEnterIsCalculation� o  cd�#�# 	0 prefs  � m  hi�"
�" 
null� k  m�� ��� Z  m���!�� H  ms�� n  mr��� o  nr� �  00 autoenteriscalculation autoEnterIsCalculation� o  mn�� 	0 prefs  � k  v��� ��� l vv����  � + % Need to make sure it is NOT checked:   � ��� J   N e e d   t o   m a k e   s u r e   i t   i s   N O T   c h e c k e d :� ��� n v���� I  w����� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� n  w��� 4  x��
� 
chbx� m  {~�� ���   C a l c u l a t e d   v a l u e� o  wx�� 0 workingarea workingArea� ��� m  ���  �  �  �  f  vw� ��� l ������  �  �  �  �!  � l ����� k  ��� ��� r  ����� n  ����� 4  ����
� 
chbx� m  ���� ���   C a l c u l a t e d   v a l u e� o  ���� 0 workingarea workingArea� o      �� .0 autoentercalccheckbox autoEnterCalcCheckbox� ��� l ������  � G A if the checkbox is already checked, need to click Specify button   � ��� �   i f   t h e   c h e c k b o x   i s   a l r e a d y   c h e c k e d ,   n e e d   t o   c l i c k   S p e c i f y   b u t t o n� ��� l ������  � ^ X if not already checked, checking it opens the window, so use special function for click   � ��� �   i f   n o t   a l r e a d y   c h e c k e d ,   c h e c k i n g   i t   o p e n s   t h e   w i n d o w ,   s o   u s e   s p e c i a l   f u n c t i o n   f o r   c l i c k� ��� Z  ������� > ����� n  ����� 1  ���
� 
valL� o  ���� .0 autoentercalccheckbox autoEnterCalcCheckbox� m  ���� � n ����� I  ���
��	�
 B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ��� o  ���� .0 autoentercalccheckbox autoEnterCalcCheckbox�  �	  �  f  ���  � k  ���� ��� l ������  � \ V there are TWO buttons named "Specify�" - the first is for CALC, second is for lookup:   � ��� �   t h e r e   a r e   T W O   b u t t o n s   n a m e d   " S p e c i f y & "   -   t h e   f i r s t   i s   f o r   C A L C ,   s e c o n d   i s   f o r   l o o k u p :� ��� n ����� I  ������ B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow�  �  6 �� n  �� 4 ���
� 
butT m  ��� �   o  ������ 0 workingarea workingArea C  �� 1  ����
�� 
pnam m  �� �		  S p e c i f y�  �  �  f  ���  � 

 l ����������  ��  ��    l ������   + % wait for Specify Calculation window:    � J   w a i t   f o r   S p e c i f y   C a l c u l a t i o n   w i n d o w :  n �� I  �������� 20 windowwaituntil_frontis windowWaitUntil_FrontIS �� K  �� ������ 0 
windowname 
windowName m  �� � & S p e c i f y   C a l c u l a t i o n��  ��  ��    f  ��  l ����������  ��  ��    r  ��  4  ����!
�� 
cwin! m  ������   o      ���� 0 workingarea workingArea "#" l ����������  ��  ��  # $%$ l ����&'��  &   CALCULATION CODE:   ' �(( $   C A L C U L A T I O N   C O D E :% )*) l ����������  ��  ��  * +,+ Z  ��-.��/- = ��010 n  ��232 1  ����
�� 
leng3 n  ��454 o  ������ &0 autoentercalccode autoEnterCalcCode5 o  ������ 	0 prefs  1 m  ������  . k  ��66 787 l  ����9:��  9 � � if for some reason an empty string is specified, we want to force an error in FM's syntax checker for the validation calc box instead of silently allowing an empty string as the validation calc.    : �;;�   i f   f o r   s o m e   r e a s o n   a n   e m p t y   s t r i n g   i s   s p e c i f i e d ,   w e   w a n t   t o   f o r c e   a n   e r r o r   i n   F M ' s   s y n t a x   c h e c k e r   f o r   t h e   v a l i d a t i o n   c a l c   b o x   i n s t e a d   o f   s i l e n t l y   a l l o w i n g   a n   e m p t y   s t r i n g   a s   t h e   v a l i d a t i o n   c a l c .  8 <��< r  ��=>= m  ��?? �@@ i f   (   / *   a u t o - e n t e r   c a l c   w a s   s p e c i f i e d   a s   a n   e m p t y   s t r i n g   r a t h e r   t h a n   a   n u l l   v a l u e   i n d i c a t i n g   a   b u g   i n   t h e   s c r i p t   r u n n i n g   t h e   s e t u p   t o o l .   * /   )> o      ���� 20 autoentercalccode_value autoEnterCalcCode_VALUE��  ��  / r  ��ABA n  ��CDC o  ������ &0 autoentercalccode autoEnterCalcCodeD o  ������ 	0 prefs  B o      ���� 20 autoentercalccode_value autoEnterCalcCode_VALUE, EFE l ����������  ��  ��  F GHG n �IJI I  ���K���� (0 fmgui_textfieldset fmGUI_TextFieldSetK LML n  �
NON 4  
��P
�� 
txtaP m  	���� O n  �QRQ 4  ���S
�� 
scraS m  ���� R 4  ����T
�� 
cwinT m  ������ M U��U o  
���� 20 autoentercalccode_value autoEnterCalcCode_VALUE��  ��  J  f  ��H VWV l ��������  ��  ��  W XYX l ��������  ��  ��  Y Z[Z l ��\]��  \ ' ! Calc CONTEXT Table (occurrence):   ] �^^ B   C a l c   C O N T E X T   T a b l e   ( o c c u r r e n c e ) :[ _`_ Z  ;ab����a > cdc n  efe o  ���� 20 autoentercalccontexttoc autoEnterCalcContextTOCf o  ���� 	0 prefs  d m  ��
�� 
nullb n 7ghg I  7��i����  0 fmgui_popupset fmGUI_PopupSeti jkj 6 0lml n  !non 4 !��p
�� 
popBp m   ���� o o  ���� 0 workingarea workingAream E  $/qrq 1  %)��
�� 
pnamr m  *.ss �tt  c o n t e x tk u��u n  03vwv o  13���� 20 autoentercalccontexttoc autoEnterCalcContextTOCw o  01���� 	0 prefs  ��  ��  h  f  ��  ��  ` xyx l <<��������  ��  ��  y z{z l <<��|}��  | 9 3 Do Not Evaluate if all referenced field are empty:   } �~~ f   D o   N o t   E v a l u a t e   i f   a l l   r e f e r e n c e d   f i e l d   a r e   e m p t y :{ � Z  <x������� > <A��� n  <?��� o  =?����  0 alwaysevaluate alwaysEvaluate� o  <=���� 	0 prefs  � m  ?@��
�� 
null� k  Dt�� ��� r  D[��� 6 DY��� n  DJ��� 4 EJ���
�� 
chbx� m  HI���� � o  DE���� 0 workingarea workingArea� E  MX��� 1  NR��
�� 
pnam� m  SW�� ��� J n o t   e v a l u a t e   i f   a l l   r e f e r e n c e d   f i e l d s� o      ���� *0 notevaluatecheckbox notEvaluateCheckbox� ���� Z  \t������ n  \`��� o  ]_����  0 alwaysevaluate alwaysEvaluate� o  \]���� 	0 prefs  � n cj��� I  dj������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  de���� *0 notevaluatecheckbox notEvaluateCheckbox� ���� m  ef����  ��  ��  �  f  cd��  � n mt��� I  nt������� &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o  no���� *0 notevaluatecheckbox notEvaluateCheckbox� ���� m  op���� ��  ��  �  f  mn��  ��  ��  � ��� l yy��������  ��  ��  � ��� l yy��������  ��  ��  � ��� l yy������  � - ' click OK to save Specify Calculation:    � ��� N   c l i c k   O K   t o   s a v e   S p e c i f y   C a l c u l a t i o n :  � ��� n y���� I  z�������� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ���� 6 z���� n  z���� 4 {����
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
cwin� m  ������ � o      �� 0 workingarea workingArea� ��� l ���~�}�|�~  �}  �|  � ��� l ���{���{  � 7 1 Do not replace existing value of field (if any):   � ��� b   D o   n o t   r e p l a c e   e x i s t i n g   v a l u e   o f   f i e l d   ( i f   a n y ) :� ��� Z  ����z�y� > ����� n  ����� o  ���x�x 00 overwriteexistingvalue overwriteExistingValue� o  ���w�w 	0 prefs  � m  ���v
�v 
null� k  � �� ��� r  ����� 6 ����� n  ����� 4 ���u�
�u 
chbx� m  ���t�t � o  ���s�s 0 workingarea workingArea� E  ����� 1  ���r
�r 
pnam� m  ���� ��� . D o   n o t   r e p l a c e   e x i s t i n g� o      �q�q @0 overwriteexistingvaluecheckbox overwriteExistingValueCheckbox� ��p� Z  � ���o�� n  ����� o  ���n�n 00 overwriteexistingvalue overwriteExistingValue� o  ���m�m 	0 prefs  � n ��   I  ���l�k�l &0 fmgui_checkboxset fmGUI_CheckboxSet  o  ���j�j @0 overwriteexistingvaluecheckbox overwriteExistingValueCheckbox �i m  ���h�h  �i  �k    f  ���o  � n �  I  � �g�f�g &0 fmgui_checkboxset fmGUI_CheckboxSet 	
	 o  ���e�e @0 overwriteexistingvaluecheckbox overwriteExistingValueCheckbox
 �d m  ���c�c �d  �f    f  ���p  �z  �y  �  l �b�a�`�b  �a  �`   �_ l �^�]�\�^  �]  �\  �_  �   there IS a Calc:   � � "   t h e r e   I S   a   C a l c :� �[ l �Z�Y�X�Z  �Y  �X  �[  �&  �%  �  l �W�V�U�W  �V  �U    l �T�S�R�T  �S  �R    l �Q�Q   8 2 Prohibit modification of value during data entry:    � d   P r o h i b i t   m o d i f i c a t i o n   o f   v a l u e   d u r i n g   d a t a   e n t r y :  Z  S�P�O >  n   !  o  �N�N 0 allowediting allowEditing! o  �M�M 	0 prefs   m  �L
�L 
null k  O"" #$# r  0%&% 6 ,'(' n  )*) 4 �K+
�K 
chbx+ m  �J�J * o  �I�I 0 workingarea workingArea( E   +,-, 1  !%�H
�H 
pnam- m  &*.. �// * P r o h i b i t   m o d i f i c a t i o n& o      �G�G *0 prohibitmodcheckbox prohibitModCheckbox$ 0�F0 Z  1O12�E31 n  17454 o  26�D�D 0 allowediting allowEditing5 o  12�C�C 	0 prefs  2 n :C676 I  ;C�B8�A�B &0 fmgui_checkboxset fmGUI_CheckboxSet8 9:9 o  ;>�@�@ *0 prohibitmodcheckbox prohibitModCheckbox: ;�?; m  >?�>�>  �?  �A  7  f  :;�E  3 n FO<=< I  GO�=>�<�= &0 fmgui_checkboxset fmGUI_CheckboxSet> ?@? o  GJ�;�; *0 prohibitmodcheckbox prohibitModCheckbox@ A�:A m  JK�9�9 �:  �<  =  f  FG�F  �P  �O   BCB l TT�8�7�6�8  �7  �6  C DED l TT�5�4�3�5  �4  �3  E FGF l TT�2HI�2  H P J--------------------------------------------------------------------------   I �JJ � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -G KLK l TT�1MN�1  M   NORMAL FIELD   N �OO    N O R M A L   F I E L DL PQP l TT�0RS�0  R U O--------------------------------------------------------------------------					   S �TT � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 	 	 	 	 	Q UVU l TT�/WX�/  W   VALIDATION TAB:   X �YY     V A L I D A T I O N   T A B :V Z[Z l TT�.\]�.  \ T N--------------------------------------------------------------------------				   ] �^^ � - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 	 	 	 	[ _`_ l TT�-�,�+�-  �,  �+  ` aba l TT�*cd�*  c 8 2 MOST VALIDATION FEATURES NOT YET SUPPORTED ! ! !    d �ee d   M O S T   V A L I D A T I O N   F E A T U R E S   N O T   Y E T   S U P P O R T E D   !   !   !  b fgf l TT�)hi�)  h 8 2 MOST VALIDATION FEATURES NOT YET SUPPORTED ! ! !    i �jj d   M O S T   V A L I D A T I O N   F E A T U R E S   N O T   Y E T   S U P P O R T E D   !   !   !  g klk l TT�(mn�(  m 8 2 MOST VALIDATION FEATURES NOT YET SUPPORTED ! ! !    n �oo d   M O S T   V A L I D A T I O N   F E A T U R E S   N O T   Y E T   S U P P O R T E D   !   !   !  l pqp l TT�'�&�%�'  �&  �%  q rsr I T`�$t�#
�$ .prcsclicnull��� ��� uielt n  T\uvu 4  U\�"w
�" 
radBw m  X[xx �yy  V a l i d a t i o nv o  TU�!�! 0 workingarea workingArea�#  s z{z l aa� ���   �  �  { |}| Z  aE~��~ > ah��� n  af��� o  bf�� (0 validationcalccode validationCalcCode� o  ab�� 	0 prefs  � m  fg�
� 
null k  kA�� ��� l kk����  �  �  � ��� n kx��� I  lx���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow� ��� n  lt��� 4  mt��
� 
butT� m  ps�� ���  S p e c i f y &� o  lm�� 0 workingarea workingArea�  �  �  f  kl� ��� l yy����  �  �  � ��� l yy����  � + % wait for Specify Calculation window:   � ��� J   w a i t   f o r   S p e c i f y   C a l c u l a t i o n   w i n d o w :� ��� n y���� I  z����� 20 windowwaituntil_frontis windowWaitUntil_FrontIS� ��
� K  z��� �	���	 0 
windowname 
windowName� m  }��� ��� & S p e c i f y   C a l c u l a t i o n�  �
  �  �  f  yz� ��� l ������  �  �  � ��� r  ����� 4  ����
� 
cwin� m  ���� � o      �� 0 workingarea workingArea� ��� l ���� ���  �   ��  � ��� l ��������  �   CALCULATION CODE:    � ��� &   C A L C U L A T I O N   C O D E :  � ��� Z  �������� = ����� n  ����� 1  ����
�� 
leng� n  ����� o  ������ (0 validationcalccode validationCalcCode� o  ������ 	0 prefs  � m  ������  � k  ���� ��� l  ��������  � � � if for some reason an empty string is specified, we want to force an error in FM's syntax checker for the validation calc box instead of silently allowing an empty string as the validation calc.    � ����   i f   f o r   s o m e   r e a s o n   a n   e m p t y   s t r i n g   i s   s p e c i f i e d ,   w e   w a n t   t o   f o r c e   a n   e r r o r   i n   F M ' s   s y n t a x   c h e c k e r   f o r   t h e   v a l i d a t i o n   c a l c   b o x   i n s t e a d   o f   s i l e n t l y   a l l o w i n g   a n   e m p t y   s t r i n g   a s   t h e   v a l i d a t i o n   c a l c .  � ���� r  ����� m  ���� ��� i f   (   / *   v a l i d a t i o n   c a l c   w a s   s p e c i f i e d   a s   a n   e m p t y   s t r i n g   r a t h e r   t h a n   a   n u l l   v a l u e   i n d i c a t i n g   a   b u g   i n   t h e   s c r i p t   r u n n i n g   t h e   s e t u p   t o o l .   * /   )� o      ���� 40 validationcalccode_value validationCalcCode_VALUE��  ��  � r  ����� n  ����� o  ������ (0 validationcalccode validationCalcCode� o  ������ 	0 prefs  � o      ���� 40 validationcalccode_value validationCalcCode_VALUE� ��� l ����������  ��  ��  � ��� n ����� I  ��������� (0 fmgui_textfieldset fmGUI_TextFieldSet� ��� n  ����� 4  �����
�� 
txta� m  ������ � n  ����� 4  �����
�� 
scra� m  ������ � 4  �����
�� 
cwin� m  ������ � ���� o  ������ 40 validationcalccode_value validationCalcCode_VALUE��  ��  �  f  ��� ��� l ����������  ��  ��  � ��� l ����������  ��  ��  � ��� l ��������  � ' ! Calc CONTEXT Table (occurrence):   � ��� B   C a l c   C O N T E X T   T a b l e   ( o c c u r r e n c e ) :� ��� Z  ��������� > ����� n  ����� o  ������ 40 validationcalccontexttoc validationCalcContextTOC� o  ������ 	0 prefs  � m  ����
�� 
null� n ����� I  ���������  0 fmgui_popupset fmGUI_PopupSet� ��� 6 ����� n  ����� 4 �����
�� 
popB� m  ������ � o  ������ 0 workingarea workingArea� E  ����� 1  ����
�� 
pnam� m  ���� ���  c o n t e x t� ���� n  ����� o  ������ 40 validationcalccontexttoc validationCalcContextTOC� o  ������ 	0 prefs  ��  ��  �  f  ����  ��  � ��� l ����������  ��  ��  �    l ������   - ' click OK to save Specify Calculation:     � N   c l i c k   O K   t o   s a v e   S p e c i f y   C a l c u l a t i o n :    n � I  ���	���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow	 
��
 6 � n  � 4 ���
�� 
butT m   ����  o  ������ 0 workingarea workingArea E   1  
��
�� 
pnam m   �  O K��  ��    f  ��  l ��������  ��  ��    n 1 I  1������ "0 windowwaituntil windowWaitUntil �� K  - ���� 0 
windowname 
windowName m   �   & S p e c i f y   C a l c u l a t i o n ��!"��  0 windownametest windowNameTest! m   ### �$$   d o e s   n o t   c o n t a i n" ��%���� 0 whichwindow whichWindow% m  &)&& �'' 
 f r o n t��  ��  ��    f   ()( l 22��������  ��  ��  ) *+* r  2?,-, n  2=./. 4  8=��0
�� 
tabg0 m  ;<���� / 4  28��1
�� 
cwin1 m  67���� - o      ���� 0 workingarea workingArea+ 232 l @@��������  ��  ��  3 4��4 l @@��56��  5   END OF: Validation.    6 �77 *   E N D   O F :   V a l i d a t i o n .  ��  �  �  } 898 l FF��������  ��  ��  9 :;: l FF��������  ��  ��  ; <=< l FF��>?��  > #  SAVE NORMAL FIELD - OPTIONS:   ? �@@ :   S A V E   N O R M A L   F I E L D   -   O P T I O N S := ABA l FF��CD��  C #  click OK for field Options:    D �EE :   c l i c k   O K   f o r   f i e l d   O p t i o n s :  B FGF n FeHIH I  Ge��J���� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindowJ K��K 6 GaLML n  GRNON 4 MR��P
�� 
butTP m  PQ���� O 4  GM��Q
�� 
cwinQ m  KL���� M E  U`RSR 1  VZ��
�� 
pnamS m  [_TT �UU  O K��  ��  I  f  FGG VWV l ff��������  ��  ��  W XYX n f�Z[Z I  g���\���� "0 windowwaituntil windowWaitUntil\ ]��] K  g}^^ ��_`�� 0 
windowname 
windowName_ m  jmaa �bb  O p t i o n s   f o r` ��cd��  0 windownametest windowNameTestc m  psee �ff & d o e s   n o t   s t a r t   w i t hd ��g���� 0 whichwindow whichWindowg m  vyhh �ii 
 f r o n t��  ��  ��  [  f  fgY jkj l ����������  ��  ��  k lml l ���������  ��  �  m non L  ��pp m  ���
� boovtrueo qrq l ������  �  �  r sts l ������  �  �  t u�u l ������  �  �  �  �
  �5   vwv l ������  �  �  w xyx l �����~�  �  �~  y z{z L  ��|| m  ���}
�} boovtrue{ }�|} l ���{�z�y�{  �z  �y  �|  u 4   � ��x~
�x 
pcap~ m   � � ��� , F i l e M a k e r   P r o   A d v a n c e ds m   � ����                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  q ��� l ���w�v�u�w  �v  �u  � ��� l ���t�s�r�t  �s  �r  � ��� l ���q�p�o�q  �p  �o  � ��n� l  ���m���m  � � �   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   
DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   DEBUGGING   
   � ���B       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       
 D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       D E B U G G I N G       
�n  P R      �l��
�l .ascrerr ****      � ****� o      �k�k 0 errmsg errMsg� �j��i
�j 
errn� o      �h�h 0 errnum errNum�i  Q R  ���g��
�g .ascrerr ****      � ****� b  ����� b  ����� b  ����� m  ���� ��� 0 C o u l d n ' t   e d i t   a   F i e l d   -  � I  ���f��e�f  0 coercetostring coerceToString� ��d� o  ���c�c 	0 prefs  �d  �e  � m  ���� ���    -  � o  ���b�b 0 errmsg errMsg� �a��`
�a 
errn� o  ���_�_ 0 errnum errNum�`  N ��� l ���^�]�\�^  �]  �\  � ��[� l ���Z�Y�X�Z  �Y  �X  �[  � ��� l     �W�V�U�W  �V  �U  � ��� l     �T�S�R�T  �S  �R  � ��� i   C F��� I      �Q��P�Q :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_Select� ��O� o      �N�N 	0 prefs  �O  �P  � k    ��� ��� l     �M���M  �   version 1.2   � ���    v e r s i o n   1 . 2� ��� l     �L�K�J�L  �K  �J  � ��� r     
��� K     �� �I���I 0 	fieldname 	fieldName� m    �H
�H 
null� �G���G 0 	tablename 	tableName� m    �F
�F 
null� �E��D�E 0 altpatterns altPatterns� m    �C
�C 
null�D  � o      �B�B 0 defaultprefs defaultPrefs� ��� r    ��� b    ��� o    �A�A 	0 prefs  � o    �@�@ 0 defaultprefs defaultPrefs� o      �?�? 	0 prefs  � ��� l   �>�=�<�>  �=  �<  � ��� l   �;���;  �   CONSTANTS:    � ���    C O N S T A N T S :  � ��� r    ��� b    ��� b    ��� b    ��� m    �� ��� @ t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "� o    �:
�: 
ret � l 	  ��9�8� m    �� ��� b t e l l   a p p l i c a t i o n   p r o c e s s   " F i l e M a k e r   P r o   A d v a n c e d "�9  �8  � o    �7
�7 
ret � o      �6�6  0 testcodeheader testCodeHeader� ��� r    ��� m    �� ���  s e l e c t   (� o      �5�5 0 
selectcode 
selectCode� ��� r    "��� m     �� ��� � f i r s t   r o w   o f   ( t a b l e   1   o f   s c r o l l   a r e a   1   o f   t a b   g r o u p   1   o f   w i n d o w   1 )� o      �4�4 0 
rowrefcode 
rowRefCode� ��� r   # &��� m   # $�� ���    w h o s e  � o      �3�3 0 	whosecode 	whoseCode� ��� r   ' *��� m   ' (�� ��� , v a l u e   o f   s t a t i c   t e x t   1� o      �2�2 *0 fieldnameobjectcode fieldNameObjectCode� ��� l  + +�1���1  � ( " (then some test will be inserted)   � ��� D   ( t h e n   s o m e   t e s t   w i l l   b e   i n s e r t e d )� ��� r   + .��� m   + ,�� ��� 
   a n d  � o      �0�0 $0 betweentestscode betweenTestsCode� ��� l  / /�/���/  � 7 1 (then possibly some other test will be inserted)   � �   b   ( t h e n   p o s s i b l y   s o m e   o t h e r   t e s t   w i l l   b e   i n s e r t e d )�  r   / 2 m   / 0 �  ) o      �.�. &0 afteralltestscode afterAllTestsCode  r   3 <	
	 b   3 : b   3 8 b   3 6 o   3 4�-
�- 
ret  m   4 5 �  e n d   t e l l o   6 7�,
�, 
ret  m   8 9 �  e n d   t e l l
 o      �+�+  0 testcodefooter testCodeFooter  l  = =�*�)�(�*  �)  �(    Q   =� k   @�  l  @ @�'�&�%�'  �&  �%     I   @ G�$!�#�$ >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocus! "�"" J   A C�!�!  �"  �#    #$# l  H H� ���   �  �  $ %&% Z  H \'(��' >  H M)*) n   H K+,+ o   I K�� 0 	tablename 	tableName, o   H I�� 	0 prefs  * m   K L�
� 
null( I   P X�-�� @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable- .�. n   Q T/0/ o   R T�� 0 	tablename 	tableName0 o   Q R�� 	0 prefs  �  �  �  �  & 121 l  ] ]����  �  �  2 343 I   ] b���� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �  4 565 l  c c����  �  �  6 787 Q   c�9:;9 k   f �<< =>= O   f �?@? O   l �ABA k   w �CC DED l  w w�
�	��
  �	  �  E F�F I  w ��G�
� .miscslctnull���     uielG l  w �H��H 6  w �IJI n   w �KLK 4  � ��M
� 
crowM m   � ��� L l  w �N� ��N n   w �OPO 4   � ���Q
�� 
tabBQ m   � ����� P n   w �RSR 4   � ���T
�� 
scraT m   � ����� S n   w �UVU 4   } ���W
�� 
tabgW m   � ����� V 4   w }��X
�� 
cwinX m   { |���� �   ��  J =  � �YZY n   � �[\[ 1   � ���
�� 
valL\ 4   � ���]
�� 
sttx] m   � ����� Z n   � �^_^ o   � ����� 0 	fieldname 	fieldName_ o   � ����� 	0 prefs  �  �  �  �  B 4   l t��`
�� 
pcap` m   p saa �bb , F i l e M a k e r   P r o   A d v a n c e d@ m   f icc�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  > d��d L   � �ee m   � ���
�� boovtrue��  : R      ��fg
�� .ascrerr ****      � ****f o      ���� 0 errmsg errMsgg ��h��
�� 
errnh o      ���� 0 errnum errNum��  ; Z   ��ij��ki >  � �lml o   � ����� 0 errnum errNumm m   � ������Ij k   � �nn opo l  � ���qr��  q / ) some error OTHER than not found in list:   r �ss R   s o m e   e r r o r   O T H E R   t h a n   n o t   f o u n d   i n   l i s t :p t��t R   � ���uv
�� .ascrerr ****      � ****u o   � ����� 0 errmsg errMsgv ��w��
�� 
errnw o   � ����� 0 errnum errNum��  ��  ��  k k   ��xx yzy l  � ���{|��  { * $ NOT FOUND, so try each altPattern:    | �}} H   N O T   F O U N D ,   s o   t r y   e a c h   a l t P a t t e r n :  z ~~ r   � ���� m   � ���
�� boovfals� o      ���� $0 fieldnowselected fieldNowSelected ��� X   ������� k   ���� ��� r   � ���� n   � ���� 1   � ���
�� 
pcnt� n   � ���� o   � ����� 0 pattern  � o   � ����� 0 onealtpattern oneAltPattern� o      ���� 0 testlist testList� ��� l  � ���������  ��  ��  � ��� Q   ������ k   �l�� ��� l  � �������  � !  BEGIN: try oneAltPattern:    � ��� 6   B E G I N :   t r y   o n e A l t P a t t e r n :  � ��� l  � ���������  ��  ��  � ��� r   � ���� J   � �����  � o      ���� 0 testcode testCode� ��� X   �/����� s  *��� l '������ b  '��� b  ��� b  ��� m  �� ���  � n  ��� o  ���� 0 testtype testType� o  ���� 0 
onetestrec 
oneTestRec� m  �� ���   � n &��� I  &������� 0 quotestring quoteString� ���� n  "��� o  "���� 0 	testmatch 	testMatch� o  ���� 0 
onetestrec 
oneTestRec��  ��  �  f  ��  ��  � n      ���  ;  ()� o  '(���� 0 testcode testCode�� 0 
onetestrec 
oneTestRec� o   � ����� 0 testlist testList� ��� l 00��������  ��  ��  � ��� r  0?��� n 0=��� I  1=���� 0 unparsechars unParseChars� ��� o  12�� 0 testcode testCode� ��� b  29��� b  25��� o  23�� $0 betweentestscode betweenTestsCode� o  34�� *0 fieldnameobjectcode fieldNameObjectCode� m  58�� ���   �  �  �  f  01� o      �� 0 testcode testCode� ��� l @@����  �  �  � ��� l @@����  �  �  � ��� r  @Q��� b  @O��� b  @M��� b  @K��� b  @G��� b  @E��� b  @C��� o  @A�� 0 
selectcode 
selectCode� o  AB�� 0 
rowrefcode 
rowRefCode� o  CD�� 0 	whosecode 	whoseCode� o  EF�� *0 fieldnameobjectcode fieldNameObjectCode� m  GJ�� ���   � o  KL�� 0 testcode testCode� o  MN�� &0 afteralltestscode afterAllTestsCode� o      �� 0 testcode testCode� ��� l RR����  �  �  � ��� r  RY��� b  RW��� b  RU��� o  RS��  0 testcodeheader testCodeHeader� o  ST�� 0 testcode testCode� o  UV��  0 testcodefooter testCodeFooter� o      �� 0 testcode testCode� ��� l ZZ����  �  �  � ��� l ZZ����  �  �  � ��� O Zd��� I ^c���
� .sysodsct****        scpt� o  ^_�� 0 testcode testCode�  �  f  Z[� ��� l ee����  �  �  � ��� l eh���� r  eh� � m  ef�
� boovtrue  o      �� $0 fieldnowselected fieldNowSelected� #  no error, so we selected it.   � � :   n o   e r r o r ,   s o   w e   s e l e c t e d   i t .�  l ij  S  ij + % no need to keep checking altPatterns    � J   n o   n e e d   t o   k e e p   c h e c k i n g   a l t P a t t e r n s 	 l kk����  �  �  	 
�
 l kk��   !  ERROR: try oneAltPattern.     � 6   E R R O R :   t r y   o n e A l t P a t t e r n .  �  � R      �
� .ascrerr ****      � **** o      �� 0 errmsg errMsg ��
� 
errn o      �� 0 errnum errNum�  � k  t�  Z  t�� > ty o  tu�� 0 errnum errNum m  ux���I k  |�  l ||��   / ) some error OTHER than not found in list:    � R   s o m e   e r r o r   O T H E R   t h a n   n o t   f o u n d   i n   l i s t : � R  |�� !
� .ascrerr ****      � ****  o  ���� 0 errmsg errMsg! �"�
� 
errn" o  ���� 0 errnum errNum�  �  �   l ���#$�  # = 7 just try the next altPattern, so continue repeat loop.   $ �%% n   j u s t   t r y   t h e   n e x t   a l t P a t t e r n ,   s o   c o n t i n u e   r e p e a t   l o o p . &'& l ������  �  �  ' (�~( l ���})*�}  ) "  END OF: try oneAltPattern.    * �++ 8   E N D   O F :   t r y   o n e A l t P a t t e r n .  �~  � ,�|, l ���{�z�y�{  �z  �y  �|  �� 0 onealtpattern oneAltPattern� n   � �-.- o   � ��x�x 0 altpatterns altPatterns. o   � ��w�w 	0 prefs  � /0/ l ���v�u�t�v  �u  �t  0 121 L  ��33 o  ���s�s $0 fieldnowselected fieldNowSelected2 4�r4 l ���q�p�o�q  �p  �o  �r  8 5�n5 l ���m�l�k�m  �l  �k  �n   R      �j67
�j .ascrerr ****      � ****6 o      �i�i 0 errmsg errMsg7 �h8�g
�h 
errn8 o      �f�f 0 errnum errNum�g   R  ���e9:
�e .ascrerr ****      � ****9 b  ��;<; b  ��=>= b  ��?@? m  ��AA �BB 4 C o u l d n ' t   s e l e c t   a   F i e l d   -  @ I  ���dC�c�d  0 coercetostring coerceToStringC D�bD o  ���a�a 	0 prefs  �b  �c  > m  ��EE �FF    -  < o  ���`�` 0 errmsg errMsg: �_G�^
�_ 
errnG o  ���]�] 0 errnum errNum�^   H�\H l ���[�Z�Y�[  �Z  �Y  �\  � IJI l     �X�W�V�X  �W  �V  J KLK l     �U�T�S�U  �T  �S  L MNM i   G JOPO I      �RQ�Q�R >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocusQ R�PR o      �O�O 	0 prefs  �P  �Q  P k     FSS TUT l     �NVW�N  V   version 1.1   W �XX    v e r s i o n   1 . 1U YZY l     �M�L�K�M  �L  �K  Z [\[ Q     D]^_] k    4`` aba I    
�Jc�I�J 40 fmgui_managedb_fieldstab fmGUI_ManageDb_FieldsTabc d�Hd J    �G�G  �H  �I  b efe l   �F�E�D�F  �E  �D  f ghg O    2iji O    1klk k    0mm non n   pqp I    �C�B�A�C (0 fmgui_appfrontmost fmGUI_AppFrontMost�B  �A  q  f    o rsr r    -tut m    �@
�@ boovtrueu n      vwv 1   * ,�?
�? 
focuw l   *x�>�=x n    *yzy 4   ' *�<{
�< 
tabB{ m   ( )�;�; z n    '|}| 4   $ '�:~
�: 
scra~ m   % &�9�9 } n    $� 4   ! $�8�
�8 
tabg� m   " #�7�7 � 4    !�6�
�6 
cwin� m     �5�5 �>  �=  s ��4� L   . 0�� m   . /�3
�3 boovtrue�4  l 4    �2�
�2 
pcap� m    �� ��� , F i l e M a k e r   P r o   A d v a n c e dj m    ���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  h ��1� l  3 3�0�/�.�0  �/  �.  �1  ^ R      �-��
�- .ascrerr ****      � ****� o      �,�, 0 errmsg errMsg� �+��*
�+ 
errn� o      �)�) 0 errnum errNum�*  _ R   < D�(��
�( .ascrerr ****      � ****� b   @ C��� m   @ A�� ��� > C o u l d n ' t   f o c u s   o n   F i e l d   l i s t   -  � o   A B�'�' 0 errmsg errMsg� �&��%
�& 
errn� o   > ?�$�$ 0 errnum errNum�%  \ ��#� l  E E�"�!� �"  �!  �   �#  N ��� l     ����  �  �  � ��� l     ����  �  �  � ��� i   K N��� I      ���� @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable� ��� o      �� 0 basetablename baseTableName�  �  � k     A�� ��� l     ����  �   version 1.3   � ���    v e r s i o n   1 . 3� ��� l     ����  �  �  � ��� Q     ?���� k    +�� ��� I    
���� 40 fmgui_managedb_fieldstab fmGUI_ManageDb_FieldsTab� ��� J    ��  �  �  � ��� O    +��� O    *��� k    )�� ��� n   &��� I    &����  0 fmgui_popupset fmGUI_PopupSet� ��� n    !��� 4    !�
�
�
 
popB� m     �� ���  T a b l e :� n    ��� 4    �	�
�	 
tabg� m    �� � 4    ��
� 
cwin� m    �� � ��� o   ! "�� 0 basetablename baseTableName�  �  �  f    � ��� L   ' )�� m   ' (�
� boovtrue�  � 4    ��
� 
pcap� m    �� ��� , F i l e M a k e r   P r o   A d v a n c e d� m    ���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �  � R      � ��
�  .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� �����
�� 
errn� o      ���� 0 errnum errNum��  � R   3 ?����
�� .ascrerr ****      � ****� b   7 >��� b   7 <��� b   7 :��� m   7 8�� ��� . C o u l d n ' t   s e l e c t   t a b l e   '� o   8 9���� 0 basetablename baseTableName� m   : ;�� ���  '   -  � o   < =���� 0 errmsg errMsg� �����
�� 
errn� o   5 6���� 0 errnum errNum��  � ���� l  @ @��������  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i   O R��� I      ������� 00 fmgui_managedb_gototab fmGUI_ManageDb_GoToTab� ���� o      ���� 	0 prefs  ��  ��  � k     v�� ��� l     ������  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     ��������  ��  ��  � ��� r     ��� K     �� ������� 0 tabname tabName� m    �� ���  T a b l e s��  � o      ���� 0 defaultprefs defaultPrefs� ��� r    ��� b    
��� o    ���� 	0 prefs  � o    	���� 0 defaultprefs defaultPrefs� o      ���� 	0 prefs  � � � l   ��������  ��  ��     Q    t k    X  I    �������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��   	
	 I    ������ *0 fmgui_managedb_open fmGUI_ManageDb_Open �� J    ����  ��  ��  
 �� O    X O   " W k   ) V  r   ) A N   ) ? l  ) >���� 6  ) > n   ) 3 4  0 3��
�� 
radB m   1 2����  n   ) 0 4   - 0�� 
�� 
tabg  m   . /����  4   ) -��!
�� 
cwin! m   + ,����  E   4 ="#" 1   5 7��
�� 
titl# n   8 <$%$ o   : <���� 0 tabname tabName% o   8 :���� 	0 prefs  ��  ��   o      ���� 0 	tabobject 	tabObject &'& Z   B S()����( >  B G*+* n   B E,-, 1   C E��
�� 
valL- o   B C���� 0 	tabobject 	tabObject+ m   E F���� ) I  J O��.��
�� .prcsclicnull��� ��� uiel. o   J K�� 0 	tabobject 	tabObject��  ��  ��  ' /�/ L   T V00 m   T U�
� boovtrue�   4   " &�1
� 
pcap1 m   $ %22 �33 , F i l e M a k e r   P r o   A d v a n c e d m    44�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  ��   R      �56
� .ascrerr ****      � ****5 o      �� 0 errmsg errMsg6 �7�
� 
errn7 o      �� 0 errnum errNum�   R   ` t�89
� .ascrerr ****      � ****8 b   f s:;: b   f q<=< b   f m>?> m   f i@@ �AA ( C o u l d n ' t   g o   t o   t h e   '? n   i lBCB o   j l�� 0 tabname tabNameC o   i j�� 	0 prefs  = m   m pDD �EE  '   t a b   -  ; o   q r�� 0 errmsg errMsg9 �F�
� 
errnF o   d e�� 0 errnum errNum�   G�G l  u u����  �  �  �  � HIH l     ����  �  �  I JKJ l     ����  �  �  K LML i   S VNON I      �P�� >0 fmgui_managedb_gototab_fields fmGUI_ManageDb_GoToTab_FieldsP Q�Q o      �� 	0 prefs  �  �  O k     RR STS l     �UV�  U   version 1.4   V �WW    v e r s i o n   1 . 4T XYX l     ����  �  �  Y Z[Z I     	�\�� 00 fmgui_managedb_gototab fmGUI_ManageDb_GoToTab\ ]�] K    ^^ �_�� 0 tabname tabName_ m    `` �aa  F i e l d s�  �  �  [ b�b l  
 
����  �  �  �  M cdc l     ����  �  �  d efe l     ����  �  �  f ghg i   W Ziji I      �k�� L0 $fmgui_managedb_gototab_relationships $fmGUI_ManageDb_GoToTab_Relationshipsk l�l o      �� 	0 prefs  �  �  j k     mm non l     �pq�  p   version 1.4   q �rr    v e r s i o n   1 . 4o sts l     ����  �  �  t uvu I     	�w�� 00 fmgui_managedb_gototab fmGUI_ManageDb_GoToTabw x�x K    yy �z�� 0 tabname tabNamez m    {{ �||  R e l a t i o n s h i p s�  �  �  v }~} l  
 
����  �  �  ~ �~ l  
 
�}�|�{�}  �|  �{  �~  h ��� l     �z�y�x�z  �y  �x  � ��� l     �w�v�u�w  �v  �u  � ��� i   [ ^��� I      �t��s�t >0 fmgui_managedb_gototab_tables fmGUI_ManageDb_GoToTab_Tables� ��r� o      �q�q 	0 prefs  �r  �s  � k     �� ��� l     �p���p  �   version 1.4   � ���    v e r s i o n   1 . 4� ��� l     �o�n�m�o  �n  �m  � ��� I     	�l��k�l 00 fmgui_managedb_gototab fmGUI_ManageDb_GoToTab� ��j� K    �� �i��h�i 0 tabname tabName� m    �� ���  T a b l e s�h  �j  �k  � ��g� l  
 
�f�e�d�f  �e  �d  �g  � ��� l     �c�b�a�c  �b  �a  � ��� l     �`�_�^�`  �_  �^  � ��� i   _ b��� I      �]��\�] B0 fmgui_managedb_listoftablenames fmGUI_ManageDb_ListOfTableNames� ��[� o      �Z�Z 	0 prefs  �[  �\  � k     Y�� ��� l     �Y���Y  �   version 1.2   � ���    v e r s i o n   1 . 2� ��� l     �X�W�V�X  �W  �V  � ��� Q     W���� k    C�� ��� I    
�U��T�U >0 fmgui_managedb_gototab_tables fmGUI_ManageDb_GoToTab_Tables� ��S� J    �R�R  �S  �T  � ��Q� O    C��� O    B��� k    A�� ��� n   ��� I    �P�O�N�P (0 fmgui_appfrontmost fmGUI_AppFrontMost�O  �N  �  f    � ��� n    =��� 1   : <�M
�M 
valL� n    :��� 4   7 :�L�
�L 
sttx� m   8 9�K�K � l   7��J�I� 6   7��� n    +��� 2   ) +�H
�H 
crow� l   )��G�F� n    )��� 4   & )�E�
�E 
tabB� m   ' (�D�D � n    &��� 4   # &�C�
�C 
scra� m   $ %�B�B � n    #��� 4     #�A�
�A 
tabg� m   ! "�@�@ � 4     �?�
�? 
cwin� m    �>�> �G  �F  � =  , 6��� n   - 2��� 1   0 2�=
�= 
valL� 4   - 0�<�
�< 
sttx� m   . /�;�; � m   3 5�� ���  F i l e M a k e r�J  �I  � ��:� L   > A�� 1   > @�9
�9 
rslt�:  � 4    �8�
�8 
pcap� m    �� ��� , F i l e M a k e r   P r o   A d v a n c e d� m    ���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �Q  � R      �7��
�7 .ascrerr ****      � ****� o      �6�6 0 errmsg errMsg� �5��4
�5 
errn� o      �3�3 0 errnum errNum�4  � R   K W�2��
�2 .ascrerr ****      � ****� b   Q V��� m   Q T�� ��� F C o u l d n ' t   g e t   l i s t   o f   t a b l e   n a m e s   -  � o   T U�1�1 0 errmsg errMsg� �0��/
�0 
errn� o   O P�.�. 0 errnum errNum�/  � ��-� l  X X�,�+�*�,  �+  �*  �-  � ��� l     �)�(�'�)  �(  �'  � ��� l     �&�%�$�&  �%  �$  � ��� i   c f��� I      �#��"�# *0 fmgui_managedb_open fmGUI_ManageDb_Open� ��!� o      � �  	0 prefs  �!  �"  � k    ��� ��� l     ����  �   version 1.2   � ���    v e r s i o n   1 . 2�    l     ����  �  �    Q    � O   � O   �	
	 k   �  l   ����  �  �    n    I    ���� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �    f      l   ����  �  �    l   ��     try to open Manage DB    � ,   t r y   t o   o p e n   M a n a g e   D B � Z   �� C     n      1    �
� 
pnam  4    �!
� 
cwin! m    ��  m    "" �## & M a n a g e   D a t a b a s e   f o r L    !$$ m     �
� boovtrue�   k   $�%% &'& I  $ D�(�

� .prcsclicnull��� ��� uiel( l  $ @)�	�) 6  $ @*+* n   $ 7,-, 4  4 7�.
� 
menI. m   5 6�� - n   $ 4/0/ 4   1 4�1
� 
menE1 m   2 3�� 0 n   $ 1232 4   . 1�4
� 
menI4 m   / 055 �66  M a n a g e3 n   $ .787 4   + .�9
� 
menE9 m   , -�� 8 n   $ +:;: 4   ( +� <
�  
mbri< m   ) *== �>>  F i l e; 4   $ (��?
�� 
mbar? m   & '���� + C   8 ?@A@ 1   9 ;��
�� 
pnamA m   < >BB �CC  D a t a b a s e�	  �  �
  ' DED l  E E��������  ��  ��  E FGF l  E E��HI��  H   TO DO   I �JJ    T O   D OG KLK l  E E��MN��  M   TO DO   N �OO    T O   D OL PQP l  E E��RS��  R   TO DO   S �TT    T O   D OQ UVU l  E E��WX��  W v p 2015-06-03 ( eshagdar ): probably going to need to open manageDB via openManageDB script if the menu item fails   X �YY �   2 0 1 5 - 0 6 - 0 3   (   e s h a g d a r   ) :   p r o b a b l y   g o i n g   t o   n e e d   t o   o p e n   m a n a g e D B   v i a   o p e n M a n a g e D B   s c r i p t   i f   t h e   m e n u   i t e m   f a i l sV Z[Z l  E E��������  ��  ��  [ \]\ l  E E��^_��  ^ 3 - do this in case already on relationships tab   _ �`` Z   d o   t h i s   i n   c a s e   a l r e a d y   o n   r e l a t i o n s h i p s   t a b] aba l  E Jcdec I  E J��f��
�� .sysodelanull��� ��� nmbrf m   E F���� ��  d   seconds   e �gg    s e c o n d sb hih r   K Njkj m   K L��
�� boovtruek o      ���� *0 lookingforxdbcerror lookingForXDBCErrori lml V   O �non Z   U �pq��rp C  U _sts n   U [uvu 1   Y [��
�� 
pnamv 4   U Y��w
�� 
cwinw m   W X���� t m   [ ^xx �yy  C o n n e c t   t o  q k   b �zz {|{ I  b z��}��
�� .prcsclicnull��� ��� uiel} l  b v~����~ 6  b v� n   b k��� 4  f k���
�� 
butT� m   i j���� � 4   b f���
�� 
cwin� m   d e���� � =  l u��� 1   m o��
�� 
pnam� m   p t�� ���  C a n c e l��  ��  ��  | ���� l  { ����� I  { ������
�� .sysodelanull��� ��� nmbr� m   { |���� ��  �   seconds   � ���    s e c o n d s��  ��  r r   � ���� m   � ���
�� boovfals� o      ���� *0 lookingforxdbcerror lookingForXDBCErroro o   S T���� *0 lookingforxdbcerror lookingForXDBCErrorm ��� l  � ���������  ��  ��  � ��� l  � �������  � P J to to the TOs tab and dismiss any xDBC connections that failed to connect   � ��� �   t o   t o   t h e   T O s   t a b   a n d   d i s m i s s   a n y   x D B C   c o n n e c t i o n s   t h a t   f a i l e d   t o   c o n n e c t� ��� n  � ���� I   � �������� B0 fmgui_managedb_relationshipstab fmGUI_ManageDb_RelationshipsTab� ���� J   � �����  ��  ��  �  f   � �� ��� l  � ����� I  � ������
�� .sysodelanull��� ��� nmbr� m   � ����� ��  �   seconds   � ���    s e c o n d s� ��� r   � ���� m   � ���
�� boovtrue� o      ���� *0 lookingforxdbcerror lookingForXDBCError� ��� V   � ���� Z   � ������� C  � ���� n   � ���� 1   � ���
�� 
pnam� 4   � ����
�� 
cwin� m   � ����� � m   � ��� ���  C o n n e c t   t o  � k   � ��� ��� I  � ������
�� .prcsclicnull��� ��� uiel� l  � ������� 6  � ���� n   � ���� 4  � ����
�� 
butT� m   � ����� � 4   � ����
�� 
cwin� m   � ����� � =  � ���� 1   � ��
� 
pnam� m   � ��� ���  C a n c e l��  ��  ��  � ��� l  � ����� I  � ����
� .sysodelanull��� ��� nmbr� m   � ��� �  �   seconds   � ���    s e c o n d s�  ��  � r   � ���� m   � ��
� boovfals� o      �� *0 lookingforxdbcerror lookingForXDBCError� o   � ��� *0 lookingforxdbcerror lookingForXDBCError� ��� l  � �����  �  �  � ��� l  � �����  � M Gzoom out to show all TOs and dismiss any that weren't already dismissed   � ��� � z o o m   o u t   t o   s h o w   a l l   T O s   a n d   d i s m i s s   a n y   t h a t   w e r e n ' t   a l r e a d y   d i s m i s s e d� ��� I  � ����
� .prcskprsnull���     ctxt� m   � ��� ���  i� ���
� 
faal� m   � ��
� eMdsKcmd�  � ��� l  � ����� I  � ����
� .sysodelanull��� ��� nmbr� m   � ��� �  �   seconds   � ���    s e c o n d s� ��� r   � ���� m   � ��
� boovtrue� o      �� *0 lookingforxdbcerror lookingForXDBCError� ��� V   �&��� Z   �!����� C  ���� n   � ���� 1   � ��
� 
pnam� 4   � ���
� 
cwin� m   � ��� � m   ��� ���  C o n n e c t   t o  � k  �� ��� I ���
� .prcsclicnull��� ��� uiel� n  ��� 4  
��
� 
butT� m  �� ���  C a n c e l� 4  
��
� 
cwin� m  	�� �  � ��� l    I ��
� .sysodelanull��� ��� nmbr m  �� �     seconds    �    s e c o n d s�  �  � r  ! m  �
� boovfals o      �� *0 lookingforxdbcerror lookingForXDBCError� o   � ��� *0 lookingforxdbcerror lookingForXDBCError�  l ''����  �  �   	
	 l ''��     zoom back in    �    z o o m   b a c k   i n
  r  '7 n  '5 4  05�
� 
txtf m  34��  n  '0 4  +0�
� 
tabg m  ./��  4  '+�
� 
cwin m  )*��  o      �� 0 	zoomfield 	zoomField  r  8? m  89�
� boovtrue n       1  :>�
� 
focu o  9:�� 0 	zoomfield 	zoomField   r  @I!"! m  @C## �$$  1 0 0" n      %&% 1  DH�
� 
valL& o  CD�� 0 	zoomfield 	zoomField  '(' r  J^)*) m  JK�
� boovtrue* n      +,+ 1  Y]�
� 
focu, n  KY-.- 4  TY�/
� 
scra/ m  WX�� . n  KT010 4  OT�2
� 
tabg2 m  RS�� 1 4  KO�3
� 
cwin3 m  MN�� ( 454 r  _x676 m  _`��  7 n      898 1  sw�
� 
valL9 n  `s:;: 4  ns�<
� 
scrb< m  qr�� ; n  `n=>= 4  in�~?
�~ 
scra? m  lm�}�} > n  `i@A@ 4  di�|B
�| 
tabgB m  gh�{�{ A 4  `d�zC
�z 
cwinC m  bc�y�y 5 DED r  y�FGF m  yz�x�x  G n      HIH 1  ���w
�w 
valLI n  z�JKJ 4  ���vL
�v 
scrbL m  ���u�u K n  z�MNM 4  ���tO
�t 
scraO m  ���s�s N n  z�PQP 4  ~��rR
�r 
tabgR m  ���q�q Q 4  z~�pS
�p 
cwinS m  |}�o�o E TUT l ���n�m�l�n  �m  �l  U V�kV L  ��WW m  ���j
�j boovtrue�k  �  
 4    �iX
�i 
pcapX m   	 
YY �ZZ , F i l e M a k e r   P r o   A d v a n c e d m    [[�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��   R      �h\]
�h .ascrerr ****      � ****\ o      �g�g 0 errmsg errMsg] �f^�e
�f 
errn^ o      �d�d 0 errnum errNum�e   R  ���c_`
�c .ascrerr ****      � ****_ b  ��aba m  ��cc �dd 4 C o u l d n ' t   o p e n   m a n a g e   D B   -  b o  ���b�b 0 errmsg errMsg` �ae�`
�a 
errne o  ���_�_ 0 errnum errNum�`   f�^f l ���]�\�[�]  �\  �[  �^  � ghg l     �Z�Y�X�Z  �Y  �X  h iji l     �W�V�U�W  �V  �U  j klk i   g jmnm I      �To�S�T *0 fmgui_managedb_save fmGUI_ManageDB_Saveo p�Rp o      �Q�Q 	0 prefs  �R  �S  n k     �qq rsr l     �Ptu�P  t   version 1.4   u �vv    v e r s i o n   1 . 4s wxw l     �O�N�M�O  �N  �M  x yzy r     {|{ K     }} �L~�K�L ,0 notinmanagedbiserror notInManageDbIsError~ m    �J
�J boovtrue�K  | o      �I�I 0 defaultprefs defaultPrefsz � l   �H�G�F�H  �G  �F  � ��� r    ��� b    
��� o    �E�E 	0 prefs  � o    	�D�D 0 defaultprefs defaultPrefs� o      �C�C 	0 prefs  � ��� l   �B�A�@�B  �A  �@  � ��� l   �?�>�=�?  �>  �=  � ��� r    ��� m    �� ��� & M a n a g e   D a t a b a s e   f o r� o      �<�< 40 managedbwindownameprefix manageDbWindowNamePrefix� ��� l   ���� r    ��� m    �;�; 
� o      �:�: .0 waitcycledelayseconds waitCycleDelaySeconds�   seconds   � ���    s e c o n d s� ��� l   ���� r    ��� ]    ��� m    �9�9 <� 1    �8
�8 
min � o      �7�7 ,0 waitsavetotalseconds waitSaveTotalSeconds�  seconds   � ���  s e c o n d s� ��� l   �6�5�4�6  �5  �4  � ��� r    &��� I   $�3��
�3 .sysorondlong        doub� l   ��2�1� ^    ��� o    �0�0 ,0 waitsavetotalseconds waitSaveTotalSeconds� o    �/�/ .0 waitcycledelayseconds waitCycleDelaySeconds�2  �1  � �.��-
�. 
dire� m     �,
�, olierndD�-  � o      �+�+ 0 waitcyclemax waitCycleMax� ��� l  ' '�*�)�(�*  �)  �(  � ��� Q   ' ����� k   * ��� ��� O   * ���� k   . ��� ��� O   . ���� k   5 ��� ��� l  5 5�'�&�%�'  �&  �%  � ��� n  5 :��� I   6 :�$�#�"�$ (0 fmgui_appfrontmost fmGUI_AppFrontMost�#  �"  �  f   5 6� ��� l  ; ;�!� ��!  �   �  � ��� Z   ; ������ C   ; C��� n   ; A��� 1   ? A�
� 
pnam� 4   ; ?��
� 
cwin� m   = >�� � o   A B�� 40 managedbwindownameprefix manageDbWindowNamePrefix� Q   F y���� k   I e�� ��� r   I Q��� n   I O��� 1   M O�
� 
pnam� 4   I M��
� 
cwin� m   K L�� � o      �� (0 managedbwindowname manageDbWindowName� ��� I  R ]���
� .prcsclicnull��� ��� uiel� l  R Y���� n   R Y��� 4   V Y��
� 
butT� m   W X�� ���  O K� 4   R V��
� 
cwin� m   T U�� �  �  �  � ��� l  ^ c���� I  ^ c���
� .sysodelanull��� ��� nmbr� m   ^ _�� �  �   let click register.   � ��� (   l e t   c l i c k   r e g i s t e r .� ��� l  d d����  � 6 0 will continue below to wait for window to close   � ��� `   w i l l   c o n t i n u e   b e l o w   t o   w a i t   f o r   w i n d o w   t o   c l o s e� ��
� l  d d�	���	  �  �  �
  � R      ���
� .ascrerr ****      � ****� o      �� 0 errmsg errMsg� ���
� 
errn� o      �� 0 errnum errNum�  � R   m y���
� .ascrerr ****      � ****� b   s x��� m   s v�� ��� @ C o u l d n ' t   s a v e   M a n a g e   D a t a b a s e   -  � o   v w� �  0 errmsg errMsg� �����
�� 
errn� o   q r���� 0 errnum errNum��  �  � Z   | �� ��� n   | � o   } ���� ,0 notinmanagedbiserror notInManageDbIsError o   | }���� 	0 prefs    R   � ���
�� .ascrerr ****      � **** m   � � � p M a n a g e   D a t a b a s e   w i n d o w   w a s n ' t   o p e n ,   s o   n o t h i n g   t o   c l o s e . ����
�� 
errn m   � ����� ��  ��   k   � �		 

 l  � �����   . ( Not in Manage Database, but that is OK.    � P   N o t   i n   M a n a g e   D a t a b a s e ,   b u t   t h a t   i s   O K . �� L   � � m   � ���
�� boovtrue��  � �� l  � ���������  ��  ��  ��  � 4   . 2��
�� 
pcap m   0 1 � , F i l e M a k e r   P r o   A d v a n c e d�  l  � ���������  ��  ��    n  � � I   � ������� "0 windowwaituntil windowWaitUntil �� K   � � ���� 0 
windowname 
windowName o   � ����� (0 managedbwindowname manageDbWindowName �� !��  0 windownametest windowNameTest  m   � �"" �##   d o e s   n o t   c o n t a i n! ��$%�� 0 whichwindow whichWindow$ m   � �&& �''  a n y% ��()�� .0 waitcycledelayseconds waitCycleDelaySeconds( o   � ����� .0 waitcycledelayseconds waitCycleDelaySeconds) ��*���� 0 waitcyclemax waitCycleMax* o   � ����� 0 waitcyclemax waitCycleMax��  ��  ��    f   � � +,+ l  � ���������  ��  ��  , -.- l  � �/01/ I  � ���2��
�� .sysodelanull��� ��� nmbr2 m   � ����� ��  0 ( " let normal window come to front.    1 �33 D   l e t   n o r m a l   w i n d o w   c o m e   t o   f r o n t .  . 454 l  � ���������  ��  ��  5 676 L   � �88 m   � ���
�� boovtrue7 9��9 l  � ���������  ��  ��  ��  � m   * +::�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  � ;<; l  � ���������  ��  ��  < =��= l  � ���������  ��  ��  ��  � R      ��>?
�� .ascrerr ****      � ****> o      ���� 0 errmsg errMsg? ��@��
�� 
errn@ o      ���� 0 errnum errNum��  � R   � ���AB
�� .ascrerr ****      � ****A b   � �CDC m   � �EE �FF @ C o u l d n ' t   s a v e   M a n a g e   D a t a b a s e   -  D o   � ����� 0 errmsg errMsgB ��G��
�� 
errnG o   � ����� 0 errnum errNum��  � H�H l  � �����  �  �  �  l IJI l     ����  �  �  J KLK l     ����  �  �  L MNM i   k nOPO I      �Q�� N0 %fmgui_managedb_table_listoffieldnames %fmGUI_ManageDb_Table_ListOfFieldNamesQ R�R o      �� 0 basetablename baseTableName�  �  P k     HSS TUT l     �VW�  V   version 1.1   W �XX    v e r s i o n   1 . 1U YZY l     ����  �  �  Z [\[ Q     F]^_] k    0`` aba I    	�c�� @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTablec d�d o    �� 0 basetablename baseTableName�  �  b efe l  
 
����  �  �  f g�g O   
 0hih O    /jkj k    .ll mnm n    *opo 1   ' )�
� 
valLp n    'qrq 4   $ '�s
� 
sttxs m   % &�� r n    $tut 2   " $�
� 
crowu n    "vwv 4    "�x
� 
tabBx m     !�� w n    yzy 4    �{
� 
scra{ m    �� z n    |}| 4    �~
� 
tabg~ m    �� } 4    �
� 
cwin m    �� n ��� L   + .�� 1   + -�
� 
rslt�  k 4    ��
� 
pcap� m    �� ��� , F i l e M a k e r   P r o   A d v a n c e di m   
 ���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �  ^ R      ���
� .ascrerr ****      � ****� o      �� 0 errmsg errMsg� ���
� 
errn� o      �� 0 errnum errNum�  _ R   8 F���
� .ascrerr ****      � ****� b   < E��� b   < C��� b   < ?��� m   < =�� ��� X C o u l d n ' t   g e t   l i s t   o f   f i e l d   n a m e s   f o r   t a b l e   '� o   = >�� 0 basetablename baseTableName� m   ? B�� ���  '   -  � o   C D���� 0 errmsg errMsg� �����
�� 
errn� o   : ;���� 0 errnum errNum��  \ ���� l  G G��������  ��  ��  ��  N ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i   o r��� I      ������� >0 fmgui_managedb_tablelistfocus fmGUI_ManageDb_TableListFocus� ��� o      �~�~ 	0 prefs  �  ��  � k     @�� ��� l     �}���}  �   version 1.1   � ���    v e r s i o n   1 . 1� ��� l     �|�{�z�|  �{  �z  � ��� Q     >���� k    .�� ��� I    
�y��x�y >0 fmgui_managedb_gototab_tables fmGUI_ManageDb_GoToTab_Tables� ��w� J    �v�v  �w  �x  � ��� l   �u�t�s�u  �t  �s  � ��� O    ,��� O    +��� k    *�� ��� r    '��� m    �r
�r boovtrue� n      ��� 1   $ &�q
�q 
focu� l   $��p�o� n    $��� 4   ! $�n�
�n 
tabB� m   " #�m�m � n    !��� 4    !�l�
�l 
scra� m     �k�k � n    ��� 4    �j�
�j 
tabg� m    �i�i � 4    �h�
�h 
cwin� m    �g�g �p  �o  � ��f� L   ( *�� m   ( )�e
�e boovtrue�f  � 4    �d�
�d 
pcap� m    �� ��� , F i l e M a k e r   P r o   A d v a n c e d� m    ���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  � ��c� l  - -�b�a�`�b  �a  �`  �c  � R      �_��
�_ .ascrerr ****      � ****� o      �^�^ 0 errmsg errMsg� �]��\
�] 
errn� o      �[�[ 0 errnum errNum�\  � R   6 >�Z��
�Z .ascrerr ****      � ****� b   : =��� m   : ;�� ��� > C o u l d n ' t   f o c u s   o n   F i e l d   l i s t   -  � o   ; <�Y�Y 0 errmsg errMsg� �X��W
�X 
errn� o   8 9�V�V 0 errnum errNum�W  � ��U� l  ? ?�T�S�R�T  �S  �R  �U  � ��� l     �Q�P�O�Q  �P  �O  � ��� l     �N�M�L�N  �M  �L  � ��� i   s v��� I      �K��J�K &0 fmgui_checkboxset fmGUI_CheckboxSet� ��� o      �I�I  0 checkboxobject checkboxObject� ��H� o      �G�G 0 checkboxvalue checkboxValue�H  �J  � k     9�� ��� l     �F���F  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     �E�D�C�E  �D  �C  � ��B� w     9��� Q    9���� k    %�� ��� Z     ���A�@� >   ��� o    �?�? 0 checkboxvalue checkboxValue� m    �>
�> 
null� Z     �=�<  >    n     1    �;
�; 
valL o    �:�:  0 checkboxobject checkboxObject o    �9�9 0 checkboxvalue checkboxValue I   �8�7
�8 .prcsclicnull��� ��� uiel o    �6�6  0 checkboxobject checkboxObject�7  �=  �<  �A  �@  �  L   ! #		 m   ! "�5
�5 boovtrue 
�4
 l  $ $�3�2�1�3  �2  �1  �4  � R      �0
�0 .ascrerr ****      � **** o      �/�/ 0 errmsg errMsg �.�-
�. 
errn o      �,�, 0 errnum errNum�-  � R   - 9�+
�+ .ascrerr ****      � **** b   1 8 b   1 6 b   1 4 m   1 2 � " C o u l d n ' t   s e l e c t   ' o   2 3�*�* 0 checkboxvalue checkboxValue m   4 5 � " '   f o r   c h e c k b o x   -   o   6 7�)�) 0 errmsg errMsg �(�'
�( 
errn o   / 0�&�& 0 errnum errNum�'  ��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �B  �  l     �%�$�#�%  �$  �#    l     �"�!� �"  �!  �      i   w z!"! I      �#�� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow# $�$ o      �� 0 	buttonref 	buttonRef�  �  " k     
%% &'& l     �()�  (   version 1.0   ) �**    v e r s i o n   1 . 0' +,+ l     ����  �  �  , -.- w     /0/ n   121 I    �3�� *0 clickobjectbycoords clickObjectByCoords3 4�4 o    �� 0 	buttonref 	buttonRef�  �  2  f    0�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  . 5�5 l  	 	����  �  �  �    676 l     ����  �  �  7 898 l     ���
�  �  �
  9 :;: i   { ~<=< I      �	���	 40 fmgui_pastefromclipboard fmGUI_PasteFromClipboard�  �  = k     �>> ?@? l     �AB�  A    version 1.0, Erik Shagdar   B �CC 4   v e r s i o n   1 . 0 ,   E r i k   S h a g d a r@ DED l     ����  �  �  E FGF r     HIH m     �
� boovfalsI o      �� (0 pasemenuitemexists paseMenuItemExistsG JKJ l   � �����   ��  ��  K LML O    ~NON O    }PQP k    |RR STS l   ��������  ��  ��  T UVU n   WXW I    �������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��  X  f    V YZY l   ��������  ��  ��  Z [\[ r    -]^] 6   +_`_ n    "aba 4   "��c
�� 
menIc m     !���� b n    ded 4    ��f
�� 
menEf m    ���� e n    ghg 4    ��i
�� 
mbrii m    jj �kk  E d i th 4    ��l
�� 
mbarl m    ���� ` =  # *mnm 1   $ &��
�� 
pnamn m   ' )oo �pp 
 P a s t e^ o      ���� 0 pastemenuitem pasteMenuItem\ qrq Q   . Hstus I  1 6��v��
�� .prcsclicnull��� ��� uielv o   1 2���� 0 pastemenuitem pasteMenuItem��  t R      ��wx
�� .ascrerr ****      � ****w o      ���� 0 errmsg errMsgx ��y��
�� 
errny o      ���� 0 errnum errNum��  u R   > H��z{
�� .ascrerr ****      � ****z b   B G|}| m   B E~~ � R U n a b l e   t o   c l i c k   ' S e l e c t   A l l '   m e n u   i t e m   -  } o   E F���� 0 errmsg errMsg{ �����
�� 
errn� o   @ A���� 0 errnum errNum��  r ��� l  I I��������  ��  ��  � ��� l  I I��������  ��  ��  � ��� l  I I������  � G A waiting until the paste item exists suggests the paste completed   � ��� �   w a i t i n g   u n t i l   t h e   p a s t e   i t e m   e x i s t s   s u g g e s t s   t h e   p a s t e   c o m p l e t e d� ���� U   I |��� k   R w�� ��� Q   R o����� Z   U f������� I  U Z�����
�� .coredoexnull���     ****� o   U V���� 0 pastemenuitem pasteMenuItem��  � k   ] b�� ��� r   ] `��� m   ] ^��
�� boovtrue� o      ���� (0 pasemenuitemexists paseMenuItemExists� ����  S   a b��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  � ���� I  p w�����
�� .sysodelanull��� ��� nmbr� m   p s�� ?�      ��  ��  � m   L O���� ��  Q 4    ���
�� 
pcap� m   
 �� ��� , F i l e M a k e r   P r o   A d v a n c e dO m    ���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  M ��� l   ��������  ��  ��  � ��� L    ��� o    ����� (0 pasemenuitemexists paseMenuItemExists� ���� l  � �������  �  �  ��  ; ��� l     ����  �  �  � ��� l     ����  �  �  � ��� i    ���� I      ���� :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand� ��� o      �� 	0 prefs  �  �  � k    �� ��� l     ����  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     ����  �  �  � ��� r     ��� K     
�� ���� 0 popupobject popupObject� m    �
� 
null� ���� 0 popupchoice popupChoice� m    �
� 
null� ���� 0 selectcommand selectCommand� m    �� ���  i s� ���� &0 clickifalreadyset clickIfAlreadySet� m    �
� boovfals�  � o      �� 0 defaultprefs defaultPrefs� ��� l   ����  �  �  � ��� Z    ,����� =   ��� n    ��� m    �
� 
pcls� o    �� 	0 prefs  � n    ��� m    �
� 
pcls� J    �� ��� m    �� ���  a� ��� m    �� �  � r    (��� K    &�� ���� 0 popupobject popupObject� n    ��� 4    ��
� 
cobj� m    �� � o    �� 	0 prefs  � ���� 0 popupchoice popupChoice� n     $��� 4   ! $��
� 
cobj� m   " #�� � o     !�� 	0 prefs  �  � o      �� 	0 prefs  �  �  � ��� l  - -����  �  �  � ��� l  - -����  �  �  � ��� r   - 2��� b   - 0��� o   - .�� 	0 prefs  � o   . /�� 0 defaultprefs defaultPrefs� o      �� 	0 prefs  � ��� l  3 3����  �  �  � ��� r   3 8��� n   3 6��� o   4 6�� 0 popupobject popupObject� o   3 4�� 	0 prefs  � o      �� 0 popupobject popupObject� ��� r   9 >��� n   9 <��� o   : <�� 0 selectcommand selectCommand� o   9 :�� 	0 prefs  � o      �� 0 selectcommand selectCommand� ��� r   ? D   n   ? B o   @ B�� 0 popupchoice popupChoice o   ? @�� 	0 prefs   o      �~�~ 0 popupchoice popupChoice�  l  E J r   E J	
	 n   E H o   F H�}�} &0 clickifalreadyset clickIfAlreadySet o   E F�|�| 	0 prefs  
 o      �{�{ &0 clickifalreadyset clickIfAlreadySet 6 0 re-select even if popup is the requested value.    � `   r e - s e l e c t   e v e n   i f   p o p u p   i s   t h e   r e q u e s t e d   v a l u e .  l  K K�z�y�x�z  �y  �x    l  K K�w�v�u�w  �v  �u   �t w   K Q   M Z   P��s H   P V l  P U�r�q I  P U�p�o
�p .coredoexnull���     **** o   P Q�n�n 0 popupobject popupObject�o  �r  �q   k   Y a   l  Y Y�m!"�m  ! * $ does NOT exist, so error with that:   " �## H   d o e s   N O T   e x i s t ,   s o   e r r o r   w i t h   t h a t :  $%$ R   Y _�l&'
�l .ascrerr ****      � ****& m   ] ^(( �)) R T h e   s p e c i f i e d   p o p u p O b j e c t   d o e s   n o t   e x i s t .' �k*�j
�k 
errn* m   [ \�i�i �j  % +�h+ l  ` `�g�f�e�g  �f  �e  �h  �s   k   d�,, -.- l  d d�d/0�d  / !  the popupObject DOES exist   0 �11 6   t h e   p o p u p O b j e c t   D O E S   e x i s t. 232 r   d g454 m   d e�c
�c boovfals5 o      �b�b 0 mustpick mustPick3 676 Z   h$89�a:8 H   h r;; l  h q<�`�_< I  h q�^=�]
�^ .coredoexnull���     ****= n   h m>?> 1   i m�\
�\ 
valL? o   h i�[�[ 0 popupobject popupObject�]  �`  �_  9 k   u z@@ ABA l  u u�ZCD�Z  C i c first check if the value of the popupObject exists - if it doesn't, then we can't test it directly   D �EE �   f i r s t   c h e c k   i f   t h e   v a l u e   o f   t h e   p o p u p O b j e c t   e x i s t s   -   i f   i t   d o e s n ' t ,   t h e n   w e   c a n ' t   t e s t   i t   d i r e c t l yB FGF r   u xHIH m   u v�Y
�Y boovtrueI o      �X�X 0 mustpick mustPickG J�WJ l  y y�V�U�T�V  �U  �T  �W  �a  : l  }$KLMK k   }$NN OPO l  } }�SQR�S  Q K E note that our selection might be one of several 'matching' commands:   R �SS �   n o t e   t h a t   o u r   s e l e c t i o n   m i g h t   b e   o n e   o f   s e v e r a l   ' m a t c h i n g '   c o m m a n d s :P T�RT Z   }$UVW�QU o   } ~�P�P &0 clickifalreadyset clickIfAlreadySetV k   � �XX YZY l  � ��O[\�O  [ > 8 RE-SELECT even if popup already is the requested value.   \ �]] p   R E - S E L E C T   e v e n   i f   p o p u p   a l r e a d y   i s   t h e   r e q u e s t e d   v a l u e .Z ^_^ r   � �`a` m   � ��N
�N boovtruea o      �M�M 0 mustpick mustPick_ b�Lb l  � ��K�J�I�K  �J  �I  �L  W cdc =  � �efe o   � ��H�H 0 selectcommand selectCommandf m   � �gg �hh  i sd iji k   � �kk lml Z   � �no�G�Fn >  � �pqp n   � �rsr 1   � ��E
�E 
valLs o   � ��D�D 0 popupobject popupObjectq o   � ��C�C 0 popupchoice popupChoiceo r   � �tut m   � ��B
�B boovtrueu o      �A�A 0 mustpick mustPick�G  �F  m v�@v l  � ��?�>�=�?  �>  �=  �@  j wxw =  � �yzy o   � ��<�< 0 selectcommand selectCommandz m   � �{{ �||  c o n t a i n sx }~} k   � � ��� Z   � ����;�:� H   � ��� E   � ���� n   � ���� 1   � ��9
�9 
valL� o   � ��8�8 0 popupobject popupObject� o   � ��7�7 0 popupchoice popupChoice� r   � ���� m   � ��6
�6 boovtrue� o      �5�5 0 mustpick mustPick�;  �:  � ��4� l  � ��3�2�1�3  �2  �1  �4  ~ ��� =  � ���� o   � ��0�0 0 selectcommand selectCommand� m   � ��� ���  s t a r t s W i t h� ��� k   � ��� ��� Z   � ����/�.� H   � ��� C   � ���� n   � ���� 1   � ��-
�- 
valL� o   � ��,�, 0 popupobject popupObject� o   � ��+�+ 0 popupchoice popupChoice� r   � ���� m   � ��*
�* boovtrue� o      �)�) 0 mustpick mustPick�/  �.  � ��(� l  � ��'�&�%�'  �&  �%  �(  � ��� =  � ���� o   � ��$�$ 0 selectcommand selectCommand� m   � ��� ���  b e g i n s W i t h� ��� k   ��� ��� Z   � ����#�"� H   � ��� C   � ���� n   � ���� 1   � ��!
�! 
valL� o   � �� �  0 popupobject popupObject� o   � ��� 0 popupchoice popupChoice� r   � ���� m   � ��
� boovtrue� o      �� 0 mustpick mustPick�#  �"  � ��� l   ����  �  �  �  � ��� = 	��� o  �� 0 selectcommand selectCommand� m  �� ���  e n d s W i t h� ��� k   �� ��� Z  ����� H  �� D  ��� n  ��� 1  �
� 
valL� o  �� 0 popupobject popupObject� o  �� 0 popupchoice popupChoice� r  ��� m  �
� boovtrue� o      �� 0 mustpick mustPick�  �  � ��� l ����  �  �  �  �  �Q  �R  L C = we can see the value without 'picking' the menu, so test it:   M ��� z   w e   c a n   s e e   t h e   v a l u e   w i t h o u t   ' p i c k i n g '   t h e   m e n u ,   s o   t e s t   i t :7 ��� l %%��
�	�  �
  �	  � ��� Z  %������ o  %&�� 0 mustpick mustPick� Z  )������ > ),��� o  )*�� 0 popupchoice popupChoice� m  *+�
� 
null� k  /��� ��� I /4��� 
� .prcsclicnull��� ��� uiel� o  /0���� 0 popupobject popupObject�   � ��� Z  5������� = 5:��� o  56���� 0 selectcommand selectCommand� m  69�� ���  i s� I =Y�����
�� .prcsclicnull��� ��� uiel� l =U������ 6 =U��� n  =H��� 4 CH���
�� 
menI� m  FG���� � n  =C��� 4  >C���
�� 
menE� m  AB���� � o  =>���� 0 popupobject popupObject� = KT��� 1  LP��
�� 
pnam� o  QS���� 0 popupchoice popupChoice��  ��  ��  � ��� = \a��� o  \]���� 0 selectcommand selectCommand� m  ]`�� ���  c o n t a i n s� ��� k  d��� ��� I d������
�� .prcsclicnull��� ��� uiel� l d|������ 6 d|��� n  do��� 4 jo���
�� 
menI� m  mn���� � n  dj   4  ej��
�� 
menE m  hi����  o  de���� 0 popupobject popupObject� E  r{ 1  sw��
�� 
pnam o  xz���� 0 popupchoice popupChoice��  ��  ��  � �� l ����������  ��  ��  ��  �  = ��	 o  ������ 0 selectcommand selectCommand	 m  ��

 �  b e g i n s W i t h  k  ��  I ������
�� .prcsclicnull��� ��� uiel l ������ 6 �� n  �� 4 ����
�� 
menI m  ������  n  �� 4  ����
�� 
menE m  ������  o  ������ 0 popupobject popupObject C  �� 1  ����
�� 
pnam o  ������ 0 popupchoice popupChoice��  ��  ��   �� l ����������  ��  ��  ��    = �� !  o  ������ 0 selectcommand selectCommand! m  ��"" �##  e n d s W i t h $��$ k  ��%% &'& I ����(��
�� .prcsclicnull��� ��� uiel( l ��)����) 6 ��*+* n  ��,-, 4 ����.
�� 
menI. m  ������ - n  ��/0/ 4  ����1
�� 
menE1 m  ������ 0 o  ������ 0 popupobject popupObject+ D  ��232 1  ����
�� 
pnam3 o  ������ 0 popupchoice popupChoice��  ��  ��  ' 4��4 l ����������  ��  ��  ��  ��  ��  � 5��5 l ������  �  �  ��  �  �  �  �  � 676 l ������  �  �  7 898 L  ��:: m  ���
� boovtrue9 ;�; l ������  �  �  �   R      �<=
� .ascrerr ****      � ****< o      �� 0 errmsg errMsg= �>�
� 
errn> o      �� 0 errnum errNum�   R  ��?@
� .ascrerr ****      � ****? b  �ABA b  �CDC b  ��EFE b  ��GHG b  ��IJI m  ��KK �LL N C o u l d n ' t   s e l e c t   m e n u   i t e m   w h o s e   v a l u e   _J o  ���� 0 selectcommand selectCommandH m  ��MM �NN  _   'F o  ���� 0 popupchoice popupChoiceD m  �OO �PP  '   i n   p o p u p   -  B o  �� 0 errmsg errMsg@ �Q�
� 
errnQ o  ���� 0 errnum errNum�  �                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �t  � RSR l     ����  �  �  S TUT l     ����  �  �  U VWV i   � �XYX I      �Z��  0 fmgui_popupset fmGUI_PopupSetZ [\[ o      �� 0 popupobject popupObject\ ]�] o      �� 0 popupchoice popupChoice�  �  Y k     *^^ _`_ l     �ab�  a   version 1.0   b �cc    v e r s i o n   1 . 0` ded l     ����  �  �  e f�f w     *ghg Q    *ijki k    ll mnm l   ����  �  �  n opo I    �q�� :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommandq r�r K    ss �tu� 0 popupobject popupObjectt o    �� 0 popupobject popupObjectu �v�� 0 popupchoice popupChoicev o   	 
�� 0 popupchoice popupChoice�  �  �  p wxw L    yy 1    �
� 
rsltx z�z l   ����  �  �  �  j R      �{|
� .ascrerr ****      � ****{ o      �� 0 errmsg errMsg| �}�
� 
errn} o      �� 0 errnum errNum�  k R    *�~
� .ascrerr ****      � ****~ b   " )��� b   " '��� b   " %��� m   " #�� ��� " C o u l d n ' t   s e l e c t   '� o   # $�� 0 popupchoice popupChoice� m   % &�� ���  '   i n   p o p u p   -  � o   ' (�� 0 errmsg errMsg ���
� 
errn� o     !�~�~ 0 errnum errNum�  h�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �  W ��� l     �}�|�{�}  �|  �{  � ��� l     �z�y�x�z  �y  �x  � ��� i   � ���� I      �w�v�u�w 00 fmgui_selectallandcopy fmGUI_SelectAllAndCopy�v  �u  � k     ��� ��� l     �t���t  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     �s�r�q�s  �r  �q  � ��� I    �p��o
�p .JonspClpnull���     ****� m     �� ���  �o  � ��� r    	��� m    �n
�n boovfals� o      �m�m $0 clipboardchanged clipboardChanged� ��� l  
 
�l�k�j�l  �k  �j  � ��� O   
 ���� O    ���� k    ��� ��� l   �i�h�g�i  �h  �g  � ��� n   ��� I    �f�e�d�f (0 fmgui_appfrontmost fmGUI_AppFrontMost�e  �d  �  f    � ��� l   �c�b�a�c  �b  �a  � ��� Q    L���� I   8�`��_
�` .prcsclicnull��� ��� uiel� l   4��^�]� 6   4��� n    +��� 4  ( +�\�
�\ 
menI� m   ) *�[�[ � n    (��� 4   % (�Z�
�Z 
menE� m   & '�Y�Y � n    %��� 4   " %�X�
�X 
mbri� m   # $�� ���  E d i t� 4    "�W�
�W 
mbar� m     !�V�V � =  , 3��� 1   - /�U
�U 
pnam� m   0 2�� ���  S e l e c t   A l l�^  �]  �_  � R      �T��
�T .ascrerr ****      � ****� o      �S�S 0 errmsg errMsg� �R��Q
�R 
errn� o      �P�P 0 errnum errNum�Q  � R   @ L�O��
�O .ascrerr ****      � ****� b   F K��� m   F I�� ��� R U n a b l e   t o   c l i c k   ' S e l e c t   A l l '   m e n u   i t e m   -  � o   I J�N�N 0 errmsg errMsg� �M��L
�M 
errn� o   D E�K�K 0 errnum errNum�L  � ��� l  M M�J�I�H�J  �I  �H  � ��� Q   M y���� I  P e�G��F
�G .prcsclicnull��� ��� uiel� l  P a��E�D� n   P a��� 4   \ a�C�
�C 
menI� m   ] `�� ���  C o p y� n   P \��� 4   Y \�B�
�B 
menE� m   Z [�A�A � n   P Y��� 4   T Y�@�
�@ 
mbri� m   U X�� ���  E d i t� 4   P T�?�
�? 
mbar� m   R S�>�> �E  �D  �F  � R      �=��
�= .ascrerr ****      � ****� o      �<�< 0 errmsg errMsg� �;��:
�; 
errn� o      �9�9 0 errnum errNum�:  � R   m y�8��
�8 .ascrerr ****      � ****� b   s x��� m   s v�� ��� F U n a b l e   t o   c l i c k   ' C o p y '   m e n u   i t e m   -  � o   v w�7�7 0 errmsg errMsg� �6��5
�6 
errn� o   q r�4�4 0 errnum errNum�5  � ��� l  z z�3�2�1�3  �2  �1  � ��� l  z z�0�/�.�0  �/  �.  � ��� U   z �� � k   � �  Q   � � k   � � 	 l  � ��-
�-  
 � � We set the clipboard to an empty string. Once utf8 is no longer in it (or isn't empty), we must have picked up the objects copied above.    �   W e   s e t   t h e   c l i p b o a r d   t o   a n   e m p t y   s t r i n g .   O n c e   u t f 8   i s   n o   l o n g e r   i n   i t   ( o r   i s n ' t   e m p t y ) ,   w e   m u s t   h a v e   p i c k e d   u p   t h e   o b j e c t s   c o p i e d   a b o v e .	  e   � � I  � ��,�+
�, .JonsgClp****    ��� null�+   �*�)
�* 
rtyp m   � ��(
�( 
utf8�)   �' Z   � ��&�% ?  � � n   � � 1   � ��$
�$ 
leng 1   � ��#
�# 
rslt m   � ��"�"   k   � �  r   � � m   � ��!
�! boovtrue o      � �  $0 clipboardchanged clipboardChanged �  S   � ��  �&  �%  �'   R      ���
� .ascrerr ****      � ****�  �   k   � �  !  r   � �"#" m   � ��
� boovtrue# o      �� $0 clipboardchanged clipboardChanged! $�$  S   � ��   %�% I  � ��&�
� .sysodelanull��� ��� nmbr& m   � ��� �  �    m   } ��� 
� '�' l  � �����  �  �  �  � 4    �(
� 
pcap( m    )) �** , F i l e M a k e r   P r o   A d v a n c e d� m   
 ++�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  � ,-, l  � �����  �  �  - ./. L   � �00 o   � ��� $0 clipboardchanged clipboardChanged/ 1�
1 l  � ��	���	  �  �  �
  � 232 l     ����  �  �  3 454 l     ����  �  �  5 676 i   � �898 I      � :���  (0 fmgui_textfieldset fmGUI_TextFieldSet: ;<; o      ���� "0 textfieldobject textfieldObject< =��= o      ����  0 textfieldvalue textfieldValue��  ��  9 k     @>> ?@? l     ��AB��  A   version 1.0   B �CC    v e r s i o n   1 . 0@ DED l     ��������  ��  ��  E F��F w     @GHG Q    @IJKI k    ,LL MNM Z    'OP����O >   QRQ o    ����  0 textfieldvalue textfieldValueR m    ��
�� 
nullP Z    #ST��US >   VWV n    XYX 1    ��
�� 
valLY o    ���� "0 textfieldobject textfieldObjectW l   Z����Z o    ����  0 textfieldvalue textfieldValue��  ��  T k    [[ \]\ r    ^_^ m    ��
�� boovtrue_ n      `a` 1    ��
�� 
focua o    ���� "0 textfieldobject textfieldObject] b��b r    cdc o    ����  0 textfieldvalue textfieldValued n      efe 1    ��
�� 
valLf o    ���� "0 textfieldobject textfieldObject��  ��  U l  ! #ghig L   ! #jj m   ! "��
�� boovfalsh   did not need to change.   i �kk 0   d i d   n o t   n e e d   t o   c h a n g e .��  ��  N lml L   ( *nn m   ( )��
�� boovtruem o��o l  + +��������  ��  ��  ��  J R      ��pq
�� .ascrerr ****      � ****p o      ���� 0 errmsg errMsgq ��r��
�� 
errnr o      ���� 0 errnum errNum��  K R   4 @��st
�� .ascrerr ****      � ****s b   8 ?uvu b   8 =wxw b   8 ;yzy m   8 9{{ �|| " C o u l d n ' t   s e l e c t   'z o   9 :����  0 textfieldvalue textfieldValuex m   ; <}} �~~ & '   f o r   t e x t   f i e l d   -  v o   = >���� 0 errmsg errMsgt ����
�� 
errn o   6 7���� 0 errnum errNum��  H�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  ��  7 ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i   � ���� I      �������� (0 fmgui_appfrontmost fmGUI_AppFrontMost��  ��  � k     E�� ��� l     ������  �   version 1.1   � ���    v e r s i o n   1 . 1� ��� l     ��������  ��  ��  � ���� O     E��� O    D��� Z    C������� >   ��� 1    ��
�� 
pisf� m    ��
�� boovtrue� k    ?�� ��� r    ��� m    ��
�� boovtrue� 1    ��
�� 
pisf� ��� I   �����
�� .sysodelanull��� ��� nmbr� m    ���� ��  � ��� l   ��������  ��  ��  � ��� l   ������  � ) #close FMEmpower window if it's open   � ��� F c l o s e   F M E m p o w e r   w i n d o w   i f   i t ' s   o p e n� ���� Z    ?������� =   '��� n    %��� 1   # %��
�� 
pnam� 4    #���
�� 
cwin� m   ! "���� � m   % &�� ��� $ 2 e m p o w e r F M   T o o l b o x� k   * ;�� ��� I  * 5�����
�� .prcsclicnull��� ��� uiel� n   * 1��� 4   . 1���
�� 
butT� m   / 0���� � 4   * .���
�� 
cwin� m   , -���� ��  � ���� I  6 ;�����
�� .sysodelanull��� ��� nmbr� m   6 7���� ��  ��  ��  ��  ��  ��  ��  � 4    ���
�� 
pcap� m    �� ��� , F i l e M a k e r   P r o   A d v a n c e d� m     ���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i   � ���� I      �������� 00 fmgui_dataviewer_close fmGUI_DataViewer_Close��  ��  � k     3�� ��� l     ����  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     ����  �  �  � ��� O     3��� O    2��� k    1�� ��� n   ��� I    ���� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �  �  f    � ��� Q    1���� I   (���
� .prcsclicnull��� ��� uiel� n    $��� 4   ! $��
� 
butT� m   " #�� � l   !���� 6   !��� 4   ��
� 
cwin� m    �� � =    ��� 1    �
� 
pnam� m    �� ���  D a t a   V i e w e r�  �  �  � R      ���
� .ascrerr ****      � ****�  �  �  �  � 4    ��
� 
pcap� m    �� ��� , F i l e M a k e r   P r o   A d v a n c e d� m     ���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �  � ��� l     ����  �  �  � ��� l     ����  �  �  � ��� i   � ���� I      ���� .0 fmgui_inspector_close fmGUI_Inspector_Close�  �  � k     r�� ��� l     ����  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     �~�}�|�~  �}  �|  � ��{� O     r��� O    q   k    p  n    I    �z�y�x�z (0 fmgui_appfrontmost fmGUI_AppFrontMost�y  �x    f      l   �w	
�w  	 I C try the click twice in case the first only brings window to front.   
 � �   t r y   t h e   c l i c k   t w i c e   i n   c a s e   t h e   f i r s t   o n l y   b r i n g s   w i n d o w   t o   f r o n t .  Q    .�v r    % m    �u�u  n       1   " $�t
�t 
pidx l   "�s�r 6   " 4   �q
�q 
cwin m    �p�p  =   ! 1    �o
�o 
pnam m      �  I n s p e c t o r�s  �r   R      �n�m�l
�n .ascrerr ****      � ****�m  �l  �v    Q   / O�k I  2 F�j �i
�j .prcsclicnull��� ��� uiel  n   2 B!"! 4   ? B�h#
�h 
butT# m   @ A�g�g " l  2 ?$�f�e$ 6  2 ?%&% 4  2 6�d'
�d 
cwin' m   4 5�c�c & =  7 >()( 1   8 :�b
�b 
pnam) m   ; =** �++  I n s p e c t o r�f  �e  �i   R      �a�`�_
�a .ascrerr ****      � ****�`  �_  �k   ,�^, Q   P p-.�]- I  S g�\/�[
�\ .prcsclicnull��� ��� uiel/ n   S c010 4   ` c�Z2
�Z 
butT2 m   a b�Y�Y 1 l  S `3�X�W3 6  S `454 4  S W�V6
�V 
cwin6 m   U V�U�U 5 =  X _787 1   Y [�T
�T 
pnam8 m   \ ^99 �::  I n s p e c t o r�X  �W  �[  . R      �S�R�Q
�S .ascrerr ****      � ****�R  �Q  �]  �^   4    �P;
�P 
pcap; m    << �== , F i l e M a k e r   P r o   A d v a n c e d� m     >>�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �{  � ?@? l     �O�N�M�O  �N  �M  @ ABA l     �L�K�J�L  �K  �J  B CDC i   � �EFE I      �I�H�G�I 00 fmgui_inspector_ensure fmGUI_Inspector_Ensure�H  �G  F k     hGG HIH l     �FJK�F  J   version 1.1   K �LL    v e r s i o n   1 . 1I MNM l     �E�D�C�E  �D  �C  N OPO Q     fQRSQ k    RTT UVU I    �B�A�@�B 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout�A  �@  V W�?W O   	 RXYX O    QZ[Z k    P\\ ]^] l   �>�=�<�>  �=  �<  ^ _`_ n   aba I    �;�:�9�; (0 fmgui_appfrontmost fmGUI_AppFrontMost�:  �9  b  f    ` cdc l   �8�7�6�8  �7  �6  d efe Z    Mgh�5�4g H    ,ii l   +j�3�2j I   +�1k�0
�1 .coredoexnull���     ****k l   'l�/�.l 6   'mnm 4   �-o
�- 
cwino m    �,�, n E    &pqp 1     "�+
�+ 
pnamq m   # %rr �ss  I n s p e c t o r�/  �.  �0  �3  �2  h I  / I�*t�)
�* .prcsclicnull��� ��� uielt l  / Eu�(�'u 6  / Evwv n   / <xyx 4  9 <�&z
�& 
menIz m   : ;�%�% y n   / 9{|{ 4   6 9�$}
�$ 
menE} m   7 8�#�# | n   / 6~~ 4   3 6�"�
�" 
mbri� m   4 5�� ���  V i e w 4   / 3�!�
�! 
mbar� m   1 2� �  w =  = D��� 1   > @�
� 
pnam� m   A C�� ���  I n s p e c t o r�(  �'  �)  �5  �4  f ��� L   N P�� m   N O�
� boovtrue�  [ 4    ��
� 
pcap� m    �� ��� , F i l e M a k e r   P r o   A d v a n c e dY m   	 
���                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  �?  R R      ���
� .ascrerr ****      � ****� o      �� 0 errmsg errMsg� ���
� 
errn� o      �� 0 errnum errNum�  S R   Z f���
� .ascrerr ****      � ****� b   ` e��� m   ` c�� ��� 4 C o u l d n ' t   o p e n   I n s p e c t o r   -  � o   c d�� 0 errmsg errMsg� ���
� 
errn� o   ^ _�� 0 errnum errNum�  P ��� l  g g����  �  �  �  D ��� l     ����  �  �  � ��� l     �
�	��
  �	  �  � ��� i   � ���� I      ���� 20 fmgui_modeensure_browse fmGUI_ModeEnsure_Browse�  �  � k     �� ��� l     ����  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     ����  �  �  � ��� Q     ���� k    �� ��� I    	� ����  $0 fmgui_modeselect fmGUI_ModeSelect� ���� m    �� ���  B r o w s e��  ��  � ���� l  
 
��������  ��  ��  ��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� �����
�� 
errn� o      ���� 0 errnum errNum��  � R    ����
�� .ascrerr ****      � ****� b    ��� m    �� ��� B C o u l d n ' t   e n s u r e   i n   B r o w s e   M o d e   -  � o    ���� 0 errmsg errMsg� �����
�� 
errn� o    ���� 0 errnum errNum��  � ��� l   ��������  ��  ��  � ���� l   ��������  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i   � ���� I      �������� .0 fmgui_modeensure_find fmGUI_ModeEnsure_Find��  ��  � k     �� ��� l     ������  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     ��������  ��  ��  � ��� Q     ���� k    �� ��� I    	������� $0 fmgui_modeselect fmGUI_ModeSelect� ���� m    �� ���  F i n d��  ��  � ���� l  
 
��������  ��  ��  ��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� �����
�� 
errn� o      ���� 0 errnum errNum��  � R    ����
�� .ascrerr ****      � ****� b    ��� m    �� ��� B C o u l d n ' t   e n s u r e   i n   B r o w s e   M o d e   -  � o    ���� 0 errmsg errMsg� �����
�� 
errn� o    ���� 0 errnum errNum��  � ��� l   ��������  ��  ��  � ���� l   ��������  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �  �  � ��� i   � ���� I      ���� 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout�  �  � k     �� ��� l     ����  �   version 1.0   � ���    v e r s i o n   1 . 0� ��� l     ����  �  �  � ��� Q     �   � k           I    	� �� $0 fmgui_modeselect fmGUI_ModeSelect   �  m       �    L a y o u t�  �     	� 	 l  
 
����  �  �  �     R      � 
 
� .ascrerr ****      � **** 
 o      �� 0 errmsg errMsg  � �
� 
errn  o      �� 0 errnum errNum�    R    �  
� .ascrerr ****      � ****  b        m       �   B C o u l d n ' t   e n s u r e   i n   B r o w s e   M o d e   -    o    �� 0 errmsg errMsg  � �
� 
errn  o    �� 0 errnum errNum�  �  �  l   ����  �  �  �  �     l     ����  �  �        l     ����  �  �        i   � �    I      � �� $0 fmgui_modeselect fmGUI_ModeSelect   �  o      �� 0 modetoselect modeToSelect�  �    k     �      !   l     � " #�   "   version 1.0    # � $ $    v e r s i o n   1 . 0 !  % & % l     ����  �  �   &  '� ' Q     � ( ) * ( O    r + , + O    q - . - k    p / /  0 1 0 n    2 3 2 I    ���� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �   3  f     1  4 5 4 n    6 7 6 I    ���� .0 fmgui_inspector_close fmGUI_Inspector_Close�  �   7  f     5  8 9 8 l   ����  �  �   9  : ; : l   � < =�   < @ : Need to click in upper-left corner of area before pasting    = � > > t   N e e d   t o   c l i c k   i n   u p p e r - l e f t   c o r n e r   o f   a r e a   b e f o r e   p a s t i n g ;  ? @ ? r      A B A 4    � C
� 
cwin C m    ��  B o      �� 0 
modewindow 
modeWindow @  D E D r   ! 0 F G F 6  ! . H I H n   ! % J K J 4  " %� L
� 
sgrp L m   # $��  K o   ! "�� 0 
modewindow 
modeWindow I D   & - M N M 1   ' )�
� 
desc N m   * , O O � P P " M o d e   C o n t e n t   A r e a G o      �� "0 modecontentarea modeContentArea E  Q R Q r   1 6 S T S n   1 4 U V U 1   2 4�
� 
desc V o   1 2�� "0 modecontentarea modeContentArea T o      �~�~ *0 modecontentareadesc modeContentAreaDesc R  W X W r   7 = Y Z Y n   7 ; [ \ [ 4  8 ;�} ]
�} 
cwor ] m   9 :�|�|  \ o   7 8�{�{ *0 modecontentareadesc modeContentAreaDesc Z o      �z�z 0 currentmode currentMode X  ^ _ ^ l  > >�y�x�w�y  �x  �w   _  ` a ` Z   > k b c�v�u b >  > A d e d o   > ?�t�t 0 currentmode currentMode e o   ? @�s�s 0 modetoselect modeToSelect c k   D g f f  g h g I  D I�r i�q
�r .sysodelanull��� ��� nmbr i m   D E j j ?�      �q   h  k l k r   J O m n m b   J M o p o o   J K�p�p 0 modetoselect modeToSelect p m   K L q q � r r 
   M o d e n o      �o�o 0 menuitemname menuItemName l  s�n s I  P g�m t�l
�m .prcsclicnull��� ��� uiel t l  P c u�k�j u n   P c v w v 4   ^ c�i x
�i 
menI x o   a b�h�h 0 menuitemname menuItemName w n   P ^ y z y 4   Y ^�g {
�g 
menE { m   \ ]�f�f  z n   P Y | } | 4   T Y�e ~
�e 
mbri ~ m   U X   � � �  V i e w } 4   P T�d �
�d 
mbar � m   R S�c�c �k  �j  �l  �n  �v  �u   a  � � � l  l l�b�a�`�b  �a  �`   �  � � � L   l n � � m   l m�_
�_ boovtrue �  ��^ � l  o o�]�\�[�]  �\  �[  �^   . 4    �Z �
�Z 
pcap � m   	 
 � � � � � , F i l e M a k e r   P r o   A d v a n c e d , m     � ��                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��   ) R      �Y � �
�Y .ascrerr ****      � **** � o      �X�X 0 errmsg errMsg � �W ��V
�W 
errn � o      �U�U 0 errnum errNum�V   * R   z ��T � �
�T .ascrerr ****      � **** � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � � 2 C o u l d n ' t   s w i t c h   t o   m o d e   ' � o   � ��S�S 0 modetoselect modeToSelect � m   � � � � � � �  '   -   � o   � ��R�R 0 errmsg errMsg � �Q ��P
�Q 
errn � o   ~ �O�O 0 errnum errNum�P  �     � � � l     �N�M�L�N  �M  �L   �  � � � l     �K�J�I�K  �J  �I   �  � � � i   � � � � � I      �H ��G�H (0 fmgui_window_close fmGUI_Window_Close �  ��F � o      �E�E  0 somewindowname someWindowName�F  �G   � k      � �  � � � l     �D � ��D   �   version 1.1    � � � �    v e r s i o n   1 . 1 �  � � � l     �C�B�A�C  �B  �A   �  � � � O      � � � k     � �  � � � l   �@�?�>�@  �?  �>   �  � � � I   �= ��<
�= .coreclosnull���     obj  � 4    �; �
�; 
cwin � o   
 �:�:  0 somewindowname someWindowName�<   �  ��9 � l   �8�7�6�8  �7  �6  �9   � 5     �5 ��4
�5 
capp � m     � � � � � > c o m . f i l e m a k e r . c l i e n t . a d v a n c e d 1 2
�4 kfrmID   �  � � � l   �3�2�1�3  �2  �1   �  � � � L     � � m    �0
�0 boovtrue �  ��/ � l   �.�-�,�.  �-  �,  �/   �  � � � l     �+�*�)�+  �*  �)   �  � � � l     �(�'�&�(  �'  �&   �  � � � i   � � � � � I      �% ��$�% "0 windowwaituntil windowWaitUntil �  ��# � o      �"�" 	0 prefs  �#  �$   � k    C � �  � � � l     �! � ��!   �   version 1.2    � � � �    v e r s i o n   1 . 2 �  � � � l     � ���   �  �   �  � � � r      � � � K      � � � � �� 0 
windowname 
windowName � m    �
� 
null � � � ��  0 windownametest windowNameTest � m     � � � � �  c o n t a i n s � � � �� 0 whichwindow whichWindow � m     � � � � �  a n y � � � �� .0 waitcycledelayseconds waitCycleDelaySeconds � m     � � ?�       � � ��� 0 waitcyclemax waitCycleMax � m   	 
�� �   � o      �� 0 defaultprefs defaultPrefs �  � � � r     � � � b     � � � o    �� 	0 prefs   � o    �� 0 defaultprefs defaultPrefs � o      �� 	0 prefs   �  � � � l   ����  �  �   �  � � � r     � � � n     � � � o    �� 0 
windowname 
windowName � o    �� 	0 prefs   � o      �� 0 
windowname 
windowName �  � � � r      � � � n     � � � o    ��  0 windownametest windowNameTest � o    �
�
 	0 prefs   � o      �	�	  0 windownametest windowNameTest �  � � � r   ! & � � � n   ! $! !!  o   " $�� 0 whichwindow whichWindow! o   ! "�� 	0 prefs   � o      �� 0 whichwindow whichWindow � !!! l  ' '����  �  �  ! !!! r   ' *!!! m   ' (�
� boovfals! o      �� 0 checkresult checkResult! !!	! l  + +� �����   ��  ��  !	 !
!!
 U   +>!!! k   59!! !!! O   5 �!!! Z   9 !!!!! =  9 <!!! o   9 :���� 0 whichwindow whichWindow! m   : ;!! �!!  a n y! r   ? K!!! n   ? I!!! 1   E I��
�� 
pnam! n   ? E!! ! 2   C E��
�� 
cwin!  4   ? C��!!
�� 
pcap!! m   A B!"!" �!#!# , F i l e M a k e r   P r o   A d v a n c e d! o      ���� "0 windownamecheck windowNameCheck! !$!%!$ =  N S!&!'!& o   N O���� 0 whichwindow whichWindow!' m   O R!(!( �!)!) 
 f r o n t!% !*��!* r   V e!+!,!+ n   V c!-!.!- 1   _ c��
�� 
pnam!. n   V _!/!0!/ 4   \ _��!1
�� 
cwin!1 m   ] ^���� !0 4   V \��!2
�� 
pcap!2 m   X [!3!3 �!4!4 , F i l e M a k e r   P r o   A d v a n c e d!, o      ���� "0 windownamecheck windowNameCheck��  ! l  h !5!6!7!5 k   h !8!8 !9!:!9 r   h o!;!<!; c   h m!=!>!= o   h i���� 0 whichwindow whichWindow!> m   i l��
�� 
nmbr!< o      ���� 0 windowindex windowIndex!: !?��!? r   p !@!A!@ n   p }!B!C!B 1   y }��
�� 
pnam!C n   p y!D!E!D 4   v y��!F
�� 
cwin!F o   w x���� 0 windowindex windowIndex!E 4   p v��!G
�� 
pcap!G m   r u!H!H �!I!I , F i l e M a k e r   P r o   A d v a n c e d!A o      ���� "0 windownamecheck windowNameCheck��  !6 + % whichWindow  is window index number:   !7 �!J!J J   w h i c h W i n d o w     i s   w i n d o w   i n d e x   n u m b e r :! m   5 6!K!K�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  ! !L!M!L l  � ���������  ��  ��  !M !N!O!N l  � ���������  ��  ��  !O !P!Q!P Z   �%!R!S!T��!R =  � �!U!V!U o   � �����  0 windownametest windowNameTest!V m   � �!W!W �!X!X  c o n t a i n s!S k   � �!Y!Y !Z![!Z r   � �!\!]!\ l  � �!^����!^ E   � �!_!`!_ o   � ����� "0 windownamecheck windowNameCheck!` o   � ����� 0 
windowname 
windowName��  ��  !] o      ���� 0 checkresult checkResult![ !a��!a l  � ���������  ��  ��  ��  !T !b!c!b =  � �!d!e!d o   � �����  0 windownametest windowNameTest!e m   � �!f!f �!g!g   d o e s   n o t   c o n t a i n!c !h!i!h k   � �!j!j !k!l!k r   � �!m!n!m l  � �!o����!o H   � �!p!p E   � �!q!r!q o   � ����� "0 windownamecheck windowNameCheck!r o   � ����� 0 
windowname 
windowName��  ��  !n o      ���� 0 checkresult checkResult!l !s��!s l  � ���������  ��  ��  ��  !i !t!u!t =  � �!v!w!v o   � �����  0 windownametest windowNameTest!w m   � �!x!x �!y!y  e q u a l s!u !z!{!z k   � �!|!| !}!~!} r   � �!!�! l  � �!�����!� =  � �!�!�!� o   � ����� "0 windownamecheck windowNameCheck!� o   � ����� 0 
windowname 
windowName��  ��  !� o      ���� 0 checkresult checkResult!~ !���!� l  � ���������  ��  ��  ��  !{ !�!�!� =  � �!�!�!� o   � �����  0 windownametest windowNameTest!� m   � �!�!� �!�!�  i s!� !�!�!� k   � �!�!� !�!�!� r   � �!�!�!� l  � �!�����!� =  � �!�!�!� o   � ����� "0 windownamecheck windowNameCheck!� o   � ��� 0 
windowname 
windowName��  ��  !� o      �� 0 checkresult checkResult!� !��!� l  � �����  �  �  �  !� !�!�!� =  � �!�!�!� o   � ���  0 windownametest windowNameTest!� m   � �!�!� �!�!�  s t a r t s   w i t h!� !�!�!� k   � �!�!� !�!�!� r   � �!�!�!� l  � �!���!� C   � �!�!�!� o   � ��� "0 windownamecheck windowNameCheck!� o   � ��� 0 
windowname 
windowName�  �  !� o      �� 0 checkresult checkResult!� !��!� l  � �����  �  �  �  !� !�!�!� =  � �!�!�!� o   � ���  0 windownametest windowNameTest!� m   � �!�!� �!�!� & d o e s   n o t   s t a r t   w i t h!� !�!�!� k   � �!�!� !�!�!� r   � �!�!�!� l  � �!���!� H   � �!�!� C   � �!�!�!� o   � ��� "0 windownamecheck windowNameCheck!� o   � ��� 0 
windowname 
windowName�  �  !� o      �� 0 checkresult checkResult!� !��!� l  � �����  �  �  �  !� !�!�!� =  � �!�!�!� o   � ���  0 windownametest windowNameTest!� m   � �!�!� �!�!�  e n d s   w i t h!� !�!�!� k   � �!�!� !�!�!� r   � �!�!�!� l  � �!���!� D   � �!�!�!� o   � ��� "0 windownamecheck windowNameCheck!� o   � ��� 0 
windowname 
windowName�  �  !� o      �� 0 checkresult checkResult!� !��!� l  � �����  �  �  �  !� !�!�!� = !�!�!� o  ��  0 windownametest windowNameTest!� m  !�!� �!�!� " d o e s   n o t   e n d   w i t h!� !�!�!� r  	!�!�!� l 	!���!� H  	!�!� D  	!�!�!� o  	
�� "0 windownamecheck windowNameCheck!� o  
�� 0 
windowname 
windowName�  �  !� o      �� 0 checkresult checkResult!� !�!�!� = !�!�!� o  ��  0 windownametest windowNameTest!� m  !�!� �!�!�  i s   n o t!� !��!� k  !!�!� !�!�!� r  !�!�!� l !���!� > !�!�!� o  �� "0 windownamecheck windowNameCheck!� o  �� 0 
windowname 
windowName�  �  !� o      �� 0 checkresult checkResult!� !��!� l   ����  �  �  �  �  ��  !Q !�!�!� l &&����  �  �  !� !�!�!� Z &/!�!���!� o  &'�� 0 checkresult checkResult!�  S  *+�  �  !� !�!�!� l 00����  �  �  !� !�!�!� I 07�!��
� .sysodelanull��� ��� nmbr!� n  03!�!�!� o  13�� .0 waitcycledelayseconds waitCycleDelaySeconds!� o  01�~�~ 	0 prefs  �  !� !�!�!� l 88�}�|�{�}  �|  �{  !� !��z!� l 88�y�x�w�y  �x  �w  �z  ! n   . 2!�!�!� o   / 1�v�v 0 waitcyclemax waitCycleMax!� o   . /�u�u 	0 prefs  ! !�!�!� l ??�t�s�r�t  �s  �r  !� !�!�!� L  ?A!�!� o  ?@�q�q 0 checkresult checkResult!� !��p!� l BB�o�n�m�o  �n  �m  �p   � " ""  l     �l�k�j�l  �k  �j  " """ l     �i�h�g�i  �h  �g  " """ i   � �""" I      �f"�e�f 20 windowwaituntil_frontis windowWaitUntil_FrontIS" "	�d"	 o      �c�c 	0 prefs  �d  �e  " k     "
"
 """ l     �b""�b  "   version 1.0   " �""    v e r s i o n   1 . 0" """ l     �a�`�_�a  �`  �_  " """ r     """ K     "" �^""�^ 0 
windowname 
windowName" m    �]
�] 
null" �\""�\  0 windownametest windowNameTest" m    "" �""  i s" �[""�[ 0 whichwindow whichWindow" m    "" �" "  
 f r o n t" �Z"!""�Z .0 waitcycledelayseconds waitCycleDelaySeconds"! m    "#"# ?�������"" �Y"$�X�Y 0 waitcyclemax waitCycleMax"$ m   	 
�W�W d�X  " o      �V�V 0 defaultprefs defaultPrefs" "%"&"% r    "'"("' b    ")"*") o    �U�U 	0 prefs  "* o    �T�T 0 defaultprefs defaultPrefs"( o      �S�S 	0 prefs  "& "+","+ l   �R�Q�P�R  �Q  �P  ", "-"."- L    "/"/ I    �O"0�N�O "0 windowwaituntil windowWaitUntil"0 "1�M"1 o    �L�L 	0 prefs  �M  �N  ". "2"3"2 l   �K�J�I�K  �J  �I  "3 "4�H"4 l   �G�F�E�G  �F  �E  �H  " "5"6"5 l     �D�C�B�D  �C  �B  "6 "7"8"7 l     �A�@�?�A  �@  �?  "8 "9":"9 i   � �";"<"; I      �>"=�=�> "0 indexoflistitem indexOfListItem"= ">"?"> o      �<�< 0 somelist someList"? "@�;"@ o      �:�: 0 somelistitem someListItem�;  �=  "< k     8"A"A "B"C"B l     �9"D"E�9  "D   version 1.0   "E �"F"F    v e r s i o n   1 . 0"C "G"H"G l     �8�7�6�8  �7  �6  "H "I"J"I Z    "K"L�5�4"K H     "M"M E     "N"O"N o     �3�3 0 somelist someList"O o    �2�2 0 somelistitem someListItem"L L    	"P"P m    �1�1���5  �4  "J "Q"R"Q l   �0�/�.�0  �/  �.  "R "S"T"S Y    6"U�-"V"W�,"U k    1"X"X "Y"Z"Y r    ""["\"[ n     "]"^"] 4     �+"_
�+ 
cobj"_ o    �*�* 0 i  "^ o    �)�) 0 somelist someList"\ o      �(�( 0 onelistitem oneListItem"Z "`"a"` l  # #�'�&�%�'  �&  �%  "a "b"c"b Z  # /"d"e�$�#"d =  # &"f"g"f o   # $�"�" 0 onelistitem oneListItem"g o   $ %�!�! 0 somelistitem someListItem"e L   ) +"h"h o   ) *� �  0 i  �$  �#  "c "i�"i l  0 0����  �  �  �  �- 0 i  "V m    �� "W I   �"j�
� .corecnte****       ****"j o    �� 0 somelist someList�  �,  "T "k"l"k l  7 7����  �  �  "l "m�"m l  7 7����  �  �  �  ": "n"o"n l     ����  �  �  "o "p"q"p l     ����  �  �  "q "r"s"r i   � �"t"u"t I      �
"v�	�
 0 listcontains listContains"v "w"x"w o      �� 0 somelist someList"x "y�"y o      �� "0 somecomplexitem someComplexItem�  �	  "u k     0"z"z "{"|"{ l     �"}"~�  "}   version 1.0   "~ �""    v e r s i o n   1 . 0"| "�"�"� l     ����  �  �  "� "�"�"� X     +"��"�"� k    &"�"� "�"�"� r    "�"�"� n    "�"�"� 1    � 
�  
pcnt"� o    ���� 0 oneitem oneItem"� o      ���� 0 oneitem oneItem"� "�"�"� Z    $"�"�����"� =   "�"�"� o    ���� 0 oneitem oneItem"� o    ���� "0 somecomplexitem someComplexItem"� k     "�"� "�"�"� l   ��������  ��  ��  "� "�"�"� L    "�"� m    ��
�� boovtrue"� "���"� l   ��������  ��  ��  ��  ��  ��  "� "�"�"� l  % %��������  ��  ��  "� "���"� l  % %��������  ��  ��  ��  � 0 oneitem oneItem"� o    ���� 0 somelist someList"� "�"�"� l  , ,��������  ��  ��  "� "�"�"� L   , ."�"� m   , -��
�� boovfals"� "���"� l  / /��������  ��  ��  ��  "s "�"�"� l     ��������  ��  ��  "� "�"�"� l     ��������  ��  ��  "� "�"�"� i   � �"�"�"� I      ��"����� $0 listuniquevalues listUniqueValues"� "���"� o      ���� 	0 prefs  ��  ��  "� k     :"�"� "�"�"� l     ��"�"���  "�   version 1.0   "� �"�"�    v e r s i o n   1 . 0"� "�"�"� l     ��������  ��  ��  "� "�"�"� r     "�"�"� n     "�"�"� o    ���� 0 	inputlist 	inputList"� o     ���� 	0 prefs  "� o      ���� 0 	inputlist 	inputList"� "�"�"� l   ��������  ��  ��  "� "�"�"� r    
"�"�"� J    ����  "� o      ���� 0 
uniquelist 
uniqueList"� "�"�"� l   ��������  ��  ��  "� "�"�"� l   ��������  ��  ��  "� "�"�"� X    5"���"�"� k    0"�"� "�"�"� r     "�"�"� n    "�"�"� 1    ��
�� 
pcnt"� o    ���� 0 oneitem oneItem"� o      ���� 0 oneitem oneItem"� "���"� Z   ! 0"�"����"� H   ! %"�"� E   ! $"�"�"� o   ! "�� 0 
uniquelist 
uniqueList"� o   " #�� 0 oneitem oneItem"� s   ( ,"�"�"� o   ( )�� 0 oneitem oneItem"� n      "�"�"�  ;   * +"� o   ) *�� 0 
uniquelist 
uniqueList��  �  ��  �� 0 oneitem oneItem"� o    �� 0 	inputlist 	inputList"� "�"�"� l  6 6����  �  �  "� "�"�"� L   6 8"�"� o   6 7�� 0 
uniquelist 
uniqueList"� "��"� l  9 9����  �  �  �  "� "�"�"� l     ����  �  �  "� "�"�"� l     ����  �  �  "� "�"�"� i   � �"�"�"� I      �"��� 0 sort  "� "��"� o      �� 0 oldlist oldList�  �  "� k     D"�"� "�"�"� l     �"�"��  "�   version 1.0   "� �"�"�    v e r s i o n   1 . 0"� "�"�"� l     ����  �  �  "� "�"�"� r     "�"�"� J     
"�"� "�"�"� n    "�"�"� 1    �
� 
txdl"� 1     �
� 
ascr"� "��"� I   �"��
� .sysontocTEXT       shor"� m    �� 
�  �  "� J      "�"� "�"�"� o      �� 0 od  "� # �#  n     ### 1    �
� 
txdl# 1    �
� 
ascr�  "� ### r    !### c    ### o    �� 0 oldlist oldList# m    �
� 
TEXT# o      �� 0 	textblock 	textBlock# #	#
#	 r   " /### I  " -�#�
� .sysoexecTEXT���     TEXT# b   " )### b   " '### m   " ### �## 
 e c h o  # n   # &### 1   $ &�
� 
strq# o   # $�� 0 	textblock 	textBlock# m   ' (## �##    |   s o r t�  # o      �� 0 sortedblock sortedBlock#
 ### r   0 5### o   0 1�
� 
ret # n     ### 1   2 4�
� 
txdl# 1   1 2�
� 
ascr# ### r   6 ;# #!#  n   6 9#"###" 2   7 9�
� 
citm## o   6 7�� 0 sortedblock sortedBlock#! o      �� 0 
sortedlist 
sortedList# #$#%#$ r   < A#&#'#& o   < =�� 0 od  #' n     #(#)#( 1   > @�
� 
txdl#) 1   = >�
� 
ascr#% #*#+#* l  B B����  �  �  #+ #,�#, L   B D#-#- o   B C�� 0 
sortedlist 
sortedList�  "� #.#/#. l     ����  �  �  #/ #0#1#0 l     ���~�  �  �~  #1 #2#3#2 i   � �#4#5#4 I      �}#6�|�} 0 
logconsole 
logConsole#6 #7#8#7 o      �{�{ 0 processname processName#8 #9�z#9 o      �y�y 0 
consolemsg 
consoleMsg�z  �|  #5 k     H#:#: #;#<#; l     �x#=#>�x  #=   version 2.0   #> �#?#?    v e r s i o n   2 . 0#< #@#A#@ l     �w�v�u�w  �v  �u  #A #B#C#B r     #D#E#D I     �t#F�s�t  0 coercetostring coerceToString#F #G�r#G o    �q�q 0 
consolemsg 
consoleMsg�r  �s  #E o      �p�p 0 
consolemsg 
consoleMsg#C #H#I#H l  	 #J#K#L#J r   	 #M#N#M I   	 �o#O�n�o 0 replacesimple replaceSimple#O #P�m#P J   
 #Q#Q #R#S#R o   
 �l�l 0 
consolemsg 
consoleMsg#S #T#U#T I   �k#V�j
�k .sysontocTEXT       shor#V m    �i�i  �j  #U #W�h#W m    #X#X �#Y#Y  �h  �m  �n  #N o      �g�g 0 
consolemsg 
consoleMsg#K %  ASCII 0 breaks shell scripting   #L �#Z#Z >   A S C I I   0   b r e a k s   s h e l l   s c r i p t i n g#I #[#\#[ Z    )#]#^�f�e#] =   #_#`#_ n    #a#b#a 1    �d
�d 
leng#b o    �c�c 0 
consolemsg 
consoleMsg#` m    �b�b  #^ k   " %#c#c #d#e#d l  " "�a#f#g�a  #f H B we still want this function to log that an empty string was sent:   #g �#h#h �   w e   s t i l l   w a n t   t h i s   f u n c t i o n   t o   l o g   t h a t   a n   e m p t y   s t r i n g   w a s   s e n t :#e #i�`#i r   " %#j#k#j m   " ##l#l �#m#m  [ E M P T Y   S T R I N G ]#k o      �_�_ 0 
consolemsg 
consoleMsg�`  �f  �e  #\ #n#o#n r   * =#p#q#p b   * ;#r#s#r b   * 7#t#u#t b   * 5#v#w#v b   * 1#x#y#x b   * /#z#{#z b   * -#|#}#| m   * +#~#~ �##  l o g g e r#} 1   + ,�^
�^ 
spac#{ m   - .#�#� �#�#�  - t#y 1   / 0�]
�] 
spac#w n   1 4#�#�#� 1   2 4�\
�\ 
strq#� o   1 2�[�[ 0 processname processName#u 1   5 6�Z
�Z 
spac#s n   7 :#�#�#� 1   8 :�Y
�Y 
strq#� o   7 8�X�X 0 
consolemsg 
consoleMsg#q o      �W�W 0 shellcommand shellCommand#o #�#�#� l  > >�V�U�T�V  �U  �T  #� #�#�#� I  > C�S#��R
�S .sysoexecTEXT���     TEXT#� o   > ?�Q�Q 0 shellcommand shellCommand�R  #� #�#�#� L   D F#�#� o   D E�P�P 0 shellcommand shellCommand#� #��O#� l  G G�N�M�L�N  �M  �L  �O  #3 #�#�#� l     �K�J�I�K  �J  �I  #� #�#�#� l     �H�G�F�H  �G  �F  #� #�#�#� i   � �#�#�#� I      �E#��D�E 0 loglevel logLEVEL#� #�#�#� o      �C�C 	0 level  #� #��B#� o      �A�A 0 somemsg someMsg�B  �D  #� k     4#�#� #�#�#� l     �@#�#��@  #�   version 1.0   #� �#�#�    v e r s i o n   1 . 0#� #�#�#� l     �?�>�=�?  �>  �=  #� #�#�#� r     #�#�#� m     �<�< #� o      �;�; 0 	maxxcount 	maxXcount#� #�#�#� r    #�#�#� b    #�#�#� o    	�:�: 0 
scriptname 
ScriptName#� m   	 
#�#� �#�#�  _#� o      �9�9 0 logname logName#� #�#�#� r    #�#�#� [    #�#�#� \    #�#�#� o    �8�8 0 	maxxcount 	maxXcount#� o    �7�7 	0 level  #� m    �6�6 #� o      �5�5 0 xcount xCount#� #�#�#� l   �4�3�2�4  �3  �2  #� #�#�#� Y    *#��1#�#��0#� r     %#�#�#� b     ##�#�#� o     !�/�/ 0 logname logName#� m   ! "#�#� �#�#�  X#� o      �.�. 0 logname logName�1 0 i  #� m    �-�- #� o    �,�, 0 xcount xCount�0  #� #�#�#� l  + +�+�*�)�+  �*  �)  #� #�#�#� I   + 2�(#��'�( 0 
logconsole 
logConsole#� #�#�#� o   , -�&�& 0 logname logName#� #��%#� o   - .�$�$ 0 somemsg someMsg�%  �'  #� #��##� l  3 3�"�!� �"  �!  �   �#  #� #�#�#� l     ����  �  �  #� #�#�#� l     ����  �  �  #� #�#�#� i   � �#�#�#� I      �#��� 0 logmain logMAIN#� #��#� o      �� 0 somemsg someMsg�  �  #� k     #�#� #�#�#� l     �#�#��  #�   version 1.0   #� �#�#�    v e r s i o n   1 . 0#� #�#�#� l     ����  �  �  #� #��#� l    #�#�#�#� I     �#��� 0 loglevel logLEVEL#� #�#�#� m    ��  #� #��#� o    �� 0 somemsg someMsg�  �  #�    log at highest importance   #� �#�#� 4   l o g   a t   h i g h e s t   i m p o r t a n c e�  #� #�#�#� l     ��
�	�  �
  �	  #� #�#�#� l     ����  �  �  #� #�#�#� i   � �#�#�#� I      �#��� (0 systemnotification systemNotification#� #��#� o      �� 	0 prefs  �  �  #� k     F#�#� #�#�#� l     �#�#��  #�   version 1.0   #� �#�#�    v e r s i o n   1 . 0#� #�#�#� l     � �����   ��  ��  #� #�#�#� r     #�#�#� K     #�#� ��#�$ �� 0 msg  #� m    $$ �$$  $  ��$$�� 0 msgtitle msgTitle$ m    $$ �$$  $ ��$$�� 0 msgsubtitle msgSubtitle$ m    $	$	 �$
$
  $ ��$$�� 0 msgsound msgSound$ m    $$ �$$  d e f a u l t$ ��$���� 0 nosound noSound$ m   	 
��
�� 
null��  #� o      ���� 0 defaultprefs defaultPrefs#� $$$ r    $$$ b    $$$ o    ���� 	0 prefs  $ o    ���� 0 defaultprefs defaultPrefs$ o      ���� 	0 prefs  $ $$$ l   ��������  ��  ��  $ $$$ Z    D$$��$$ >   $$$ n    $$ $ o    ���� 0 nosound noSound$  o    ���� 	0 prefs  $ m    ��
�� 
null$ I   ,��$!$"
�� .sysonotfnull��� ��� TEXT$! n     $#$$$# o     ���� 0 msg  $$ o    ���� 	0 prefs  $" ��$%$&
�� 
appr$% n   ! $$'$($' o   " $���� 0 msgtitle msgTitle$( o   ! "���� 	0 prefs  $& ��$)��
�� 
subt$) n   % ($*$+$* o   & (���� 0 msgsubtitle msgSubtitle$+ o   % &���� 	0 prefs  ��  ��  $ I  / D��$,$-
�� .sysonotfnull��� ��� TEXT$, n   / 2$.$/$. o   0 2���� 0 msg  $/ o   / 0���� 	0 prefs  $- ��$0$1
�� 
appr$0 n   3 6$2$3$2 o   4 6���� 0 msgtitle msgTitle$3 o   3 4���� 	0 prefs  $1 ��$4$5
�� 
subt$4 n   7 :$6$7$6 o   8 :���� 0 msgsubtitle msgSubtitle$7 o   7 8���� 	0 prefs  $5 ��$8��
�� 
nsou$8 n   ; >$9$:$9 o   < >���� 0 msgsound msgSound$: o   ; <���� 	0 prefs  ��  $ $;$<$; l  E E��������  ��  ��  $< $=��$= l  E E��������  ��  ��  ��  #� $>$?$> l     ��������  ��  ��  $? $@$A$@ l     ��������  ��  ��  $A $B$C$B i   � �$D$E$D I      ��$F���� 0 writetofile writeToFile$F $G��$G o      ���� 	0 prefs  ��  ��  $E k     �$H$H $I$J$I l     ��$K$L��  $K   version 1.0   $L �$M$M    v e r s i o n   1 . 0$J $N$O$N l     ��������  ��  ��  $O $P$Q$P r     $R$S$R K     $T$T �$U$V� 0 fullfilepath fullFilePath$U m    �
� 
null$V �$W$X� 0 filename fileName$W m    �
� 
null$X �$Y$Z� 0 filedirectory fileDirectory$Y c    $[$\$[ l   
$]��$] I   
�$^�
� .earsffdralis        afdr$^ m    �
� afdrdesk�  �  �  $\ m   
 �
� 
TEXT$Z �$_�� 0 
outputtext 
outputText$_ m    �
� 
null�  $S o      �� 0 defaultprefs defaultPrefs$Q $`$a$` r    $b$c$b b    $d$e$d o    �� 	0 prefs  $e o    �� 0 defaultprefs defaultPrefs$c o      �� 	0 prefs  $a $f$g$f l   ����  �  �  $g $h$i$h l   �$j$k�  $j   determine file path   $k �$l$l (   d e t e r m i n e   f i l e   p a t h$i $m$n$m Z    H$o$p$q$r$o >   $s$t$s n    $u$v$u o    �� 0 fullfilepath fullFilePath$v o    �� 	0 prefs  $t m    �
� 
null$p r   ! &$w$x$w n   ! $$y$z$y o   " $�� 0 fullfilepath fullFilePath$z o   ! "�� 	0 prefs  $x o      �� 0 
outputfile 
outputFile$q ${$|${ >  ) .$}$~$} n   ) ,$$�$ o   * ,�� 0 filename fileName$� o   ) *�� 	0 prefs  $~ m   , -�
� 
null$| $��$� r   1 :$�$�$� b   1 8$�$�$� n   1 4$�$�$� o   2 4�� 0 filedirectory fileDirectory$� o   1 2�� 	0 prefs  $� n   4 7$�$�$� o   5 7�� 0 filename fileName$� o   4 5�� 	0 prefs  $� o      �� 0 
outputfile 
outputFile�  $r r   = H$�$�$� b   = F$�$�$� l  = D$���$� c   = D$�$�$� l  = B$���$� I  = B�$��
� .earsffdralis        afdr$� m   = >�
� afdrdesk�  �  �  $� m   B C�
� 
TEXT�  �  $� m   D E$�$� �$�$� 2 A S F i l e W r i t t e n B y _ f m G U I . t x t$� o      �� 0 
outputfile 
outputFile$n $�$�$� l  I I����  �  �  $� $�$�$� l  I I����  �  �  $� $�$�$� l  I I�$�$��  $� $  now write output text to file   $� �$�$� <   n o w   w r i t e   o u t p u t   t e x t   t o   f i l e$� $��$� Q   I �$�$�$�$� k   L h$�$� $�$�$� r   L X$�$�$� I  L V�$�$�
� .rdwropenshor       file$� 4   L P�$�
� 
file$� o   N O�� 0 
outputfile 
outputFile$� �$��
� 
perm$� m   Q R�
� boovtrue�  $� o      �� 0 filereference fileReference$� $�$�$� I  Y b�$�$�
� .rdwrwritnull���     ****$� n   Y \$�$�$� o   Z \�� 0 
outputtext 
outputText$� o   Y Z�� 	0 prefs  $� �$��~
� 
refn$� o   ] ^�}�} 0 filereference fileReference�~  $� $��|$� I  c h�{$��z
�{ .rdwrclosnull���     ****$� o   c d�y�y 0 filereference fileReference�z  �|  $� R      �x�w�v
�x .ascrerr ****      � ****�w  �v  $� Q   p �$�$��u$� I  s {�t$��s
�t .rdwrclosnull���     ****$� 4   s w�r$�
�r 
file$� o   u v�q�q 0 
outputfile 
outputFile�s  $� R      �p�o�n
�p .ascrerr ****      � ****�o  �n  �u  �  $C $�$�$� l     �m�l�k�m  �l  �k  $� $�$�$� l     �j�i�h�j  �i  �h  $� $�$�$� i   � �$�$�$� I      �g$��f�g 0 clickatcoords clickAtCoords$� $�$�$� o      �e�e 0 xclick xClick$� $��d$� o      �c�c 0 yclick yClick�d  �f  $� k     0$�$� $�$�$� l     �b$�$��b  $�   version 1.0   $� �$�$�    v e r s i o n   1 . 0$� $�$�$� l     �a�`�_�a  �`  �_  $� $�$�$� r     	$�$�$� I    �^$�$�
�^ .sysorondlong        doub$� o     �]�] 0 xclick xClick$� �\$��[
�\ 
dire$� m    �Z
�Z olierndD�[  $� o      �Y�Y 0 xclick xClick$� $�$�$� r   
 $�$�$� I  
 �X$�$�
�X .sysorondlong        doub$� o   
 �W�W 0 yclick yClick$� �V$��U
�V 
dire$� m    �T
�T olierndD�U  $� o      �S�S 0 yclick yClick$� $�$�$� I   '�R$��Q
�R .sysoexecTEXT���     TEXT$� b    #$�$�$� b    !$�$�$� b    $�$�$� b    $�$�$� n    $�$�$� 1    �P
�P 
strq$� o    �O�O &0 clickcommandposix clickCommandPosix$� m    $�$� �$�$�    - r   c :$� o    �N�N 0 xclick xClick$� m     $�$� �$�$�  ,$� o   ! "�M�M 0 yclick yClick�Q  $� $��L$� L   ( 0$�$� l  ( /$��K�J$� b   ( /$�$�$� b   ( -$�$�$� l  ( +$��I�H$� c   ( +$�$�$� o   ( )�G�G 0 xclick xClick$� m   ) *�F
�F 
TEXT�I  �H  $� m   + ,$�$� �$�$�  ,$� o   - .�E�E 0 yclick yClick�K  �J  �L  $� $�$�$� l     �D�C�B�D  �C  �B  $� $�$�$� l     �A�@�?�A  �@  �?  $� $�$�$� i   � �$�$�$� I      �>$��=�> *0 clickobjectbycoords clickObjectByCoords$� % �<%  o      �;�; 0 
someobject 
someObject�<  �=  $� k     M%% %%% l     �:%%�:  %   version 1.0   % �%%    v e r s i o n   1 . 0% %%% l     �9�8�7�9  �8  �7  % %	%
%	 w     '%%% k    '%% %%% r    %%% n    %%% 1    �6
�6 
posn% o    �5�5 0 
someobject 
someObject% J      %% %%% o      �4�4 0 xcoord xCoord% %�3% o      �2�2 0 ycoord yCoord�3  % %�1% r    '%%% n    %%% 1    �0
�0 
ptsz% o    �/�/ 0 
someobject 
someObject% J      %% %%% o      �.�. 0 xsize xSize% % �-%  o      �,�, 0 ysize ySize�-  �1  %�                                                                                  sevs  alis    �  MacintoshSSD               �u8\H+     1System Events.app                                               N�u;�        ����  	                CoreServices    �u~�      �u��       1   %   $  =MacintoshSSD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h S S D  -System/Library/CoreServices/System Events.app   / ��  %
 %!%"%! l  ( (�+�*�)�+  �*  �)  %" %#%$%# l  ( 5%%%&%'%% r   ( 5%(%)%( I  ( 3�(%*%+
�( .sysorondlong        doub%* l  ( -%,�'�&%, [   ( -%-%.%- o   ( )�%�% 0 xcoord xCoord%. ^   ) ,%/%0%/ o   ) *�$�$ 0 xsize xSize%0 m   * +�#�# �'  �&  %+ �"%1�!
�" 
dire%1 m   . /� 
�  olierndD�!  %) o      �� 0 xclick xClick%&   middle   %' �%2%2    m i d d l e%$ %3%4%3 l  6 C%5%6%7%5 r   6 C%8%9%8 I  6 A�%:%;
� .sysorondlong        doub%: l  6 ;%<��%< [   6 ;%=%>%= o   6 7�� 0 ycoord yCoord%> ^   7 :%?%@%? o   7 8�� 0 ysize ySize%@ m   8 9�� �  �  %; �%A�
� 
dire%A m   < =�
� olierndD�  %9 o      �� 0 yclick yClick%6   middle   %7 �%B%B    m i d d l e%4 %C%D%C l  D D����  �  �  %D %E%F%E I   D K�%G�� 0 clickatcoords clickAtCoords%G %H%I%H o   E F�� 0 xclick xClick%I %J�%J o   F G�� 0 yclick yClick�  �  %F %K�%K l  L L��
�	�  �
  �	  �  $� %L%M%L l     ����  �  �  %M %N%O%N l     ����  �  �  %O %P%Q%P i   � �%R%S%R I      �%T��  0 coercetostring coerceToString%T %U� %U o      ����  0 incomingobject incomingObject�   �  %S k    �%V%V %W%X%W l     ��%Y%Z��  %Y   version 2.2   %Z �%[%[    v e r s i o n   2 . 2%X %\%]%\ l     ��������  ��  ��  %] %^��%^ Z    �%_%`%a%b%_ =    %c%d%c n     %e%f%e m    ��
�� 
pcls%f o     ����  0 incomingobject incomingObject%d m    ��
�� 
TEXT%` k    %g%g %h%i%h r    %j%k%j l   %l����%l c    %m%n%m o    	����  0 incomingobject incomingObject%n m   	 
��
�� 
TEXT��  ��  %k K      %o%o ��%p��
�� 
ctxt%p o      ����  0 incomingobject incomingObject��  %i %q��%q L    %r%r o    ����  0 incomingobject incomingObject��  %a %s%t%s =   %u%v%u n    %w%x%w m    ��
�� 
pcls%x o    ����  0 incomingobject incomingObject%v m    ��
�� 
long%t %y%z%y k     /%{%{ %|%}%| r     *%~%%~ l    #%�����%� c     #%�%�%� o     !����  0 incomingobject incomingObject%� m   ! "��
�� 
TEXT��  ��  % K      %�%� ��%���
�� 
ctxt%� o      ����  0 incomingobject incomingObject��  %} %���%� L   + /%�%� c   + .%�%�%� o   + ,����  0 incomingobject incomingObject%� m   , -��
�� 
TEXT��  %z %�%�%� =  2 7%�%�%� n   2 5%�%�%� m   3 5��
�� 
pcls%� o   2 3����  0 incomingobject incomingObject%� m   5 6��
�� 
doub%� %�%�%� k   : I%�%� %�%�%� r   : D%�%�%� l  : =%�����%� c   : =%�%�%� o   : ;����  0 incomingobject incomingObject%� m   ; <��
�� 
TEXT��  ��  %� K      %�%� ��%���
�� 
ctxt%� o      ����  0 incomingobject incomingObject��  %� %���%� L   E I%�%� c   E H%�%�%� o   E F����  0 incomingobject incomingObject%� m   F G��
�� 
TEXT��  %� %�%�%� =  L Q%�%�%� n   L O%�%�%� m   M O��
�� 
pcls%� o   L M����  0 incomingobject incomingObject%� m   O P��
�� 
utxt%� %���%� k   T c%�%� %�%�%� r   T ^%�%�%� l  T W%�����%� c   T W%�%�%� o   T U����  0 incomingobject incomingObject%� m   U V��
�� 
TEXT��  ��  %� K      %�%� ��%���
�� 
ctxt%� o      ����  0 incomingobject incomingObject��  %� %���%� L   _ c%�%� c   _ b%�%�%� o   _ `����  0 incomingobject incomingObject%� m   ` a��
�� 
TEXT��  ��  %b k   f�%�%� %�%�%� l  f f��%�%���  %� , & LIST, RECORD, styled text, or unknown   %� �%�%� L   L I S T ,   R E C O R D ,   s t y l e d   t e x t ,   o r   u n k n o w n%� %�%�%� Q   f~%�%�%�%� k   i �%�%� %�%�%� Q   i �%�%�%�%� k   l s%�%� %�%�%� r   l q%�%�%� m   l m%�%� �%�%� ` s o m e _ U U I D _ V a l u e _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 D%� n      %�%�%� o   n p���� j0 3some_uuid_property_54f827c7379e4073b5a216bb9cde575d 3some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D%� m   m n%�%� �%�%�  X X X X%� %�%�%� l  r r��������  ��  ��  %� %�%�%� l  r r��%�%���  %� V P GENERATE the error message for a known 'object' (here, a string) so we can get    %� �%�%� �   G E N E R A T E   t h e   e r r o r   m e s s a g e   f o r   a   k n o w n   ' o b j e c t '   ( h e r e ,   a   s t r i n g )   s o   w e   c a n   g e t  %� %��%� l  r r�%�%��  %� 7 1 the 'lead' and 'trail' part of the error message   %� �%�%� b   t h e   ' l e a d '   a n d   ' t r a i l '   p a r t   o f   t h e   e r r o r   m e s s a g e�  %� R      �%�%�
� .ascrerr ****      � ****%� o      �� 0 errmsg errMsg%� �%��
� 
errn%� o      �� 0 errnum errNum�  %� k   { �%�%� %�%�%� r   { �%�%�%� J   { �%�%� %�%�%� n  { ~%�%�%� 1   | ~�
� 
txdl%� 1   { |�
� 
ascr%� %��%� J   ~ �%�%� %��%� m   ~ %�%� �%�%�  " X X X X "�  �  %� J      %�%� %�%�%� o      �� 0 	olddelims 	oldDelims%� %��%� n     %�%�%� 1   � ��
� 
txdl%� 1   � ��
� 
ascr�  %� %�%�%� r   � �%�%�%� n   � �%�%�%� 2  � ��
� 
citm%� o   � ��� 0 errmsg errMsg%� J      %�%� %�%�%� o      �� 0 
errmsglead 
errMsgLead%� %��%� o      �� 0 errmsgtrail errMsgTrail�  %� %��%� r   � �%�%�%� o   � ��� 0 	olddelims 	oldDelims%� n     & &&  1   � ��
� 
txdl& 1   � ��
� 
ascr�  %� &&& l  � �����  �  �  & &&& l  � ��&&�  & = 7 now, generate error message for the SPECIFIED object:    & �&& n   n o w ,   g e n e r a t e   e r r o r   m e s s a g e   f o r   t h e   S P E C I F I E D   o b j e c t :  & &	&
&	 r   � �&&& m   � �&& �&& ` s o m e _ U U I D _ V a l u e _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 D& n      &&& o   � ��� j0 3some_uuid_property_54f827c7379e4073b5a216bb9cde575d 3some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D& o   � ���  0 incomingobject incomingObject&
 &&& l  � �����  �  �  & &�& l  � �����  �  �  �  %� R      �&�
� .ascrerr ****      � ****& o      �� 0 errmsg errMsg�  %� Z   �~&&�&& F   � �&&& C   � �&&& o   � ��� 0 errmsg errMsg& m   � �&& �&& � S y s t e m   E v e n t s   g o t   a n   e r r o r :   C a n  t   m a k e   s o m e _ U U I D _ P r o p e r t y _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 D   o f  & D   � �&&& o   � ��� 0 errmsg errMsg& m   � �& &  �&!&! ( i n t o   t y p e   s p e c i f i e r .& k   �&"&" &#&$&# r   � �&%&&&% m   � �&'&' �&(&( � S y s t e m   E v e n t s   g o t   a n   e r r o r :   C a n  t   m a k e   s o m e _ U U I D _ P r o p e r t y _ 5 4 F 8 2 7 C 7 3 7 9 E 4 0 7 3 B 5 A 2 1 6 B B 9 C D E 5 7 5 D   o f  && o      �� 0 
errmsglead 
errMsgLead&$ &)&*&) r   � �&+&,&+ m   � �&-&- �&.&. *   i n t o   t y p e   s p e c i f i e r .&, o      �� 0 errmsgtrail errMsgTrail&* &/&0&/ l  � �����  �  �  &0 &1&2&1 r   � �&3&4&3 J   � �&5&5 &6&7&6 n  � �&8&9&8 1   � ��
� 
txdl&9 1   � ��
� 
ascr&7 &:�&: o   � ��� 0 
errmsglead 
errMsgLead�  &4 J      &;&; &<&=&< o      �� 0 od  &= &>�&> n     &?&@&? 1   � ��
� 
txdl&@ 1   � ��
� 
ascr�  &2 &A&B&A l  � �����  �  �  &B &C&D&C r   � �&E&F&E n   � �&G&H&G 4   � ��&I
� 
citm&I m   � ��� &H o   � ��� 0 errmsg errMsg&F o      �� 0 objectstring objectString&D &J&K&J r   �&L&M&L o   � ��� 0 errmsgtrail errMsgTrail&M n     &N&O&N 1   �
� 
txdl&O 1   � �~
�~ 
ascr&K &P&Q&P l �}�|�{�}  �|  �{  &Q &R&S&R r  
&T&U&T n  &V&W&V 4  �z&X
�z 
citm&X m  �y�y &W o  �x�x 0 objectstring objectString&U o      �w�w 0 objectstring objectString&S &Y&Z&Y r  &[&\&[ o  �v�v 0 od  &\ n     &]&^&] 1  �u
�u 
txdl&^ 1  �t
�t 
ascr&Z &_&`&_ l �s�r�q�s  �r  �q  &` &a&b&a l �p�o�n�p  �o  �n  &b &c�m&c l �l�k�j�l  �k  �j  �m  �  & k  ~&d&d &e&f&e l �i&g&h�i  &g  tell me to log errMsg   &h �&i&i * t e l l   m e   t o   l o g   e r r M s g&f &j&k&j r  &l&m&l o  �h�h 0 errmsg errMsg&m o      �g�g 0 objectstring objectString&k &n&o&n l �f�e�d�f  �e  �d  &o &p&q&p Z  G&r&s�c�b&r E  &t&u&t o  �a�a 0 objectstring objectString&u o  �`�` 0 
errmsglead 
errMsgLead&s k  C&v&v &w&x&w r  6&y&z&y J  %&{&{ &|&}&| n "&~&&~ 1   "�_
�_ 
txdl& 1   �^
�^ 
ascr&} &��]&� o  "#�\�\ 0 
errmsglead 
errMsgLead�]  &z J      &�&� &�&�&� o      �[�[ 0 od  &� &��Z&� n     &�&�&� 1  24�Y
�Y 
txdl&� 1  12�X
�X 
ascr�Z  &x &�&�&� r  7=&�&�&� n  7;&�&�&� 4  8;�W&�
�W 
citm&� m  9:�V�V &� o  78�U�U 0 objectstring objectString&� o      �T�T 0 objectstring objectString&� &��S&� r  >C&�&�&� o  >?�R�R 0 od  &� n     &�&�&� 1  @B�Q
�Q 
txdl&� 1  ?@�P
�P 
ascr�S  �c  �b  &q &�&�&� l HH�O�N�M�O  �N  �M  &� &�&�&� Z  H|&�&��L�K&� E  HK&�&�&� o  HI�J�J 0 objectstring objectString&� o  IJ�I�I 0 errmsgtrail errMsgTrail&� k  Nx&�&� &�&�&� r  Ne&�&�&� J  NT&�&� &�&�&� n NQ&�&�&� 1  OQ�H
�H 
txdl&� 1  NO�G
�G 
ascr&� &��F&� o  QR�E�E 0 errmsgtrail errMsgTrail�F  &� J      &�&� &�&�&� o      �D�D 0 od  &� &��C&� n     &�&�&� 1  ac�B
�B 
txdl&� 1  `a�A
�A 
ascr�C  &� &�&�&� r  fk&�&�&� o  fg�@�@ 0 errmsgtrail errMsgTrail&� n     &�&�&� 1  hj�?
�? 
txdl&� 1  gh�>
�> 
ascr&� &�&�&� r  lr&�&�&� n  lp&�&�&� 4  mp�=&�
�= 
citm&� m  no�<�< &� o  lm�;�; 0 objectstring objectString&� o      �:�: 0 objectstring objectString&� &��9&� r  sx&�&�&� o  st�8�8 0 od  &� n     &�&�&� 1  uw�7
�7 
txdl&� 1  tu�6
�6 
ascr�9  �L  �K  &� &�&�&� l }}�5�4�3�5  �4  �3  &� &��2&� l }}�1&�&��1  &� O Iset {text:objectString} to (objectString as string) -- what does THIS do?   &� �&�&� � s e t   { t e x t : o b j e c t S t r i n g }   t o   ( o b j e c t S t r i n g   a s   s t r i n g )   - -   w h a t   d o e s   T H I S   d o ?�2  %� &�&�&� l �0�/�.�0  �/  �.  &� &��-&� L  �&�&� o  ��,�, 0 objectstring objectString�-  ��  %Q &�&�&� l     �+�*�)�+  �*  �)  &� &�&�&� l     �(�'�&�(  �'  �&  &� &�&�&� i   � �&�&�&� I      �%&��$�% 0 gettextbefore getTextBefore&� &�&�&� o      �#�# 0 
sourcetext 
sourceTEXT&� &��"&� o      �!�! 0 stophere stopHere�"  �$  &� k     Q&�&� &�&�&� l     � &�&��   &�   version 1.1   &� �&�&�    v e r s i o n   1 . 1&� &�&�&� l     ����  �  �  &� &��&� Q     Q&�&�&�&� k    A&�&� &�&�&� r    &�&�&� J    	&�&� &�&�&� n   &�&�&� 1    �
� 
txdl&� 1    �
� 
ascr&� &��&� o    �� 0 stophere stopHere�  &� J      &�&� &�&�&� o      �� 0 	olddelims 	oldDelims&� &��&� n     &�&�&� 1    �
� 
txdl&� 1    �
� 
ascr�  &� &�&�&� Z    8&�&��&�&� =   $&�&�&� l   "&���&� I   "�&��
� .corecnte****       ****&� n    &�&�&� 2   �
� 
citm&� o    �� 0 
sourcetext 
sourceTEXT�  �  �  &� m   " #�� &� k   ' /&�&� &�&�&� r   ' ,&�' &� o   ' (�� 0 	olddelims 	oldDelims'  n     ''' 1   ) +�

�
 
txdl' 1   ( )�	
�	 
ascr&� '�' L   - /'' m   - .'' �''  �  �  &� r   2 8''' n   2 6'	'
'	 4   3 6�'
� 
citm' m   4 5�� '
 o   2 3�� 0 
sourcetext 
sourceTEXT' l     '��' o      �� 0 finalresult finalResult�  �  &� ''' r   9 >''' o   9 :�� 0 	olddelims 	oldDelims' n     ''' 1   ; =� 
�  
txdl' 1   : ;��
�� 
ascr' '��' L   ? A'' o   ? @���� 0 finalresult finalResult��  &� R      ��''
�� .ascrerr ****      � ****' o      ���� 0 errmsg errMsg' ��'��
�� 
errn' o      ���� 0 errnum errNum��  &� k   I Q'' ''' r   I N''' o   I J���� 0 	olddelims 	oldDelims' n     ''' 1   K M��
�� 
txdl' 1   J K��
�� 
ascr' '��' l  O Q' '!'"'  L   O Q'#'# m   O P'$'$ �'%'%  '! 3 - return nothing if the stop text is not found   '" �'&'& Z   r e t u r n   n o t h i n g   i f   t h e   s t o p   t e x t   i s   n o t   f o u n d��  �  &� '''('' l     ��������  ��  ��  '( ')'*') l     ��������  ��  ��  '* '+','+ i   � �'-'.'- I      ��'/����  0 gettextbetween getTextBetween'/ '0��'0 o      ���� 	0 prefs  ��  ��  '. k     �'1'1 '2'3'2 l     ��'4'5��  '4   version 1.6   '5 �'6'6    v e r s i o n   1 . 6'3 '7'8'7 l     ��������  ��  ��  '8 '9':'9 r     ';'<'; K     '='= ��'>'?�� 0 textitemnum textItemNum'> m    ���� '? ��'@����  0 includemarkers includeMarkers'@ m    ��
�� boovfals��  '< o      ���� 0 defaultprefs defaultPrefs': 'A'B'A l  	 	��������  ��  ��  'B 'C'D'C Z   	 ''E'F����'E F   	 'G'H'G l  	 'I����'I >  	 'J'K'J n   	 'L'M'L m   
 ��
�� 
pcls'M o   	 
���� 	0 prefs  'K m    ��
�� 
list��  ��  'H l   'N����'N >   'O'P'O c    'Q'R'Q l   'S����'S n    'T'U'T m    ��
�� 
pcls'U o    ���� 	0 prefs  ��  ��  'R m    ��
�� 
TEXT'P m    'V'V �'W'W  r e c o r d��  ��  'F R    #��'X'Y
�� .ascrerr ****      � ****'X m   ! "'Z'Z �'['[ g e t T e x t B e t w e e n   F A I L E D :   p a r a m e t e r   s h o u l d   b e   a   r e c o r d   o r   l i s t .   I f   i t   i s   m u l t i p l e   i t e m s ,   j u s t   m a k e   i t   i n t o   a   l i s t   t o   u p g r a d e   t o   t h i s   h a n d l e r .'Y ��'\��
�� 
errn'\ m     ���� ��  ��  ��  'D ']'^'] Z   ( `'_'`����'_ =  ( -'a'b'a n   ( +'c'd'c m   ) +��
�� 
pcls'd o   ( )���� 	0 prefs  'b m   + ,��
�� 
list'` k   0 \'e'e 'f'g'f Z   0 F'h'i����'h =  0 7'j'k'j l  0 5'l����'l I  0 5��'m��
�� .corecnte****       ****'m o   0 1�� 	0 prefs  ��  ��  ��  'k m   5 6�� 'i r   : B'n'o'n n   : >'p'q'p 4   ; >�'r
� 
cobj'r m   < =�� 'q o   : ;�� 	0 prefs  'o n      's't's o   ? A�� 0 textitemnum textItemNum't o   > ?�� 0 defaultprefs defaultPrefs��  ��  'g 'u�'u r   G \'v'w'v K   G Z'x'x �'y'z� 0 
sourcetext 
sourceTEXT'y n   H L'{'|'{ 4   I L�'}
� 
cobj'} m   J K�� '| o   H I�� 	0 prefs  'z �'~'� 0 
beforetext 
beforeText'~ n   M Q'�'�'� 4   N Q�'�
� 
cobj'� m   O P�� '� o   M N�� 	0 prefs  ' �'��� 0 	aftertext 	afterText'� n   R V'�'�'� 4   S V�'�
� 
cobj'� m   T U�� '� o   R S�� 	0 prefs  �  'w o      �� 	0 prefs  �  ��  ��  '^ '�'�'� l  a f'�'�'�'� r   a f'�'�'� b   a d'�'�'� o   a b�� 	0 prefs  '� o   b c�� 0 defaultprefs defaultPrefs'� o      �� 	0 prefs  '� , & add on default preferences, if needed   '� �'�'� L   a d d   o n   d e f a u l t   p r e f e r e n c e s ,   i f   n e e d e d'� '�'�'� r   g l'�'�'� n   g j'�'�'� o   h j�� 0 
sourcetext 
sourceTEXT'� o   g h�� 	0 prefs  '� o      �� 0 
sourcetext 
sourceTEXT'� '�'�'� r   m r'�'�'� n   m p'�'�'� o   n p�� 0 
beforetext 
beforeText'� o   m n�� 	0 prefs  '� o      �� 0 
beforetext 
beforeText'� '�'�'� r   s x'�'�'� n   s v'�'�'� o   t v�� 0 	aftertext 	afterText'� o   s t�� 	0 prefs  '� o      �� 0 	aftertext 	afterText'� '�'�'� r   y ~'�'�'� n   y |'�'�'� o   z |�� 0 textitemnum textItemNum'� o   y z�� 	0 prefs  '� o      �� 0 textitemnum textItemNum'� '�'�'� r    �'�'�'� n    �'�'�'� o   � ���  0 includemarkers includeMarkers'� o    ��� 	0 prefs  '� o      ��  0 includemarkers includeMarkers'� '�'�'� l  � �����  �  �  '� '�'�'� Q   � �'�'�'�'� k   � �'�'� '�'�'� r   � �'�'�'� J   � �'�'� '�'�'� n  � �'�'�'� 1   � ��
� 
txdl'� 1   � ��
� 
ascr'� '��'� o   � ��� 0 
beforetext 
beforeText�  '� J      '�'� '�'�'� o      �� 0 	olddelims 	oldDelims'� '��'� n     '�'�'� 1   � ��
� 
txdl'� 1   � ��
� 
ascr�  '� '�'�'� r   � �'�'�'� n   � �'�'�'� 4   � ��'�
� 
citm'� o   � ��� 0 textitemnum textItemNum'� o   � ��� 0 
sourcetext 
sourceTEXT'� l     '���'� o      �� 0 prefixremoved prefixRemoved�  �  '� '�'�'� r   � �'�'�'� o   � ��� 0 	aftertext 	afterText'� n     '�'�'� 1   � ��
� 
txdl'� 1   � ��
� 
ascr'� '�'�'� r   � �'�'�'� n   � �'�'�'� 4   � ��'�
� 
citm'� m   � ��� '� o   � ��� 0 prefixremoved prefixRemoved'� l     '���'� o      �~�~ 0 finalresult finalResult�  �  '� '�'�'� r   � �'�'�'� o   � ��}�} 0 	olddelims 	oldDelims'� n     '�'�'� 1   � ��|
�| 
txdl'� 1   � ��{
�{ 
ascr'� '�'�'� l  � ��z�y�x�z  �y  �x  '� '�'�'� Z  � �'�'��w�v'� o   � ��u�u  0 includemarkers includeMarkers'� r   � �'�'�'� b   � �'�'�'� b   � �'�'�'� o   � ��t�t 0 
beforetext 
beforeText'� o   � ��s�s 0 finalresult finalResult'� o   � ��r�r 0 	aftertext 	afterText'� o      �q�q 0 finalresult finalResult�w  �v  '� '��p'� l  � ��o�n�m�o  �n  �m  �p  '� R      �l'�'�
�l .ascrerr ****      � ****'� o      �k�k 0 errmsg errMsg'� �j'��i
�j 
errn'� o      �h�h 0 errnum errNum�i  '� k   � �'�'� '�'�'� r   � �'�'�'� o   � ��g�g 0 	olddelims 	oldDelims'� n     '�'�'� 1   � ��f
�f 
txdl'� 1   � ��e
�e 
ascr'� '�'�'� l  � ��d'�'��d  '� > 8 	tell me to log "Error in getTextBetween() : " & errMsg   '� �'�'� p   	 t e l l   m e   t o   l o g   " E r r o r   i n   g e t T e x t B e t w e e n ( )   :   "   &   e r r M s g'� '��c'� l  � �( (((  r   � �((( m   � �(( �((  ( l     (�b�a( o      �`�` 0 finalresult finalResult�b  �a  ( : 4 return nothing if the surrounding text is not found   ( �(( h   r e t u r n   n o t h i n g   i f   t h e   s u r r o u n d i n g   t e x t   i s   n o t   f o u n d�c  '� (	(
(	 l  � ��_�^�]�_  �^  �]  (
 ((( l  � ��\�[�Z�\  �[  �Z  ( ((( L   � �(( o   � ��Y�Y 0 finalresult finalResult( (�X( l  � ��W�V�U�W  �V  �U  �X  ', ((( l     �T�S�R�T  �S  �R  ( ((( l     �Q�P�O�Q  �P  �O  ( ((( i   � �((( I      �N(�M�N 0 
parsechars 
parseChars( (�L( o      �K�K 	0 prefs  �L  �M  ( k     �(( ((( l     �J((�J  (   version 1.3   ( �( (     v e r s i o n   1 . 3( (!("(! l     �I�H�G�I  �H  �G  (" (#($(# r     (%(&(% K     ('(' �F((�E�F 0 considercase considerCase(( m    �D
�D boovtrue�E  (& o      �C�C 0 defaultprefs defaultPrefs($ ()(*() l   �B�A�@�B  �A  �@  (* (+(,(+ l   �?�>�=�?  �>  �=  (, (-(.(- Z    [(/(0(1�<(/ =   (2(3(2 n    
(4(5(4 m    
�;
�; 
pcls(5 o    �:�: 	0 prefs  (3 m   
 �9
�9 
list(0 k    ?(6(6 (7(8(7 Z    =(9(:�8(;(9 ?   (<(=(< l   (>�7�6(> I   �5(?�4
�5 .corecnte****       ****(? o    �3�3 	0 prefs  �4  �7  �6  (= m    �2�2 (: k    ,(@(@ (A(B(A l   �1(C(D�1  (C - ' get any parameters after the initial 3   (D �(E(E N   g e t   a n y   p a r a m e t e r s   a f t e r   t h e   i n i t i a l   3(B (F�0(F r    ,(G(H(G K    *(I(I �/(J(K�/ 0 
sourcetext 
sourceTEXT(J n    (L(M(L 4    �.(N
�. 
cobj(N m    �-�- (M o    �,�, 	0 prefs  (K �+(O(P�+ 0 parsestring parseString(O n    #(Q(R(Q 4     #�*(S
�* 
cobj(S m   ! "�)�) (R o     �(�( 	0 prefs  (P �'(T�&�' 0 considercase considerCase(T n   $ ((U(V(U 4   % (�%(W
�% 
cobj(W m   & '�$�$ (V o   $ %�#�# 	0 prefs  �&  (H o      �"�" 	0 prefs  �0  �8  (; r   / =(X(Y(X K   / ;(Z(Z �!([(\�! 0 
sourcetext 
sourceTEXT([ n   0 4(](^(] 4   1 4� (_
�  
cobj(_ m   2 3�� (^ o   0 1�� 	0 prefs  (\ �(`�� 0 parsestring parseString(` n   5 9(a(b(a 4   6 9�(c
� 
cobj(c m   7 8�� (b o   5 6�� 	0 prefs  �  (Y o      �� 	0 prefs  (8 (d�(d l  > >����  �  �  �  (1 (e(f(e >  B L(g(h(g n   B E(i(j(i m   C E�
� 
pcls(j o   B C�� 	0 prefs  (h l  E K(k��(k n   E K(l(m(l m   I K�
� 
pcls(m K   E I(n(n �(o�� 0 somekey someKey(o m   F G�� �  �  �  (f (p�(p k   O W(q(q (r(s(r l  O O�
(t(u�
  (t x r Test by matching class to something that IS a record to avoid FileMaker namespace conflict with the term "record"   (u �(v(v �   T e s t   b y   m a t c h i n g   c l a s s   t o   s o m e t h i n g   t h a t   I S   a   r e c o r d   t o   a v o i d   F i l e M a k e r   n a m e s p a c e   c o n f l i c t   w i t h   t h e   t e r m   " r e c o r d "(s (w(x(w l  O O�	���	  �  �  (x (y(z(y R   O U�({(|
� .ascrerr ****      � ****({ m   S T(}(} �(~(~> T h e   p a r a m e t e r   f o r   ' p a r s e C h a r s ( ) '   s h o u l d   b e   a   r e c o r d   o r   a t   l e a s t   a   l i s t .   W r a p   t h e   p a r a m e t e r ( s )   i n   c u r l y   b r a c k e t s   f o r   e a s y   u p g r a d e   t o   ' p a r s e C h a r s ( )   v e r s i o n   1 . 3 .  (| �(�
� 
errn( m   Q R�� �  (z (��(� l  V V�� ���  �   ��  �  �  �<  (. (�(�(� l  \ \��������  ��  ��  (� (�(�(� l  \ \��������  ��  ��  (� (�(�(� r   \ a(�(�(� b   \ _(�(�(� o   \ ]���� 	0 prefs  (� o   ] ^���� 0 defaultprefs defaultPrefs(� o      ���� 	0 prefs  (� (�(�(� l  b b��������  ��  ��  (� (�(�(� l  b b��������  ��  ��  (� (�(�(� r   b g(�(�(� n   b e(�(�(� o   c e���� 0 
sourcetext 
sourceTEXT(� o   b c���� 	0 prefs  (� o      ���� 0 
sourcetext 
sourceTEXT(� (�(�(� r   h m(�(�(� n   h k(�(�(� o   i k���� 0 parsestring parseString(� o   h i���� 	0 prefs  (� o      ���� 0 parsestring parseString(� (�(�(� r   n s(�(�(� n   n q(�(�(� o   o q���� 0 considercase considerCase(� o   n o���� 	0 prefs  (� o      ���� 0 considercase considerCase(� (�(�(� l  t t��������  ��  ��  (� (�(�(� l  t t��������  ��  ��  (� (�(�(� r   t y(�(�(� n  t w(�(�(� 1   u w��
�� 
txdl(� 1   t u��
�� 
ascr(� o      ���� 0 	olddelims 	oldDelims(� (���(� Q   z �(�(�(�(� k   } �(�(� (�(�(� r   } �(�(�(� l  } �(�����(� J   } �(�(� (���(� c   } �(�(�(� o   } ~���� 0 parsestring parseString(� m   ~ ��
�� 
TEXT��  ��  ��  (� n     (�(�(� 1   � ���
�� 
txdl(� 1   � ���
�� 
ascr(� (�(�(� l  � ���������  ��  ��  (� (�(�(� Z   � �(�(���(�(� o   � ����� 0 considercase considerCase(� P   � �(�(���(� r   � �(�(�(� n   � �(�(�(� 2   � ���
�� 
citm(� o   � ����� 0 
sourcetext 
sourceTEXT(� l     (�����(� o      ���� 0 
parsedlist 
parsedList��  ��  (� ����
�� conscase��  ��  ��  (� P   � �(���(�(� r   � �(�(�(� n   � �(�(�(� 2   � ���
�� 
citm(� o   � ����� 0 
sourcetext 
sourceTEXT(� l     (�����(� o      ���� 0 
parsedlist 
parsedList��  ��  ��  (� ����
�� conscase��  (� (�(�(� l  � �������  �  �  (� (�(�(� r   � �(�(�(� o   � ��� 0 	olddelims 	oldDelims(� n     (�(�(� 1   � ��
� 
txdl(� 1   � ��
� 
ascr(� (��(� L   � �(�(� o   � ��� 0 
parsedlist 
parsedList�  (� R      �(�(�
� .ascrerr ****      � ****(� o      �� 0 errmsg errMsg(� �(��
� 
errn(� o      �� 0 errnum errNum�  (� k   � �(�(� (�(�(� Q   � �(�(��(� r   � �(�(�(� o   � ��� 0 	olddelims 	oldDelims(� n     (�(�(� 1   � ��
� 
txdl(� 1   � ��
� 
ascr(� R      ���
� .ascrerr ****      � ****�  �  �  (� (��(� R   � ��(�(�
� .ascrerr ****      � ****(� b   � �(�(�(� m   � �(�(� �(�(� : E R R O R :   p a r s e C h a r s ( )   h a n d l e r :  (� o   � ��� 0 errmsg errMsg(� �(��
� 
errn(� o   � ��� 0 errnum errNum�  �  ��  ( (�(�(� l     ����  �  �  (� (�(�(� l     ����  �  �  (� (�(�(� i   � �(�(�(� I      �(��� 0 replacesimple replaceSimple(� (��(� o      �� 	0 prefs  �  �  (� k     �(�(� (�(�(� l     �(�(��  (�   version 1.4   (� �(�(�    v e r s i o n   1 . 4(� (�(�(� l     ����  �  �  (� ) ))  r     ))) K     )) �)�� 0 considercase considerCase) m    �
� boovtrue�  ) o      �� 0 defaultprefs defaultPrefs) ))) l   ����  �  �  ) ))	) Z    e)
))�)
 =   ))) n    
))) m    
�
� 
pcls) o    �� 	0 prefs  ) m   
 �
� 
list) k    I)) ))) Z    G))�)) ?   ))) l   )��) I   �)�
� .corecnte****       ****) o    �� 	0 prefs  �  �  �  ) m    �� ) k    1)) ))) l   �))�  ) - ' get any parameters after the initial 3   ) �) )  N   g e t   a n y   p a r a m e t e r s   a f t e r   t h e   i n i t i a l   3) )!�)! r    1)")#)" K    /)$)$ �)%)&� 0 
sourcetext 
sourceTEXT)% n    )')()' 4    �))
� 
cobj)) m    �� )( o    �� 	0 prefs  )& �)*)+� 0 oldchars oldChars)* n    #),)-), 4     #�).
� 
cobj). m   ! "�~�~ )- o     �}�} 	0 prefs  )+ �|)/)0�| 0 newchars newChars)/ n   $ ()1)2)1 4   % (�{)3
�{ 
cobj)3 m   & '�z�z )2 o   $ %�y�y 	0 prefs  )0 �x)4�w�x 0 considercase considerCase)4 n   ) -)5)6)5 4   * -�v)7
�v 
cobj)7 m   + ,�u�u )6 o   ) *�t�t 	0 prefs  �w  )# o      �s�s 	0 prefs  �  �  ) r   4 G)8)9)8 K   4 E):): �r);)<�r 0 
sourcetext 
sourceTEXT); n   5 9)=)>)= 4   6 9�q)?
�q 
cobj)? m   7 8�p�p )> o   5 6�o�o 	0 prefs  )< �n)@)A�n 0 oldchars oldChars)@ n   : >)B)C)B 4   ; >�m)D
�m 
cobj)D m   < =�l�l )C o   : ;�k�k 	0 prefs  )A �j)E�i�j 0 newchars newChars)E n   ? C)F)G)F 4   @ C�h)H
�h 
cobj)H m   A B�g�g )G o   ? @�f�f 	0 prefs  �i  )9 o      �e�e 	0 prefs  ) )I�d)I l  H H�c�b�a�c  �b  �a  �d  ) )J)K)J >  L V)L)M)L n   L O)N)O)N m   M O�`
�` 
pcls)O o   L M�_�_ 	0 prefs  )M l  O U)P�^�])P n   O U)Q)R)Q m   S U�\
�\ 
pcls)R K   O S)S)S �[)T�Z�[ 0 somekey someKey)T m   P Q�Y�Y �Z  �^  �]  )K )U�X)U k   Y a)V)V )W)X)W l  Y Y�W)Y)Z�W  )Y x r Test by matching class to something that IS a record to avoid FileMaker namespace conflict with the term "record"   )Z �)[)[ �   T e s t   b y   m a t c h i n g   c l a s s   t o   s o m e t h i n g   t h a t   I S   a   r e c o r d   t o   a v o i d   F i l e M a k e r   n a m e s p a c e   c o n f l i c t   w i t h   t h e   t e r m   " r e c o r d ")X )\)])\ l  Y Y�V�U�T�V  �U  �T  )] )^)_)^ R   Y _�S)`)a
�S .ascrerr ****      � ****)` m   ] ^)b)b �)c)cJ T h e   p a r a m e t e r   f o r   ' r e p l a c e S i m p l e ( ) '   s h o u l d   b e   a   r e c o r d   o r   a t   l e a s t   a   l i s t .   W r a p   t h e   p a r a m e t e r ( s )   i n   c u r l y   b r a c k e t s   f o r   e a s y   u p g r a d e   t o   ' r e p l a c e S i m p l e ( )   v e r s i o n   1 . 3 .  )a �R)d�Q
�R 
errn)d m   [ \�P�P �Q  )_ )e�O)e l  ` `�N�M�L�N  �M  �L  �O  �X  �  )	 )f)g)f l  f f�K�J�I�K  �J  �I  )g )h)i)h l  f f�H�G�F�H  �G  �F  )i )j)k)j r   f k)l)m)l b   f i)n)o)n o   f g�E�E 	0 prefs  )o o   g h�D�D 0 defaultprefs defaultPrefs)m o      �C�C 	0 prefs  )k )p)q)p l  l l�B�A�@�B  �A  �@  )q )r)s)r l  l l�?�>�=�?  �>  �=  )s )t)u)t r   l q)v)w)v n   l o)x)y)x o   m o�<�< 0 considercase considerCase)y o   l m�;�; 	0 prefs  )w o      �:�: 0 considercase considerCase)u )z){)z r   r w)|)})| n   r u)~))~ o   s u�9�9 0 
sourcetext 
sourceTEXT) o   r s�8�8 	0 prefs  )} o      �7�7 0 
sourcetext 
sourceTEXT){ )�)�)� r   x })�)�)� n   x {)�)�)� o   y {�6�6 0 oldchars oldChars)� o   x y�5�5 	0 prefs  )� o      �4�4 0 oldchars oldChars)� )�)�)� r   ~ �)�)�)� n   ~ �)�)�)� o    ��3�3 0 newchars newChars)� o   ~ �2�2 	0 prefs  )� o      �1�1 0 newchars newChars)� )�)�)� l  � ��0�/�.�0  �/  �.  )� )�)�)� r   � �)�)�)� c   � �)�)�)� o   � ��-�- 0 
sourcetext 
sourceTEXT)� m   � ��,
�, 
TEXT)� o      �+�+ 0 
sourcetext 
sourceTEXT)� )�)�)� l  � ��*�)�(�*  �)  �(  )� )�)�)� r   � �)�)�)� n  � �)�)�)� 1   � ��'
�' 
txdl)� 1   � ��&
�& 
ascr)� o      �%�% 0 	olddelims 	oldDelims)� )�)�)� r   � �)�)�)� l  � �)��$�#)� o   � ��"�" 0 oldchars oldChars�$  �#  )� n     )�)�)� 1   � ��!
�! 
txdl)� 1   � �� 
�  
ascr)� )�)�)� Z   � �)�)��)�)� o   � ��� 0 considercase considerCase)� P   � �)�)��)� k   � �)�)� )�)�)� r   � �)�)�)� n   � �)�)�)� 2   � ��
� 
citm)� o   � ��� 0 
sourcetext 
sourceTEXT)� l     )���)� o      �� 0 
parsedlist 
parsedList�  �  )� )�)�)� r   � �)�)�)� l  � �)���)� J   � �)�)� )��)� l  � �)���)� c   � �)�)�)� o   � ��� 0 newchars newChars)� m   � ��
� 
TEXT�  �  �  �  �  )� n     )�)�)� 1   � ��
� 
txdl)� 1   � ��
� 
ascr)� )��)� r   � �)�)�)� c   � �)�)�)� l  � �)���)� o   � ��� 0 
parsedlist 
parsedList�  �  )� m   � ��

�
 
TEXT)� l     )��	�)� o      �� 0 newtext newText�	  �  �  )� ��
� conscase�  �  �  )� P   � �)��)�)� k   � �)�)� )�)�)� r   � �)�)�)� n   � �)�)�)� 2   � ��
� 
citm)� o   � ��� 0 
sourcetext 
sourceTEXT)� l     )��� )� o      ���� 0 
parsedlist 
parsedList�  �   )� )�)�)� r   � �)�)�)� l  � �)�����)� J   � �)�)� )���)� l  � �)�����)� c   � �)�)�)� o   � ����� 0 newchars newChars)� m   � ���
�� 
TEXT��  ��  ��  ��  ��  )� n     )�)�)� 1   � ���
�� 
txdl)� 1   � ���
�� 
ascr)� )���)� r   � �)�)�)� c   � �)�)�)� l  � �)�����)� o   � ����� 0 
parsedlist 
parsedList��  ��  )� m   � ���
�� 
TEXT)� l     )�����)� o      ���� 0 newtext newText��  ��  ��  �  )� ����
�� conscase��  )� )�)�)� r   � �)�)�)� o   � ����� 0 	olddelims 	oldDelims)� n     )�)�)� 1   � ���
�� 
txdl)� 1   � ���
�� 
ascr)� )�)�)� L   � �)�)� o   � ����� 0 newtext newText)� )���)� l  � ���������  ��  ��  ��  (� )�)�)� l     ��������  ��  ��  )� )�)�)� l     ��������  ��  ��  )� )�)�)� i   � �)�)�)� I      ��)����� 0 unparsechars unParseChars)� )�)�)� o      ���� 0 thislist thisList)� )���)� o      ���� 0 newdelim newDelim��  ��  )� k     C)�)� )�)�)� l     ��)�)���  )�   version 1.2   )� �)�)�    v e r s i o n   1 . 2)� )�)�)� l     ��������  ��  ��  )� * **  r     *** n    *** 1    ��
�� 
txdl* 1     ��
�� 
ascr* o      ���� 0 	olddelims 	oldDelims* *��* Q    C***	* k   	 !*
*
 *** r   	 *** l  	 *����* J   	 ** *��* c   	 *** o   	 
���� 0 newdelim newDelim* m   
 ��
�� 
TEXT��  ��  ��  * n     *** 1    ��
�� 
txdl* 1    ��
�� 
ascr* *** r    *** c    *** o    ���� 0 thislist thisList* m    ��
�� 
TEXT* l     *����* o      ���� 0 unparsedtext unparsedText��  ��  * *** r    ** * o    ���� 0 	olddelims 	oldDelims*  n     *!*"*! 1    ��
�� 
txdl*" 1    ��
�� 
ascr* *#��*# L    !*$*$ o     ���� 0 unparsedtext unparsedText��  * R      �*%*&
� .ascrerr ****      � *****% o      �� 0 errmsg errMsg*& �*'�
� 
errn*' o      �� 0 errnum errNum�  *	 k   ) C*(*( *)***) Q   ) :*+*,�*+ r   , 1*-*.*- o   , -�� 0 	olddelims 	oldDelims*. n     */*0*/ 1   . 0�
� 
txdl*0 1   - .�
� 
ascr*, R      ���
� .ascrerr ****      � ****�  �  �  ** *1�*1 R   ; C�*2*3
� .ascrerr ****      � *****2 b   ? B*4*5*4 m   ? @*6*6 �*7*7 > E R R O R :   u n P a r s e C h a r s ( )   h a n d l e r :  *5 o   @ A�� 0 errmsg errMsg*3 �*8�
� 
errn*8 o   = >�� 0 errnum errNum�  �  ��  )� *9*:*9 l     ����  �  �  *: *;*<*; l     ����  �  �  *< *=*>*= i   �*?*@*? I      �*A��  0 versioncompare versionCompare*A *B�*B o      �� 	0 prefs  �  �  *@ k    *C*C *D*E*D l     ����  �  �  *E *F*G*F r     
*H*I*H K     *J*J �*K*L� 0 v1  *K m    �
� 
null*L �*M*N� 0 v2  *M m    �
� 
null*N �*O�� 	0 delim  *O m    *P*P �*Q*Q  .�  *I o      �� 0 defaultprefs defaultPrefs*G *R*S*R r    *T*U*T b    *V*W*V o    �� 	0 prefs  *W o    �� 0 defaultprefs defaultPrefs*U o      �� 	0 prefs  *S *X*Y*X l   ����  �  �  *Y *Z*[*Z r    **\*]*\ J    *^*^ *_*`*_ n   *a*b*a 1    �
� 
txdl*b 1    �
� 
ascr*` *c�*c n    *d*e*d o    �� 	0 delim  *e o    �� 	0 prefs  �  *] J      *f*f *g*h*g o      �� 0 od  *h *i�*i n     *j*k*j 1   & (�
� 
txdl*k 1   % &�
� 
ascr�  *[ *l*m*l r   + F*n*o*n J   + 7*p*p *q*r*q n   + 0*s*t*s 2   . 0�
� 
citm*t n   + .*u*v*u o   , .�� 0 v1  *v o   + ,�� 	0 prefs  *r *w�*w n   0 5*x*y*x 2   3 5�
� 
citm*y n   0 3*z*{*z o   1 3�� 0 v2  *{ o   0 1�� 	0 prefs  �  *o J      *|*| *}*~*} o      �� 0 v1_list  *~ *�* o      �� 0 v2_list  �  *m *�*�*� r   G L*�*�*� o   G H�� 0 od  *� n     *�*�*� 1   I K�
� 
txdl*� 1   H I�~
�~ 
ascr*� *�*�*� l  M M�}�|�{�}  �|  �{  *� *�*�*� r   M h*�*�*� J   M Y*�*� *�*�*� I  M R�z*��y
�z .corecnte****       *****� o   M N�x�x 0 v1_list  �y  *� *��w*� I  R W�v*��u
�v .corecnte****       *****� o   R S�t�t 0 v2_list  �u  �w  *� J      *�*� *�*�*� o      �s�s 0 v1_count  *� *��r*� o      �q�q 0 v2_count  �r  *� *�*�*� Z   i x*�*��p*�*� ?  i l*�*�*� o   i j�o�o 0 v1_count  *� o   j k�n�n 0 v2_count  *� r   o r*�*�*� o   o p�m�m 0 v1_count  *� o      �l�l 0 maxcount maxCount�p  *� r   u x*�*�*� o   u v�k�k 0 v2_count  *� o      �j�j 0 maxcount maxCount*� *�*�*� l  y y�i�h�g�i  �h  �g  *� *�*�*� r   y |*�*�*� m   y z*�*� �*�*�  *� o      �f�f 0 versionresult versionResult*� *�*�*� Y   } �*��e*�*��d*� k   � �*�*� *�*�*� Z  � �*�*��c�b*� >  � �*�*�*� o   � ��a�a 0 versionresult versionResult*� m   � �*�*� �*�*�  *�  S   � ��c  �b  *� *�*�*� Z   � �*�*��`*�*� B   � �*�*�*� o   � ��_�_ 0 i  *� o   � ��^�^ 0 v1_count  *� r   � �*�*�*� n   � �*�*�*� 4   � ��]*�
�] 
cobj*� o   � ��\�\ 0 i  *� o   � ��[�[ 0 v1_list  *� o      �Z�Z 0 v1_part  �`  *� r   � �*�*�*� m   � ��Y�Y  *� o      �X�X 0 v1_part  *� *�*�*� Z   � �*�*��W*�*� B   � �*�*�*� o   � ��V�V 0 i  *� o   � ��U�U 0 v2_count  *� r   � �*�*�*� n   � �*�*�*� 4   � ��T*�
�T 
cobj*� o   � ��S�S 0 i  *� o   � ��R�R 0 v2_list  *� o      �Q�Q 0 v2_part  �W  *� r   � �*�*�*� m   � ��P�P  *� o      �O�O 0 v2_part  *� *�*�*� l  � ��N�M�L�N  �M  �L  *� *�*�*� l  � ��K�J�I�K  �J  �I  *� *�*�*� Q   � �*�*�*�*� k   � �*�*� *�*�*� l  � ��H*�*��H  *� > 8log ("v1_part: " & v1_part & "   | v2_part: " & v2_part)   *� �*�*� p l o g   ( " v 1 _ p a r t :   "   &   v 1 _ p a r t   &   "       |   v 2 _ p a r t :   "   &   v 2 _ p a r t )*� *��G*� Z   � �*�*�*�*�*� ?  � �*�*�*� l  � �*��F�E*� c   � �*�*�*� o   � ��D�D 0 v1_part  *� m   � ��C
�C 
nmbr�F  �E  *� l  � �*��B�A*� c   � �*�*�*� o   � ��@�@ 0 v2_part  *� m   � ��?
�? 
nmbr�B  �A  *� r   � �*�*�*� m   � ��>�> *� o      �=�= 0 versionresult versionResult*� *�*�*� A  � �*�*�*� l  � �*��<�;*� c   � �*�*�*� o   � ��:�: 0 v1_part  *� m   � ��9
�9 
nmbr�<  �;  *� l  � �*��8�7*� c   � �*�*�*� o   � ��6�6 0 v2_part  *� m   � ��5
�5 
nmbr�8  �7  *� *��4*� r   � �*�*�*� m   � ��3�3��*� o      �2�2 0 versionresult versionResult�4  *� l  � ��1*�*��1  *� 1 + the two versions are the same, so continue   *� �+ +  V   t h e   t w o   v e r s i o n s   a r e   t h e   s a m e ,   s o   c o n t i n u e�G  *� R      �0�/�.
�0 .ascrerr ****      � ****�/  �.  *� r   � �+++ m   � �++ �++  ?+ o      �-�- 0 versionresult versionResult*� +++ l  � ��,�+�*�,  �+  �*  + +�)+ l  � ��(�'�&�(  �'  �&  �)  �e 0 i  *� m   � ��%�% *� o   � ��$�$ 0 maxcount maxCount�d  *� ++	+ l  � ��#�"�!�#  �"  �!  +	 +
++
 Z  �++� �+ =  � �+++ o   � ��� 0 versionresult versionResult+ m   � �++ �++  + r   � �+++ m   � ���  + o      �� 0 versionresult versionResult�   �  + +++ l ����  �  �  + +++ L  ++ o  �� 0 versionresult versionResult+ +�+ l ����  �  �  �  *> +�+ l     ����  �  �  �       A�+� (+++++ +!+"+#+$+%+&+'+(+)+*+++,+-+.+/+0+1+2+3+4+5+6+7+8+9+:+;+<+=+>+?+@+A+B+C+D+E+F+G+H+I+J+K+L+M+N+O+P+Q+R+S+T+U+V+W+X�  + ?����
�	��������� ��������������������������������������������������������������������������������������������������� 0 	debugmode 	DebugMode� 0 
scriptname 
ScriptName� &0 clickcommandposix clickCommandPosix�
 $0 encodecharforurl encodeCharForURL�	 $0 encodetextforurl encodeTextForURL� 0 
getfromfmp 
getFromFMP� 0 	sendtofmp 	sendToFMP� 40 displayfilemakerdatabase displayFileMakerDatabase� 20 ensurefilemakerdatabase ensureFileMakerDatabase� .0 openfilemakerdatabase openFileMakerDatabase� 0 sfr_dictget SFR_DictGet� 0 sfr_dictitem SFR_DictItem� 0 
sfr_escape 
SFR_Escape�  0 sfr_unescape SFR_Unescape�� 60 fmgui_managedb_field_edit fmGUI_ManageDb_Field_Edit�� :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_Select�� >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocus�� @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable�� 00 fmgui_managedb_gototab fmGUI_ManageDb_GoToTab�� >0 fmgui_managedb_gototab_fields fmGUI_ManageDb_GoToTab_Fields�� L0 $fmgui_managedb_gototab_relationships $fmGUI_ManageDb_GoToTab_Relationships�� >0 fmgui_managedb_gototab_tables fmGUI_ManageDb_GoToTab_Tables�� B0 fmgui_managedb_listoftablenames fmGUI_ManageDb_ListOfTableNames�� *0 fmgui_managedb_open fmGUI_ManageDb_Open�� *0 fmgui_managedb_save fmGUI_ManageDB_Save�� N0 %fmgui_managedb_table_listoffieldnames %fmGUI_ManageDb_Table_ListOfFieldNames�� >0 fmgui_managedb_tablelistfocus fmGUI_ManageDb_TableListFocus�� &0 fmgui_checkboxset fmGUI_CheckboxSet�� B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow�� 40 fmgui_pastefromclipboard fmGUI_PasteFromClipboard�� :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand��  0 fmgui_popupset fmGUI_PopupSet�� 00 fmgui_selectallandcopy fmGUI_SelectAllAndCopy�� (0 fmgui_textfieldset fmGUI_TextFieldSet�� (0 fmgui_appfrontmost fmGUI_AppFrontMost�� 00 fmgui_dataviewer_close fmGUI_DataViewer_Close�� .0 fmgui_inspector_close fmGUI_Inspector_Close�� 00 fmgui_inspector_ensure fmGUI_Inspector_Ensure�� 20 fmgui_modeensure_browse fmGUI_ModeEnsure_Browse�� .0 fmgui_modeensure_find fmGUI_ModeEnsure_Find�� 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout�� $0 fmgui_modeselect fmGUI_ModeSelect�� (0 fmgui_window_close fmGUI_Window_Close�� "0 windowwaituntil windowWaitUntil�� 20 windowwaituntil_frontis windowWaitUntil_FrontIS�� "0 indexoflistitem indexOfListItem�� 0 listcontains listContains�� $0 listuniquevalues listUniqueValues�� 0 sort  �� 0 
logconsole 
logConsole�� 0 loglevel logLEVEL�� 0 logmain logMAIN�� (0 systemnotification systemNotification�� 0 writetofile writeToFile�� 0 clickatcoords clickAtCoords�� *0 clickobjectbycoords clickObjectByCoords��  0 coercetostring coerceToString�� 0 gettextbefore getTextBefore��  0 gettextbetween getTextBetween�� 0 
parsechars 
parseChars�� 0 replacesimple replaceSimple�� 0 unparsechars unParseChars��  0 versioncompare versionCompare
� boovfals+ �+Y+Y � / U s e r s / e s h a g d a r / C o d e / a p p l e s c r i p t - f m - h e l p e r / v e n d o r / c l i c l i c k / c l i c l i c k+ �� @����+Z+[���� $0 encodecharforurl encodeCharForURL�� ��+\�� +\  ���� 0 	this_char  ��  +Z ������������ 0 	this_char  �� 0 	ascii_num 	ASCII_num�� 0 hex_list  �� 0 x  �� 0 y  +[ �� Z ^ b f j n r v z ~ � � � � � ����� ���
�� .sysoctonshor       TEXT�� 
�� 
cobj
�� 
TEXT�� L�j  E�O���������������a a vE�O�a �a "k/E�O�a �a #k/E�Oa �%�%a &+ � ���+]+^�� $0 encodetextforurl encodeTextForURL� �+_� +_  ���� 0 	this_text  � 0 encode_url_a encode_URL_A� 0 encode_url_b encode_URL_B�  +] 	���������� 0 	this_text  � 0 encode_url_a encode_URL_A� 0 encode_url_b encode_URL_B� 0 standard_characters  � 0 url_a_chars URL_A_chars� 0 url_b_chars URL_B_chars� 0 acceptable_characters  � 0 encoded_text  � 0 	this_char  +^ 	 � � ������
� 
kocl
� 
cobj
� .corecnte****       ****� $0 encodecharforurl encodeCharForURL
� 
TEXT� g�E�O�E�O�E�O�E�O�f  
��%E�Y hO�f  
��%E�Y hO�E�O .�[��l kh �� 
��%E�Y �*�k+ %�&E�[OY��O�+ �@��+`+a�� 0 
getfromfmp 
getFromFMP� �+b� +b  �� 	0 prefs  �  +` 
����������� 	0 prefs  � 0 fmtype fmType� 0 
astransfer 
asTransfer� 0 fmpname fmpName� 0 fmpactivename fmpActiveName� 0 begintellfm beginTellFM� 0 	endtellfm 	endTellFM� 0 	codetoget 	codeToGet� 0 
sendsource 
sendSource� 0 	inputdata 	inputData+a ���]ek���+c���������������� 0 fmtype fmType�  �  
� .earsffdralis        afdr
� 
pcap+c  
� 
dnam
� 
ret 
� .sysodsct****        scpt� � 
��,E�W 
X  �E�O�E�O�E�O)j � Y� *�k/�[�,\Z�>1�,E�UO��  �%�%�%E�Y %��  a �%E�Y �a   a �%E�Y hO�a %E�Y a E�Oa E�Oa �%a %E�O��%�%E�O�j E�O�+  ����+d+e�� 0 	sendtofmp 	sendToFMP� �+f� +f  �� 0 somedata someData�  +d ������������� 0 somedata someData� 0 fmtype fmType� 0 
astransfer 
asTransfer� 0 fmpname fmpName� 0 fmpactivename fmpActiveName� 0 begintellfm beginTellFM� 0 	endtellfm 	endTellFM� "0 somedatacleaned someDataCleaned� 0 	olddelims 	oldDelims� 0 	backslash  � 0 	codetoset 	codeToSet� 0 
sendsource 
sendSource+e #��~�}�|#�{>�z+c�yFPR�xX`fmv}��w�v�u�t�s�r������q� 0 fmtype fmType�~ 0 somedata someData�}  �|  
�{ .earsffdralis        afdr
�z 
pcap
�y 
dnam
�x 
ret 
�w 
TEXT
�v 
ascr
�u 
txdl�t \
�s .sysontocTEXT       shor
�r 
citm
�q .sysodsct****        scpt�* ��,E�O��,E�W 
X  �E�O�E�O�E�O)j � [� *�k/�[�,\Z�>1�,E�UO��  ��%�%�%E�Y '�a   a �%E�Y �a   a �%E�Y hO�a %E�Y a E�Oa E�O�a &E�O_ a ,E�Oa j E�O�_ a ,FO�a -E�O��%_ a ,FO�a &E�Oa _ a ,FO�a -E�O�a %_ a ,FO�a &E�O�_ a ,FOa �%a  %�%a !%E�O��%�%E�O�j "OP+! �p�o�n+g+h�m�p 40 displayfilemakerdatabase displayFileMakerDatabase�o �l+i�l +i  �k�k 	0 prefs  �n  +g �j�i�h�g�f�e�d�c�b�a�`�_�j 	0 prefs  �i 0 defaultprefs defaultPrefs�h 0 dbname dbName�g ,0 waitsavetotalseconds waitSaveTotalSeconds�f .0 waitcycledelayseconds waitCycleDelaySeconds�e 0 waitcyclemax waitCycleMax�d 0 fmappbundleid fmAppBundleID�c 0 doclist docList�b 0 errmsg errMsg�a 0 errnum errNum�` 0 onedoc oneDoc�_ 0 docname docName+h 0�^.�]�\�[�Z�YG�X�W�V�U�T�Sx|��R��Q�P�O�N+j�M�L��K�J�I�H�G�F�E�D�C�B�A��@�?�>�=�<>]_�^ 0 	fmapptype 	fmAppType�] .0 waitcycledelayseconds waitCycleDelaySeconds�\ �[ ,0 waitsavetotalseconds waitSaveTotalSeconds
�Z 
min �Y �X  0 coercetostring coerceToString�W 0 
logconsole 
logConsole�V 0 dbname dbName
�U 
dire
�T olierndD
�S .sysorondlong        doub
�R 
null
�Q 
capp
�P kfrmID  
�O 
docu�N 0 errmsg errMsg+j �;�:�9
�; 
errn�: 0 errnum errNum�9  �M��
�L 
errn
�K .sysodelanull��� ��� nmbr
�J 
kocl
�I 
cobj
�H .corecnte****       ****
�G 
pnam
�F 
cha 
�E 
rvse
�D 
TEXT
�C 
rslt
�B 
ctxt
�A 
psof
�@ 
psin�? 
�> .sysooffslong    ��� null
�= .ascrcmnt****      � ****
�< .miscmvisnull���    obj �m�������l� �E�O��%E�Ob    *b  �*�k+ %l+ 	Y hO��,E�O��,E�O��,E�O��!��l E�O��,�  �E�Y a E�O b�kha E�O -a Z*a �a 0 	*a -E�UO�a  Y hOPW X  �a   hY )a �la �%O�j [OY��O ߧ[a a l kh 
�a ,E�O�a  -a !,a "&O_ #[a $\[Z*a %a &a '_ #a ( )k\Zi2EO_ #a  -a !,a "&E�Ob    
�j *Y hOb    
�j *Y hOga + Q�a "&�a "&  Aa Z*a �a 0 *�j ,Ob    )b  a -)�k+ %l+ 	Y hOPUOeY hV[OY�3OfOPW X  )a �la .�%a /%�%OP+" �8j�7�6+k+l�5�8 20 ensurefilemakerdatabase ensureFileMakerDatabase�7 �4+m�4 +m  �3�3 	0 prefs  �6  +k �2�1�0�2 	0 prefs  �1 0 dbname dbName�0 0 isdisplayed isDisplayed+l �/�.��-�,��+��*��)���/ 0 dbname dbName�. 0 	fmapptype 	fmAppType�- �, 40 displayfilemakerdatabase displayFileMakerDatabase�+ 0 
logconsole 
logConsole�* .0 openfilemakerdatabase openFileMakerDatabase
�) .sysodelanull��� ��� nmbr�5 ���,E�O*����k+ E�Ob    *b  �%l+ Y hO� eY Zb    *b  �%l+ Y hO*�k+  5�j 
Ob    *b  �%l+ Y hO*����k+ E�O�Y f+# �(��'�&+n+o�%�( .0 openfilemakerdatabase openFileMakerDatabase�' �$+p�$ +p  �#�# 	0 prefs  �&  +n �"�!� ���" 	0 prefs  �! 0 	customurl 	customURL�  0 fmpurl fmpURL� 0 errmsg errMsg� 0 errnum errNum+o ��w �$�(�,�JM�\_o���+q� 0 dbname dbName� 0 serverip serverIP� 0 
maindbname 
mainDbName� <0 customlinkreceiverscriptname customLinkReceiverScriptName� $0 encodetextforurl encodeTextForURL� 0 replacesimple replaceSimple� 0 
logconsole 
logConsole
� .GURLGURLnull��� ��� TEXT� 0 errmsg errMsg+q ���
� 
errn� 0 errnum errNum�  �% � w��,%�%E�O� `��,%�%��,%�%��,%�%)�efm+ %E�O)���mvk+ E�O)��a mvk+ E�Ob    )b  a �%l+ Y hO�j OPUOeOPW X  �OPOP+$ ����+r+s�� 0 sfr_dictget SFR_DictGet� �+t� +t  ��� 0 somedict someDict� 0 itemname itemName�  +r �
�	������
 0 somedict someDict�	 0 itemname itemName� 0 	keystring 	keyString� 0 	endstring 	endString� 0 	olddelims 	oldDelims� 0 
keyremoved 
keyRemoved� 0 	itemvalue 	itemValue+s 
�������� ���� 0 
sfr_escape 
SFR_Escape
� 
ascr
� 
txdl
�  
citm�� 0 sfr_unescape SFR_Unescape� Y�*�k+ %�%E�O�E�O�� �Y 3��,E�O���,FO��l/E�O�� �Y ���,FO��k/E�O���,FO*�k+ 	OP+% ������+u+v���� 0 sfr_dictitem SFR_DictItem�� ��+w�� +w  ������ 0 itemname itemName�� 0 	itemvalue 	itemValue��  +u ������ 0 itemname itemName�� 0 	itemvalue 	itemValue+v %��)-�� 0 
sfr_escape 
SFR_Escape�� �*�k+ %�%*�k+ %�%+& ��6����+x+y���� 0 
sfr_escape 
SFR_Escape�� ��+z�� +z  ���� 0 
somestring 
someString��  +x �������� 0 
somestring 
someString��  0 escapecharlist escapeCharList�� 0 onechar oneChar+y 
HLPS��������j���� 
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 replacesimple replaceSimple�� 4�����vE�O $�[��l kh *���%mvk+ 	E�OP[OY��O�OP+' ��z����+{+|���� 0 sfr_unescape SFR_Unescape�� ��+}�� +}  ���� 0 
somestring 
someString��  +{ �������� 0 
somestring 
someString��  0 escapecharlist escapeCharList�� 0 onechar oneChar+| 
����������������� 
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 replacesimple replaceSimple�� 4�����vE�O $�[��l kh *��%�mvk+ 	E�OP[OY��O�OP+( �������+~+���� 60 fmgui_managedb_field_edit fmGUI_ManageDb_Field_Edit�� ��+��� +�  ���� 	0 prefs  ��  +~ ������������������������������������������� 	0 prefs  �� 0 defaultprefs defaultPrefs�� 0 editmode editMode�� $0 fieldnowselected fieldNowSelected�� 0 changebutton changeButton��  0 fieldtypepopup fieldTypePopup�� *0 notevaluatecheckbox notEvaluateCheckbox�� 0 workingarea workingArea�� .0 globalstoragecheckbox globalStorageCheckbox�� (0 donotstorecheckbox doNotStoreCheckbox�� &0 autoindexcheckbox autoIndexCheckbox�� 0 datatypepopup dataTypePopup�� 0 fdsfdsf  �� 0 
menuchoice 
menuChoice�� 0 datacheckbox dataCheckbox�� .0 autoentercalccheckbox autoEnterCalcCheckbox�� 20 autoentercalccode_value autoEnterCalcCode_VALUE�� @0 overwriteexistingvaluecheckbox overwriteExistingValueCheckbox�� *0 prohibitmodcheckbox prohibitModCheckbox� 40 validationcalccode_value validationCalcCode_VALUE� 0 errmsg errMsg� 0 errnum errNum+ ���������������������������������������+c����������������� ��`oz��������������	5	V�	w�	�	�	�	�
�
�

��
"
/
9
K
W
�
�
�
�
�
�
�?LPSz�����We�������5�Tk������� 8I\`cx�������;�~]p��}��|�{�����!)/7=EKSYafr|��������������%Q{v���z?s������.x����#&Taeh�y+���x�� 0 editmode editMode� 0 	tablename 	tableName
� 
null� 0 	fieldname 	fieldName� 0 altpatterns altPatterns� 0 fieldcomment fieldComment� 0 datatype dataType� 0 	fieldtype 	fieldType� 0 calccode calcCode� &0 autoentercalccode autoEnterCalcCode� 20 autoentercalccontexttoc autoEnterCalcContextTOC�  0 alwaysevaluate alwaysEvaluate�  0 calccontexttoc calcContextTOC� 0 storageglobal storageGlobal� 20 storecalculationresults storeCalculationResults� (0 storageindexchoice storageIndexChoice� 0 	autoindex 	autoIndex� 0 maxrepetition maxRepetition� 0 indexlanguage indexLanguage� 0 allowediting allowEditing� 00 overwriteexistingvalue overwriteExistingValue� *0 autoenterisconstant autoEnterIsConstant� 00 autoenteriscalculation autoEnterIsCalculation� &0 autoenterislookup autoEnterIsLookup� .0 autoenterspecialvalue autoEnterSpecialValue� 0 
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
radB� *0 clickobjectbycoords clickObjectByCoords
�~ 
pcls�} 0 autonextvalue autoNextValue�| 0 autoincrement autoIncrement�{ 0 autogenerate autoGenerate
�z 
leng�y 0 errmsg errMsg+� �w�v�u
�w 
errn�v 0 errnum errNum�u  �x  0 coercetostring coerceToString�������������������������������a �a �a �a �a �a �a �a �a �a �a �a �a �a �a E�O��%E�O��,E�O��,� e�a ,FY hO*�k+ E�O� fY hOa  �*a !a "/�)j+ #O*a $k/a %k/a &k/a '[a (,\Za )81E�O��,� 3)*a $k/a %k/a *a +/��,l+ , 
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
a �E�Y hO)�a 2a �/�l+ AOPY u�a ,a �  Z)�a Qk/a '[a (,\Za �81jl+ SO)�a Qk/a '[a (,\Za �81jl+ SO)�a Qk/a '[a D,\Za �@1jl+ SOPY �a ,�  hY hOPY hO�a ,� a�a Qk/a '[a D,\Za �@1E�O�a ,E 4)�kl+ SO�a ,�  hY )�a La �/a Na �/�a ,l+ ,Y 	)�jl+ SOPY hO�a ,� hY hO�a ,���a , )�a Qa �/jl+ SOPY�a Qa �/E�O�a 4,k )�k+ CY )�a &k/a '[a D,\Za �>1k+ CO)a Ha �lk+ JO*a $k/E�O��,a �,j  a �E^ Y 	��,E^ O)*a $k/a La M/a Nk/] l+ ,O��,� ")�a 2k/a '[a D,\Za �@1��,l+ AY hO��,� 5�a Qk/a '[a D,\Za �@1E�O��,E )�jl+ SY 	)�kl+ SY hO)�a &k/a '[a D,\Za �@1k+ CO)a Ha �a Ya �a [a �a ]k+ ^O*a $k/a %k/E�O�a ,� =�a Qk/a '[a D,\Za �@1E^ O�a ,E )] jl+ SY )] kl+ SY hOPOPY hO�a ,� =�a Qk/a '[a D,\Za �@1E^ O�a ,E )] jl+ SY )] kl+ SY hO�a �a �/j -O�a ,� �)�a &a �/k+ CO)a Ha �lk+ JO*a $k/E�O�a ,a �,j  a �E^ Y �a ,E^ O)*a $k/a La M/a Nk/] l+ ,O�a ,� $)�a 2k/a '[a D,\Za �@1�a ,l+ AY hO)�a &k/a '[a D,\Za �@1k+ CO)a Ha �a Ya �a [a �a ]k+ ^O*a $k/a %k/E�OPY hO)*a $k/a &k/a '[a D,\Za �@1k+ CO)a Ha �a Ya �a [a �a ]k+ ^OeOPY hOeOPUUOPW "X � �)a :] la �*�k+ �%a �%] %OP+) �t��s�r+�+��q�t :0 fmgui_managedb_field_select fmGUI_ManageDb_Field_Select�s �p+��p +�  �o�o 	0 prefs  �r  +� �n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�n 	0 prefs  �m 0 defaultprefs defaultPrefs�l  0 testcodeheader testCodeHeader�k 0 
selectcode 
selectCode�j 0 
rowrefcode 
rowRefCode�i 0 	whosecode 	whoseCode�h *0 fieldnameobjectcode fieldNameObjectCode�g $0 betweentestscode betweenTestsCode�f &0 afteralltestscode afterAllTestsCode�e  0 testcodefooter testCodeFooter�d 0 errmsg errMsg�c 0 errnum errNum�b $0 fieldnowselected fieldNowSelected�a 0 onealtpattern oneAltPattern�` 0 testlist testList�_ 0 testcode testCode�^ 0 
onetestrec 
oneTestRec+� 4�]�\�[�Z�Y��X�������W�V�Uc�Ta�S�R�Q�P�O+c�N�M�L�K+��J�I�H�G�F�E�D��C��B�A��@��?A�>E�] 0 	fieldname 	fieldName
�\ 
null�[ 0 	tablename 	tableName�Z 0 altpatterns altPatterns�Y 
�X 
ret �W >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocus�V @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable�U (0 fmgui_appfrontmost fmGUI_AppFrontMost
�T 
pcap
�S 
cwin
�R 
tabg
�Q 
scra
�P 
tabB
�O 
crow
�N 
sttx
�M 
valL
�L .miscslctnull���     uiel�K 0 errmsg errMsg+� �=�<�;
�= 
errn�< 0 errnum errNum�;  �J�I
�I 
errn
�H 
kocl
�G 
cobj
�F .corecnte****       ****�E 0 pattern  
�D 
pcnt�C 0 testtype testType�B 0 	testmatch 	testMatch�A 0 quotestring quoteString�@ 0 unparsechars unParseChars
�? .sysodsct****        scpt�>  0 coercetostring coerceToString�q��������E�O��%E�O��%�%�%E�O�E�O�E�O�E�O�E�O�E�O�E�O��%�%�%E�O]*jvk+ O��,� *��,k+ Y hO*j+ O Ma  @*a a / 4*a k/a k/a k/a k/a k/a [a k/a ,\Z��,81j UUOeW �X   �a ! )a "�l�Y �fE�O à�,[a #a $l %kh �a &,a ',E�O jvE�O 7�[a #a $l %kh a (] a ),%a *%)] a +,k+ ,%�6G[OY��O)���%a -%l+ .E�O��%�%�%a /%�%�%E�O��%�%E�O) �j 0UOeE�OOPW X   �a ! )a "�l�Y hOPOP[OY�QO�OPOPW X   )a "�la 1*�k+ 2%a 3%�%OP+* �:P�9�8+�+��7�: >0 fmgui_managedb_fieldlistfocus fmGUI_ManageDb_FieldListFocus�9 �6+��6 +�  �5�5 	0 prefs  �8  +� �4�3�2�4 	0 prefs  �3 0 errmsg errMsg�2 0 errnum errNum+� �1��0��/�.�-�,�+�*�)+��(��1 40 fmgui_managedb_fieldstab fmGUI_ManageDb_FieldsTab
�0 
pcap�/ (0 fmgui_appfrontmost fmGUI_AppFrontMost
�. 
cwin
�- 
tabg
�, 
scra
�+ 
tabB
�* 
focu�) 0 errmsg errMsg+� �'�&�%
�' 
errn�& 0 errnum errNum�%  
�( 
errn�7 G 6*jvk+  O� $*��/ )j+ Oe*�k/�k/�k/�k/�,FOeUUOPW X 
 )�l��%OP++ �$��#�"+�+��!�$ @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable�# � +��  +�  �� 0 basetablename baseTableName�"  +� ���� 0 basetablename baseTableName� 0 errmsg errMsg� 0 errnum errNum+� ����������+����� 40 fmgui_managedb_fieldstab fmGUI_ManageDb_FieldsTab
� 
pcap
� 
cwin
� 
tabg
� 
popB�  0 fmgui_popupset fmGUI_PopupSet� 0 errmsg errMsg+� ���
� 
errn� 0 errnum errNum�  
� 
errn�! B -*jvk+  O� *��/ )*�k/�k/��/�l+ OeUUW X 	 
)�l�%�%�%OP+, ����+�+��� 00 fmgui_managedb_gototab fmGUI_ManageDb_GoToTab� �+�� +�  �� 	0 prefs  �  +� �
�	����
 	0 prefs  �	 0 defaultprefs defaultPrefs� 0 	tabobject 	tabObject� 0 errmsg errMsg� 0 errnum errNum+� ����4�2�� ��+c��������+���@D� 0 tabname tabName� (0 fmgui_appfrontmost fmGUI_AppFrontMost� *0 fmgui_managedb_open fmGUI_ManageDb_Open
� 
pcap
� 
cwin
�  
tabg
�� 
radB
�� 
titl
�� 
valL
�� .prcsclicnull��� ��� uiel�� 0 errmsg errMsg+� ������
�� 
errn�� 0 errnum errNum��  
�� 
errn� w��lE�O��%E�O M*j+ O*jvk+ O� 7*��/ /*�k/�k/�k/�[�,\Z��,@1E�O��,k 
�j Y hOeUUW X  )a �la ��,%a %�%OP+- ��O����+�+����� >0 fmgui_managedb_gototab_fields fmGUI_ManageDb_GoToTab_Fields�� ��+��� +�  ���� 	0 prefs  ��  +� ���� 	0 prefs  +� ��`���� 0 tabname tabName�� 00 fmgui_managedb_gototab fmGUI_ManageDb_GoToTab�� *��lk+ OP+. ��j����+�+����� L0 $fmgui_managedb_gototab_relationships $fmGUI_ManageDb_GoToTab_Relationships�� ��+��� +�  ���� 	0 prefs  ��  +� ���� 	0 prefs  +� ��{���� 0 tabname tabName�� 00 fmgui_managedb_gototab fmGUI_ManageDb_GoToTab�� *��lk+ OP+/ �������+�+����� >0 fmgui_managedb_gototab_tables fmGUI_ManageDb_GoToTab_Tables�� ��+��� +�  ���� 	0 prefs  ��  +� ���� 	0 prefs  +� ������� 0 tabname tabName�� 00 fmgui_managedb_gototab fmGUI_ManageDb_GoToTab�� *��lk+ OP+0 �������+�+����� B0 fmgui_managedb_listoftablenames fmGUI_ManageDb_ListOfTableNames�� ��+��� +�  ���� 	0 prefs  ��  +� �������� 	0 prefs  �� 0 errmsg errMsg�� 0 errnum errNum+� ������������������+c���������+������ >0 fmgui_managedb_gototab_tables fmGUI_ManageDb_GoToTab_Tables
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
�� 
sttx
�� 
valL
�� 
rslt�� 0 errmsg errMsg+� ������
�� 
errn�� 0 errnum errNum��  
�� 
errn�� Z E*jvk+  O� 5*��/ -)j+ O*�k/�k/�k/�k/�-�[�l/�,\Z�81�k/�,EO�EUUW X  )a �la �%OP+1 �������+�+���� *0 fmgui_managedb_open fmGUI_ManageDb_Open�� �+�� +�  �� 	0 prefs  ��  +� ������ 	0 prefs  � *0 lookingforxdbcerror lookingForXDBCError� 0 	zoomfield 	zoomField� 0 errmsg errMsg� 0 errnum errNum+� ([�Y���"��=��5+cB��x��������������#����+��c
� 
pcap� (0 fmgui_appfrontmost fmGUI_AppFrontMost
� 
cwin
� 
pnam
� 
mbar
� 
mbri
� 
menE
� 
menI
� .prcsclicnull��� ��� uiel
� .sysodelanull��� ��� nmbr
� 
butT� B0 fmgui_managedb_relationshipstab fmGUI_ManageDb_RelationshipsTab
� 
faal
� eMdsKcmd
� .prcskprsnull���     ctxt
� 
tabg
� 
txtf
� 
focu
� 
valL
� 
scra
� 
scrb� 0 errmsg errMsg+� ���
� 
errn� 0 errnum errNum�  
� 
errn�����*��/�)j+ O*�k/�,� eYs*�k/��/�k/��/�k/�k/�[�,\Z�>1j Okj OeE�O ;h�*�k/�,a  #*�k/a k/�[�,\Za 81j Okj Y fE�[OY��O)jvk+ Okj OeE�O ;h�*�k/�,a  #*�k/a k/�[�,\Za 81j Okj Y fE�[OY��Oa a a l Okj OeE�O 2h�*�k/�,a  *�k/a a /j Okj Y fE�[OY��O*�k/a k/a k/E�Oe�a ,FOa  �a !,FOe*�k/a k/a "k/a ,FOj*�k/a k/a "k/a #k/a !,FOj*�k/a k/a "k/a #l/a !,FOeUUW X $ %)a &�la '�%OP+2 �n��+�+��� *0 fmgui_managedb_save fmGUI_ManageDB_Save� �+�� +�  �� 	0 prefs  �  +� 	���������� 	0 prefs  � 0 defaultprefs defaultPrefs� 40 managedbwindownameprefix manageDbWindowNamePrefix� .0 waitcycledelayseconds waitCycleDelaySeconds� ,0 waitsavetotalseconds waitSaveTotalSeconds� 0 waitcyclemax waitCycleMax� (0 managedbwindowname manageDbWindowName� 0 errmsg errMsg� 0 errnum errNum+� !��������:���������+����~�}�|"�{&�z�y�xE� ,0 notinmanagedbiserror notInManageDbIsError� 
� <
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
� .sysodelanull��� ��� nmbr� 0 errmsg errMsg+� �w�v�u
�w 
errn�v 0 errnum errNum�u  
� 
errn�~ �} 0 
windowname 
windowName�|  0 windownametest windowNameTest�{ 0 whichwindow whichWindow�z .0 waitcycledelayseconds waitCycleDelaySeconds�y 0 waitcyclemax waitCycleMax�x "0 windowwaituntil windowWaitUntil� ��elE�O��%E�O�E�O�E�O�� E�O��!��l E�O �� �*��/ c)j+ O*�k/�,� 8 !*�k/�,E�O*�k/��/j Okj OPW X  )a �la �%Y ��,E )a a la Y eOPUO)a �a a a a a �a ��k+ Okj OeOPUOPW X  )a �la  �%OP+3 �tP�s�r+�+��q�t N0 %fmgui_managedb_table_listoffieldnames %fmGUI_ManageDb_Table_ListOfFieldNames�s �p+��p +�  �o�o 0 basetablename baseTableName�r  +� �n�m�l�n 0 basetablename baseTableName�m 0 errmsg errMsg�l 0 errnum errNum+� �k��j��i�h�g�f�e�d�c�b�a+��`���k @0 fmgui_managedb_fieldspicktable fmGUI_ManageDb_FieldsPickTable
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
�b 
rslt�a 0 errmsg errMsg+� �_�^�]
�_ 
errn�^ 0 errnum errNum�]  
�` 
errn�q I 2*�k+  O� #*��/ *�k/�k/�k/�k/�-�k/�,EO�EUUW X  )�l�%a %�%OP+4 �\��[�Z+�+��Y�\ >0 fmgui_managedb_tablelistfocus fmGUI_ManageDb_TableListFocus�[ �X+��X +�  �W�W 	0 prefs  �Z  +� �V�U�T�V 	0 prefs  �U 0 errmsg errMsg�T 0 errnum errNum+� �S��R��Q�P�O�N�M�L+��K��S >0 fmgui_managedb_gototab_tables fmGUI_ManageDb_GoToTab_Tables
�R 
pcap
�Q 
cwin
�P 
tabg
�O 
scra
�N 
tabB
�M 
focu�L 0 errmsg errMsg+� �J�I�H
�J 
errn�I 0 errnum errNum�H  
�K 
errn�Y A 0*jvk+  O� *��/ e*�k/�k/�k/�k/�,FOeUUOPW X 	 
)�l�%OP+5 �G��F�E+�+��D�G &0 fmgui_checkboxset fmGUI_CheckboxSet�F �C+��C +�  �B�A�B  0 checkboxobject checkboxObject�A 0 checkboxvalue checkboxValue�E  +� �@�?�>�=�@  0 checkboxobject checkboxObject�? 0 checkboxvalue checkboxValue�> 0 errmsg errMsg�= 0 errnum errNum+� 	��<�;�:�9+��8
�< 
null
�; 
valL
�: .prcsclicnull��� ��� uiel�9 0 errmsg errMsg+� �7�6�5
�7 
errn�6 0 errnum errNum�5  
�8 
errn�D :�Z %�� ��,� 
�j Y hY hOeOPW X  )�l�%�%�%+6 �4"�3�2+�+��1�4 B0 fmgui_objectclick_affectswindow fmGUI_ObjectClick_AffectsWindow�3 �0+��0 +�  �/�/ 0 	buttonref 	buttonRef�2  +� �.�. 0 	buttonref 	buttonRef+� 0�-�- *0 clickobjectbycoords clickObjectByCoords�1 �Z)�k+ OP+7 �,=�+�*+�+��)�, 40 fmgui_pastefromclipboard fmGUI_PasteFromClipboard�+  �*  +� �(�'�&�%�( (0 pasemenuitemexists paseMenuItemExists�' 0 pastemenuitem pasteMenuItem�& 0 errmsg errMsg�% 0 errnum errNum+� ��$��#�"�!j� �+c�o��+��~������
�$ 
pcap�# (0 fmgui_appfrontmost fmGUI_AppFrontMost
�" 
mbar
�! 
mbri
�  
menE
� 
menI
� 
pnam
� .prcsclicnull��� ��� uiel� 0 errmsg errMsg+� ���
� 
errn� 0 errnum errNum�  
� 
errn� 
� .coredoexnull���     ****�  �  
� .sysodelanull��� ��� nmbr�) �fE�O� w*��/ o)j+ O*�k/��/�k/�k/�[�,\Z�81E�O 
�j W X  )�la �%O 2a kh �j  
eE�OY hW X  hOa j [OY��UUO�OP+8 ����+�+��� :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand� �+�� +�  �� 	0 prefs  �  +� 	���
�	������ 	0 prefs  � 0 defaultprefs defaultPrefs�
 0 popupobject popupObject�	 0 selectcommand selectCommand� 0 popupchoice popupChoice� &0 clickifalreadyset clickIfAlreadySet� 0 mustpick mustPick� 0 errmsg errMsg� 0 errnum errNum+� $���� ������������������(��g{����������+c���
"��+�KMO� 0 popupobject popupObject
� 
null� 0 popupchoice popupChoice�  0 selectcommand selectCommand�� &0 clickifalreadyset clickIfAlreadySet�� 
�� 
pcls
�� 
cobj�� 
�� .coredoexnull���     ****
�� 
errn�� 
�� 
valL
�� .prcsclicnull��� ��� uiel
�� 
menE
�� 
menI
�� 
pnam�� 0 errmsg errMsg+� ������
�� 
errn�� 0 errnum errNum��  ��������f�E�O��,�llv�,  ��k/��l/�E�Y hO��%E�O��,E�O��,E�O��,E�O��,E�O�Z��j  )��l�OPY�fE�O�a ,j  
eE�OPY �� 
eE�OPY ��a   �a ,� eE�Y hOPY �a   �a ,� eE�Y hOPY `�a   �a ,� eE�Y hOPY A�a   �a ,� eE�Y hOPY "�a   �a ,� eE�Y hOPY hO� ��� ��j O�a   !�a k/a k/a [a ,\Z�81j Y ~�a   #�a k/a k/a [a ,\Z�@1j OPY U�a   #�a k/a k/a [a ,\Z�>1j OPY ,�a   #�a k/a k/a [a ,\Z�?1j OPY hOPY hY hOeOPW X   )��la !�%a "%�%a #%�%+9 ��Y����+�+�����  0 fmgui_popupset fmGUI_PopupSet�� ��+��� +�  ������ 0 popupobject popupObject�� 0 popupchoice popupChoice��  +� ���������� 0 popupobject popupObject�� 0 popupchoice popupChoice�� 0 errmsg errMsg�� 0 errnum errNum+� h������������+������� 0 popupobject popupObject�� 0 popupchoice popupChoice�� �� :0 fmgui_popup_selectbycommand fmGUI_Popup_SelectByCommand
�� 
rslt�� 0 errmsg errMsg+� ������
�� 
errn�� 0 errnum errNum��  
�� 
errn�� +�Z *���k+ O�EOPW X  )�l�%�%�%+: �������+�+����� 00 fmgui_selectallandcopy fmGUI_SelectAllAndCopy��  ��  +� �������� $0 clipboardchanged clipboardChanged�� 0 errmsg errMsg�� 0 errnum errNum+� ���+��)�����������+c�������+������������������������
�� .JonspClpnull���     ****
�� 
pcap�� (0 fmgui_appfrontmost fmGUI_AppFrontMost
�� 
mbar
�� 
mbri
�� 
menE
�� 
menI
�� 
pnam
�� .prcsclicnull��� ��� uiel�� 0 errmsg errMsg+� ���
� 
errn� 0 errnum errNum�  
�� 
errn�� 

�� 
rtyp
�� 
utf8
�� .JonsgClp****    ��� null
�� 
rslt
�� 
leng��  ��  
� .sysodelanull��� ��� nmbr�� ��j OfE�O� �*��/ �)j+ O *�k/��/�k/�k/�[�,\Z�81j W X  )a �la �%O *�k/�a /�k/�a /j W X  )a �la �%O Da kh &*a a l O_ a ,j 
eE�OY hW X  eE�OOkj [OY��OPUUO�OP+; �9��+�+��� (0 fmgui_textfieldset fmGUI_TextFieldSet� �+�� +�  ��� "0 textfieldobject textfieldObject�  0 textfieldvalue textfieldValue�  +� ����� "0 textfieldobject textfieldObject�  0 textfieldvalue textfieldValue� 0 errmsg errMsg� 0 errnum errNum+� 	H����+��{}
� 
null
� 
valL
� 
focu� 0 errmsg errMsg+� ���
� 
errn� 0 errnum errNum�  
� 
errn� A�Z ,�� ��,� e��,FO���,FY fY hOeOPW X  )�l�%�%�%+< ����+�+��� (0 fmgui_appfrontmost fmGUI_AppFrontMost�  �  +�  +� 
����������
� 
pcap
� 
pisf
� .sysodelanull��� ��� nmbr
� 
cwin
� 
pnam
� 
butT
� .prcsclicnull��� ��� uiel� F� B*��/ :*�,e 1e*�,FOkj O*�k/�,�  *�k/�k/j 	Okj Y hY hUU+= ����+�+��� 00 fmgui_dataviewer_close fmGUI_DataViewer_Close�  �  +�  +� �����+c������
� 
pcap� (0 fmgui_appfrontmost fmGUI_AppFrontMost
� 
cwin
� 
pnam
� 
butT
� .prcsclicnull��� ��� uiel�  �  � 4� 0*��/ ()j+ O *�k/�[�,\Z�81�k/j 	W X 
 hUU+> ����+�+��� .0 fmgui_inspector_close fmGUI_Inspector_Close�  �  +�  +� >�<��+c����*��9
� 
pcap� (0 fmgui_appfrontmost fmGUI_AppFrontMost
� 
cwin
� 
pnam
� 
pidx�  �  
� 
butT
� .prcsclicnull��� ��� uiel� s� o*��/ g)j+ O k*�k/�[�,\Z�81�,FW X 	 
hO *�k/�[�,\Z�81�k/j W X 	 
hO *�k/�[�,\Z�81�k/j W X 	 
hUU+? �F��+�+��� 00 fmgui_inspector_ensure fmGUI_Inspector_Ensure�  �  +� ��� 0 errmsg errMsg� 0 errnum errNum+� �~��}��|�{+c�zr�y�x�w��v�u��t�s+��r��~ 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout
�} 
pcap�| (0 fmgui_appfrontmost fmGUI_AppFrontMost
�{ 
cwin
�z 
pnam
�y .coredoexnull���     ****
�x 
mbar
�w 
mbri
�v 
menE
�u 
menI
�t .prcsclicnull��� ��� uiel�s 0 errmsg errMsg+� �q�p�o
�q 
errn�p 0 errnum errNum�o  
�r 
errn� i T*j+  O� F*��/ >)j+ O*�k/�[�,\Z�@1j 	 *�k/��/�k/�k/�[�,\Z�81j Y hOeUUW X  )a �la �%OP+@ �n��m�l+�+��k�n 20 fmgui_modeensure_browse fmGUI_ModeEnsure_Browse�m  �l  +� �j�i�j 0 errmsg errMsg�i 0 errnum errNum+� ��h�g+��f��h $0 fmgui_modeselect fmGUI_ModeSelect�g 0 errmsg errMsg+� �e�d�c
�e 
errn�d 0 errnum errNum�c  
�f 
errn�k  *�k+ OPW X  )�l�%OP+A �b��a�`+�+��_�b .0 fmgui_modeensure_find fmGUI_ModeEnsure_Find�a  �`  +� �^�]�^ 0 errmsg errMsg�] 0 errnum errNum+� ��\�[+��Z��\ $0 fmgui_modeselect fmGUI_ModeSelect�[ 0 errmsg errMsg+� �Y�X�W
�Y 
errn�X 0 errnum errNum�W  
�Z 
errn�_  *�k+ OPW X  )�l�%OP+B �V��U�T+�+��S�V 20 fmgui_modeensure_layout fmGUI_ModeEnsure_Layout�U  �T  +� �R�Q�R 0 errmsg errMsg�Q 0 errnum errNum+�  �P�O+��N �P $0 fmgui_modeselect fmGUI_ModeSelect�O 0 errmsg errMsg+� �M�L�K
�M 
errn�L 0 errnum errNum�K  
�N 
errn�S  *�k+ OPW X  )�l�%OP+C �J �I�H+�+��G�J $0 fmgui_modeselect fmGUI_ModeSelect�I �F+��F +�  �E�E 0 modetoselect modeToSelect�H  +� �D�C�B�A�@�?�>�=�D 0 modetoselect modeToSelect�C 0 
modewindow 
modeWindow�B "0 modecontentarea modeContentArea�A *0 modecontentareadesc modeContentAreaDesc�@ 0 currentmode currentMode�? 0 menuitemname menuItemName�> 0 errmsg errMsg�= 0 errnum errNum+�  ��< ��;�:�9�8+c�7 O�6 j�5 q�4�3 �2�1�0�/+��. � �
�< 
pcap�; (0 fmgui_appfrontmost fmGUI_AppFrontMost�: .0 fmgui_inspector_close fmGUI_Inspector_Close
�9 
cwin
�8 
sgrp
�7 
desc
�6 
cwor
�5 .sysodelanull��� ��� nmbr
�4 
mbar
�3 
mbri
�2 
menE
�1 
menI
�0 .prcsclicnull��� ��� uiel�/ 0 errmsg errMsg+� �-�,�+
�- 
errn�, 0 errnum errNum�+  
�. 
errn�G � t� l*��/ d)j+ O)j+ O*�k/E�O��k/�[�,\Z�?1E�O��,E�O��k/E�O�� (�j O��%E�O*�k/�a /a k/a �/j Y hOeOPUUW X  )a �la �%a %�%+D �* ��)�(+�+��'�* (0 fmgui_window_close fmGUI_Window_Close�) �&+��& +�  �%�%  0 somewindowname someWindowName�(  +� �$�$  0 somewindowname someWindowName+� �# ��"�!� 
�# 
capp
�" kfrmID  
�! 
cwin
�  .coreclosnull���     obj �' )���0 *�/j OPUOeOP+E � ���+�+��� "0 windowwaituntil windowWaitUntil� �+�� +�  �� 	0 prefs  �  +� ��������� 	0 prefs  � 0 defaultprefs defaultPrefs� 0 
windowname 
windowName�  0 windownametest windowNameTest� 0 whichwindow whichWindow� 0 checkresult checkResult� "0 windownamecheck windowNameCheck� 0 windowindex windowIndex+� ��� �� �� ����
!K!�	!"��!(!3�!H!W!f!x!�!�!�!�!�!��� 0 
windowname 
windowName
� 
null�  0 windownametest windowNameTest� 0 whichwindow whichWindow� .0 waitcycledelayseconds waitCycleDelaySeconds� 0 waitcyclemax waitCycleMax� �
 

�	 
pcap
� 
cwin
� 
pnam
� 
nmbr
� .sysodelanull��� ��� nmbr�D�����������E�O��%E�O��,E�O��,E�O��,E�OfE�O��,Ekh� H��  *��/�-a ,E�Y 3�a   *�a /�k/a ,E�Y �a &E�O*�a /�/a ,E�UO�a   ��E�OPY ��a   ��E�OPY ��a   �� E�OPY o�a   �� E�OPY ]�a   ��E�OPY K�a   ��E�OPY 8�a   ��E�OPY &�a   ��E�Y �a   ��E�OPY hO� Y hO��,j OP[OY��O�OP+F �"��+�+��� 20 windowwaituntil_frontis windowWaitUntil_FrontIS� � +��  +�  ���� 	0 prefs  �  +� ������ 	0 prefs  �� 0 defaultprefs defaultPrefs+� ������"��"��"#���������� 0 
windowname 
windowName
�� 
null��  0 windownametest windowNameTest�� 0 whichwindow whichWindow�� .0 waitcycledelayseconds waitCycleDelaySeconds�� 0 waitcyclemax waitCycleMax�� d�� 
�� "0 windowwaituntil windowWaitUntil� �����������E�O��%E�O*�k+ OP+G ��"<����+�+����� "0 indexoflistitem indexOfListItem�� ��+��� +�  ������ 0 somelist someList�� 0 somelistitem someListItem��  +� ���������� 0 somelist someList�� 0 somelistitem someListItem�� 0 i  �� 0 onelistitem oneListItem+� ����
�� .corecnte****       ****
�� 
cobj�� 9�� iY hO 'k�j  kh ��/E�O��  �Y hOP[OY��OP+H ��"u����+�+����� 0 listcontains listContains�� ��+��� +�  ������ 0 somelist someList�� "0 somecomplexitem someComplexItem��  +� �������� 0 somelist someList�� "0 somecomplexitem someComplexItem�� 0 oneitem oneItem+� ��������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pcnt�� 1 *�[��l kh ��,E�O��  	eOPY hOP[OY��OfOP+I ��"�����+�+����� $0 listuniquevalues listUniqueValues�� ��+��� +�  ���� 	0 prefs  ��  +� ���������� 	0 prefs  �� 0 	inputlist 	inputList�� 0 
uniquelist 
uniqueList�� 0 oneitem oneItem+� ������������ 0 	inputlist 	inputList
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pcnt�� ;��,E�OjvE�O )�[��l kh ��,E�O�� 	��6GY h[OY��O�OP+J ��"�����+�+����� 0 sort  �� ��+��� +�  ���� 0 oldlist oldList��  +� ����������� 0 oldlist oldList�� 0 od  �� 0 	textblock 	textBlock�� 0 sortedblock sortedBlock� 0 
sortedlist 
sortedList+� ������#�#���
� 
ascr
� 
txdl� 

� .sysontocTEXT       shor
� 
cobj
� 
TEXT
� 
strq
� .sysoexecTEXT���     TEXT
� 
ret 
� 
citm�� E��,�j lvE[�k/E�Z[�l/��,FZO��&E�O��,%�%j 	E�O���,FO��-E�O���,FO�+K �#5��+�+��� 0 
logconsole 
logConsole� �+�� +�  ��� 0 processname processName� 0 
consolemsg 
consoleMsg�  +� ���� 0 processname processName� 0 
consolemsg 
consoleMsg� 0 shellcommand shellCommand+� ��#X��#l#~�#����  0 coercetostring coerceToString
� .sysontocTEXT       shor� 0 replacesimple replaceSimple
� 
leng
� 
spac
� 
strq
� .sysoexecTEXT���     TEXT� I*�k+  E�O*�jj �mvk+ E�O��,j  �E�Y hO��%�%�%��,%�%��,%E�O�j 
O�OP+L �#���+�+��� 0 loglevel logLEVEL� ��+��� +�  ������ 	0 level  �� 0 somemsg someMsg�  +� �������������� 	0 level  �� 0 somemsg someMsg�� 0 	maxxcount 	maxXcount�� 0 logname logName�� 0 xcount xCount�� 0 i  +� ��#�#����� �� 0 
logconsole 
logConsole� 5�E�Ob  �%E�O��kE�O k�kh ��%E�[OY��O*��l+ OP+M ��#�����+�+����� 0 logmain logMAIN�� ��+��� +�  ���� 0 somemsg someMsg��  +� ���� 0 somemsg someMsg+� ���� 0 loglevel logLEVEL�� *j�l+  +N ��#�����+�+����� (0 systemnotification systemNotification�� ��+��� +�  ���� 	0 prefs  ��  +� ������ 	0 prefs  �� 0 defaultprefs defaultPrefs+� ��$��$��$	��$����~�}�|�{�z�y�x�� 0 msg  �� 0 msgtitle msgTitle�� 0 msgsubtitle msgSubtitle�� 0 msgsound msgSound�� 0 nosound noSound
� 
null�~ 

�} 
appr
�| 
subt�{ 
�z .sysonotfnull��� ��� TEXT
�y 
nsou�x �� G�����������E�O��%E�O��,� ��,��,��,� Y ��,��,��,��,a  OP+O �w$E�v�u+�, �t�w 0 writetofile writeToFile�v �s,�s ,  �r�r 	0 prefs  �u  +� �q�p�o�n�q 	0 prefs  �p 0 defaultprefs defaultPrefs�o 0 
outputfile 
outputFile�n 0 filereference fileReference,  �m�l�k�j�i�h�g�f�e$��d�c�b�a�`�_�^�]�m 0 fullfilepath fullFilePath
�l 
null�k 0 filename fileName�j 0 filedirectory fileDirectory
�i afdrdesk
�h .earsffdralis        afdr
�g 
TEXT�f 0 
outputtext 
outputText�e 
�d 
file
�c 
perm
�b .rdwropenshor       file
�a 
refn
�` .rdwrwritnull���     ****
�_ .rdwrclosnull���     ****�^  �]  �t �������j �&���E�O��%E�O��,� 
��,E�Y !��,� ��,��,%E�Y �j �&�%E�O !*�/�el E�O��,��l O�j W X   *�/j W X  h+P �\$��[�Z,,�Y�\ 0 clickatcoords clickAtCoords�[ �X,�X ,  �W�V�W 0 xclick xClick�V 0 yclick yClick�Z  , �U�T�U 0 xclick xClick�T 0 yclick yClick, 	�S�R�Q�P$�$��O�N$�
�S 
dire
�R olierndD
�Q .sysorondlong        doub
�P 
strq
�O .sysoexecTEXT���     TEXT
�N 
TEXT�Y 1���l E�O���l E�Ob  �,�%�%�%�%j O��&�%�%+Q �M$��L�K,,�J�M *0 clickobjectbycoords clickObjectByCoords�L �I,�I ,  �H�H 0 
someobject 
someObject�K  , �G�F�E�D�C�B�A�G 0 
someobject 
someObject�F 0 xcoord xCoord�E 0 ycoord yCoord�D 0 xsize xSize�C 0 ysize ySize�B 0 xclick xClick�A 0 yclick yClick, %�@�?�>�=�<�;�:
�@ 
posn
�? 
cobj
�> 
ptsz
�= 
dire
�< olierndD
�; .sysorondlong        doub�: 0 clickatcoords clickAtCoords�J N�Z��,E[�k/E�Z[�l/E�ZO��,E[�k/E�Z[�l/E�ZO��l!��l E�O��l!��l E�O*��l+ OP+R �9%S�8�7,,	�6�9  0 coercetostring coerceToString�8 �5,
�5 ,
  �4�4  0 incomingobject incomingObject�7  , �3�2�1�0�/�.�-�,�3  0 incomingobject incomingObject�2 0 errmsg errMsg�1 0 errnum errNum�0 0 	olddelims 	oldDelims�/ 0 
errmsglead 
errMsgLead�. 0 errmsgtrail errMsgTrail�- 0 od  �, 0 objectstring objectString,	 �+�*�)�(�'�&%�%��%�$,�#�"%��!� &�&& �&'&-
�+ 
pcls
�* 
TEXT
�) 
ctxt
�( 
long
�' 
doub
�& 
utxt�% j0 3some_uuid_property_54f827c7379e4073b5a216bb9cde575d 3some_UUID_Property_54F827C7379E4073B5A216BB9CDE575D�$ 0 errmsg errMsg, ���
� 
errn� 0 errnum errNum�  
�# 
ascr
�" 
txdl
�! 
cobj
�  
citm�  
� 
bool�6���,�  ��&E[�,E�ZO�Yk��,�  ��&E[�,E�ZO��&YQ��,�  ��&E[�,E�ZO��&Y7��,�  ��&E[�,E�ZO��&Y S ���,FOPW 9X 	 
��,�kvlvE[�k/E�Z[�l/��,FZO��-E[�k/E�Z[�l/E�ZO���,FOa ��,FOPW �X 	 �a 	 �a a & Da E�Oa E�O��,�lvE[�k/E�Z[�l/��,FZO��l/E�O���,FO��k/E�O���,FOPY k�E�O�� )��,�lvE[�k/E�Z[�l/��,FZO��l/E�O���,FY hO�� /��,�lvE[�k/E�Z[�l/��,FZO���,FO��k/E�O���,FY hOPO�+S �&���,,�� 0 gettextbefore getTextBefore� �,� ,  ��� 0 
sourcetext 
sourceTEXT� 0 stophere stopHere�  , ������� 0 
sourcetext 
sourceTEXT� 0 stophere stopHere� 0 	olddelims 	oldDelims� 0 finalresult finalResult� 0 errmsg errMsg� 0 errnum errNum, 	����
�	'�,'$
� 
ascr
� 
txdl
� 
cobj
�
 
citm
�	 .corecnte****       ****� 0 errmsg errMsg, ���
� 
errn� 0 errnum errNum�  � R C��,�lvE[�k/E�Z[�l/��,FZO��-j k  ���,FO�Y ��k/E�O���,FO�W X  ���,FO�+T �'.��,,��  0 gettextbetween getTextBetween� � ,�  ,  ���� 	0 prefs  �  , �������������������������� 	0 prefs  �� 0 defaultprefs defaultPrefs�� 0 
sourcetext 
sourceTEXT�� 0 
beforetext 
beforeText�� 0 	aftertext 	afterText�� 0 textitemnum textItemNum��  0 includemarkers includeMarkers�� 0 	olddelims 	oldDelims�� 0 prefixremoved prefixRemoved�� 0 finalresult finalResult�� 0 errmsg errMsg�� 0 errnum errNum, ������������'V������'Z��������������������,(�� 0 textitemnum textItemNum��  0 includemarkers includeMarkers�� 
�� 
pcls
�� 
list
�� 
TEXT
�� 
bool
�� 
errn�� 
�� .corecnte****       ****
�� 
cobj�� 0 
sourcetext 
sourceTEXT�� 0 
beforetext 
beforeText�� 0 	aftertext 	afterText�� 
�� 
ascr
�� 
txdl
�� 
citm�� 0 errmsg errMsg, ������
�� 
errn�� 0 errnum errNum��  � ��l�f�E�O��,�	 ��,�&��& )��l�Y hO��,�  1�j �  ���/��,FY hO���k/��l/��m/a E�Y hO��%E�O��,E�O��,E�O��,E�O��,E�O��,E�O \_ a ,�lvE[�k/E�Z[�l/_ a ,FZO�a �/E�O�_ a ,FO�a k/E�O�_ a ,FO� ��%�%E�Y hOPW X  �_ a ,FOa E�O�OP+U ��(����,,���� 0 
parsechars 
parseChars�� ��,�� ,  ���� 	0 prefs  ��  , 	�������������������� 	0 prefs  �� 0 defaultprefs defaultPrefs�� 0 
sourcetext 
sourceTEXT�� 0 parsestring parseString�� 0 considercase considerCase�� 0 	olddelims 	oldDelims�� 0 
parsedlist 
parsedList�� 0 errmsg errMsg�� 0 errnum errNum, ������������������������(}����߿(�߾߽,߼߻(��� 0 considercase considerCase
�� 
pcls
�� 
list
�� .corecnte****       ****�� 0 
sourcetext 
sourceTEXT
�� 
cobj�� 0 parsestring parseString�� �� �� 0 somekey someKey
�� 
errn�� 
�� 
ascr
�� 
txdl
߿ 
TEXT
߾ 
citm߽ 0 errmsg errMsg, ߺ߹߸
ߺ 
errn߹ 0 errnum errNum߸  ߼  ߻  �� ��elE�O��,�  5�j l ��k/��l/��m/�E�Y ��k/��l/�E�OPY ��,�ml�, )��l�OPY hO��%E�O��,E�O��,E�O��,E�O��,E�O =��&kv��,FO� a g 
�a -E�VY ga  
�a -E�VO���,FO�W #X   
���,FW X  hO)�la �%+V ߷(�߶ߵ,,ߴ߷ 0 replacesimple replaceSimple߶ ߳,߳ ,  ߲߲ 	0 prefs  ߵ  , 	߱߰߯߮߭߬߫ߪߩ߱ 	0 prefs  ߰ 0 defaultprefs defaultPrefs߯ 0 considercase considerCase߮ 0 
sourcetext 
sourceTEXT߭ 0 oldchars oldChars߬ 0 newchars newChars߫ 0 	olddelims 	oldDelimsߪ 0 
parsedlist 
parsedListߩ 0 newtext newText, ߨߧߦߥߤߣߢߡߠߟߞߝߜߛ)bߚߙߘ)�ߗߨ 0 considercase considerCase
ߧ 
pcls
ߦ 
list
ߥ .corecnte****       ****ߤ 0 
sourcetext 
sourceTEXT
ߣ 
cobjߢ 0 oldchars oldCharsߡ 0 newchars newCharsߠ ߟ ߞ ߝ 0 somekey someKey
ߜ 
errnߛ 
ߚ 
TEXT
ߙ 
ascr
ߘ 
txdl
ߗ 
citmߴ ��elE�O��,�  ?�j m ��k/��l/��m/���/�E�Y ��k/��l/��m/�E�OPY ��,�ml�, )��l�OPY hO��%E�O��,E�O��,E�O��,E�O��,E�O��&E�O_ a ,E�O�_ a ,FO� (a g �a -E�O��&kv_ a ,FO��&E�VY %ga  �a -E�O��&kv_ a ,FO��&E�VO�_ a ,FO�OP+W ߖ)�ߕߔ,,ߓߖ 0 unparsechars unParseCharsߕ ߒ,ߒ ,  ߑߐߑ 0 thislist thisListߐ 0 newdelim newDelimߔ  , ߏߎߍߌߋߊߏ 0 thislist thisListߎ 0 newdelim newDelimߍ 0 	olddelims 	oldDelimsߌ 0 unparsedtext unparsedTextߋ 0 errmsg errMsgߊ 0 errnum errNum, 	߉߈߇߆,߅߄߃*6
߉ 
ascr
߈ 
txdl
߇ 
TEXT߆ 0 errmsg errMsg, ߂߁߀
߂ 
errn߁ 0 errnum errNum߀  ߅  ߄  
߃ 
errnߓ D��,E�O ��&kv��,FO��&E�O���,FO�W !X   
���,FW X  hO)�l�%+X �*@�~�},, �|�  0 versioncompare versionCompare�~ �{,!�{ ,!  �z�z 	0 prefs  �}  , �y�x�w�v�u�t�s�r�q�p�o�n�y 	0 prefs  �x 0 defaultprefs defaultPrefs�w 0 od  �v 0 v1_list  �u 0 v2_list  �t 0 v1_count  �s 0 v2_count  �r 0 maxcount maxCount�q 0 versionresult versionResult�p 0 i  �o 0 v1_part  �n 0 v2_part  ,  �m�l�k�j*P�i�h�g�f�e�d*�*��c�b�a++�m 0 v1  
�l 
null�k 0 v2  �j 	0 delim  �i 
�h 
ascr
�g 
txdl
�f 
cobj
�e 
citm
�d .corecnte****       ****
�c 
nmbr�b  �a  �|�������E�O��%E�O��,��,lvE[�k/E�Z[�l/��,FZO��,�-��,�-lvE[�k/E�Z[�l/E�ZO���,FO�j 
�j 
lvE[�k/E�Z[�l/E�ZO�� �E�Y �E�O�E�O sk�kh 	�� Y hO�� ��/E�Y jE�O�� ��/E�Y jE�O &��&��& kE�Y ��&��& iE�Y hW X  a E�OP[OY��O�a   jE�Y hO�OPascr  ��ޭ