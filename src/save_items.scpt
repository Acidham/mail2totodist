FasdUAS 1.101.10   ��   ��    k             i         I     �� 	��
�� .aevtoappnull  �   � **** 	 o      ���� 0 thequery theQuery��    k     � 
 
     l     ��  ��    %  get action from previous steps     �   >   g e t   a c t i o n   f r o m   p r e v i o u s   s t e p s      r         I    �� ��
�� .sysoexecTEXT���     TEXT  m        �    e c h o   $ t h e A c t i o n��    o      ���� 0 	theaction 	theAction      I   �� ��
�� .sysoexecTEXT���     TEXT  m    	   �   D m k d i r   - p   " $ { a l f r e d _ w o r k f l o w _ d a t a } "��        r        4    ��  
�� 
psxf   l    !���� ! I   �� "��
�� .sysoexecTEXT���     TEXT " m     # # � $ $ 4 e c h o   $ a l f r e d _ w o r k f l o w _ d a t a��  ��  ��    o      ���� 0 
thedatadir 
theDataDir   % & % l   ��������  ��  ��   &  ' ( ' l   �� ) *��   ) $  get data file based on action    * � + + <   g e t   d a t a   f i l e   b a s e d   o n   a c t i o n (  , - , r    $ . / . c    " 0 1 0 b      2 3 2 b     4 5 4 b     6 7 6 o    ���� 0 
thedatadir 
theDataDir 7 m     8 8 � 9 9  : 5 o    ���� 0 	theaction 	theAction 3 m     : : � ; ;  . t x t 1 m     !��
�� 
ctxt / o      ���� 0 thedatafile theDataFile -  < = < I  % .�� >��
�� .ascrcmnt****      � **** > l  % * ?���� ? b   % * @ A @ m   % & B B � C C  D a t a D i r :   A n   & ) D E D 1   ' )��
�� 
psxp E o   & '���� 0 thedatafile theDataFile��  ��  ��   =  F G F l  / /��������  ��  ��   G  H I H l  / /�� J K��   J   read datafile    K � L L    r e a d   d a t a f i l e I  M N M r   / 3 O P O J   / 1����   P o      ���� 0 
therawdata 
theRawData N  Q R Q Q   4 T S T U S r   7 E V W V n   7 C X Y X 2  ? C��
�� 
cpar Y l  7 ? Z���� Z I  7 ?�� [��
�� .rdwrread****        **** [ 4   7 ;�� \
�� 
file \ o   9 :���� 0 thedatafile theDataFile��  ��  ��   W o      ���� 0 
therawdata 
theRawData T R      ������
�� .ascrerr ****      � ****��  ��   U I  M T�� ]��
�� .ascrcmnt****      � **** ] l  M P ^���� ^ m   M P _ _ � ` `  f i l e   e m p t y��  ��  ��   R  a b a l  U U��������  ��  ��   b  c d c l  U U�� e f��   e : 4 delete the file and then write the new ID:Name data    f � g g h   d e l e t e   t h e   f i l e   a n d   t h e n   w r i t e   t h e   n e w   I D : N a m e   d a t a d  h i h O  U s j k j Z  [ r l m���� l l  [ c n���� n I  [ c�� o��
�� .coredoexnull���     **** o 4   [ _�� p
�� 
file p o   ] ^���� 0 thedatafile theDataFile��  ��  ��   m I  f n�� q��
�� .coredelonull���     ditm q 4   f j�� r
�� 
file r o   h i���� 0 thedatafile theDataFile��  ��  ��   k m   U X s s�                                                                                  sevs  alis    J  SSD                            BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    S S D  -System/Library/CoreServices/System Events.app   / ��   i  t u t l  t t��������  ��  ��   u  v w v r   t � x y x I   t ~�� z���� "0 writetexttofile writeTextToFile z  { | { c   u x } ~ } o   u v���� 0 thequery theQuery ~ m   v w��
�� 
ctxt |   �  o   x y���� 0 thedatafile theDataFile �  ��� � m   y z��
�� boovfals��  ��   y o      ���� 0 res   w  ��� � l  � ���������  ��  ��  ��     � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� "0 writetexttofile writeTextToFile �  � � � o      ���� 0 thetext theText �  � � � o      ���� 0 thefile theFile �  ��� � o      ���� 40 overwriteexistingcontent overwriteExistingContent��  ��   � Q     e � � � � k    F � �  � � � l   �� � ���   � #  Convert the file to a string    � � � � :   C o n v e r t   t h e   f i l e   t o   a   s t r i n g �  � � � r     � � � c     � � � o    ���� 0 thefile theFile � m    ��
�� 
TEXT � o      ���� 0 thefile theFile �  � � � l  	 	��������  ��  ��   �  � � � l  	 	�� � ���   �    Open the file for writing    � � � � 4   O p e n   t h e   f i l e   f o r   w r i t i n g �  � � � r   	  � � � I  	 �� � �
�� .rdwropenshor       file � 4   	 �� �
�� 
file � o    ���� 0 thefile theFile � �� ���
�� 
perm � m    ��
�� boovtrue��   � o      ���� 0 theopenedfile theOpenedFile �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � 6 0 Clear the file if content should be overwritten    � � � � `   C l e a r   t h e   f i l e   i f   c o n t e n t   s h o u l d   b e   o v e r w r i t t e n �  � � � Z   ' � ����� � =    � � � o    ���� 40 overwriteexistingcontent overwriteExistingContent � m    ��
�� boovtrue � I   #�� � �
�� .rdwrseofnull���     **** � o    ���� 0 theopenedfile theOpenedFile � �� ���
�� 
set2 � m    ����  ��  ��  ��   �  � � � l  ( (��������  ��  ��   �  � � � l  ( (�� � ���   � ( " Write the new content to the file    � � � � D   W r i t e   t h e   n e w   c o n t e n t   t o   t h e   f i l e �  � � � I  ( 1�� � �
�� .rdwrwritnull���     **** � o   ( )���� 0 thetext theText � � � �
� 
refn � o   * +�~�~ 0 theopenedfile theOpenedFile � �} ��|
�} 
wrat � m   , -�{
�{ rdwreof �|   �  � � � I  2 ;�z � �
�z .rdwrwritnull���     **** � 1   2 3�y
�y 
lnfd � �x � �
�x 
refn � o   4 5�w�w 0 theopenedfile theOpenedFile � �v ��u
�v 
wrat � m   6 7�t
�t rdwreof �u   �  � � � l  < <�s�r�q�s  �r  �q   �  � � � l  < <�p � ��p   �   Close the file    � � � �    C l o s e   t h e   f i l e �  � � � I  < A�o ��n
�o .rdwrclosnull���     **** � o   < =�m�m 0 theopenedfile theOpenedFile�n   �  � � � l  B B�l�k�j�l  �k  �j   �  � � � l  B B�i � ��i   � > 8 Return a boolean indicating that writing was successful    � � � � p   R e t u r n   a   b o o l e a n   i n d i c a t i n g   t h a t   w r i t i n g   w a s   s u c c e s s f u l �  � � � L   B D � � m   B C�h
�h boovtrue �  � � � l  E E�g�f�e�g  �f  �e   �  ��d � l  E E�c � ��c   �   Handle a write error    � � � � *   H a n d l e   a   w r i t e   e r r o r�d   � R      �b�a�`
�b .ascrerr ****      � ****�a  �`   � k   N e � �  � � � l  N N�_�^�]�_  �^  �]   �  � � � l  N N�\ � ��\   �   Close the file    � � � �    C l o s e   t h e   f i l e �  � � � Q   N b � ��[ � I  Q Y�Z ��Y
�Z .rdwrclosnull���     **** � 4   Q U�X �
�X 
file � o   S T�W�W 0 thefile theFile�Y   � R      �V�U�T
�V .ascrerr ****      � ****�U  �T  �[   �  � � � l  c c�S�R�Q�S  �R  �Q   �  � � � l  c c�P �P    6 0 Return a boolean indicating that writing failed    � `   R e t u r n   a   b o o l e a n   i n d i c a t i n g   t h a t   w r i t i n g   f a i l e d � �O L   c e m   c d�N
�N boovfals�O   �  l     �M�L�K�M  �L  �K    l      �J	
�J  	 � � ================================================================
FUNTION: Splits a String with a given delimiter
RETURNS: List of String  (List)
==================================================================   
 ��   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 F U N T I O N :   S p l i t s   a   S t r i n g   w i t h   a   g i v e n   d e l i m i t e r 
 R E T U R N S :   L i s t   o f   S t r i n g     ( L i s t ) 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  i     I      �I�H�I 0 stringsplit StringSplit  o      �G�G 0 	thestring 	theString �F o      �E�E 0 thedelimiter theDelimiter�F  �H   k       l     �D�D   . ( save delimiters to restore old settings    � P   s a v e   d e l i m i t e r s   t o   r e s t o r e   o l d   s e t t i n g s  r      n     1    �C
�C 
txdl 1     �B
�B 
ascr o      �A�A 0 olddelimiters oldDelimiters  !  l   �@"#�@  " - ' set delimiters to delimiter to be used   # �$$ N   s e t   d e l i m i t e r s   t o   d e l i m i t e r   t o   b e   u s e d! %&% r    '(' o    �?�? 0 thedelimiter theDelimiter( n     )*) 1    
�>
�> 
txdl* 1    �=
�= 
ascr& +,+ l   �<-.�<  -   create the array   . �// "   c r e a t e   t h e   a r r a y, 010 r    232 n    454 2    �;
�; 
citm5 o    �:�: 0 	thestring 	theString3 o      �9�9 0 thearray theArray1 676 l   �889�8  8   restore the old setting   9 �:: 0   r e s t o r e   t h e   o l d   s e t t i n g7 ;<; r    =>= o    �7�7 0 olddelimiters oldDelimiters> n     ?@? 1    �6
�6 
txdl@ 1    �5
�5 
ascr< ABA l   �4CD�4  C   return the result   D �EE $   r e t u r n   t h e   r e s u l tB F�3F L    GG o    �2�2 0 thearray theArray�3   HIH l     �1�0�/�1  �0  �/  I JKJ l      �.LM�.  L � � ================================================================
FUNTION: Log message to logger
RETURNS: -
==================================================================   M �NN\   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 F U N T I O N :   L o g   m e s s a g e   t o   l o g g e r 
 R E T U R N S :   - 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =K O�-O i    PQP I     �,R�+
�, .ascrcmnt****      � ****R l     S�*�)S o      �(�( 0 thelog theLog�*  �)  �+  Q I    	�'T�&
�' .sysoexecTEXT���     TEXTT b     UVU b     WXW m     YY �ZZ , l o g g e r   - t   ' A S   D E B U G '   "X o    �%�% 0 thelog theLogV m    [[ �\\  "�&  �-       �$]^_`a�$  ] �#�"�!� 
�# .aevtoappnull  �   � ****�" "0 writetexttofile writeTextToFile�! 0 stringsplit StringSplit
�  .ascrcmnt****      � ****^ � ��bc�
� .aevtoappnull  �   � ****� 0 thequery theQuery�  b �� 0 thequery theQueryc  �� � #� 8 :�� B�������� _ s���
�	
� .sysoexecTEXT���     TEXT� 0 	theaction 	theAction
� 
psxf� 0 
thedatadir 
theDataDir
� 
ctxt� 0 thedatafile theDataFile
� 
psxp
� .ascrcmnt****      � ****� 0 
therawdata 
theRawData
� 
file
� .rdwrread****        ****
� 
cpar�  �  
� .coredoexnull���     ****
� .coredelonull���     ditm�
 "0 writetexttofile writeTextToFile�	 0 res  � ��j E�O�j O*��j /E�O��%�%�%�&E�O���,%j OjvE�O *��/j a -E�W X  a j Oa  *��/j  *��/j Y hUO*��&�fm+ E` OP_ � ���de�� "0 writetexttofile writeTextToFile� �f� f  ���� 0 thetext theText� 0 thefile theFile� 40 overwriteexistingcontent overwriteExistingContent�  d � �������  0 thetext theText�� 0 thefile theFile�� 40 overwriteexistingcontent overwriteExistingContent�� 0 theopenedfile theOpenedFilee ������������������������������
�� 
TEXT
�� 
file
�� 
perm
�� .rdwropenshor       file
�� 
set2
�� .rdwrseofnull���     ****
�� 
refn
�� 
wrat
�� rdwreof �� 
�� .rdwrwritnull���     ****
�� 
lnfd
�� .rdwrclosnull���     ****��  ��  � f H��&E�O*�/�el E�O�e  ��jl Y hO����� 
O����� 
O�j OeOPW X   *�/j W X  hOf` ������gh���� 0 stringsplit StringSplit�� ��i�� i  ������ 0 	thestring 	theString�� 0 thedelimiter theDelimiter��  g ���������� 0 	thestring 	theString�� 0 thedelimiter theDelimiter�� 0 olddelimiters oldDelimiters�� 0 thearray theArrayh ������
�� 
ascr
�� 
txdl
�� 
citm�� ��,E�O���,FO��-E�O���,FO�a ��Q����jk��
�� .ascrcmnt****      � ****�� 0 thelog theLog��  j ���� 0 thelog theLogk Y[��
�� .sysoexecTEXT���     TEXT�� 
�%�%j  ascr  ��ޭ