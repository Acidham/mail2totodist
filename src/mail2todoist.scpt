FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � � ================================================
mail2todoist.scpt generate Todosit task from an Email and Achrive the Email
================================================      � 	 	^   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 m a i l 2 t o d o i s t . s c p t   g e n e r a t e   T o d o s i t   t a s k   f r o m   a n   E m a i l   a n d   A c h r i v e   t h e   E m a i l 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =     
  
 i         I     �� ��
�� .aevtoappnull  �   � ****  o      ���� 0 thequery theQuery��    k    L       l     ��  ��    , & READ CONFIG and Environment variables     �   L   R E A D   C O N F I G   a n d   E n v i r o n m e n t   v a r i a b l e s      l         r         I    �� ��
�� .sysoexecTEXT���     TEXT  m        �   0 e c h o   $ d e s t i n a t i o n M a i l b o x��    o      ���� (0 destinationmailbox destinationMailbox  * $ if empty email will not be archived     �   H   i f   e m p t y   e m a i l   w i l l   n o t   b e   a r c h i v e d     !   l   �� " #��   " 0 * Prefixes to be removed from email subject    # � $ $ T   P r e f i x e s   t o   b e   r e m o v e d   f r o m   e m a i l   s u b j e c t !  % & % r     ' ( ' J     ) )  * + * m    	 , , � - -  r e :   +  . / . m   	 
 0 0 � 1 1 
 o d p :   /  2 3 2 m   
  4 4 � 5 5  f w :   3  6�� 6 m     7 7 � 8 8 
 f w d :  ��   ( o      ���� $0 prefixestoremove prefixesToRemove &  9 : 9 l   �� ; <��   ; U O Decide if you want to confirm name of created task. Defaut is message subject.    < � = = �   D e c i d e   i f   y o u   w a n t   t o   c o n f i r m   n a m e   o f   c r e a t e d   t a s k .   D e f a u t   i s   m e s s a g e   s u b j e c t . :  > ? > r     @ A @ m    ��
�� boovfals A o      ���� 0 askforthename askForTheName ?  B C B l   �� D E��   D , & Get todoist token from Workflow value    E � F F L   G e t   t o d o i s t   t o k e n   f r o m   W o r k f l o w   v a l u e C  G H G r     I J I I   �� K��
�� .sysoexecTEXT���     TEXT K m     L L � M M $ e c h o   $ t o d o i s t T o k e n��   J o      ���� 0 todoisttoken todoistToken H  N O N l   ��������  ��  ��   O  P Q P Z   y R S�� T R >     U V U o    ���� 0 todoisttoken todoistToken V m     W W � X X   S k   #o Y Y  Z [ Z l  # ( \ ] ^ \ I  # (�� _��
�� .sysoexecTEXT���     TEXT _ m   # $ ` ` � a a D m k d i r   - p   " $ { a l f r e d _ w o r k f l o w _ d a t a } "��   ] 0 * create WF data directory if not available    ^ � b b T   c r e a t e   W F   d a t a   d i r e c t o r y   i f   n o t   a v a i l a b l e [  c d c l  ) 5 e f g e r   ) 5 h i h 4   ) 1�� j
�� 
psxf j l  + 0 k���� k I  + 0�� l��
�� .sysoexecTEXT���     TEXT l m   + , m m � n n 4 e c h o   $ a l f r e d _ w o r k f l o w _ d a t a��  ��  ��   i o      ���� 0 
thedatadir 
theDataDir f   get WF data directory    g � o o ,   g e t   W F   d a t a   d i r e c t o r y d  p q p l  6 E r s t r r   6 E u v u c   6 A w x w b   6 = y z y o   6 9���� 0 
thedatadir 
theDataDir z m   9 < { { � | |  : p r o j e c t . t x t x m   = @��
�� 
ctxt v o      ���� 0 thedatafile theDataFile s   Read Project Data file    t � } } .   R e a d   P r o j e c t   D a t a   f i l e q  ~  ~ l  F F�� � ���   � 4 .	log ("DataDir: " & POSIX path of theDataFile)    � � � � \ 	 l o g   ( " D a t a D i r :   "   &   P O S I X   p a t h   o f   t h e D a t a F i l e )   � � � l  F F��������  ��  ��   �  � � � l  F F�� � ���   �   Read Project Data file    � � � � .   R e a d   P r o j e c t   D a t a   f i l e �  � � � r   F L � � � J   F H����   � o      ����  0 theprojectdata theProjectData �  � � � Q   M z � � � � r   P d � � � n   P ` � � � 2  \ `��
�� 
cpar � l  P \ ����� � I  P \�� ���
�� .rdwrread****        **** � 4   P X�� �
�� 
file � o   T W���� 0 thedatafile theDataFile��  ��  ��   � o      ����  0 theprojectdata theProjectData � R      ������
�� .ascrerr ****      � ****��  ��   � k   l z � �  � � � r   l r � � � J   l n����   � o      ����  0 theprojectdata theProjectData �  ��� � I  s z�� ���
�� .ascrcmnt****      � **** � l  s v ����� � m   s v � � � � �  f i l e   e m p t y��  ��  ��  ��   �  � � � l  { {��������  ��  ��   �  � � � l  { {�� � ���   �   Read label data file     � � � � ,   R e a d   l a b e l   d a t a   f i l e   �  � � � r   { � � � � c   { � � � � b   { � � � � o   { ~���� 0 
thedatadir 
theDataDir � m   ~ � � � � � �  : l a b e l . t x t � m   � ���
�� 
ctxt � o      ���� 0 thedatafile theDataFile �  � � � r   � � � � � J   � �����   � o      ���� 0 thelabeldata theLabelData �  � � � Q   � � � � � � r   � � � � � n   � � � � � 2  � ���
�� 
cpar � l  � � ����� � I  � ��� ���
�� .rdwrread****        **** � 4   � ��� �
�� 
file � o   � ����� 0 thedatafile theDataFile��  ��  ��   � o      ���� 0 thelabeldata theLabelData � R      ������
�� .ascrerr ****      � ****��  ��   � k   � � � �  � � � r   � � � � � J   � �����   � o      ���� 0 thelabeldata theLabelData �  ��� � I  � ��� ���
�� .ascrcmnt****      � **** � l  � � ����� � m   � � � � � � �  f i l e   e m p t y��  ��  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � $  Get ProjectID from saved data    � � � � <   G e t   P r o j e c t I D   f r o m   s a v e d   d a t a �  � � � Z   �K � ��� � � >  � � � � � n   � � � � � 1   � ���
�� 
leng � o   � �����  0 theprojectdata theProjectData � m   � �����   � k   �; � �  � � � r   � � � � � I   � ��� ����� 0 stringsplit StringSplit �  � � � c   � � � � � o   � �����  0 theprojectdata theProjectData � m   � ���
�� 
ctxt �  ��� � m   � � � � � � �  |��  ��   � o      ���� $0 theprojectrecord theProjectRecord �  ��� � Q   �; � � � � k   �& � �  � � � l  � � � � � � r   � � � � � I   � ��� ����� 0 stringsplit StringSplit �  � � � l  � � ����� � n   � � � � � 4   � ��� �
�� 
cobj � m   � �����  � o   � ����� $0 theprojectrecord theProjectRecord��  ��   �  ��� � m   � �   �  :��  ��   � o      ���� *0 theprojectnamearray theProjectNameArray � * $ Project Name, required for response    � � H   P r o j e c t   N a m e ,   r e q u i r e d   f o r   r e s p o n s e �  r   � n   �  4   � ��	
�� 
cobj	 m   � �����  o   � ����� *0 theprojectnamearray theProjectNameArray o      ���� 0 
theproject 
theProject 

 l ��������  ��  ��    l  r   I  ������ 0 stringsplit StringSplit  l ���� n   4  	��
�� 
cobj m  ����  o  	���� $0 theprojectrecord theProjectRecord��  ��   �� m   �  :��  ��   o      ���� &0 theprojectidarray theProjectIdArray   Project ID    �    P r o j e c t   I D �� r  &  n  "!"! 4  "�#
� 
cobj# m   !�~�~ " o  �}�} &0 theprojectidarray theProjectIdArray  o      �|�| 0 theprojectid theProjectId��   � R      �{�z�y
�{ .ascrerr ****      � ****�z  �y   � k  .;$$ %&% r  .3'(' m  ./�x�x  ( l     )�w�v) o      �u�u 0 	projectid 	ProjectId�w  �v  & *�t* r  4;+,+ m  47-- �..  , o      �s�s 0 
theproject 
theProject�t  ��  ��   � k  >K// 010 r  >C232 m  >?�r�r  3 o      �q�q 0 theprojectid theProjectId1 4�p4 r  DK565 m  DG77 �88 
 I N B O X6 o      �o�o 0 
theproject 
theProject�p   � 9:9 l LL�n�m�l�n  �m  �l  : ;<; l LL�k=>�k  = #  Get LabelID from daved data	   > �?? :   G e t   L a b e l I D   f r o m   d a v e d   d a t a 	< @A@ Z  L�BC�jDB > LUEFE n  LSGHG 1  OS�i
�i 
lengH o  LO�h�h 0 thelabeldata theLabelDataF m  ST�g�g  C k  X�II JKJ r  XkLML I  Xg�fN�e�f 0 stringsplit StringSplitN OPO c  Y`QRQ o  Y\�d�d 0 thelabeldata theLabelDataR m  \_�c
�c 
ctxtP S�bS m  `cTT �UU  |�b  �e  M o      �a�a  0 thelabelrecord theLabelRecordK VWV l ll�`�_�^�`  �_  �^  W X�]X Q  l�YZ[Y k  o�\\ ]^] l o�_`a_ r  o�bcb I  o�\d�[�\ 0 stringsplit StringSplitd efe l pxg�Z�Yg n  pxhih 4  sx�Xj
�X 
cobjj m  vw�W�W i o  ps�V�V  0 thelabelrecord theLabelRecord�Z  �Y  f k�Uk m  x{ll �mm  :�U  �[  c o      �T�T &0 thelabelnamearray theLabelNameArray` ) # Label Name, required for response    a �nn F   L a b e l   N a m e ,   r e q u i r e d   f o r   r e s p o n s e  ^ opo r  ��qrq n  ��sts 4  ���Su
�S 
cobju m  ���R�R t o  ���Q�Q &0 thelabelnamearray theLabelNameArrayr o      �P�P 0 thelabel theLabelp vwv l ���O�N�M�O  �N  �M  w xyx l ��z{|z r  ��}~} I  ���L�K�L 0 stringsplit StringSplit ��� l ����J�I� n  ����� 4  ���H�
�H 
cobj� m  ���G�G � o  ���F�F  0 thelabelrecord theLabelRecord�J  �I  � ��E� m  ���� ���  :�E  �K  ~ o      �D�D "0 thelabelidarray theLabelIdArray{  	 Label ID   | ���    L a b e l   I Dy ��C� r  ����� n  ����� 4  ���B�
�B 
cobj� m  ���A�A � o  ���@�@ "0 thelabelidarray theLabelIdArray� o      �?�? 0 
thelabelid 
theLabelId�C  Z R      �>�=�<
�> .ascrerr ****      � ****�=  �<  [ k  ���� ��� r  ����� m  ���� ���  � o      �;�; 0 
thelabelid 
theLabelId� ��:� r  ����� m  ���� ���  � o      �9�9 0 thelabel theLabel�:  �]  �j  D k  ���� ��� r  ����� m  ���� ���  � o      �8�8 0 
thelabelid 
theLabelId� ��7� r  ����� m  ���� ���  � o      �6�6 0 thelabel theLabel�7  A ��� l ���5�4�3�5  �4  �3  � ��� l ���2���2  � E ? Get due data language, Project and Label, if emtpy set default   � ��� ~   G e t   d u e   d a t a   l a n g u a g e ,   P r o j e c t   a n d   L a b e l ,   i f   e m t p y   s e t   d e f a u l t� ��� r  ����� c  ����� o  ���1�1 0 thequery theQuery� m  ���0
�0 
ctxt� o      �/�/ 0 thequery theQuery� ��� l ���.�-�,�.  �-  �,  � ��� l ���+���+  �   Extract Label from query   � ��� 2   E x t r a c t   L a b e l   f r o m   q u e r y� ��� Z  �:���*�)� E  ����� o  ���(�( 0 thequery theQuery� m  ���� ���  @� k  �6�� ��� r  ���� n  �	��� 7 �	�'��
�' 
ctxt� l ���&�%� [  ���� l ���$�#� I ��"�!�
�" .sysooffslong    ��� null�!  � � ��
�  
psof� m  ���� ���  @� ���
� 
psin� o  ���� 0 thequery theQuery�  �$  �#  � m  �� �&  �%  � m  ����� o  ���� 0 thequery theQuery� o      �� 0 
thesnippet 
theSnippet� ��� Z  6����� E  ��� o  �� 0 
thesnippet 
theSnippet� m  �� ���   � r  ,��� n  (��� 4  #(��
� 
cobj� m  &'�� � I  #���� 0 stringsplit StringSplit� ��� o  �� 0 
thesnippet 
theSnippet� ��� m  �� ���   �  �  � o      �� 0 thelabel theLabel�  � r  /6��� o  /2�� 0 
thesnippet 
theSnippet� o      �� 0 thelabel theLabel�  �*  �)  � ��� l ;;���
�  �  �
  � ��� l ;;�	���	  � !  Extract Project from query   � ��� 6   E x t r a c t   P r o j e c t   f r o m   q u e r y� ��� Z  ;������ E  ;@��� o  ;<�� 0 thequery theQuery� m  <?�� ���  #� k  C��� ��� r  Cd��� n  C`   7 D`�
� 
ctxt l J\�� [  J\ l KZ�� I KZ� ��
�  .sysooffslong    ��� null��   ��	

�� 
psof	 m  OR �  #
 ����
�� 
psin o  UV���� 0 thequery theQuery��  �  �   m  Z[���� �  �   m  ]_������ o  CD���� 0 thequery theQuery� o      ���� 0 
thesnippet 
theSnippet� �� Z  e��� E  el o  eh���� 0 
thesnippet 
theSnippet m  hk �    r  o� n  o 4  z��
�� 
cobj m  }~����  I  oz������ 0 stringsplit StringSplit  o  ps���� 0 
thesnippet 
theSnippet �� m  sv �     ��  ��   o      ���� 0 
theproject 
theProject��   r  ��!"! o  ������ 0 
thesnippet 
theSnippet" o      ���� 0 
theproject 
theProject��  �  �  � #$# l ����������  ��  ��  $ %&% l ����'(��  '   Due Date String Extract    ( �)) 2   D u e   D a t e   S t r i n g   E x t r a c t  & *+* r  ��,-, I ����.��
�� .sysoexecTEXT���     TEXT. b  ��/0/ b  ��121 m  ��33 �44  e c h o   "2 o  ������ 0 thequery theQuery0 m  ��55 �66 > "   |   s e d   - E   ' s / # [ A - Z a - z 0 - 9 ] + / / g '��  - o      ���� 0 theduestring theDueString+ 787 r  ��9:9 I ����;��
�� .sysoexecTEXT���     TEXT; b  ��<=< b  ��>?> m  ��@@ �AA  e c h o   "? o  ������ 0 theduestring theDueString= m  ��BB �CC > "   |   s e d   - E   ' s / @ [ A - Z a - z 0 - 9 ] + / / g '��  : o      ���� 0 theduestring theDueString8 DED l ����������  ��  ��  E FGF Z ��HI����H = ��JKJ c  ��LML o  ������ 0 theduestring theDueStringM m  ����
�� 
ctxtK m  ��NN �OO  I r  ��PQP m  ��RR �SS " t o m o r r o w   a t   1 0 : 0 0Q o      ���� 0 theduestring theDueString��  ��  G TUT l ����������  ��  ��  U VWV l ����������  ��  ��  W XYX l ����Z[��  Z 6 0 Get List of all available projects from Todoist   [ �\\ `   G e t   L i s t   o f   a l l   a v a i l a b l e   p r o j e c t s   f r o m   T o d o i s tY ]^] l ����_`��  _ + %-------------------------------------   ` �aa J - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -^ bcb l ����������  ��  ��  c ded r  ��fgf b  ��hih b  ��jkj m  ��ll �mm � c u r l   - X   G E T   h t t p s : / / b e t a . t o d o i s t . c o m / A P I / v 8 / p r o j e c t s   - H   " A u t h o r i z a t i o n :   B e a r e r  k o  ������ 0 todoisttoken todoistTokeni m  ��nn �oo  "g o      ���� 0 curl  e pqp l ��rstr r  ��uvu I ����w��
�� .sysoexecTEXT���     TEXTw o  ������ 0 curl  ��  v o      ����  0 theprojectjson theProjectJsons   get Json from response   t �xx .   g e t   J s o n   f r o m   r e s p o n s eq yzy l ����������  ��  ��  z {|{ l ����}~��  }   Read JSON into AS Record   ~ � 2   R e a d   J S O N   i n t o   A S   R e c o r d| ��� r  ����� I  ��������� 0 getjson getJSON� ���� o  ������  0 theprojectjson theProjectJson��  ��  � o      ���� "0 thetodoistitems theTodoistItems� ��� l ����������  ��  ��  � ��� X  �B����� k  =�� ��� r  ��� I  ������� 0 number_to_string  � ���� n  ��� o  ���� 0 id  � o  ���� 0 theitem theItem��  ��  � o      ���� 0 theid theId� ��� r  '��� n  #��� o  #���� 0 name  � o  ���� 0 theitem theItem� o      ���� 0 thename theName� ���� Z (=������� = (/��� o  (+���� 0 thename theName� o  +.���� 0 
theproject 
theProject� r  29��� o  25���� 0 theid theId� o      ���� 0 theprojectid theProjectId��  ��  ��  �� 0 theitem theItem� o  ������ "0 thetodoistitems theTodoistItems� ��� l CC��������  ��  ��  � ��� l CC������  � , & Get List of all lablels from Tododist   � ��� L   G e t   L i s t   o f   a l l   l a b l e l s   f r o m   T o d o d i s t� ��� l CC������  � % ------------------------------	   � ��� > - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 	� ��� r  CP��� b  CL��� b  CH��� m  CF�� ��� � c u r l   - X   G E T   h t t p s : / / b e t a . t o d o i s t . c o m / A P I / v 8 / l a b e l s   - H   " A u t h o r i z a t i o n :   B e a r e r  � o  FG���� 0 todoisttoken todoistToken� m  HK�� ���  "� o      ���� 0 curl  � ��� l Q\���� r  Q\��� I QX�����
�� .sysoexecTEXT���     TEXT� o  QT���� 0 curl  ��  � o      ���� 0 thelabeljson theLabelJson�   get Json from response   � ��� .   g e t   J s o n   f r o m   r e s p o n s e� ��� l ]]��������  ��  ��  � ��� l ]]������  �   Read JSON into AS Record   � ��� 2   R e a d   J S O N   i n t o   A S   R e c o r d� ��� r  ]i��� I  ]e������� 0 getjson getJSON� ���� o  ^a���� 0 thelabeljson theLabelJson��  ��  � o      ���� "0 thetodoistitems theTodoistItems� ��� l jj��������  ��  ��  � ��� X  j������ k  ���� ��� r  ����� I  ��������� 0 number_to_string  � ���� n  ����� o  ������ 0 id  � o  ������ 0 theitem theItem��  ��  � o      ���� 0 theid theId� ��� r  ����� n  ����� o  ������ 0 name  � o  ������ 0 theitem theItem� o      ���� 0 thename theName� ���� Z ��������� = ����� o  ������ 0 thename theName� o  ������ 0 thelabel theLabel� r  ����� o  ������ 0 theid theId� o      ���� 0 
thelabelid 
theLabelId��  ��  ��  �� 0 theitem theItem� o  mp�� "0 thetodoistitems theTodoistItems� ��� l ���~�}�|�~  �}  �|  � ��� l ���{���{  � #  Handle Email from Apple Mail   � ��� :   H a n d l e   E m a i l   f r o m   A p p l e   M a i l� ��z� O  �o��� k  �n�� ��� I ���y�x�w
�y .miscactvnull��� ��� null�x  �w  � ��� l ������ r  ����� e  ��   1  ���v
�v 
slct� o      �u�u $0 selectedmessages selectedMessages� ) # get selected Message in Apple Mail   � � F   g e t   s e l e c t e d   M e s s a g e   i n   A p p l e   M a i l�  l ���t�t   ? 9 checks if a message was selected or bypass task creation    � r   c h e c k s   i f   a   m e s s a g e   w a s   s e l e c t e d   o r   b y p a s s   t a s k   c r e a t i o n �s Z  �n	�r
 = �� l ���q�p I ���o�n
�o .corecnte****       **** o  ���m�m $0 selectedmessages selectedMessages�n  �q  �p   m  ���l�l  	 r  �� m  �� �  $ s e l e c t i o n o      �k�k 0 response  �r  
 k  �n  l �� r  �� n  �� 4 ���j
�j 
cobj m  ���i�i�� o  ���h�h $0 selectedmessages selectedMessages o      �g�g 0 
themessage 
theMessage $  we need only the last message    � <   w e   n e e d   o n l y   t h e   l a s t   m e s s a g e   l ��!"#! r  ��$%$ n  ��&'& 1  ���f
�f 
subj' o  ���e�e 0 
themessage 
theMessage% o      �d�d 0 thename theName" &   subject is the name of the task   # �(( @   s u b j e c t   i s   t h e   n a m e   o f   t h e   t a s k  )*) l �+,-+ r  �./. n  �010 1  ��c
�c 
sndr1 o  ���b�b 0 
themessage 
theMessage/ o      �a�a 0 	thesender 	theSender, #  get the senders email adress   - �22 :   g e t   t h e   s e n d e r s   e m a i l   a d r e s s* 343 l �`�_�^�`  �_  �^  4 565 l �]78�]  7 * $ remove prefixes as configured above   8 �99 H   r e m o v e   p r e f i x e s   a s   c o n f i g u r e d   a b o v e6 :;: X  D<�\=< Z  ?>?�[�Z> C  @A@ o  �Y�Y 0 thename theNameA o  �X�X 
0 prefix  ? r  ";BCB n  "7DED 7 %7�WFG
�W 
ctxtF l +3H�V�UH [  +3IJI m  ,-�T�T J l -2K�S�RK n  -2LML 1  .2�Q
�Q 
lengM o  -.�P�P 
0 prefix  �S  �R  �V  �U  G m  46�O�O��E o  "%�N�N 0 thename theNameC o      �M�M 0 thename theName�[  �Z  �\ 
0 prefix  = o  	
�L�L $0 prefixestoremove prefixesToRemove; NON l EE�K�J�I�K  �J  �I  O PQP l EE�HRS�H  R 1 + if confgured pop up dialog to change title   S �TT V   i f   c o n f g u r e d   p o p   u p   d i a l o g   t o   c h a n g e   t i t l eQ UVU Z  E}WX�G�FW o  EF�E�E 0 askforthename askForTheNameX k  IyYY Z[Z r  IZ\]\ I IV�D^_
�D .sysodlogaskr        TEXT^ m  IL`` �aa  E n t e r   t a s k   n a m e_ �Cb�B
�C 
dtxtb o  OR�A�A 0 thename theName�B  ] 1      �@
�@ 
rslt[ c�?c Z  [yde�>fd = [fghg n  [biji 1  ^b�=
�= 
bhitj 1  [^�<
�< 
rslth m  bekk �ll  O Ke r  itmnm n  ipopo 1  lp�;
�; 
ttxtp 1  il�:
�: 
rsltn o      �9�9 0 thename theName�>  f L  wy�8�8  �?  �G  �F  V qrq l ~~�7�6�5�7  �6  �5  r sts l ~~�4uv�4  u e _ URL for Apple Mail Message, adding to the task note. Click in Todoist to open message in Mail.   v �ww �   U R L   f o r   A p p l e   M a i l   M e s s a g e ,   a d d i n g   t o   t h e   t a s k   n o t e .   C l i c k   i n   T o d o i s t   t o   o p e n   m e s s a g e   i n   M a i l .t xyx r  ~�z{z b  ~�|}| b  ~�~~ m  ~��� ���  m e s s a g e : / / % 3 c n ����� 1  ���3
�3 
meid� o  ���2�2 0 
themessage 
theMessage} m  ���� ���  % 3 e{ o      �1�1 0 theurl theURLy ��� l ���0�/�.�0  �/  �.  � ��� l ���-���-  � : 4 build content string including name, url and sender   � ��� h   b u i l d   c o n t e n t   s t r i n g   i n c l u d i n g   n a m e ,   u r l   a n d   s e n d e r� ��� r  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ���  [� o  ���,�, 0 thename theName� m  ���� ���  ] (� o  ���+�+ 0 theurl theURL� m  ���� ��� 
 )   -   [� o  ���*�* 0 	thesender 	theSender� m  ���� ���  ]� o      �)�) 0 
thecontent 
theContent� ��� l ���(�'�&�(  �'  �&  � ��� l ���%���%  � ( " genearte a uuid for task creation   � ��� D   g e n e a r t e   a   u u i d   f o r   t a s k   c r e a t i o n� ��� r  ����� I ���$��#
�$ .sysoexecTEXT���     TEXT� m  ���� ���  u u i d g e n�#  � o      �"�" 0 myuuid myUUID� ��� l ���!� ��!  �   �  � ��� l ������  � U O build curl command based on API v8 beta. This may be changed by totodist later   � ��� �   b u i l d   c u r l   c o m m a n d   b a s e d   o n   A P I   v 8   b e t a .   T h i s   m a y   b e   c h a n g e d   b y   t o t o d i s t   l a t e r� ��� r  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ��� � c u r l   " h t t p s : / / b e t a . t o d o i s t . c o m / A P I / v 8 / t a s k s "   - X   P O S T   - - d a t a   ' { " c o n t e n t " :   "� n ����� I  ������ "0 removecharacter RemoveCharacter� ��� o  ���� 0 
thecontent 
theContent� ��� m  ���� ���  '�  �  �  f  ��� m  ���� ��� $ " ,   " d u e _ s t r i n g " :   "� o  ���� 0 theduestring theDueString� m  ���� ��� ` " ,   " d u e _ l a n g " :   " e n " ,   " p r i o r i t y " :   4 , " p r o j e c t _ i d " :� o  ���� 0 theprojectid theProjectId� m  ���� ���  , " l a b e l _ i d s " : [� o  ���� 0 
thelabelid 
theLabelId� m  ���� ��� � ] , " c o m m e n t _ c o u n t " :   0 ,   " c o m p l e t e d " :   f a l s e } '   - H   " C o n t e n t - T y p e :   a p p l i c a t i o n / j s o n "   - H   " A u t h o r i z a t i o n :   B e a r e r  � o  ���� 0 todoisttoken todoistToken� m  ���� ��� ( "   - H   " X - R e q u e s t - I d :  � o  ���� 0 myuuid myUUID� m  ���� ���  "� o      �� 0 curl  � ��� l ������  �  �  � ��� l ������  � $  exec command and get response   � ��� <   e x e c   c o m m a n d   a n d   g e t   r e s p o n s e� ��� r  ���� I ����
� .sysoexecTEXT���     TEXT� o  ���� 0 curl  �  � o      �� 0 response  � ��� l ����  �  log (response)   � ���  l o g   ( r e s p o n s e )� ��� l �
�	��
  �	  �  � � � l ��   J D finally if response results success id will be part of the response    � �   f i n a l l y   i f   r e s p o n s e   r e s u l t s   s u c c e s s   i d   w i l l   b e   p a r t   o f   t h e   r e s p o n s e   Z  l� H  		 E  

 o  �� 0 response   m   � 
 " i d " : r   m   �  $ f a i l e d o      �� 0 response  �   k  l  Z  d�� > " o  �� (0 destinationmailbox destinationMailbox m  ! �   X  %`�  k  ;[  l ;;�� !��    &   Archive to destination mailbox    ! �"" @   A r c h i v e   t o   d e s t i n a t i o n   m a i l b o x   #��# I ;[��$%
�� .coremovenull���     obj $ o  ;<���� 0 
themessage 
theMessage% ��&��
�� 
insh& n  ?W'(' 4  RW��)
�� 
mbxp) o  UV���� (0 destinationmailbox destinationMailbox( 4  ?R��*
�� 
mact* l CQ+����+ n  CQ,-, 1  LP��
�� 
pnam- l CL.����. n  CL/0/ m  HL��
�� 
mact0 l CH1����1 n  CH232 m  DH��
�� 
mbxp3 o  CD���� 0 
themessage 
theMessage��  ��  ��  ��  ��  ��  ��  ��  �  0 
themessage 
theMessage o  (+���� $0 selectedmessages selectedMessages�  �   4��4 r  el565 m  eh77 �88  $ s u c c e s s6 o      ���� 0 response  ��   9:9 l mm��������  ��  ��  : ;��; l mm��������  ��  ��  ��  �s  � m  ��<<f                                                                                  emal  alis      SSD                            BD ����Mail.app                                                       ����            ����  
 cu             Applications  /:Applications:Mail.app/    M a i l . a p p    S S D  Applications/Mail.app   / ��  �z  ��   T r  ry=>= m  ru?? �@@  $ a p i k e y> o      ���� 0 response   Q ABA l zz��CD��  C 2 ,--------------------------------------------   D �EE X - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -B FGF l zz��HI��  H 8 2 handle response success,error and missing api key   I �JJ d   h a n d l e   r e s p o n s e   s u c c e s s , e r r o r   a n d   m i s s i n g   a p i   k e yG KLK l zz��MN��  M 2 ,--------------------------------------------   N �OO X - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -L PQP Z  zJRSTUR = z�VWV o  z}���� 0 response  W m  }�XX �YY  $ s u c c e s sS l ��Z[\Z k  ��]] ^_^ l ����`a��  ` ; 5 Format response wether Label or Project is available   a �bb j   F o r m a t   r e s p o n s e   w e t h e r   L a b e l   o r   P r o j e c t   i s   a v a i l a b l e_ cdc Z  ��ef��ge = ��hih o  ������ 0 
theproject 
theProjecti m  ��jj �kk  f r  ��lml m  ��nn �oo  m o      ���� 0 
theproject 
theProject��  g r  ��pqp b  ��rsr m  ��tt �uu  #s o  ������ 0 
theproject 
theProjectq o      ���� 0 
theproject 
theProjectd vwv l ����������  ��  ��  w xyx Z  ��z{��|z = ��}~} o  ������ 0 thelabel theLabel~ m  �� ���  { r  ����� m  ���� ���  � o      ���� 0 thelabel theLabel��  | r  ����� b  ����� m  ���� ���  @� o  ������ 0 thelabel theLabel� o      ���� 0 thelabel theLabely ���� I ������
�� .sysonotfnull��� ��� TEXT� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� l �������� n  ����� 7 ������
�� 
ctxt� m  ������ � m  ������ 
� o  ������ 0 thename theName��  ��  � m  ���� ���  . . . ,� o  ������ 0 theduestring theDueString� m  ���� ���    
!�  � o  ������ 0 
theproject 
theProject� m  ���� ���   � o  ������ 0 thelabel theLabel� �����
�� 
appr� m  ���� ��� * T o d o i s t   t a s k   c r e a t e d !��  ��  [   SUCCESS   \ ���    S U C C E S ST ��� = ���� o  ������ 0 response  � m  � �� ���  $ a p i k e y� ��� l  ���� k   �� ��� I ����
�� .sysonotfnull��� ��� TEXT� m  �� ��� � A d d   T o d i s t   A P I   K e y   t o   w o r k f l o w   c o n f i g u r a t i o n ,   [ X ]   s y m b o l   i n   W F   d e t a i l s� �����
�� 
appr� m  
�� ��� D T o d o i s t   A P I   K e y   m i s s i n g   o r   i n v a l i d��  � ���� O   ��� I �����
�� .GURLGURLnull��� ��� TEXT� m  �� ��� L h t t p s : / / t o d o i s t . c o m / p r e f s / i n t e g r a t i o n s��  � m  ���                                                                                  MACS  alis    .  SSD                            BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    S S D  &System/Library/CoreServices/Finder.app  / ��  ��  � 2 , API key missing and open Todoist Dev center   � ��� X   A P I   k e y   m i s s i n g   a n d   o p e n   T o d o i s t   D e v   c e n t e r� ��� = #*��� o  #&���� 0 response  � m  &)�� ���  $ s e l e c t i o n� ���� l -:���� I -:����
�� .sysonotfnull��� ��� TEXT� m  -0�� ��� B P l e a s e   s e l e c t   E m a i l   i n   A p p l e   M a i l� �����
�� 
appr� m  36�� ��� 6 A d d   T a s k   t o   T o d o i s t   f a i l e d !��  � - ' No email selected or not in Apple mail   � ��� N   N o   e m a i l   s e l e c t e d   o r   n o t   i n   A p p l e   m a i l��  U I =J����
�� .sysonotfnull��� ��� TEXT� m  =@�� ��� * S o m e t h i n g   w e n t   w r o n g !� �����
�� 
appr� m  CF�� ��� 6 A d d   T a s k   t o   T o d o i s t   f a i l e d !��  Q ���� l KK��������  ��  ��  ��    ��� l     ��������  ��  ��  � ��� l      ������  � w q =============================
Removes a chracter from a String
OUTPUT: String
==================================   � ��� �   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 R e m o v e s   a   c h r a c t e r   f r o m   a   S t r i n g 
 O U T P U T :   S t r i n g 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =� ��� i    ��� I      ������� "0 removecharacter RemoveCharacter� ��� o      ���� 0 thestr theStr� ���� o      ���� 0 thechar theChar��  ��  � l    2���� k     2�� ��� r     ��� n     ��� 2    ��
�� 
cha � o     ���� 0 thestr theStr� o      ���� 0 theclist theClist� ��� r    	��� m    �� ���  � o      ���� 0 	newstring 	newString� � � X   
 /�� Z    *���� H     E     o    ���� 0 c   o    ���� 0 thechar theChar r   ! &	 b   ! $

 o   ! "���� 0 	newstring 	newString o   " #���� 0 c  	 o      ���� 0 	newstring 	newString��  ��  �� 0 c   o    ���� 0 theclist theClist  �� L   0 2 o   0 1���� 0 	newstring 	newString��  � &   theStr(String), theChar(String)   � � @   t h e S t r ( S t r i n g ) ,   t h e C h a r ( S t r i n g )�  l     ��������  ��  ��    l      ����   � � ================================================================
FUNTION: Splits a String with a given delimiter
RETURNS: List of String  (List)
==================================================================    ��   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 F U N T I O N :   S p l i t s   a   S t r i n g   w i t h   a   g i v e n   d e l i m i t e r 
 R E T U R N S :   L i s t   o f   S t r i n g     ( L i s t ) 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  i     I      ������ 0 stringsplit StringSplit  o      ���� 0 	thestring 	theString �� o      ���� 0 thedelimiter theDelimiter��  ��   k        l     ��!"��  ! . ( save delimiters to restore old settings   " �## P   s a v e   d e l i m i t e r s   t o   r e s t o r e   o l d   s e t t i n g s  $%$ r     &'& n    ()( 1    ��
�� 
txdl) 1     ��
�� 
ascr' o      ���� 0 olddelimiters oldDelimiters% *+* l   ��,-��  , - ' set delimiters to delimiter to be used   - �.. N   s e t   d e l i m i t e r s   t o   d e l i m i t e r   t o   b e   u s e d+ /0/ r    121 o    ���� 0 thedelimiter theDelimiter2 n     343 1    
��
�� 
txdl4 1    ��
�� 
ascr0 565 l   ��78��  7   create the array   8 �99 "   c r e a t e   t h e   a r r a y6 :;: r    <=< n    >?> 2    ��
�� 
citm? o    ���� 0 	thestring 	theString= o      ���� 0 thearray theArray; @A@ l   ��BC��  B   restore the old setting   C �DD 0   r e s t o r e   t h e   o l d   s e t t i n gA EFE r    GHG o    ���� 0 olddelimiters oldDelimitersH n     IJI 1    ��
�� 
txdlJ 1    �
� 
ascrF KLK l   �~MN�~  M   return the result   N �OO $   r e t u r n   t h e   r e s u l tL P�}P L    QQ o    �|�| 0 thearray theArray�}   RSR l     �{�z�y�{  �z  �y  S TUT l      �xVW�x  V � � ================================================================
FUNTION: Convert Scientific Number to a String
RETURNS: String
==================================================================   W �XX�   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 F U N T I O N :   C o n v e r t   S c i e n t i f i c   N u m b e r   t o   a   S t r i n g 
 R E T U R N S :   S t r i n g 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =U YZY i    [\[ I      �w]�v�w 0 number_to_string  ] ^�u^ o      �t�t 0 this_number  �u  �v  \ k    ]__ `a` r     bcb c     ded o     �s�s 0 this_number  e m    �r
�r 
TEXTc o      �q�q 0 this_number  a fgf Z   Zhi�pjh E    	klk o    �o�o 0 this_number  l m    mm �nn  E +i k    �oo pqp r    rsr l   t�n�mt I   �l�ku
�l .sysooffslong    ��� null�k  u �jvw
�j 
psofv m    xx �yy  .w �iz�h
�i 
psinz o    �g�g 0 this_number  �h  �n  �m  s o      �f�f 0 x  q {|{ r    #}~} l   !�e�d I   !�c�b�
�c .sysooffslong    ��� null�b  � �a��
�a 
psof� m    �� ���  +� �`��_
�` 
psin� o    �^�^ 0 this_number  �_  �e  �d  ~ o      �]�] 0 y  | ��� r   $ /��� l  $ -��\�[� I  $ -�Z�Y�
�Z .sysooffslong    ��� null�Y  � �X��
�X 
psof� m   & '�� ���  E� �W��V
�W 
psin� o   ( )�U�U 0 this_number  �V  �\  �[  � o      �T�T 0 z  � ��� r   0 E��� c   0 C��� c   0 A��� n   0 ?��� 7  1 ?�S��
�S 
cha � l  5 ;��R�Q� \   5 ;��� o   6 7�P�P 0 y  � l  7 :��O�N� n   7 :��� 1   8 :�M
�M 
leng� o   7 8�L�L 0 this_number  �O  �N  �R  �Q  � l 	 < >��K�J� m   < >�I�I���K  �J  � o   0 1�H�H 0 this_number  � m   ? @�G
�G 
TEXT� m   A B�F
�F 
nmbr� l     ��E�D� o      �C�C 0 decimal_adjust  �E  �D  � ��� Z   F c���B�� >  F I��� o   F G�A�A 0 x  � m   G H�@�@  � r   L ]��� c   L [��� n   L Y��� 7  M Y�?��
�? 
cha � m   Q S�>�> � l  T X��=�<� \   T X��� o   U V�;�; 0 x  � m   V W�:�: �=  �<  � o   L M�9�9 0 this_number  � m   Y Z�8
�8 
TEXT� l     ��7�6� o      �5�5 0 
first_part  �7  �6  �B  � r   ` c��� m   ` a�� ���  � l     ��4�3� o      �2�2 0 
first_part  �4  �3  � ��� r   d w��� c   d u��� n   d s��� 7  e s�1��
�1 
cha � l  i m��0�/� [   i m��� o   j k�.�. 0 x  � m   k l�-�- �0  �/  � l  n r��,�+� \   n r��� o   o p�*�* 0 z  � m   p q�)�) �,  �+  � o   d e�(�( 0 this_number  � m   s t�'
�' 
TEXT� l     ��&�%� o      �$�$ 0 second_part  �&  �%  � ��� r   x {��� l  x y��#�"� o   x y�!�! 0 
first_part  �#  �"  � l     �� �� o      �� 0 converted_number  �   �  � ��� Y   | ������� Q   � ����� r   � ���� b   � ���� l 	 � ����� l  � ����� o   � ��� 0 converted_number  �  �  �  �  � n   � ���� 4   � ���
� 
cha � o   � ��� 0 i  � l  � ����� o   � ��� 0 second_part  �  �  � l     ���� o      �� 0 converted_number  �  �  � R      ���
� .ascrerr ****      � ****�  �  � r   � ���� b   � ���� l  � ����
� o   � ��	�	 0 converted_number  �  �
  � m   � ��� ���  0� l     ���� o      �� 0 converted_number  �  �  � 0 i  � m    ��� � l  � ����� o   � ��� 0 decimal_adjust  �  �  �  � ��� L   � ��� l  � ��� ��� o   � ����� 0 converted_number  �   ��  �  �p  j Z   �Z������ E   � ���� o   � ����� 0 this_number  � m   � ��� ���  E -� k   �T�� ��� r   � ���� l  � ������� I  � ����� 
�� .sysooffslong    ��� null��    ��
�� 
psof m   � � �  . ����
�� 
psin o   � ����� 0 this_number  ��  ��  ��  � o      ���� 0 x  �  r   � �	 l  � �
����
 I  � �����
�� .sysooffslong    ��� null��   ��
�� 
psof m   � � �  - ����
�� 
psin o   � ����� 0 this_number  ��  ��  ��  	 o      ���� 0 y    r   � � l  � ����� I  � �����
�� .sysooffslong    ��� null��   ��
�� 
psof m   � � �  E ����
�� 
psin o   � ����� 0 this_number  ��  ��  ��   o      ���� 0 z    Z   � ���  >  � �!"! o   � ����� 0 x  " m   � �����   r   � �#$# n   � �%&% 7  � ���'(
�� 
ctxt' m   � ����� ( l  � �)����) \   � �*+* o   � ����� 0 x  + m   � ����� ��  ��  & o   � ����� 0 this_number  $ l     ,����, o      ���� 0 
first_part  ��  ��  ��    r   � �-.- m   � �// �00  . l     1����1 o      ���� 0 
first_part  ��  ��   232 r   �454 n   �676 7  ���89
�� 
ctxt8 l :����: [  ;<; o  ���� 0 x  < m  ���� ��  ��  9 l =����= \  >?> o  	���� 0 z  ? m  	
���� ��  ��  7 o   � ����� 0 this_number  5 l     @����@ o      ���� 0 second_part  ��  ��  3 ABA r  CDC b  EFE l G����G o  ���� 0 
first_part  ��  ��  F o  ���� 0 second_part  D l     H����H o      ���� 0 converted_number  ��  ��  B IJI r  (KLK c  &MNM n  $OPO 7 $��QR
�� 
ctxtQ l  S����S [   TUT o  ���� 0 y  U m  ���� ��  ��  R m  !#������P o  ���� 0 this_number  N m  $%��
�� 
nmbrL o      ���� 0 n  J VWV r  ).XYX m  ),ZZ �[[  0 .Y o      ���� 0 zero  W \]\ l //��������  ��  ��  ] ^_^ Z  /N`a����` ?  /2bcb o  /0���� 0 n  c m  01���� a U  5Jded r  >Efgf b  >Chih o  >?���� 0 zero  i m  ?Bjj �kk  0g o      ���� 0 zero  e l 8;l����l \  8;mnm o  89���� 0 n  n m  9:���� ��  ��  ��  ��  _ o��o r  OTpqp b  ORrsr o  OP���� 0 zero  s o  PQ���� 0 converted_number  q o      ���� 0 converted_number  ��  ��  � r  WZtut o  WX���� 0 this_number  u o      ���� 0 converted_number  g vwv l [[��������  ��  ��  w x��x L  []yy o  [\���� 0 converted_number  ��  Z z{z l     ��������  ��  ��  { |}| l      ��~��  ~ o i========================
Function: getJSON(theJSON)
Returen: Applescript Record
=========================    ��� � = = = = = = = = = = = = = = = = = = = = = = = = 
 F u n c t i o n :   g e t J S O N ( t h e J S O N ) 
 R e t u r e n :   A p p l e s c r i p t   R e c o r d 
 = = = = = = = = = = = = = = = = = = = = = = = = =} ���� i    ��� I      ������� 0 getjson getJSON� ���� o      ���� 0 thejson theJSON��  ��  � k     �� ��� r     ��� I    �����
�� .sysodsct****        scpt� l    ������ I    �����
�� .sysoexecTEXT���     TEXT� l    ������ b     ��� b     ��� m     �� ��� 
 e c h o  � n   ��� 1    ��
�� 
strq� o    ���� 0 thejson theJSON� m    �� ��� �   |   s e d   - E   ' s / " ( [ ^ " ] + ) " [ [ : s p a c e : ] ] * : [ [ : s p a c e : ] ] * / | \ 1 | : / g '   |   t r   - d   ' \ n \ r '��  ��  ��  ��  ��  ��  � o      ���� $0 applescriptvalue applescriptValue� ���� L    �� o    ���� $0 applescriptvalue applescriptValue��  ��       ����������  � ���������
�� .aevtoappnull  �   � ****�� "0 removecharacter RemoveCharacter�� 0 stringsplit StringSplit�� 0 number_to_string  � 0 getjson getJSON� �~ �}�|���{
�~ .aevtoappnull  �   � ****�} 0 thequery theQuery�|  � �z�y�x�w�z 0 thequery theQuery�y 0 theitem theItem�x 
0 prefix  �w 0 
themessage 
theMessage� � �v�u , 0 4 7�t�s�r L�q W `�p m�o {�n�m�l�k�j�i�h�g ��f ��e ��d ��c�b�a �`�_�^�]�\-7T�[l�Z�Y��X�W������V��U�T�S���35�R@BNRln�Q�P�O�N�M�L�K�J�I�H�G���F<�E�D�C�B�A�@�?�>`�=�<�;�:k�9��8��7�����6��5���4�������3�2�1�0�/7?Xjnt���.����-��,������+�����
�v .sysoexecTEXT���     TEXT�u (0 destinationmailbox destinationMailbox�t �s $0 prefixestoremove prefixesToRemove�r 0 askforthename askForTheName�q 0 todoisttoken todoistToken
�p 
psxf�o 0 
thedatadir 
theDataDir
�n 
ctxt�m 0 thedatafile theDataFile�l  0 theprojectdata theProjectData
�k 
file
�j .rdwrread****        ****
�i 
cpar�h  �g  
�f .ascrcmnt****      � ****�e 0 thelabeldata theLabelData
�d 
leng�c 0 stringsplit StringSplit�b $0 theprojectrecord theProjectRecord
�a 
cobj�` *0 theprojectnamearray theProjectNameArray�_ 0 
theproject 
theProject�^ &0 theprojectidarray theProjectIdArray�] 0 theprojectid theProjectId�\ 0 	projectid 	ProjectId�[  0 thelabelrecord theLabelRecord�Z &0 thelabelnamearray theLabelNameArray�Y 0 thelabel theLabel�X "0 thelabelidarray theLabelIdArray�W 0 
thelabelid 
theLabelId
�V 
psof
�U 
psin
�T .sysooffslong    ��� null�S 0 
thesnippet 
theSnippet�R 0 theduestring theDueString�Q 0 curl  �P  0 theprojectjson theProjectJson�O 0 getjson getJSON�N "0 thetodoistitems theTodoistItems
�M 
kocl
�L .corecnte****       ****�K 0 id  �J 0 number_to_string  �I 0 theid theId�H 0 name  �G 0 thename theName�F 0 thelabeljson theLabelJson
�E .miscactvnull��� ��� null
�D 
slct�C $0 selectedmessages selectedMessages�B 0 response  �A 0 
themessage 
theMessage
�@ 
subj
�? 
sndr�> 0 	thesender 	theSender
�= 
dtxt
�< .sysodlogaskr        TEXT
�; 
rslt
�: 
bhit
�9 
ttxt
�8 
meid�7 0 theurl theURL�6 0 
thecontent 
theContent�5 0 myuuid myUUID�4 "0 removecharacter RemoveCharacter
�3 
insh
�2 
mact
�1 
mbxp
�0 
pnam
�/ .coremovenull���     obj �. 

�- 
appr
�, .sysonotfnull��� ��� TEXT
�+ .GURLGURLnull��� ��� TEXT�{M�j E�O�����vE�OfE�O�j E�O��Q�j O*��j /E` O_ a %a &E` OjvE` O *a _ /j a -E` W X  jvE` Oa j O_ a %a &E` OjvE` O *a _ /j a -E` W X  jvE` Oa j O_ a ,j t*_ a &a  l+ !E` "O H*_ "a #l/a $l+ !E` %O_ %a #l/E` &O*_ "a #k/a 'l+ !E` (O_ (a #l/E` )W X  jE` *Oa +E` &Y jE` )Oa ,E` &O_ a ,j v*_ a &a -l+ !E` .O H*_ .a #l/a /l+ !E` 0O_ 0a #l/E` 1O*_ .a #k/a 2l+ !E` 3O_ 3a #l/E` 4W X  a 5E` 4Oa 6E` 1Y a 7E` 4Oa 8E` 1O�a &E�O�a 9 O�[a \[Z*a :a ;a <�� =k\Zi2E` >O_ >a ? *_ >a @l+ !a #k/E` 1Y 	_ >E` 1Y hO�a A O�[a \[Z*a :a Ba <�� =k\Zi2E` >O_ >a C *_ >a Dl+ !a #k/E` &Y 	_ >E` &Y hOa E�%a F%j E` GOa H_ G%a I%j E` GO_ Ga &a J  a KE` GY hOa L�%a M%E` NO_ Nj E` OO*_ Ok+ PE` QO H_ Q[a Ra #l Skh *�a T,k+ UE` VO�a W,E` XO_ X_ &  _ VE` )Y h[OY��Oa Y�%a Z%E` NO_ Nj E` [O*_ [k+ PE` QO H_ Q[a Ra #l Skh *�a T,k+ UE` VO�a W,E` XO_ X_ 1  _ VE` 4Y h[OY��Oa \�*j ]O*a ^,EE` _O_ _j Sj  a `E` aY�_ _a #i/E` bO_ ba c,E` XO_ ba d,E` eO =�[a Ra #l Skh _ X� _ X[a \[Zk�a ,\Zi2E` XY h[OY��O� 5a fa g_ Xl hE` iO_ ia j,a k  _ ia l,E` XY hY hOa m_ ba n,%a o%E` pOa q_ X%a r%_ p%a s%_ e%a t%E` uOa vj E` wOa x)_ ua yl+ z%a {%_ G%a |%_ )%a }%_ 4%a ~%�%a %_ w%a �%E` NO_ Nj E` aO_ aa � a �E` aY Q�a � @ :_ _[a Ra #l Skh �a �*a ��a �,a �,a �,E/a ��/l �[OY��Y hOa �E` aOPUY 	a �E` aO_ aa �  x_ &a �  a �E` &Y a �_ &%E` &O_ 1a �  a �E` 1Y a �_ 1%E` 1O_ X[a \[Zk\Za �2a �%_ G%a �%_ &%a �%_ 1%a �a �l �Y R_ aa �  !a �a �a �l �Oa � 	a �j �UY )_ aa �  a �a �a �l �Y a �a �a �l �OP� �*��)�(���'�* "0 removecharacter RemoveCharacter�) �&��& �  �%�$�% 0 thestr theStr�$ 0 thechar theChar�(  � �#�"�!� ��# 0 thestr theStr�" 0 thechar theChar�! 0 theclist theClist�  0 	newstring 	newString� 0 c  � �����
� 
cha 
� 
kocl
� 
cobj
� .corecnte****       ****�' 3��-E�O�E�O $�[��l kh �� 
��%E�Y h[OY��O�� ������� 0 stringsplit StringSplit� ��� �  ��� 0 	thestring 	theString� 0 thedelimiter theDelimiter�  � ����� 0 	thestring 	theString� 0 thedelimiter theDelimiter� 0 olddelimiters oldDelimiters� 0 thearray theArray� ���
� 
ascr
� 
txdl
� 
citm� ��,E�O���,FO��-E�O���,FO�� �\��
���	� 0 number_to_string  � ��� �  �� 0 this_number  �
  � ������� ��������� 0 this_number  � 0 x  � 0 y  � 0 z  � 0 decimal_adjust  � 0 
first_part  �  0 second_part  �� 0 converted_number  �� 0 i  �� 0 n  �� 0 zero  � ��m��x�����������������������/Zj
�� 
TEXT
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null
�� 
cha 
�� 
leng
�� 
nmbr��  ��  
�� 
ctxt�	^��&E�O�� �*���� E�O*���� E�O*���� E�O�[�\[Z���,\Zi2�&�&E�O�j �[�\[Zk\Z�k2�&E�Y �E�O�[�\[Z�k\Z�k2�&E�O�E�O &k�kh  ���/%E�W X  ��%E�[OY��O�Y ��a  �*�a �� E�O*�a �� E�O*�a �� E�O�j �[a \[Zk\Z�k2E�Y a E�O�[a \[Z�k\Z�k2E�O��%E�O�[a \[Z�k\Zi2�&E�Oa E�O�k  �kkh�a %E�[OY��Y hO��%E�Y �E�O�� ������������� 0 getjson getJSON�� ����� �  ���� 0 thejson theJSON��  � ������ 0 thejson theJSON�� $0 applescriptvalue applescriptValue� ��������
�� 
strq
�� .sysoexecTEXT���     TEXT
�� .sysodsct****        scpt�� ��,%�%j j E�O� ascr  ��ޭ