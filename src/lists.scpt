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
 i m a g e�W  �X  �Y  �Z  ^ o  XY�V�V 0 json  \ o      �U�U 0 theicon theIconZ klk l ll�T�S�R�T  �S  �R  l mnm l ll�Qop�Q  o _ Y change icon, checked if nothing was set, unchecked icon in case project or label was set   p �qq �   c h a n g e   i c o n ,   c h e c k e d   i f   n o t h i n g   w a s   s e t ,   u n c h e c k e d   i c o n   i n   c a s e   p r o j e c t   o r   l a b e l   w a s   s e tn rsr Z  l�tu�Pvt = lswxw o  lo�O�O 0 thecurrentid theCurrentIdx m  oryy �zz  u n v�{|{ I  y��N}�M�N 	0 setkv  } ~~ m  y|�� ���  p a t h ��L� m  |�� ���  c h e c k e d . p n g�L  �M  | o  vy�K�K 0 theicon theIcon�P  v n ����� I  ���J��I�J 	0 setkv  � ��� m  ���� ���  p a t h� ��H� m  ���� ���  u n c h e c k e d . p n g�H  �I  � o  ���G�G 0 theicon theIcons ��� l ���F�E�D�F  �E  �D  � ��� n ����� I  ���C��B�C 	0 setkv  � ��� m  ���� ���  i c o n� ��A� o  ���@�@ 0 theicon theIcon�A  �B  � o  ���?�? 0 theitem theItem� ��� r  ����� o  ���>�> 0 theitem theItem� n      ���  ;  ��� o  ���=�= 0 theitems theItems� ��� l ���<�;�:�<  �;  �:  � ��� l ���9���9  � 7 1 Generate script filter items from JSON/Dictonary   � ��� b   G e n e r a t e   s c r i p t   f i l t e r   i t e m s   f r o m   J S O N / D i c t o n a r y� ��� X  ����8�� k  �|�� ��� l ���7���7  � . (display dialog (|id| of theItem) as text   � ��� P d i s p l a y   d i a l o g   ( | i d |   o f   t h e I t e m )   a s   t e x t� ��� r  ����� I  ���6��5�6  0 numbertostring numberToString� ��4� c  ����� l ����3�2� n  ����� o  ���1�1 0 id  � o  ���0�0 0 theitem theItem�3  �2  � m  ���/
�/ 
ctxt�4  �5  � o      �.�. 0 theid theId� ��� l ���-���-  �  display dialog theId   � ��� ( d i s p l a y   d i a l o g   t h e I d� ��� r  ����� n  ����� o  ���,�, 0 name  � o  ���+�+ 0 theitem theItem� o      �*�* 0 thename theName� ��� r  ����� b  ����� b  ����� b  ����� m  ���� ���  i d :� o  ���)�) 0 theid theId� m  ���� ���  | n a m e :� o  ���(�( 0 thename theName� o      �'�' 0 thearg theArg� ��� r  ���� n ���� I  ��&��%�&  0 createdictwith createDictWith� ��$� J  ���� ��#� J  ���� ��� m  ���� ��� 
 t i t l e� ��"� o  ���!�! 0 thename theName�"  �#  �$  �%  � o  ��� �  0 json  � o      �� 0 theitem theItem� ��� n ��� I  ���� 	0 setkv  � ��� m  �� ���  s u b t i t l e� ��� l ���� c  ��� o  �� 0 theid theId� m  �
� 
ctxt�  �  �  �  � o  �� 0 theitem theItem� ��� n ��� I  ���� 	0 setkv  � ��� m  �� ���  a r g� ��� o  �� 0 thearg theArg�  �  � o  �� 0 theitem theItem� ��� n  +� � I  !+��� 	0 setkv    m  !$ �  q u i c k l o o k u r l � m  $' �  �  �    o   !�� 0 theitem theItem� 	
	 l ,,����  �  �  
  r  ,? n ,; I  -;�
�	�
  0 createdictwith createDictWith � J  -7 � J  -5  m  -0 �  t y p e � m  03 � 
 i m a g e�  �  �  �	   o  ,-�� 0 json   o      �� 0 theicon theIcon  Z  @g �! = @G"#" o  @C�� 0 thecurrentid theCurrentId# o  CF�� 0 theid theId  n JW$%$ I  MW� &���  	0 setkv  & '(' m  MP)) �**  p a t h( +��+ m  PS,, �--  c h e c k e d . p n g��  ��  % o  JM���� 0 theicon theIcon�  ! n Zg./. I  ]g��0���� 	0 setkv  0 121 m  ]`33 �44  p a t h2 5��5 m  `c66 �77  u n c h e c k e d . p n g��  ��  / o  Z]���� 0 theicon theIcon 898 l hh��������  ��  ��  9 :;: n hs<=< I  is��>���� 	0 setkv  > ?@? m  ilAA �BB  i c o n@ C��C o  lo���� 0 theicon theIcon��  ��  = o  hi���� 0 theitem theItem; DED l tt��������  ��  ��  E FGF r  tzHIH o  tu���� 0 theitem theItemI n      JKJ  ;  xyK o  ux���� 0 theitems theItemsG L��L l {{��������  ��  ��  ��  �8 0 theitem theItem� o  ������ "0 thetodoistitems theTodoistItems� MNM l ����������  ��  ��  N OPO l ����QR��  Q 2 , Create root items object and encode to JSON   R �SS X   C r e a t e   r o o t   i t e m s   o b j e c t   a n d   e n c o d e   t o   J S O NP TUT r  ��VWV n ��XYX I  ���������� 0 
createdict 
createDict��  ��  Y o  ������ 0 json  W o      ���� 0 itemdict itemDictU Z[Z n ��\]\ I  ����^���� 	0 setkv  ^ _`_ m  ��aa �bb 
 i t e m s` c��c o  ������ 0 theitems theItems��  ��  ] o  ������ 0 itemdict itemDict[ ded l ����������  ��  ��  e fgf L  ��hh n ��iji I  ����k���� 
0 encode  k l��l o  ������ 0 itemdict itemDict��  ��  j o  ������ 0 json  g m��m l ����������  ��  ��  ��    non l     ��������  ��  ��  o pqp l      ��rs��  r � � ================================================================
FUNTION: Convert Scientific Number to a String
RETURNS: String
==================================================================   s �tt�   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 F U N T I O N :   C o n v e r t   S c i e n t i f i c   N u m b e r   t o   a   S t r i n g 
 R E T U R N S :   S t r i n g 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =q uvu i    wxw I      ��y����  0 numbertostring numberToStringy z��z o      ���� 0 anumber aNumber��  ��  x k    /{{ |}| r     ~~ c     ��� o     ���� 0 anumber aNumber� m    ��
�� 
ctxt o      ���� 0 anumber aNumber} ��� r    ��� I   �����
�� .sysoexecTEXT���     TEXT� b    ��� b    	��� m    �� ���  e c h o   "� o    ���� 0 anumber aNumber� m   	 
�� ���  "   |   t r   ' , '   ' . '��  � o      ���� 0 anumber aNumber� ��� l   ��������  ��  ��  � ��� l   ������  � "  check for a negative number   � ��� 8   c h e c k   f o r   a   n e g a t i v e   n u m b e r� ��� r    ��� m    ��
�� boovfals� o      ���� 0 
isnegative 
isNegative� ��� Z    4������� =   ��� n    ��� 4    ���
�� 
cha � m    ���� � o    ���� 0 anumber aNumber� m    �� ���  -� k    0�� ��� r    "��� m     ��
�� boovtrue� o      ���� 0 
isnegative 
isNegative� ���� r   # 0��� n   # .��� 7  $ .����
�� 
ctxt� m   ( *���� � m   + -������� o   # $���� 0 anumber aNumber� o      ���� 0 anumber aNumber��  ��  ��  � ��� l  5 5��������  ��  ��  � ��� Q   5���� k   8�� ��� r   8 C��� l  8 A������ I  8 A�����
�� .sysooffslong    ��� null��  � ����
�� 
psof� m   : ;�� ���  .� �����
�� 
psin� o   < =���� 0 anumber aNumber��  ��  ��  � o      ���� 0 a  � ��� r   D O��� l  D M������ I  D M�����
�� .sysooffslong    ��� null��  � ����
�� 
psof� m   F G�� ���  E� �����
�� 
psin� o   H I���� 0 anumber aNumber��  ��  ��  � o      ���� 0 b  � ��� r   P [��� l  P Y������ I  P Y�����
�� .sysooffslong    ��� null��  � ����
�� 
psof� m   R S�� ���  +� �����
�� 
psin� o   T U���� 0 anumber aNumber��  ��  ��  � o      ���� 0 c  � ��� r   \ g��� l  \ e������ I  \ e�����
�� .sysooffslong    ��� null��  � ����
�� 
psof� m   ^ _�� ���  -� �����
�� 
psin� o   ` a���� 0 anumber aNumber��  ��  ��  � o      ���� 0 d  � ��� l  h h��������  ��  ��  � ��� Z   h ������ =  h k��� o   h i�~�~ 0 b  � m   i j�}�}  � l  n {���� Z   n {���|�� o   n o�{�{ 0 
isnegative 
isNegative� L   r v�� b   r u��� m   r s�� ���  -� o   s t�z�z 0 anumber aNumber�|  � L   y {�� o   y z�y�y 0 anumber aNumber� + % we do not have an exponential number   � ��� J   w e   d o   n o t   h a v e   a n   e x p o n e n t i a l   n u m b e r��  �  � ��� l  � ��x�w�v�x  �w  �v  � ��� Z   � ����u � =  � � o   � ��t�t 0 a   m   � ��s�s  � r   � � m   � � �   o      �r�r 0 	firstpart 	firstPart�u    r   � � n   � �	
	 7  � ��q
�q 
ctxt m   � ��p�p  l  � ��o�n \   � � o   � ��m�m 0 a   m   � ��l�l �o  �n  
 o   � ��k�k 0 anumber aNumber o      �j�j 0 	firstpart 	firstPart�  l  � ��i�h�g�i  �h  �g    r   � � n   � � 7  � ��f
�f 
ctxt l  � ��e�d [   � � o   � ��c�c 0 a   m   � ��b�b �e  �d   l  � ��a�` \   � � o   � ��_�_ 0 b   m   � ��^�^ �a  �`   o   � ��]�] 0 anumber aNumber o      �\�\ 0 
secondpart 
secondPart  !  l  � ��[�Z�Y�[  �Z  �Y  ! "#" Z   �$%&'$ F   � �()( =  � �*+* o   � ��X�X 0 c  + m   � ��W�W  ) =  � �,-, o   � ��V�V 0 d  - m   � ��U�U  % l  � �./0. k   � �11 232 r   � �454 m   � ��T
�T boovtrue5 o      �S�S (0 ispositiveexponent isPositiveExponent3 6�R6 r   � �787 n   � �9:9 7  � ��Q;<
�Q 
ctxt; l  � �=�P�O= [   � �>?> o   � ��N�N 0 b  ? m   � ��M�M �P  �O  < m   � ��L�L��: o   � ��K�K 0 anumber aNumber8 o      �J�J 0 	thirdpart 	thirdPart�R  / !  assume a positive exponent   0 �@@ 6   a s s u m e   a   p o s i t i v e   e x p o n e n t& ABA >  � �CDC o   � ��I�I 0 c  D m   � ��H�H  B E�GE k   � �FF GHG r   � �IJI m   � ��F
�F boovtrueJ o      �E�E (0 ispositiveexponent isPositiveExponentH K�DK r   � �LML n   � �NON 7  � ��CPQ
�C 
ctxtP l  � �R�B�AR [   � �STS o   � ��@�@ 0 b  T m   � ��?�? �B  �A  Q m   � ��>�>��O o   � ��=�= 0 anumber aNumberM o      �<�< 0 	thirdpart 	thirdPart�D  �G  ' k   �UU VWV r   � �XYX m   � ��;
�; boovfalsY o      �:�: (0 ispositiveexponent isPositiveExponentW Z�9Z r   �[\[ n   �]^] 7  ��8_`
�8 
ctxt_ l  � �a�7�6a [   � �bcb o   � ��5�5 0 b  c m   � ��4�4 �7  �6  ` m   � �3�3��^ o   � ��2�2 0 anumber aNumber\ o      �1�1 0 	thirdpart 	thirdPart�9  # ded r  fgf c  	hih o  �0�0 0 	thirdpart 	thirdParti m  �/
�/ 
nmbrg o      �.�. 0 	thirdpart 	thirdParte jkj l �-�,�+�-  �,  �+  k l�*l Z  mn�)om o  �(�( (0 ispositiveexponent isPositiveExponentn k  �pp qrq r  sts o  �'�' 0 	firstpart 	firstPartt o      �&�& 0 	newnumber 	newNumberr uvu r  wxw o  �%�% 0 
secondpart 
secondPartx o      �$�$ 0 theremainder theRemainderv yzy Y  m{�#|}�"{ Q  "h~�~ k  %Y�� ��� r  %-��� b  %+��� o  %&�!�! 0 	newnumber 	newNumber� n  &*��� 4  '*� �
�  
cha � o  ()�� 0 i  � o  &'�� 0 
secondpart 
secondPart� o      �� 0 	newnumber 	newNumber� ��� Z  .Y����� > .3��� o  ./�� 0 theremainder theRemainder� m  /2�� ���  � Z  6U����� = 6=��� l 6;���� I 6;���
� .corecnte****       ****� o  67�� 0 theremainder theRemainder�  �  �  � m  ;<�� � r  @E��� m  @C�� ���  � o      �� 0 theremainder theRemainder�  � r  HU��� n  HS��� 7 IS���
� 
ctxt� m  MO�� � m  PR����� o  HI�� 0 theremainder theRemainder� o      �� 0 theremainder theRemainder�  �  �   R      ��
�	
� .ascrerr ****      � ****�
  �	  � r  ah��� b  af��� o  ab�� 0 	newnumber 	newNumber� m  be�� ���  0� o      �� 0 	newnumber 	newNumber�# 0 i  | m  �� } o  �� 0 	thirdpart 	thirdPart�"  z ��� l nn����  �  �  � ��� Z  n���� ��� > ns��� o  no���� 0 theremainder theRemainder� m  or�� ���  � r  v��� b  v}��� b  v{��� o  vw���� 0 	newnumber 	newNumber� m  wz�� ���  .� o  {|���� 0 theremainder theRemainder� o      ���� 0 	newnumber 	newNumber�   ��  �  �)  o k  ��� ��� l ����������  ��  ��  � ��� l ����������  ��  ��  � ��� r  ����� m  ���� ���  � o      ���� 0 	newnumber 	newNumber� ��� r  ����� o  ������ 0 	firstpart 	firstPart� o      ���� 0 theremainder theRemainder� ��� Y  ���������� Q  ������ k  ���� ��� r  ����� b  ����� n  ����� 4  �����
�� 
cha � d  ���� o  ������ 0 i  � o  ������ 0 	firstpart 	firstPart� o  ������ 0 	newnumber 	newNumber� o      ���� 0 	newnumber 	newNumber� ���� Z  ��������� > ����� o  ������ 0 theremainder theRemainder� m  ���� ���  � Z  �������� = ����� l �������� I �������
�� .corecnte****       ****� o  ������ 0 theremainder theRemainder��  ��  ��  � m  ������ � r  ����� m  ���� ���  � o      ���� 0 theremainder theRemainder��  � r  ����� n  ����� 7 ������
�� 
ctxt� m  ������ � m  ��������� o  ������ 0 theremainder theRemainder� o      ���� 0 theremainder theRemainder��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � r  ����� b  ����� m  ���� ���  0� o  ������ 0 	newnumber 	newNumber� o      ���� 0 	newnumber 	newNumber�� 0 i  � m  ������ � o  ������ 0 	thirdpart 	thirdPart��  � ��� l ����������  ��  ��  � ���� Z  ������� > ��   o  ������ 0 theremainder theRemainder m  �� �  � r  �� b  �� b  ��	 b  ��

 o  ������ 0 theremainder theRemainder m  �� �  .	 o  ������ 0 	newnumber 	newNumber o  ������ 0 
secondpart 
secondPart o      ���� 0 	newnumber 	newNumber��  � r  � b  � b  � m  � �  0 . o  ���� 0 	newnumber 	newNumber o  ���� 0 
secondpart 
secondPart o      ���� 0 	newnumber 	newNumber��  �*  � R      ������
�� .ascrerr ****      � ****��  ��  � Z  �� o  ���� 0 
isnegative 
isNegative L   b   m   �  - o  ���� 0 anumber aNumber��   L   o  ���� 0 anumber aNumber�   l   ��������  ��  ��    !��! Z   /"#��$" o   !���� 0 
isnegative 
isNegative# L  $*%% b  $)&'& m  $'(( �))  -' o  '(���� 0 	newnumber 	newNumber��  $ L  -/** o  -.���� 0 	newnumber 	newNumber��  v +,+ l     ��������  ��  ��  , -.- l      ��/0��  / � � ================================================================
FUNTION: Splits a String with a given delimiter
RETURNS: List of String  (List)
==================================================================   0 �11�   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 F U N T I O N :   S p l i t s   a   S t r i n g   w i t h   a   g i v e n   d e l i m i t e r 
 R E T U R N S :   L i s t   o f   S t r i n g     ( L i s t ) 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =. 232 i    454 I      ��6���� 0 stringsplit StringSplit6 787 o      ���� 0 	thestring 	theString8 9��9 o      ���� 0 thedelimiter theDelimiter��  ��  5 k     :: ;<; l     ��=>��  = . ( save delimiters to restore old settings   > �?? P   s a v e   d e l i m i t e r s   t o   r e s t o r e   o l d   s e t t i n g s< @A@ r     BCB n    DED 1    ��
�� 
txdlE 1     ��
�� 
ascrC o      ���� 0 olddelimiters oldDelimitersA FGF l   ��HI��  H - ' set delimiters to delimiter to be used   I �JJ N   s e t   d e l i m i t e r s   t o   d e l i m i t e r   t o   b e   u s e dG KLK r    MNM o    ���� 0 thedelimiter theDelimiterN n     OPO 1    
��
�� 
txdlP 1    ��
�� 
ascrL QRQ l   ��ST��  S   create the array   T �UU "   c r e a t e   t h e   a r r a yR VWV r    XYX n    Z[Z 2    ��
�� 
citm[ o    ���� 0 	thestring 	theStringY o      ���� 0 thearray theArrayW \]\ l   ��^_��  ^   restore the old setting   _ �`` 0   r e s t o r e   t h e   o l d   s e t t i n g] aba r    cdc o    ���� 0 olddelimiters oldDelimitersd n     efe 1    ��
�� 
txdlf 1    ��
�� 
ascrb ghg l   ��ij��  i   return the result   j �kk $   r e t u r n   t h e   r e s u l th l��l L    mm o    ���� 0 thearray theArray��  3 non l     ��������  ��  ��  o pqp l      ��rs��  r o i========================
Function: getJSON(theJSON)
Returen: Applescript Record
=========================   s �tt � = = = = = = = = = = = = = = = = = = = = = = = = 
 F u n c t i o n :   g e t J S O N ( t h e J S O N ) 
 R e t u r e n :   A p p l e s c r i p t   R e c o r d 
 = = = = = = = = = = = = = = = = = = = = = = = = =q u��u i    vwv I      ��x���� 0 getjson getJSONx y��y o      ���� 0 thejson theJson��  ��  w k     zz {|{ r     }~} I    ����
�� .sysodsct****        scpt l    ������ I    �����
�� .sysoexecTEXT���     TEXT� l    ������ b     ��� b     ��� m     �� ��� 
 e c h o  � n   ��� 1    ��
�� 
strq� o    ���� 0 thejson theJson� m    �� ��� �   |   s e d   - E   ' s / " ( [ ^ " ] + ) " [ [ : s p a c e : ] ] * : [ [ : s p a c e : ] ] * / | \ 1 | : / g '   |   t r   - d   ' \ n \ r '��  ��  ��  ��  ��  ��  ~ o      ���� $0 applescriptvalue applescriptValue| ���� L    �� o    ���� $0 applescriptvalue applescriptValue��  ��       ���������  � ��������
�� .aevtoappnull  �   � ****��  0 numbertostring numberToString�� 0 stringsplit StringSplit�� 0 getjson getJSON� � �~�}���|
� .aevtoappnull  �   � ****�~ 0 thequery theQuery�}  � �{�z�{ 0 thequery theQuery�z 0 theitem theItem� \ �y�x�w ) +�v�u�t�s =�r M�q \ g i�p s�o�n�m � � � ��l�k�j�i�h�g�f�e�d � ��c � ��b�a�` ��_�^.1�]�\:=�[FIRUfi�Zy������Y�X�W�V�U�T�S���R���),36A�Q�Pa�O
�y .sysoexecTEXT���     TEXT�x 0 	theaction 	theAction
�w 
psxf�v 0 thejsonpath theJsonPath
�u 
alis
�t .sysoloadscpt        file�s 0 json  �r 0 
thedatadir 
theDataDir�q 0 thetoken theToken�p 0 curl  
�o 
ctxt�n 0 thedatafile theDataFile�m  0 theprojectdata theProjectData�l 0 thejson theJson�k 0 getjson getJSON�j "0 thetodoistitems theTodoistItems
�i 
file
�h .rdwrread****        ****
�g 
cpar�f 0 thedata theData�e  �d  �c 0 thecurrentid theCurrentId�b 0 stringsplit StringSplit�a 0 	therecord 	theRecord
�` 
cobj�_ 0 
theidarray 
theIdArray�^ 0 theitems theItems�]  0 createdictwith createDictWith�\ 0 theitem theItem�[ 	0 setkv  �Z 0 theicon theIcon
�Y 
kocl
�X .corecnte****       ****�W 0 id  �V  0 numbertostring numberToString�U 0 theid theId�T 0 name  �S 0 thename theName�R 0 thearg theArg�Q 0 
createdict 
createDict�P 0 itemdict itemDict�O 
0 encode  �|��j E�O*��j �%/E�O��&j E�O*��j /E�O�j E�O��  %��%a %E` O�a %a &E` OjvE` Y hO�a    a �%a %E` O�a %a &E` Y hO_ j E` O*_ k+ E` O *a _ /j a -E`  W X ! "a #E`  OPOa $E` %O_  a & :*_  a &a 'l+ (E` )O*_ )a *k/a +l+ (E` ,O_ ,a *l/E` %Y hOjvE` -O�a .a /lvkvk+ 0E` 1O_ 1a 2a 3l+ 4O_ 1a 5a 6l+ 4O_ 1a 7a 8l+ 4O�a 9a :lvkvk+ 0E` ;O_ %a <  _ ;a =a >l+ 4Y _ ;a ?a @l+ 4O_ 1a A_ ;l+ 4O_ 1_ -6FO �_ [a Ba *l Ckh *�a D,a &k+ EE` FO�a G,E` HOa I_ F%a J%_ H%E` KO�a L_ Hlvkvk+ 0E�O�a M_ Fa &l+ 4O�a N_ Kl+ 4O�a Oa Pl+ 4O�a Qa Rlvkvk+ 0E` ;O_ %_ F  _ ;a Sa Tl+ 4Y _ ;a Ua Vl+ 4O�a W_ ;l+ 4O�_ -6FOP[OY�?O�j+ XE` YO_ Ya Z_ -l+ 4O�_ Yk+ [OP� �Nx�M�L���K�N  0 numbertostring numberToString�M �J��J �  �I�I 0 anumber aNumber�L  � �H�G�F�E�D�C�B�A�@�?�>�=�<�H 0 anumber aNumber�G 0 
isnegative 
isNegative�F 0 a  �E 0 b  �D 0 c  �C 0 d  �B 0 	firstpart 	firstPart�A 0 
secondpart 
secondPart�@ (0 ispositiveexponent isPositiveExponent�? 0 	thirdpart 	thirdPart�> 0 	newnumber 	newNumber�= 0 theremainder theRemainder�< 0 i  � $�;���:�9��8��7�6�5�����4�3��2��1�0�������/�(
�; 
ctxt
�: .sysoexecTEXT���     TEXT
�9 
cha 
�8 
psof
�7 
psin�6 
�5 .sysooffslong    ��� null
�4 
bool
�3 
nmbr
�2 .corecnte****       ****�1  �0  �/���K0��&E�O�%�%j E�OfE�O��k/�  eE�O�[�\[Zl\Zi2E�Y hO�*���� 
E�O*���� 
E�O*���� 
E�O*���� 
E�O�j  � 	�%Y �Y hO�j  �E�Y �[�\[Zk\Z�k2E�O�[�\[Z�k\Z�k2E�O�j 	 	�j a & eE�O�[�\[Z�k\Zi2E�Y 1�j eE�O�[�\[Z�l\Zi2E�Y fE�O�[�\[Z�l\Zi2E�O�a &E�O� x�E�O�E�O Tk�kh  9���/%E�O�a  $�j k  
a E�Y �[�\[Zl\Zi2E�Y hW X  �a %E�[OY��O�a  �a %�%E�Y hY �a E�O�E�O Wk�kh  <��'/�%E�O�a  &�j k  
a E�Y �[�\[Zk\Za 2E�Y hW X  a �%E�[OY��O�a  �a  %�%�%E�Y a !�%�%E�W X  � a "�%Y �O� a #�%Y �� �.5�-�,���+�. 0 stringsplit StringSplit�- �*��* �  �)�(�) 0 	thestring 	theString�( 0 thedelimiter theDelimiter�,  � �'�&�%�$�' 0 	thestring 	theString�& 0 thedelimiter theDelimiter�% 0 olddelimiters oldDelimiters�$ 0 thearray theArray� �#�"�!
�# 
ascr
�" 
txdl
�! 
citm�+ ��,E�O���,FO��-E�O���,FO�� � w������  0 getjson getJSON� ��� �  �� 0 thejson theJson�  � ��� 0 thejson theJson� $0 applescriptvalue applescriptValue� �����
� 
strq
� .sysoexecTEXT���     TEXT
� .sysodsct****        scpt� ��,%�%j j E�O� ascr  ��ޭ