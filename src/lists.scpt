FasdUAS 1.101.10   ��   ��    k             i         I     �� 	��
�� .aevtoappnull  �   � **** 	 o      ���� 0 thequery theQuery��    k    � 
 
     l     ��������  ��  ��        l         r         I    �� ��
�� .sysoexecTEXT���     TEXT  m        �    e c h o   $ t h e A c t i o n��    o      ���� 0 	theaction 	theAction  1 + Load action Project config or label config     �   V   L o a d   a c t i o n   P r o j e c t   c o n f i g   o r   l a b e l   c o n f i g      l   ��������  ��  ��        l   ��  ��    ) # Load json script for Script Filter     �   F   L o a d   j s o n   s c r i p t   f o r   S c r i p t   F i l t e r       r     ! " ! 4    �� #
�� 
psxf # l  
  $���� $ b   
  % & % l  
  '���� ' I  
 �� (��
�� .sysoexecTEXT���     TEXT ( m   
  ) ) � * *  p w d��  ��  ��   & m     + + � , ,  / j s o n . s c p t��  ��   " o      ���� 0 thejsonpath theJsonPath    - . - r     / 0 / I   �� 1��
�� .sysoloadscpt        file 1 c     2 3 2 o    ���� 0 thejsonpath theJsonPath 3 m    ��
�� 
alis��   0 o      ���� 0 json   .  4 5 4 l   ��������  ��  ��   5  6 7 6 r    ) 8 9 8 4    '�� :
�� 
psxf : l  ! & ;���� ; I  ! &�� <��
�� .sysoexecTEXT���     TEXT < m   ! " = = � > > 4 e c h o   $ a l f r e d _ w o r k f l o w _ d a t a��  ��  ��   9 o      ���� 0 
thedatadir 
theDataDir 7  ? @ ? l  * *��������  ��  ��   @  A B A l  * *��������  ��  ��   B  C D C l  * *�� E F��   E ; 5	set theToken to do shell script "echo $todoistToken"    F � G G j 	 s e t   t h e T o k e n   t o   d o   s h e l l   s c r i p t   " e c h o   $ t o d o i s t T o k e n " D  H I H r   * 1 J K J I  * /�� L��
�� .sysoexecTEXT���     TEXT L m   * + M M � N N $ e c h o   $ t o d o i s t T o k e n��   K o      ���� 0 thetoken theToken I  O P O l  2 2��������  ��  ��   P  Q R Q l  2 2�� S T��   S , & Get List of all projects from Todoist    T � U U L   G e t   L i s t   o f   a l l   p r o j e c t s   f r o m   T o d o i s t R  V W V Z   2 \ X Y���� X =  2 5 Z [ Z o   2 3���� 0 	theaction 	theAction [ m   3 4 \ \ � ] ]  p r o j e c t Y k   8 X ^ ^  _ ` _ r   8 C a b a b   8 ? c d c b   8 ; e f e m   8 9 g g � h h � c u r l   - X   G E T   h t t p s : / / b e t a . t o d o i s t . c o m / A P I / v 8 / p r o j e c t s   - H   " A u t h o r i z a t i o n :   B e a r e r   f o   9 :���� 0 thetoken theToken d m   ; > i i � j j  " b o      ���� 0 curl   `  k l k r   D Q m n m c   D M o p o b   D I q r q o   D E���� 0 
thedatadir 
theDataDir r m   E H s s � t t  : p r o j e c t . t x t p m   I L��
�� 
ctxt n o      ���� 0 thedatafile theDataFile l  u�� u r   R X v w v J   R T����   w o      ����  0 theprojectdata theProjectData��  ��  ��   W  x y x l  ] ]��������  ��  ��   y  z { z l  ] ]�� | }��   | , & Get List of all lablels from Tododist    } � ~ ~ L   G e t   L i s t   o f   a l l   l a b l e l s   f r o m   T o d o d i s t {   �  Z   ] � � ����� � =  ] b � � � o   ] ^���� 0 	theaction 	theAction � m   ^ a � � � � � 
 l a b e l � k   e � � �  � � � r   e r � � � b   e n � � � b   e j � � � m   e h � � � � � � c u r l   - X   G E T   h t t p s : / / b e t a . t o d o i s t . c o m / A P I / v 8 / l a b e l s   - H   " A u t h o r i z a t i o n :   B e a r e r   � o   h i���� 0 thetoken theToken � m   j m � � � � �  " � o      ���� 0 curl   �  ��� � r   s � � � � c   s | � � � b   s x � � � o   s t���� 0 
thedatadir 
theDataDir � m   t w � � � � �  : l a b e l . t x t � m   x {��
�� 
ctxt � o      ���� 0 thedatafile theDataFile��  ��  ��   �  � � � l  � � � � � � r   � � � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � o   � ����� 0 curl  ��   � o      ���� 0 thejson theJson �   get Json from response    � � � � .   g e t   J s o n   f r o m   r e s p o n s e �  � � � l  � ��� � ���   � ( " Read JSON into Applescript Record    � � � � D   R e a d   J S O N   i n t o   A p p l e s c r i p t   R e c o r d �  � � � r   � � � � � I   � ��� ����� 0 getjson getJSON �  ��� � o   � ����� 0 thejson theJson��  ��   � o      ���� "0 thetodoistitems theTodoistItems �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � !  read project or label file    � � � � 6   r e a d   p r o j e c t   o r   l a b e l   f i l e �  � � � Q   � � � � � � r   � � � � � n   � � � � � 2  � ���
�� 
cpar � l  � � ����� � I  � ��� ���
�� .rdwrread****        **** � 4   � ��� �
�� 
file � o   � ����� 0 thedatafile theDataFile��  ��  ��   � o      ���� 0 thedata theData � R      ������
�� .ascrerr ****      � ****��  ��   � k   � � � �  � � � r   � � � � � m   � � � � � � �   � o      ���� 0 thedata theData �  ��� � l  � ��� � ���   �  log ("file empty")    � � � � $ l o g   ( " f i l e   e m p t y " )��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � ( " get id from project or label data    � � � � D   g e t   i d   f r o m   p r o j e c t   o r   l a b e l   d a t a �  � � � r   � � � � � m   � � � � � � �   � o      ���� 0 thecurrentid theCurrentId �  � � � Z   � � ����� � >  � � � � � o   � ����� 0 thedata theData � m   � � � � � � �   � k   � � �  � � � r   � � � � � I   � ��� ����� 0 stringsplit StringSplit �  � � � c   � � � � � o   � ����� 0 thedata theData � m   � ���
�� 
ctxt �  ��� � m   � � � � � � �  |��  ��   � o      ���� 0 	therecord 	theRecord �  � � � r   � � � � I   � ��� ����� 0 stringsplit StringSplit �  � � � l  � � ����� � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� 0 	therecord 	theRecord��  ��   �  ��� � m   � � � � � � �  :��  ��   � o      ���� 0 
theidarray 
theIdArray �  ��� � r     n  
 4  
��
�� 
cobj m  	����  o  �� 0 
theidarray 
theIdArray o      �~�~ 0 thecurrentid theCurrentId��  ��  ��   �  l �}�|�{�}  �|  �{    l �z	
�z  	  -------    
 �  - - - - - - -    l �y�y     Generate Script Filter    � .   G e n e r a t e   S c r i p t   F i l t e r  l �x�x    ------    �  - - - - - -  r   J  �w�w   o      �v�v 0 theitems theItems  l �u�t�s�u  �t  �s    l �r�r   "  script filter item for None    �   8   s c r i p t   f i l t e r   i t e m   f o r   N o n e !"! r  -#$# n )%&% I  )�q'�p�q  0 createdictwith createDictWith' (�o( J  %)) *�n* J  #++ ,-, m  .. �// 
 t i t l e- 0�m0 m  !11 �22  N O N E�m  �n  �o  �p  & o  �l�l 0 json  $ o      �k�k 0 theitem theItem" 343 n .;565 I  1;�j7�i�j 	0 setkv  7 898 m  14:: �;;  s u b t i t l e9 <�h< m  47== �>>  �h  �i  6 o  .1�g�g 0 theitem theItem4 ?@? n <IABA I  ?I�fC�e�f 	0 setkv  C DED m  ?BFF �GG  a r gE H�dH m  BEII �JJ  :�d  �e  B o  <?�c�c 0 theitem theItem@ KLK n JWMNM I  MW�bO�a�b 	0 setkv  O PQP m  MPRR �SS  q u i c k l o o k u r lQ T�`T m  PSUU �VV  �`  �a  N o  JM�_�_ 0 theitem theItemL WXW l XX�^�]�\�^  �]  �\  X YZY r  Xk[\[ n Xg]^] I  Yg�[_�Z�[  0 createdictwith createDictWith_ `�Y` J  Ycaa b�Xb J  Yacc ded m  Y\ff �gg  t y p ee h�Wh m  \_ii �jj 
 i m a g e�W  �X  �Y  �Z  ^ o  XY�V�V 0 json  \ o      �U�U 0 theicon theIconZ klk l ll�T�S�R�T  �S  �R  l mnm l ll�Qop�Q  o _ Y change icon, checked if nothing was set, unchecked icon in case project or label was set   p �qq �   c h a n g e   i c o n ,   c h e c k e d   i f   n o t h i n g   w a s   s e t ,   u n c h e c k e d   i c o n   i n   c a s e   p r o j e c t   o r   l a b e l   w a s   s e tn rsr Z  l�tu�Pvt = lswxw o  lo�O�O 0 thecurrentid theCurrentIdx m  oryy �zz  u n v�{|{ I  y��N}�M�N 	0 setkv  } ~~ m  y|�� ���  p a t h ��L� m  |�� ���  c h e c k e d . p n g�L  �M  | o  vy�K�K 0 theicon theIcon�P  v n ����� I  ���J��I�J 	0 setkv  � ��� m  ���� ���  p a t h� ��H� m  ���� ���  u n c h e c k e d . p n g�H  �I  � o  ���G�G 0 theicon theIcons ��� l ���F�E�D�F  �E  �D  � ��� n ����� I  ���C��B�C 	0 setkv  � ��� m  ���� ���  i c o n� ��A� o  ���@�@ 0 theicon theIcon�A  �B  � o  ���?�? 0 theitem theItem� ��� r  ����� o  ���>�> 0 theitem theItem� n      ���  ;  ��� o  ���=�= 0 theitems theItems� ��� l ���<�;�:�<  �;  �:  � ��� l ���9���9  � 7 1 Generate script filter items from JSON/Dictonary   � ��� b   G e n e r a t e   s c r i p t   f i l t e r   i t e m s   f r o m   J S O N / D i c t o n a r y� ��� X  �}��8�� k  �x�� ��� r  ����� I  ���7��6�7 0 number_to_string  � ��5� n  ����� o  ���4�4 0 id  � o  ���3�3 0 theitem theItem�5  �6  � o      �2�2 0 theid theId� ��� r  ����� n  ����� o  ���1�1 0 name  � o  ���0�0 0 theitem theItem� o      �/�/ 0 thename theName� ��� r  ����� b  ����� b  ����� b  ����� m  ���� ���  i d :� o  ���.�. 0 theid theId� m  ���� ���  | n a m e :� o  ���-�- 0 thename theName� o      �,�, 0 thearg theArg� ��� r  ����� n ����� I  ���+��*�+  0 createdictwith createDictWith� ��)� J  ���� ��(� J  ���� ��� m  ���� ��� 
 t i t l e� ��'� o  ���&�& 0 thename theName�'  �(  �)  �*  � o  ���%�% 0 json  � o      �$�$ 0 theitem theItem� ��� n  ��� I  �#��"�# 	0 setkv  � ��� m  �� ���  s u b t i t l e� ��!� l �� �� c  ��� o  �� 0 theid theId� m  
�
� 
ctxt�   �  �!  �"  � o   �� 0 theitem theItem� ��� n ��� I  ���� 	0 setkv  � ��� m  �� ���  a r g� ��� o  �� 0 thearg theArg�  �  � o  �� 0 theitem theItem� ��� n '��� I  '���� 	0 setkv  � ��� m   �� ���  q u i c k l o o k u r l� ��� m   #�� ���  �  �  � o  �� 0 theitem theItem� ��� l ((����  �  �  � ��� r  (;   n (7 I  )7���  0 createdictwith createDictWith � J  )3 � J  )1 	
	 m  ), �  t y p e
 � m  ,/ � 
 i m a g e�  �  �  �   o  ()�
�
 0 json   o      �	�	 0 theicon theIcon�  Z  <c� = <C o  <?�� 0 thecurrentid theCurrentId o  ?B�� 0 theid theId n FS I  IS��� 	0 setkv    m  IL �  p a t h � m  LO �    c h e c k e d . p n g�  �   o  FI�� 0 theicon theIcon�   n Vc!"! I  Yc�#� � 	0 setkv  # $%$ m  Y\&& �''  p a t h% (��( m  \_)) �**  u n c h e c k e d . p n g��  �   " o  VY���� 0 theicon theIcon +,+ l dd��������  ��  ��  , -.- n do/0/ I  eo��1���� 	0 setkv  1 232 m  eh44 �55  i c o n3 6��6 o  hk���� 0 theicon theIcon��  ��  0 o  de���� 0 theitem theItem. 787 l pp��������  ��  ��  8 9:9 r  pv;<; o  pq���� 0 theitem theItem< n      =>=  ;  tu> o  qt���� 0 theitems theItems: ?��? l ww��������  ��  ��  ��  �8 0 theitem theItem� o  ������ "0 thetodoistitems theTodoistItems� @A@ l ~~��������  ��  ��  A BCB l ~~��DE��  D 2 , Create root items object and encode to JSON   E �FF X   C r e a t e   r o o t   i t e m s   o b j e c t   a n d   e n c o d e   t o   J S O NC GHG r  ~�IJI n ~�KLK I  ��������� 0 
createdict 
createDict��  ��  L o  ~���� 0 json  J o      ���� 0 itemdict itemDictH MNM n ��OPO I  ����Q���� 	0 setkv  Q RSR m  ��TT �UU 
 i t e m sS V��V o  ������ 0 theitems theItems��  ��  P o  ������ 0 itemdict itemDictN WXW l ����������  ��  ��  X YZY L  ��[[ n ��\]\ I  ����^���� 
0 encode  ^ _��_ o  ������ 0 itemdict itemDict��  ��  ] o  ������ 0 json  Z `��` l ����������  ��  ��  ��    aba l     ��������  ��  ��  b cdc l      ��ef��  e � � ================================================================
FUNTION: Convert Scientific Number to a String
RETURNS: String
==================================================================   f �gg�   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 F U N T I O N :   C o n v e r t   S c i e n t i f i c   N u m b e r   t o   a   S t r i n g 
 R E T U R N S :   S t r i n g 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =d hih i    jkj I      ��l���� 0 number_to_string  l m��m o      ���� 0 this_number  ��  ��  k k    ]nn opo r     qrq c     sts o     ���� 0 this_number  t m    ��
�� 
TEXTr o      ���� 0 this_number  p uvu Z   Zwx��yw E    	z{z o    ���� 0 this_number  { m    || �}}  E +x k    �~~ � r    ��� l   ������ I   �����
�� .sysooffslong    ��� null��  � ����
�� 
psof� m    �� ���  .� �����
�� 
psin� o    ���� 0 this_number  ��  ��  ��  � o      ���� 0 x  � ��� r    #��� l   !������ I   !�����
�� .sysooffslong    ��� null��  � ����
�� 
psof� m    �� ���  +� �����
�� 
psin� o    ���� 0 this_number  ��  ��  ��  � o      ���� 0 y  � ��� r   $ /��� l  $ -������ I  $ -�����
�� .sysooffslong    ��� null��  � ����
�� 
psof� m   & '�� ���  E� �����
�� 
psin� o   ( )���� 0 this_number  ��  ��  ��  � o      ���� 0 z  � ��� r   0 E��� c   0 C��� c   0 A��� n   0 ?��� 7  1 ?����
�� 
cha � l  5 ;������ \   5 ;��� o   6 7���� 0 y  � l  7 :������ n   7 :��� 1   8 :��
�� 
leng� o   7 8���� 0 this_number  ��  ��  ��  ��  � l 	 < >������ m   < >��������  ��  � o   0 1���� 0 this_number  � m   ? @��
�� 
TEXT� m   A B��
�� 
nmbr� l     ������ o      ���� 0 decimal_adjust  ��  ��  � ��� Z   F c������ >  F I��� o   F G���� 0 x  � m   G H����  � r   L ]��� c   L [��� n   L Y��� 7  M Y����
�� 
cha � m   Q S���� � l  T X������ \   T X��� o   U V���� 0 x  � m   V W���� ��  ��  � o   L M���� 0 this_number  � m   Y Z��
�� 
TEXT� l     ������ o      ���� 0 
first_part  ��  ��  ��  � r   ` c��� m   ` a�� ���  � l     ������ o      ���� 0 
first_part  ��  ��  � ��� r   d w��� c   d u��� n   d s��� 7  e s����
�� 
cha � l  i m������ [   i m��� o   j k���� 0 x  � m   k l���� ��  ��  � l  n r������ \   n r��� o   o p���� 0 z  � m   p q�� ��  ��  � o   d e�~�~ 0 this_number  � m   s t�}
�} 
TEXT� l     ��|�{� o      �z�z 0 second_part  �|  �{  � ��� r   x {��� l  x y��y�x� o   x y�w�w 0 
first_part  �y  �x  � l     ��v�u� o      �t�t 0 converted_number  �v  �u  � ��� Y   | ���s���r� Q   � ����� r   � ���� b   � ���� l 	 � ���q�p� l  � ���o�n� o   � ��m�m 0 converted_number  �o  �n  �q  �p  � n   � ���� 4   � ��l�
�l 
cha � o   � ��k�k 0 i  � l  � ���j�i� o   � ��h�h 0 second_part  �j  �i  � l     ��g�f� o      �e�e 0 converted_number  �g  �f  � R      �d�c�b
�d .ascrerr ****      � ****�c  �b  � r   � ���� b   � ���� l  � ���a�`� o   � ��_�_ 0 converted_number  �a  �`  � m   � ��� ���  0� l     ��^�]� o      �\�\ 0 converted_number  �^  �]  �s 0 i  � m    ��[�[ � l  � ���Z�Y� o   � ��X�X 0 decimal_adjust  �Z  �Y  �r  � ��W� L   � �   l  � ��V�U o   � ��T�T 0 converted_number  �V  �U  �W  ��  y Z   �Z�S E   � � o   � ��R�R 0 this_number   m   � � �  E - k   �T		 

 r   � � l  � ��Q�P I  � ��O�N
�O .sysooffslong    ��� null�N   �M
�M 
psof m   � � �  . �L�K
�L 
psin o   � ��J�J 0 this_number  �K  �Q  �P   o      �I�I 0 x    r   � � l  � ��H�G I  � ��F�E
�F .sysooffslong    ��� null�E   �D
�D 
psof m   � � �  - �C�B
�C 
psin o   � ��A�A 0 this_number  �B  �H  �G   o      �@�@ 0 y    !  r   � �"#" l  � �$�?�>$ I  � ��=�<%
�= .sysooffslong    ��� null�<  % �;&'
�; 
psof& m   � �(( �))  E' �:*�9
�: 
psin* o   � ��8�8 0 this_number  �9  �?  �>  # o      �7�7 0 z  ! +,+ Z   � �-.�6/- >  � �010 o   � ��5�5 0 x  1 m   � ��4�4  . r   � �232 n   � �454 7  � ��367
�3 
ctxt6 m   � ��2�2 7 l  � �8�1�08 \   � �9:9 o   � ��/�/ 0 x  : m   � ��.�. �1  �0  5 o   � ��-�- 0 this_number  3 l     ;�,�+; o      �*�* 0 
first_part  �,  �+  �6  / r   � �<=< m   � �>> �??  = l     @�)�(@ o      �'�' 0 
first_part  �)  �(  , ABA r   �CDC n   �EFE 7  ��&GH
�& 
ctxtG l I�%�$I [  JKJ o  �#�# 0 x  K m  �"�" �%  �$  H l L�!� L \  MNM o  	�� 0 z  N m  	
�� �!  �   F o   � ��� 0 this_number  D l     O��O o      �� 0 second_part  �  �  B PQP r  RSR b  TUT l V��V o  �� 0 
first_part  �  �  U o  �� 0 second_part  S l     W��W o      �� 0 converted_number  �  �  Q XYX r  (Z[Z c  &\]\ n  $^_^ 7 $�`a
� 
ctxt` l  b��b [   cdc o  �� 0 y  d m  �� �  �  a m  !#����_ o  �� 0 this_number  ] m  $%�
� 
nmbr[ o      �
�
 0 n  Y efe r  ).ghg m  ),ii �jj  0 .h o      �	�	 0 zero  f klk l //����  �  �  l mnm Z  /Nop��o ?  /2qrq o  /0�� 0 n  r m  01�� p U  5Jsts r  >Euvu b  >Cwxw o  >?�� 0 zero  x m  ?Byy �zz  0v o      � �  0 zero  t l 8;{����{ \  8;|}| o  89���� 0 n  } m  9:���� ��  ��  �  �  n ~��~ r  OT� b  OR��� o  OP���� 0 zero  � o  PQ���� 0 converted_number  � o      ���� 0 converted_number  ��  �S   r  WZ��� o  WX���� 0 this_number  � o      ���� 0 converted_number  v ��� l [[��������  ��  ��  � ���� L  []�� o  [\���� 0 converted_number  ��  i ��� l     ��������  ��  ��  � ��� l      ������  � � � ================================================================
FUNTION: Splits a String with a given delimiter
RETURNS: List of String  (List)
==================================================================   � ����   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 F U N T I O N :   S p l i t s   a   S t r i n g   w i t h   a   g i v e n   d e l i m i t e r 
 R E T U R N S :   L i s t   o f   S t r i n g     ( L i s t ) 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =� ��� i    ��� I      ������� 0 stringsplit StringSplit� ��� o      ���� 0 	thestring 	theString� ���� o      ���� 0 thedelimiter theDelimiter��  ��  � k     �� ��� l     ������  � . ( save delimiters to restore old settings   � ��� P   s a v e   d e l i m i t e r s   t o   r e s t o r e   o l d   s e t t i n g s� ��� r     ��� n    ��� 1    ��
�� 
txdl� 1     ��
�� 
ascr� o      ���� 0 olddelimiters oldDelimiters� ��� l   ������  � - ' set delimiters to delimiter to be used   � ��� N   s e t   d e l i m i t e r s   t o   d e l i m i t e r   t o   b e   u s e d� ��� r    ��� o    ���� 0 thedelimiter theDelimiter� n     ��� 1    
��
�� 
txdl� 1    ��
�� 
ascr� ��� l   ������  �   create the array   � ��� "   c r e a t e   t h e   a r r a y� ��� r    ��� n    ��� 2    ��
�� 
citm� o    ���� 0 	thestring 	theString� o      ���� 0 thearray theArray� ��� l   ������  �   restore the old setting   � ��� 0   r e s t o r e   t h e   o l d   s e t t i n g� ��� r    ��� o    ���� 0 olddelimiters oldDelimiters� n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ��� l   ������  �   return the result   � ��� $   r e t u r n   t h e   r e s u l t� ���� L    �� o    ���� 0 thearray theArray��  � ��� l     ��������  ��  ��  � ��� l      ������  � o i========================
Function: getJSON(theJSON)
Returen: Applescript Record
=========================   � ��� � = = = = = = = = = = = = = = = = = = = = = = = = 
 F u n c t i o n :   g e t J S O N ( t h e J S O N ) 
 R e t u r e n :   A p p l e s c r i p t   R e c o r d 
 = = = = = = = = = = = = = = = = = = = = = = = = =� ���� i    ��� I      ������� 0 getjson getJSON� ���� o      ���� 0 thejson theJson��  ��  � k     �� ��� r     ��� I    �����
�� .sysodsct****        scpt� l    ������ I    �����
�� .sysoexecTEXT���     TEXT� l    ������ b     ��� b     ��� m     �� ��� 
 e c h o  � n   ��� 1    ��
�� 
strq� o    ���� 0 thejson theJson� m    �� ��� �   |   s e d   - E   ' s / " ( [ ^ " ] + ) " [ [ : s p a c e : ] ] * : [ [ : s p a c e : ] ] * / | \ 1 | : / g '   |   t r   - d   ' \ n \ r '��  ��  ��  ��  ��  ��  � o      ���� $0 applescriptvalue applescriptValue� ���� L    �� o    ���� $0 applescriptvalue applescriptValue��  ��       ���������  � ��������
�� .aevtoappnull  �   � ****�� 0 number_to_string  �� 0 stringsplit StringSplit�� 0 getjson getJSON� �� ��������
�� .aevtoappnull  �   � ****�� 0 thequery theQuery��  � ������ 0 thequery theQuery�� 0 theitem theItem� \ ������ ) +�������� =�� M�� \ g i�� s������ � � � ������������������� � ��� � ������� �����.1����:=��FIRUfi��y����������������������������&)4����T��
�� .sysoexecTEXT���     TEXT�� 0 	theaction 	theAction
�� 
psxf�� 0 thejsonpath theJsonPath
�� 
alis
�� .sysoloadscpt        file�� 0 json  �� 0 
thedatadir 
theDataDir�� 0 thetoken theToken�� 0 curl  
�� 
ctxt�� 0 thedatafile theDataFile��  0 theprojectdata theProjectData�� 0 thejson theJson�� 0 getjson getJSON�� "0 thetodoistitems theTodoistItems
�� 
file
�� .rdwrread****        ****
�� 
cpar�� 0 thedata theData��  ��  �� 0 thecurrentid theCurrentId�� 0 stringsplit StringSplit�� 0 	therecord 	theRecord
�� 
cobj�� 0 
theidarray 
theIdArray�� 0 theitems theItems��  0 createdictwith createDictWith�� 0 theitem theItem�� 	0 setkv  �� 0 theicon theIcon
�� 
kocl
�� .corecnte****       ****�� 0 id  �� 0 number_to_string  �� 0 theid theId�� 0 name  �� 0 thename theName�� 0 thearg theArg�� 0 
createdict 
createDict�� 0 itemdict itemDict�� 
0 encode  ����j E�O*��j �%/E�O��&j E�O*��j /E�O�j E�O��  %��%a %E` O�a %a &E` OjvE` Y hO�a    a �%a %E` O�a %a &E` Y hO_ j E` O*_ k+ E` O *a _ /j a -E`  W X ! "a #E`  OPOa $E` %O_  a & :*_  a &a 'l+ (E` )O*_ )a *k/a +l+ (E` ,O_ ,a *l/E` %Y hOjvE` -O�a .a /lvkvk+ 0E` 1O_ 1a 2a 3l+ 4O_ 1a 5a 6l+ 4O_ 1a 7a 8l+ 4O�a 9a :lvkvk+ 0E` ;O_ %a <  _ ;a =a >l+ 4Y _ ;a ?a @l+ 4O_ 1a A_ ;l+ 4O_ 1_ -6FO �_ [a Ba *l Ckh *�a D,k+ EE` FO�a G,E` HOa I_ F%a J%_ H%E` KO�a L_ Hlvkvk+ 0E�O�a M_ Fa &l+ 4O�a N_ Kl+ 4O�a Oa Pl+ 4O�a Qa Rlvkvk+ 0E` ;O_ %_ F  _ ;a Sa Tl+ 4Y _ ;a Ua Vl+ 4O�a W_ ;l+ 4O�_ -6FOP[OY�CO�j+ XE` YO_ Ya Z_ -l+ 4O�_ Yk+ [OP� ��k���������� 0 number_to_string  �� ����� �  ���� 0 this_number  ��  � ��������~�}�|�{�z�y�x�� 0 this_number  �� 0 x  �� 0 y  � 0 z  �~ 0 decimal_adjust  �} 0 
first_part  �| 0 second_part  �{ 0 converted_number  �z 0 i  �y 0 n  �x 0 zero  � �w|�v��u�t�s���r�q�p��o�n�(�m>iy
�w 
TEXT
�v 
psof
�u 
psin�t 
�s .sysooffslong    ��� null
�r 
cha 
�q 
leng
�p 
nmbr�o  �n  
�m 
ctxt��^��&E�O�� �*���� E�O*���� E�O*���� E�O�[�\[Z���,\Zi2�&�&E�O�j �[�\[Zk\Z�k2�&E�Y �E�O�[�\[Z�k\Z�k2�&E�O�E�O &k�kh  ���/%E�W X  ��%E�[OY��O�Y ��a  �*�a �� E�O*�a �� E�O*�a �� E�O�j �[a \[Zk\Z�k2E�Y a E�O�[a \[Z�k\Z�k2E�O��%E�O�[a \[Z�k\Zi2�&E�Oa E�O�k  �kkh�a %E�[OY��Y hO��%E�Y �E�O�� �l��k�j���i�l 0 stringsplit StringSplit�k �h��h �  �g�f�g 0 	thestring 	theString�f 0 thedelimiter theDelimiter�j  � �e�d�c�b�e 0 	thestring 	theString�d 0 thedelimiter theDelimiter�c 0 olddelimiters oldDelimiters�b 0 thearray theArray� �a�`�_
�a 
ascr
�` 
txdl
�_ 
citm�i ��,E�O���,FO��-E�O���,FO�� �^��]�\���[�^ 0 getjson getJSON�] �Z��Z �  �Y�Y 0 thejson theJson�\  � �X�W�X 0 thejson theJson�W $0 applescriptvalue applescriptValue� ��V��U�T
�V 
strq
�U .sysoexecTEXT���     TEXT
�T .sysodsct****        scpt�[ ��,%�%j j E�O�ascr  ��ޭ