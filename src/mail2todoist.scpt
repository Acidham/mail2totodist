FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � � ================================================
mail2todoist.scpt generate Todosit task from an Email and Achrive the Email
================================================      � 	 	^   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 m a i l 2 t o d o i s t . s c p t   g e n e r a t e   T o d o s i t   t a s k   f r o m   a n   E m a i l   a n d   A c h r i v e   t h e   E m a i l 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =     
  
 i         I     �� ��
�� .aevtoappnull  �   � ****  o      ���� 0 thequery theQuery��    k    l       l     ��  ��    , & READ CONFIG and Environment variables     �   L   R E A D   C O N F I G   a n d   E n v i r o n m e n t   v a r i a b l e s      l     ��  ��    0 * Prefixes to be removed from email subject     �   T   P r e f i x e s   t o   b e   r e m o v e d   f r o m   e m a i l   s u b j e c t      r     	    J             m      ! ! � " "  r e :      # $ # m     % % � & & 
 o d p :   $  ' ( ' m     ) ) � * *  f w :   (  + , + m     - - � . . 
 f w d :   ,  /�� / m     0 0 � 1 1  A W :  ��    o      ���� $0 prefixestoremove prefixesToRemove   2 3 2 l  
 
�� 4 5��   4 U O Decide if you want to confirm name of created task. Defaut is message subject.    5 � 6 6 �   D e c i d e   i f   y o u   w a n t   t o   c o n f i r m   n a m e   o f   c r e a t e d   t a s k .   D e f a u t   i s   m e s s a g e   s u b j e c t . 3  7 8 7 r   
  9 : 9 m   
 ��
�� boovfals : o      ���� 0 askforthename askForTheName 8  ; < ; l   �� = >��   = , & Get todoist token from Workflow value    > � ? ? L   G e t   t o d o i s t   t o k e n   f r o m   W o r k f l o w   v a l u e <  @ A @ r     B C B I   �� D��
�� .sysoexecTEXT���     TEXT D m     E E � F F $ e c h o   $ t o d o i s t T o k e n��   C o      ���� 0 todoisttoken todoistToken A  G H G l   ��������  ��  ��   H  I J I Z   � K L�� M K >    N O N o    ���� 0 todoisttoken todoistToken O m     P P � Q Q   L k   � R R  S T S l   ! U V W U I   !�� X��
�� .sysoexecTEXT���     TEXT X m     Y Y � Z Z D m k d i r   - p   " $ { a l f r e d _ w o r k f l o w _ d a t a } "��   V 0 * create WF data directory if not available    W � [ [ T   c r e a t e   W F   d a t a   d i r e c t o r y   i f   n o t   a v a i l a b l e T  \ ] \ l  " , ^ _ ` ^ r   " , a b a 4   " *�� c
�� 
psxf c l  $ ) d���� d I  $ )�� e��
�� .sysoexecTEXT���     TEXT e m   $ % f f � g g 4 e c h o   $ a l f r e d _ w o r k f l o w _ d a t a��  ��  ��   b o      ���� 0 
thedatadir 
theDataDir _   get WF data directory    ` � h h ,   g e t   W F   d a t a   d i r e c t o r y ]  i j i l  - : k l m k r   - : n o n c   - 6 p q p b   - 2 r s r o   - .���� 0 
thedatadir 
theDataDir s m   . 1 t t � u u  : p r o j e c t . t x t q m   2 5��
�� 
ctxt o o      ���� 0 thedatafile theDataFile l   Project Data file Path    m � v v .   P r o j e c t   D a t a   f i l e   P a t h j  w x w l  ; ;�� y z��   y 4 .	log ("DataDir: " & POSIX path of theDataFile)    z � { { \ 	 l o g   ( " D a t a D i r :   "   &   P O S I X   p a t h   o f   t h e D a t a F i l e ) x  | } | l  ; ;��������  ��  ��   }  ~  ~ l  ; ;�� � ���   �   Load Mailbox config    � � � � (   L o a d   M a i l b o x   c o n f i g   � � � l  ; H � � � � r   ; H � � � c   ; D � � � b   ; @ � � � o   ; <���� 0 
thedatadir 
theDataDir � m   < ? � � � � �  : m a i l b o x . t x t � m   @ C��
�� 
ctxt � o      ����  0 themailboxfile theMailboxFile �   Mailbox File Path    � � � � $   M a i l b o x   F i l e   P a t h �  � � � l  I I��������  ��  ��   �  � � � l  I I�� � ���   �  -----------------    � � � � " - - - - - - - - - - - - - - - - - �  � � � l  I I�� � ���   �   Read mailbox config    � � � � (   R e a d   m a i l b o x   c o n f i g �  � � � l  I I�� � ���   �  -----------------    � � � � " - - - - - - - - - - - - - - - - - �  � � � r   I O � � � J   I K����   � o      ���� $0 themailboxconfig theMailboxConfig �  � � � Q   P u � � � � r   S g � � � n   S c � � � 2  _ c��
�� 
cpar � l  S _ ����� � I  S _�� ���
�� .rdwrread****        **** � 4   S [�� �
�� 
file � o   W Z����  0 themailboxfile theMailboxFile��  ��  ��   � o      ���� $0 themailboxconfig theMailboxConfig � R      ������
�� .ascrerr ****      � ****��  ��   � r   o u � � � J   o q����   � o      ���� $0 themailboxconfig theMailboxConfig �  � � � l  v v��������  ��  ��   �  � � � l  v v��������  ��  ��   �  � � � l  v v�� � ���   �   --------------------------    � � � � 4 - - - - - - - - - - - - - - - - - - - - - - - - - - �  � � � l  v v�� � ���   � #  Handle Email from Apple Mail    � � � � :   H a n d l e   E m a i l   f r o m   A p p l e   M a i l �  � � � l  v v�� � ���   �   --------------------------    � � � � 4 - - - - - - - - - - - - - - - - - - - - - - - - - - �  � � � O   v� � � � k   |� � �  � � � I  | �������
�� .miscactvnull��� ��� null��  ��   �  � � � l  � � � � � � r   � � � � � e   � � � � 1   � ���
�� 
slct � o      ���� $0 selectedmessages selectedMessages � ) # get selected Message in Apple Mail    � � � � F   g e t   s e l e c t e d   M e s s a g e   i n   A p p l e   M a i l �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � ? 9 checks if a message was selected or bypass task creation    � � � � r   c h e c k s   i f   a   m e s s a g e   w a s   s e l e c t e d   o r   b y p a s s   t a s k   c r e a t i o n �  � � � Z   �� � ��� � � =  � � � � � l  � � ����� � I  � ��� ���
�� .corecnte****       **** � o   � ����� $0 selectedmessages selectedMessages��  ��  ��   � m   � �����   � r   � � � � � m   � � � � � � �  $ s e l e c t i o n � o      ���� 0 response  ��   � k   �� � �  � � � l  � � � � � � r   � � � � � n   � � � � � 4  � ��� �
�� 
cobj � m   � ������� � o   � ����� $0 selectedmessages selectedMessages � o      ���� 0 
themessage 
theMessage � $  we need only the last message    � � � � <   w e   n e e d   o n l y   t h e   l a s t   m e s s a g e �  � � � l  � � � � � � r   � � � � � n   � � � � � 1   � ���
�� 
subj � o   � ����� 0 
themessage 
theMessage � o      ���� 0 
thesubject 
theSubject � &   subject is the name of the task    � �   @   s u b j e c t   i s   t h e   n a m e   o f   t h e   t a s k �  l  � � r   � � n   � �	 1   � ���
�� 
sndr	 o   � ����� 0 
themessage 
theMessage o      ���� 0 	thesender 	theSender #  get the senders email adress    �

 :   g e t   t h e   s e n d e r s   e m a i l   a d r e s s  l  � ���������  ��  ��    l  � �����   * $ remove prefixes as configured above    � H   r e m o v e   p r e f i x e s   a s   c o n f i g u r e d   a b o v e  X   ��� Z   ����� C   � � o   � ����� 0 
thesubject 
theSubject o   � ����� 
0 prefix   r   � � n   � � 7  � ���
�� 
ctxt l  � � ����  [   � �!"! m   � ����� " l  � �#����# n   � �$%$ 1   � ���
�� 
leng% o   � ����� 
0 prefix  ��  ��  ��  ��   m   � ������� o   � ����� 0 
thesubject 
theSubject o      ���� 0 
thesubject 
theSubject��  ��  �� 
0 prefix   o   � ����� $0 prefixestoremove prefixesToRemove &'& l ��������  ��  ��  ' ()( l ��*+��  * 1 + if confgured pop up dialog to change title   + �,, V   i f   c o n f g u r e d   p o p   u p   d i a l o g   t o   c h a n g e   t i t l e) -.- Z  ?/0����/ o  ���� 0 askforthename askForTheName0 k  ;11 232 r  454 I ��67
�� .sysodlogaskr        TEXT6 m  88 �99  E n t e r   t a s k   n a m e7 ��:��
�� 
dtxt: o  �� 0 
thesubject 
theSubject��  5 1      �~
�~ 
rslt3 ;�}; Z  ;<=�|>< = (?@? n  $ABA 1   $�{
�{ 
bhitB 1   �z
�z 
rslt@ m  $'CC �DD  O K= r  +6EFE n  +2GHG 1  .2�y
�y 
ttxtH 1  +.�x
�x 
rsltF o      �w�w 0 
thesubject 
theSubject�|  > L  9;�v�v  �}  ��  ��  . IJI l @@�u�t�s�u  �t  �s  J KLK l @@�rMN�r  M , &--------------------------------------   N �OO L - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -L PQP l @@�qRS�q  R 3 - Get Destination Mailbox for selected message   S �TT Z   G e t   D e s t i n a t i o n   M a i l b o x   f o r   s e l e c t e d   m e s s a g eQ UVU l @@�pWX�p  W , &--------------------------------------   X �YY L - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -V Z[Z r  @G\]\ m  @C^^ �__  ] o      �o�o (0 destinationmailbox destinationMailbox[ `a` l HH�nbc�n  b  old impl   c �dd  o l d   i m p la efe l  HH�mgh�m  g93set theAccount to name of the account of mailbox of (item 1 of selectedMessages)				repeat with c in destinationMailboxes					set theAccountName to item 1 of c					set theMailboxName to item 2 of c					if theAccount is equal to theAccountName then set destinationMailbox to theMailboxName				end repeat   h �iif s e t   t h e A c c o u n t   t o   n a m e   o f   t h e   a c c o u n t   o f   m a i l b o x   o f   ( i t e m   1   o f   s e l e c t e d M e s s a g e s )  	 	 	 	 r e p e a t   w i t h   c   i n   d e s t i n a t i o n M a i l b o x e s  	 	 	 	 	 s e t   t h e A c c o u n t N a m e   t o   i t e m   1   o f   c  	 	 	 	 	 s e t   t h e M a i l b o x N a m e   t o   i t e m   2   o f   c  	 	 	 	 	 i f   t h e A c c o u n t   i s   e q u a l   t o   t h e A c c o u n t N a m e   t h e n   s e t   d e s t i n a t i o n M a i l b o x   t o   t h e M a i l b o x N a m e  	 	 	 	 e n d   r e p e a tf jkj l HH�llm�l  l  	 new impl   m �nn    n e w   i m p lk opo Z  H�qr�k�jq > HQsts n  HOuvu 1  KO�i
�i 
lengv o  HK�h�h $0 themailboxconfig theMailboxConfigt m  OP�g�g  r k  T�ww xyx r  Tlz{z n  Th|}| 1  dh�f
�f 
pnam} l Td~�e�d~ n  Td� m  `d�c
�c 
mact� n  T`��� m  \`�b
�b 
mbxp� l T\��a�`� n  T\��� 4  W\�_�
�_ 
cobj� m  Z[�^�^ � o  TW�]�] $0 selectedmessages selectedMessages�a  �`  �e  �d  { o      �\�\ 0 
theaccount 
theAccounty ��� X  m���[�� Z  �����Z�Y� E  ����� o  ���X�X 0 c  � m  ���� ���  :� k  ���� ��� r  ����� n ����� I  ���W��V�W 0 stringsplit StringSplit� ��� o  ���U�U 0 c  � ��T� m  ���� ���  :�T  �V  �  f  ��� o      �S�S 0 thevaluepair theValuePair� ��� r  ����� n  ����� 4  ���R�
�R 
cobj� m  ���Q�Q � o  ���P�P 0 thevaluepair theValuePair� o      �O�O  0 theaccountname theAccountName� ��� r  ����� n  ����� 4  ���N�
�N 
cobj� m  ���M�M � o  ���L�L 0 thevaluepair theValuePair� o      �K�K  0 themailboxname theMailboxName� ��J� Z �����I�H� = ����� o  ���G�G 0 
theaccount 
theAccount� o  ���F�F  0 theaccountname theAccountName� r  ����� o  ���E�E  0 themailboxname theMailboxName� o      �D�D (0 destinationmailbox destinationMailbox�I  �H  �J  �Z  �Y  �[ 0 c  � o  ps�C�C $0 themailboxconfig theMailboxConfig� ��B� l ���A�@�?�A  �@  �?  �B  �k  �j  p ��� l ���>�=�<�>  �=  �<  � ��� l ���;���;  � ' !display dialog destinationMailbox   � ��� B d i s p l a y   d i a l o g   d e s t i n a t i o n M a i l b o x� ��� l ���:�9�8�:  �9  �8  � ��� l ���7���7  � e _ URL for Apple Mail Message, adding to the task note. Click in Todoist to open message in Mail.   � ��� �   U R L   f o r   A p p l e   M a i l   M e s s a g e ,   a d d i n g   t o   t h e   t a s k   n o t e .   C l i c k   i n   T o d o i s t   t o   o p e n   m e s s a g e   i n   M a i l .� ��� r  ����� b  ����� b  ����� m  ���� ���  m e s s a g e : / / % 3 c� n ����� 1  ���6
�6 
meid� o  ���5�5 0 
themessage 
theMessage� m  ���� ���  % 3 e� o      �4�4 0 theurl theURL� ��� l ���3�2�1�3  �2  �1  � ��� l ���0���0  � : 4 build content string including name, url and sender   � ��� h   b u i l d   c o n t e n t   s t r i n g   i n c l u d i n g   n a m e ,   u r l   a n d   s e n d e r� ��� l ���/���/  �   clean name string   � ��� $   c l e a n   n a m e   s t r i n g� ��� r  ����� n ����� I  ���.��-�. "0 removecharacter RemoveCharacter� ��� o  ���,�, 0 
thesubject 
theSubject� ��+� m  ���� ���  '�+  �-  �  f  ��� o      �*�* 0 
thesubject 
theSubject� ��� r  ���� n ���� I  ��)��(�) "0 removecharacter RemoveCharacter� ��� o  � �'�' 0 	thesender 	theSender� ��&� m   �� ���  '�&  �(  �  f  ��� o      �%�% 0 	thesender 	theSender� ��� r  ��� n ��� I  �$��#�$ "0 removecharacter RemoveCharacter� ��� o  �"�" 0 
thesubject 
theSubject� ��!� m  �� ���  "�!  �#  �  f  � o      � �  0 
thesubject 
theSubject�    r  + n ' I  '��� "0 removecharacter RemoveCharacter  o   �� 0 	thesender 	theSender 	�	 m   #

 �  "�  �    f   o      �� 0 	thesender 	theSender  r  ,K b  ,G b  ,C b  ,? b  ,; b  ,7 b  ,3 m  ,/ �  [ o  /2�� 0 
thesubject 
theSubject m  36 �  ] ( o  7:�� 0 theurl theURL m  ;>   �!! 
 )   -   [ o  ?B�� 0 	thesender 	theSender m  CF"" �##  ] o      �� 0 
thecontent 
theContent $%$ l LL����  �  �  % &'& l LL�()�  (   Archive mail   ) �**    A r c h i v e   m a i l' +�+ Z  L�,-��, > LS./. o  LO�� (0 destinationmailbox destinationMailbox/ m  OR00 �11  - X  V�2�32 k  l�44 565 l ll�78�  7 &   Archive to destination mailbox    8 �99 @   A r c h i v e   t o   d e s t i n a t i o n   m a i l b o x  6 :;: Q  l�<=>< k  o�?? @A@ r  otBCB m  op�
� boovtrueC o      �� 0 mailarchived mailArchivedA D�
D I u��	EF
�	 .coremovenull���     obj E o  uv�� 0 
themessage 
theMessageF �G�
� 
inshG n  y�HIH 4  ���J
� 
mbxpJ o  ���� (0 destinationmailbox destinationMailboxI 4  y��K
� 
mactK l }�L��L n  }�MNM 1  ��� 
�  
pnamN l }�O����O n  }�PQP m  ����
�� 
mactQ l }�R����R n  }�STS m  ~���
�� 
mbxpT o  }~���� 0 
themessage 
theMessage��  ��  ��  ��  �  �  �  �
  = R      ������
�� .ascrerr ****      � ****��  ��  > r  ��UVU m  ����
�� boovfalsV o      ���� 0 mailarchived mailArchived; W��W l ����XY��  X $ display dialog "mail archived"   Y �ZZ < d i s p l a y   d i a l o g   " m a i l   a r c h i v e d "��  � 0 
themessage 
theMessage3 o  Y\���� $0 selectedmessages selectedMessages�  �  �   � [��[ l ����������  ��  ��  ��   � m   v y\\f                                                                                  emal  alis      SSD                            BD ����Mail.app                                                       ����            ����  
 cu             Applications  /:Applications:Mail.app/    M a i l . a p p    S S D  Applications/Mail.app   / ��   � ]^] l ����������  ��  ��  ^ _`_ l ����ab��  a  ------------------   b �cc $ - - - - - - - - - - - - - - - - - -` ded l ����fg��  f   Read Project Data file   g �hh .   R e a d   P r o j e c t   D a t a   f i l ee iji l ����kl��  k  ------------------   l �mm $ - - - - - - - - - - - - - - - - - -j non r  ��pqp J  ������  q o      ����  0 theprojectdata theProjectDatao rsr Q  ��tuvt r  ��wxw n  ��yzy 2 ����
�� 
cparz l ��{����{ I ����|��
�� .rdwrread****        ****| 4  ����}
�� 
file} o  ������ 0 thedatafile theDataFile��  ��  ��  x o      ����  0 theprojectdata theProjectDatau R      ������
�� .ascrerr ****      � ****��  ��  v k  ��~~ � r  ����� J  ������  � o      ����  0 theprojectdata theProjectData� ���� I �������
�� .ascrcmnt****      � ****� l �������� m  ���� ���  f i l e   e m p t y��  ��  ��  ��  s ��� l ����������  ��  ��  � ��� l ��������  �  ----------------   � ���   - - - - - - - - - - - - - - - -� ��� l ��������  �   Read label data file   � ��� *   R e a d   l a b e l   d a t a   f i l e� ��� l ��������  �  ----------------    � ��� " - - - - - - - - - - - - - - - -  � ��� r  ����� c  ����� b  ����� o  ������ 0 
thedatadir 
theDataDir� m  ���� ���  : l a b e l . t x t� m  ����
�� 
ctxt� o      ���� 0 thedatafile theDataFile� ��� r  ����� J  ������  � o      ���� 0 thelabeldata theLabelData� ��� Q  �*���� r   ��� n   ��� 2 ��
�� 
cpar� l  ������ I  �����
�� .rdwrread****        ****� 4   ���
�� 
file� o  ���� 0 thedatafile theDataFile��  ��  ��  � o      ���� 0 thelabeldata theLabelData� R      ������
�� .ascrerr ****      � ****��  ��  � k  *�� ��� r  "��� J  ����  � o      ���� 0 thelabeldata theLabelData� ���� I #*�����
�� .ascrcmnt****      � ****� l #&������ m  #&�� ���  f i l e   e m p t y��  ��  ��  ��  � ��� l ++��������  ��  ��  � ��� l ++������  �   --------------------------   � ��� 4 - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l ++������  � $  Get ProjectID from saved data   � ��� <   G e t   P r o j e c t I D   f r o m   s a v e d   d a t a� ��� l ++������  �   --------------------------   � ��� 4 - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� Z  +������� > +4��� n  +2��� 1  .2��
�� 
leng� o  +.����  0 theprojectdata theProjectData� m  23����  � k  7��� ��� r  7J��� I  7F������� 0 stringsplit StringSplit� ��� c  8?��� o  8;����  0 theprojectdata theProjectData� m  ;>��
�� 
ctxt� ���� m  ?B�� ���  |��  ��  � o      ���� $0 theprojectrecord theProjectRecord� ���� Q  K����� k  N��� ��� l Nb���� r  Nb��� I  N^������� 0 stringsplit StringSplit� ��� l OW������ n  OW��� 4  RW���
�� 
cobj� m  UV���� � o  OR���� $0 theprojectrecord theProjectRecord��  ��  � ���� m  WZ�� ���  :��  ��  � o      ���� *0 theprojectnamearray theProjectNameArray� * $ Project Name, required for response   � ��� H   P r o j e c t   N a m e ,   r e q u i r e d   f o r   r e s p o n s e� ��� r  co��� n  ck� � 4  fk��
�� 
cobj m  ij����   o  cf���� *0 theprojectnamearray theProjectNameArray� o      ���� 0 
theproject 
theProject�  l pp��������  ��  ��    l p� r  p�	
	 I  p������� 0 stringsplit StringSplit  l qy���� n  qy 4  ty��
�� 
cobj m  wx����  o  qt���� $0 theprojectrecord theProjectRecord��  ��   �� m  y| �  :��  ��  
 o      ���� &0 theprojectidarray theProjectIdArray   Project ID    �    P r o j e c t   I D �� r  �� n  �� 4  ����
�� 
cobj m  ������  o  ������ &0 theprojectidarray theProjectIdArray o      ���� 0 theprojectid theProjectId��  � R      ������
�� .ascrerr ****      � ****��  ��  � k  ��  r  ��  m  ������    l     !����! o      ���� 0 	projectid 	ProjectId��  ��   "�" r  ��#$# m  ��%% �&&  $ o      �~�~ 0 
theproject 
theProject�  ��  ��  � k  ��'' ()( r  ��*+* m  ���}�}  + o      �|�| 0 theprojectid theProjectId) ,�{, r  ��-.- m  ��// �00 
 I N B O X. o      �z�z 0 
theproject 
theProject�{  � 121 l ���y�x�w�y  �x  �w  2 343 l ���v56�v  5  -------------------------   6 �77 2 - - - - - - - - - - - - - - - - - - - - - - - - -4 898 l ���u:;�u  : "  Get LabelID from daved data   ; �<< 8   G e t   L a b e l I D   f r o m   d a v e d   d a t a9 =>= l ���t?@�t  ?   -------------------------	   @ �AA 4 - - - - - - - - - - - - - - - - - - - - - - - - - 	> BCB Z  �FDE�sFD > ��GHG n  ��IJI 1  ���r
�r 
lengJ o  ���q�q 0 thelabeldata theLabelDataH m  ���p�p  E k  �4KK LML r  ��NON I  ���oP�n�o 0 stringsplit StringSplitP QRQ c  ��STS o  ���m�m 0 thelabeldata theLabelDataT m  ���l
�l 
ctxtR U�kU m  ��VV �WW  |�k  �n  O o      �j�j  0 thelabelrecord theLabelRecordM XYX l ���i�h�g�i  �h  �g  Y Z�fZ Q  �4[\][ k  �^^ _`_ l ��abca r  ��ded I  ���ef�d�e 0 stringsplit StringSplitf ghg l ��i�c�bi n  ��jkj 4  ���al
�a 
cobjl m  ���`�` k o  ���_�_  0 thelabelrecord theLabelRecord�c  �b  h m�^m m  ��nn �oo  :�^  �d  e o      �]�] &0 thelabelnamearray theLabelNameArrayb ) # Label Name, required for response    c �pp F   L a b e l   N a m e ,   r e q u i r e d   f o r   r e s p o n s e  ` qrq r  ��sts n  ��uvu 4  ���\w
�\ 
cobjw m  ���[�[ v o  ���Z�Z &0 thelabelnamearray theLabelNameArrayt o      �Y�Y 0 thelabel theLabelr xyx l ���X�W�V�X  �W  �V  y z{z l �|}~| r  �� I  ��U��T�U 0 stringsplit StringSplit� ��� l ���S�R� n  ���� 4   �Q�
�Q 
cobj� m  �P�P � o  � �O�O  0 thelabelrecord theLabelRecord�S  �R  � ��N� m  �� ���  :�N  �T  � o      �M�M "0 thelabelidarray theLabelIdArray}  	 Label ID   ~ ���    L a b e l   I D{ ��L� r  ��� n  ��� 4  �K�
�K 
cobj� m  �J�J � o  �I�I "0 thelabelidarray theLabelIdArray� o      �H�H 0 
thelabelid 
theLabelId�L  \ R      �G�F�E
�G .ascrerr ****      � ****�F  �E  ] k  %4�� ��� r  %,��� m  %(�� ���  � o      �D�D 0 
thelabelid 
theLabelId� ��C� r  -4��� m  -0�� ���  � o      �B�B 0 thelabel theLabel�C  �f  �s  F k  7F�� ��� r  7>��� m  7:�� ���  � o      �A�A 0 
thelabelid 
theLabelId� ��@� r  ?F��� m  ?B�� ���  � o      �?�? 0 thelabel theLabel�@  C ��� l GG�>�=�<�>  �=  �<  � ��� l GG�;���;  �  ---------------------   � ��� * - - - - - - - - - - - - - - - - - - - - -� ��� l GG�:���:  � E ? Get due data language, Project and Label, if emtpy set default   � ��� ~   G e t   d u e   d a t a   l a n g u a g e ,   P r o j e c t   a n d   L a b e l ,   i f   e m t p y   s e t   d e f a u l t� ��� l GG�9���9  �  ----------------------   � ��� , - - - - - - - - - - - - - - - - - - - - - -� ��� r  GN��� c  GL��� o  GH�8�8 0 thequery theQuery� m  HK�7
�7 
ctxt� o      �6�6 0 thequery theQuery� ��� l OO�5�4�3�5  �4  �3  � ��� l OO�2���2  �   Extract Label from query   � ��� 2   E x t r a c t   L a b e l   f r o m   q u e r y� ��� Z  O����1�0� E  OT��� o  OP�/�/ 0 thequery theQuery� m  PS�� ���  @� k  W��� ��� r  Wz��� n  Wv��� 7 Xv�.��
�. 
ctxt� l ^r��-�,� [  ^r��� l _p��+�*� I _p�)�(�
�) .sysooffslong    ��� null�(  � �'��
�' 
psof� m  cf�� ���  @� �&��%
�& 
psin� o  ij�$�$ 0 thequery theQuery�%  �+  �*  � m  pq�#�# �-  �,  � m  su�"�"��� o  WX�!�! 0 thequery theQuery� o      � �  0 
thesnippet 
theSnippet� ��� Z  {������ E  {���� o  {~�� 0 
thesnippet 
theSnippet� m  ~��� ���   � r  ����� n  ����� 4  ����
� 
cobj� m  ���� � I  ������ 0 stringsplit StringSplit� ��� o  ���� 0 
thesnippet 
theSnippet� ��� m  ���� ���   �  �  � o      �� 0 thelabel theLabel�  � r  ����� o  ���� 0 
thesnippet 
theSnippet� o      �� 0 thelabel theLabel�  �1  �0  � ��� l ������  �  �  � ��� l ������  � !  Extract Project from query   � ��� 6   E x t r a c t   P r o j e c t   f r o m   q u e r y� � � Z  � �� E  �� o  ���� 0 thequery theQuery m  �� �  # k  �� 	 r  ��

 n  �� 7 ���
� 
ctxt l ����
 [  �� l ���	� I ����
� .sysooffslong    ��� null�   �
� 
psof m  �� �  # ��
� 
psin o  ���� 0 thequery theQuery�  �	  �   m  ���� �  �
   m  ��� � �� o  ������ 0 thequery theQuery o      ���� 0 
thesnippet 
theSnippet	 �� Z  ���� E  �� o  ������ 0 
thesnippet 
theSnippet m  ��   �!!    r  ��"#" n  ��$%$ 4  ����&
�� 
cobj& m  ������ % I  ����'���� 0 stringsplit StringSplit' ()( o  ������ 0 
thesnippet 
theSnippet) *��* m  ��++ �,,   ��  ��  # o      ���� 0 
theproject 
theProject��   r  ��-.- o  ������ 0 
thesnippet 
theSnippet. o      ���� 0 
theproject 
theProject��  �  �    /0/ l ��������  ��  ��  0 121 l ��34��  3   Due Date String Extract    4 �55 2   D u e   D a t e   S t r i n g   E x t r a c t  2 676 r  898 I ��:��
�� .sysoexecTEXT���     TEXT: b  
;<; b  =>= m  ?? �@@  e c h o   "> o  ���� 0 thequery theQuery< m  	AA �BB > "   |   s e d   - E   ' s / # [ A - Z a - z 0 - 9 ] + / / g '��  9 o      ���� 0 theduestring theDueString7 CDC r  &EFE I "��G��
�� .sysoexecTEXT���     TEXTG b  HIH b  JKJ m  LL �MM  e c h o   "K o  ���� 0 theduestring theDueStringI m  NN �OO > "   |   s e d   - E   ' s / @ [ A - Z a - z 0 - 9 ] + / / g '��  F o      ���� 0 theduestring theDueStringD PQP l ''��������  ��  ��  Q RSR Z '@TU����T = '2VWV c  '.XYX o  '*���� 0 theduestring theDueStringY m  *-��
�� 
ctxtW m  .1ZZ �[[  U r  5<\]\ m  58^^ �__ " t o m o r r o w   a t   1 0 : 0 0] o      ���� 0 theduestring theDueString��  ��  S `a` l AA��������  ��  ��  a bcb l AA��de��  d " ----------------------------   e �ff 8 - - - - - - - - - - - - - - - - - - - - - - - - - - - -c ghg l AA��ij��  i 6 0 Get List of all available projects from Todoist   j �kk `   G e t   L i s t   o f   a l l   a v a i l a b l e   p r o j e c t s   f r o m   T o d o i s th lml l AA��no��  n + %-------------------------------------   o �pp J - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -m qrq l AA��������  ��  ��  r sts r  ANuvu b  AJwxw b  AFyzy m  AD{{ �|| � c u r l   - X   G E T   h t t p s : / / b e t a . t o d o i s t . c o m / A P I / v 8 / p r o j e c t s   - H   " A u t h o r i z a t i o n :   B e a r e r  z o  DE���� 0 todoisttoken todoistTokenx m  FI}} �~~  "v o      ���� 0 curl  t � l OZ���� r  OZ��� I OV�����
�� .sysoexecTEXT���     TEXT� o  OR���� 0 curl  ��  � o      ����  0 theprojectjson theProjectJson�   get Json from response   � ��� .   g e t   J s o n   f r o m   r e s p o n s e� ��� l [[��������  ��  ��  � ��� l [[������  �   Read JSON into AS Record   � ��� 2   R e a d   J S O N   i n t o   A S   R e c o r d� ��� r  [g��� I  [c������� 0 getjson getJSON� ���� o  \_����  0 theprojectjson theProjectJson��  ��  � o      ���� "0 thetodoistitems theTodoistItems� ��� l hh��������  ��  ��  � ��� X  h������ k  ~��� ��� r  ~���� I  ~��������  0 numbertostring numberToString� ���� n  ���� o  ������ 0 id  � o  ����� 0 theitem theItem��  ��  � o      ���� 0 theid theId� ��� r  ����� n  ����� o  ������ 0 name  � o  ������ 0 theitem theItem� o      ���� 0 thename theName� ���� Z ��������� = ����� o  ������ 0 thename theName� o  ������ 0 
theproject 
theProject� r  ����� o  ������ 0 theid theId� o      ���� 0 theprojectid theProjectId��  ��  ��  �� 0 theitem theItem� o  kn���� "0 thetodoistitems theTodoistItems� ��� l ����������  ��  ��  � ��� l ��������  �  ----------------------   � ��� , - - - - - - - - - - - - - - - - - - - - - -� ��� l ��������  � , & Get List of all lablels from Tododist   � ��� L   G e t   L i s t   o f   a l l   l a b l e l s   f r o m   T o d o d i s t� ��� l ��������  � % ------------------------------	   � ��� > - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 	� ��� r  ����� b  ����� b  ����� m  ���� ��� � c u r l   - X   G E T   h t t p s : / / b e t a . t o d o i s t . c o m / A P I / v 8 / l a b e l s   - H   " A u t h o r i z a t i o n :   B e a r e r  � o  ������ 0 todoisttoken todoistToken� m  ���� ���  "� o      ���� 0 curl  � ��� l ������ r  ����� I �������
�� .sysoexecTEXT���     TEXT� o  ������ 0 curl  ��  � o      ���� 0 thelabeljson theLabelJson�   get Json from response   � ��� .   g e t   J s o n   f r o m   r e s p o n s e� ��� l ����������  ��  ��  � ��� l ��������  �   Read JSON into AS Record   � ��� 2   R e a d   J S O N   i n t o   A S   R e c o r d� ��� r  ����� I  ��������� 0 getjson getJSON� ���� o  ������ 0 thelabeljson theLabelJson��  ��  � o      ���� "0 thetodoistitems theTodoistItems� ��� l ����������  ��  ��  � ��� X  �"����� k  ��� ��� r  ����� I  ���������  0 numbertostring numberToString� ���� n  ����� o  ������ 0 id  � o  ������ 0 theitem theItem��  ��  � o      ���� 0 theid theId� ��� r  ���� n  ���� o  ����� 0 name  � o  ������ 0 theitem theItem� o      ���� 0 thename theName� ���� Z ������� = ��� o  ���� 0 thename theName� o  ���� 0 thelabel theLabel� r  ��� o  ���� 0 theid theId� o      ���� 0 
thelabelid 
theLabelId��  ��  ��  �� 0 theitem theItem� o  ������ "0 thetodoistitems theTodoistItems�    l ##��������  ��  ��    l ##����   ( " genearte a uuid for task creation    � D   g e n e a r t e   a   u u i d   f o r   t a s k   c r e a t i o n  r  #.	
	 I #*����
�� .sysoexecTEXT���     TEXT m  #& �  u u i d g e n��  
 o      ���� 0 myuuid myUUID  l //��~�}�  �~  �}    l //�|�|   U O build curl command based on API v8 beta. This may be changed by totodist later    � �   b u i l d   c u r l   c o m m a n d   b a s e d   o n   A P I   v 8   b e t a .   T h i s   m a y   b e   c h a n g e d   b y   t o t o d i s t   l a t e r  r  /d b  /` b  /\ b  /X b  /T  b  /R!"! b  /N#$# b  /J%&% b  /F'(' b  /B)*) b  />+,+ b  /:-.- b  /6/0/ m  /211 �22 � c u r l   " h t t p s : / / b e t a . t o d o i s t . c o m / A P I / v 8 / t a s k s "   - X   P O S T   - - d a t a   ' { " c o n t e n t " :   "0 o  25�{�{ 0 
thecontent 
theContent. m  6933 �44 $ " ,   " d u e _ s t r i n g " :   ", o  :=�z�z 0 theduestring theDueString* m  >A55 �66 ` " ,   " d u e _ l a n g " :   " e n " ,   " p r i o r i t y " :   4 , " p r o j e c t _ i d " :( o  BE�y�y 0 theprojectid theProjectId& m  FI77 �88  , " l a b e l _ i d s " : [$ o  JM�x�x 0 
thelabelid 
theLabelId" m  NQ99 �:: � ] , " c o m m e n t _ c o u n t " :   0 ,   " c o m p l e t e d " :   f a l s e } '   - H   " C o n t e n t - T y p e :   a p p l i c a t i o n / j s o n "   - H   " A u t h o r i z a t i o n :   B e a r e r    o  RS�w�w 0 todoisttoken todoistToken m  TW;; �<< ( "   - H   " X - R e q u e s t - I d :   o  X[�v�v 0 myuuid myUUID m  \_== �>>  " o      �u�u 0 curl   ?@? l ee�tAB�t  A  display dialog curl   B �CC & d i s p l a y   d i a l o g   c u r l@ DED l ee�s�r�q�s  �r  �q  E FGF l ee�pHI�p  H $  exec command and get response   I �JJ <   e x e c   c o m m a n d   a n d   g e t   r e s p o n s eG KLK r  epMNM I el�oO�n
�o .sysoexecTEXT���     TEXTO o  eh�m�m 0 curl  �n  N o      �l�l 0 response  L PQP l qq�kRS�k  R  log (response)   S �TT  l o g   ( r e s p o n s e )Q UVU l qq�j�i�h�j  �i  �h  V WXW l qq�gYZ�g  Y J D finally if response results success id will be part of the response   Z �[[ �   f i n a l l y   i f   r e s p o n s e   r e s u l t s   s u c c e s s   i d   w i l l   b e   p a r t   o f   t h e   r e s p o n s eX \]\ Z  q�^_�f`^ H  qyaa E  qxbcb o  qt�e�e 0 response  c m  twdd �ee 
 " i d " :_ r  |�fgf m  |hh �ii  $ f a i l e dg o      �d�d 0 response  �f  ` r  ��jkj m  ��ll �mm  $ s u c c e s sk o      �c�c 0 response  ] n�bn l ���a�`�_�a  �`  �_  �b  ��   M r  ��opo m  ��qq �rr  $ a p i k e yp o      �^�^ 0 response   J sts l ���]uv�]  u 2 ,--------------------------------------------   v �ww X - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -t xyx l ���\z{�\  z 8 2 handle response success,error and missing api key   { �|| d   h a n d l e   r e s p o n s e   s u c c e s s , e r r o r   a n d   m i s s i n g   a p i   k e yy }~} l ���[��[   2 ,--------------------------------------------   � ��� X - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -~ ��� Z  �j����� = ����� o  ���Z�Z 0 response  � m  ���� ���  $ s u c c e s s� l ����� k  ��� ��� l ���Y���Y  � ; 5 Format response wether Label or Project is available   � ��� j   F o r m a t   r e s p o n s e   w e t h e r   L a b e l   o r   P r o j e c t   i s   a v a i l a b l e� ��� Z  �����X�� = ����� o  ���W�W 0 
theproject 
theProject� m  ���� ���  � r  ����� m  ���� ���  � o      �V�V 0 
theproject 
theProject�X  � r  ����� b  ����� m  ���� ���  #� o  ���U�U 0 
theproject 
theProject� o      �T�T 0 
theproject 
theProject� ��� l ���S�R�Q�S  �R  �Q  � ��� Z  �����P�� = ����� o  ���O�O 0 thelabel theLabel� m  ���� ���  � r  ����� m  ���� ���  � o      �N�N 0 thelabel theLabel�P  � r  ����� b  ����� m  ���� ���  @� o  ���M�M 0 thelabel theLabel� o      �L�L 0 thelabel theLabel� ��K� I ��J��
�J .sysonotfnull��� ��� TEXT� b  ���� b  �	��� b  ���� b  ���� b  ����� b  ����� l ����I�H� n  ����� 7 ���G��
�G 
ctxt� m  ���F�F � m  ���E�E 
� o  ���D�D 0 
thesubject 
theSubject�I  �H  � m  ���� ���  . . . ,� o  ���C�C 0 theduestring theDueString� m  � �� ���    
!�  � o  �B�B 0 
theproject 
theProject� m  �� ���   � o  	�A�A 0 thelabel theLabel� �@��?
�@ 
appr� m  �� ��� * T o d o i s t   t a s k   c r e a t e d !�?  �K  �   SUCCESS   � ���    S U C C E S S� ��� = !��� o  �>�> 0 response  � m   �� ���  $ a p i k e y� ��� l $@���� k  $@�� ��� I $1�=��
�= .sysonotfnull��� ��� TEXT� m  $'�� ��� � A d d   T o d i s t   A P I   K e y   t o   w o r k f l o w   c o n f i g u r a t i o n ,   [ X ]   s y m b o l   i n   W F   d e t a i l s� �<��;
�< 
appr� m  *-�� ��� D T o d o i s t   A P I   K e y   m i s s i n g   o r   i n v a l i d�;  � ��:� O  2@��� I 8?�9��8
�9 .GURLGURLnull��� ��� TEXT� m  8;�� ��� L h t t p s : / / t o d o i s t . c o m / p r e f s / i n t e g r a t i o n s�8  � m  25���                                                                                  MACS  alis    .  SSD                            BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    S S D  &System/Library/CoreServices/Finder.app  / ��  �:  � 2 , API key missing and open Todoist Dev center   � ��� X   A P I   k e y   m i s s i n g   a n d   o p e n   T o d o i s t   D e v   c e n t e r� ��� = CJ��� o  CF�7�7 0 response  � m  FI�� ���  $ s e l e c t i o n� ��6� l MZ� � I MZ�5
�5 .sysonotfnull��� ��� TEXT m  MP � B P l e a s e   s e l e c t   E m a i l   i n   A p p l e   M a i l �4�3
�4 
appr m  SV � 6 A d d   T a s k   t o   T o d o i s t   f a i l e d !�3    - ' No email selected or not in Apple mail    �		 N   N o   e m a i l   s e l e c t e d   o r   n o t   i n   A p p l e   m a i l�6  � I ]j�2

�2 .sysonotfnull��� ��� TEXT
 m  ]` � * S o m e t h i n g   w e n t   w r o n g ! �1�0
�1 
appr m  cf � 6 A d d   T a s k   t o   T o d o i s t   f a i l e d !�0  � �/ l kk�.�-�,�.  �-  �,  �/     l     �+�*�)�+  �*  �)    l      �(�(   w q =============================
Removes a chracter from a String
OUTPUT: String
==================================    � �   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 R e m o v e s   a   c h r a c t e r   f r o m   a   S t r i n g 
 O U T P U T :   S t r i n g 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  i     I      �'�&�' "0 removecharacter RemoveCharacter  o      �%�% 0 thestr theStr  �$  o      �#�# 0 thechar theChar�$  �&   l    2!"#! k     2$$ %&% r     '(' n     )*) 2    �"
�" 
cha * o     �!�! 0 thestr theStr( o      � �  0 theclist theClist& +,+ r    	-.- m    // �00  . o      �� 0 	newstring 	newString, 121 X   
 /3�43 Z    *56��5 H    77 E    898 o    �� 0 c  9 o    �� 0 thechar theChar6 r   ! &:;: b   ! $<=< o   ! "�� 0 	newstring 	newString= o   " #�� 0 c  ; o      �� 0 	newstring 	newString�  �  � 0 c  4 o    �� 0 theclist theClist2 >�> L   0 2?? o   0 1�� 0 	newstring 	newString�  " &   theStr(String), theChar(String)   # �@@ @   t h e S t r ( S t r i n g ) ,   t h e C h a r ( S t r i n g ) ABA l     ����  �  �  B CDC l      �EF�  E � � ================================================================
FUNTION: Splits a String with a given delimiter
RETURNS: List of String  (List)
==================================================================   F �GG�   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 F U N T I O N :   S p l i t s   a   S t r i n g   w i t h   a   g i v e n   d e l i m i t e r 
 R E T U R N S :   L i s t   o f   S t r i n g     ( L i s t ) 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =D HIH i    JKJ I      �L�� 0 stringsplit StringSplitL MNM o      �� 0 	thestring 	theStringN O�O o      �� 0 thedelimiter theDelimiter�  �  K k     PP QRQ l     �
ST�
  S . ( save delimiters to restore old settings   T �UU P   s a v e   d e l i m i t e r s   t o   r e s t o r e   o l d   s e t t i n g sR VWV r     XYX n    Z[Z 1    �	
�	 
txdl[ 1     �
� 
ascrY o      �� 0 olddelimiters oldDelimitersW \]\ l   �^_�  ^ - ' set delimiters to delimiter to be used   _ �`` N   s e t   d e l i m i t e r s   t o   d e l i m i t e r   t o   b e   u s e d] aba r    cdc o    �� 0 thedelimiter theDelimiterd n     efe 1    
�
� 
txdlf 1    �
� 
ascrb ghg l   �ij�  i   create the array   j �kk "   c r e a t e   t h e   a r r a yh lml r    non n    pqp 2    �
� 
citmq o    � �  0 	thestring 	theStringo o      ���� 0 thearray theArraym rsr l   ��tu��  t   restore the old setting   u �vv 0   r e s t o r e   t h e   o l d   s e t t i n gs wxw r    yzy o    ���� 0 olddelimiters oldDelimitersz n     {|{ 1    ��
�� 
txdl| 1    ��
�� 
ascrx }~} l   �����     return the result   � ��� $   r e t u r n   t h e   r e s u l t~ ���� L    �� o    ���� 0 thearray theArray��  I ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� l      ������  � � � ================================================================
FUNTION: Convert Scientific Number to a String
RETURNS: String
==================================================================   � ����   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 F U N T I O N :   C o n v e r t   S c i e n t i f i c   N u m b e r   t o   a   S t r i n g 
 R E T U R N S :   S t r i n g 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =� ��� i    ��� I      �������  0 numbertostring numberToString� ���� o      ���� 0 anumber aNumber��  ��  � k    /�� ��� r     ��� c     ��� o     ���� 0 anumber aNumber� m    ��
�� 
ctxt� o      ���� 0 anumber aNumber� ��� r    ��� I   �����
�� .sysoexecTEXT���     TEXT� b    ��� b    	��� m    �� ���  e c h o   "� o    ���� 0 anumber aNumber� m   	 
�� ���  "   |   t r   ' , '   ' . '��  � o      ���� 0 anumber aNumber� ��� l   ��������  ��  ��  � ��� l   ������  � "  check for a negative number   � ��� 8   c h e c k   f o r   a   n e g a t i v e   n u m b e r� ��� r    ��� m    ��
�� boovfals� o      ���� 0 
isnegative 
isNegative� ��� Z    4������� =   ��� n    ��� 4    ���
�� 
cha � m    ���� � o    ���� 0 anumber aNumber� m    �� ���  -� k    0�� ��� r    "��� m     ��
�� boovtrue� o      ���� 0 
isnegative 
isNegative� ���� r   # 0��� n   # .��� 7  $ .����
�� 
ctxt� m   ( *���� � m   + -������� o   # $���� 0 anumber aNumber� o      ���� 0 anumber aNumber��  ��  ��  � ��� l  5 5��������  ��  ��  � ��� Q   5���� k   8�� ��� r   8 C��� l  8 A������ I  8 A�����
�� .sysooffslong    ��� null��  � ����
�� 
psof� m   : ;�� ���  .� �����
�� 
psin� o   < =���� 0 anumber aNumber��  ��  ��  � o      ���� 0 a  � ��� r   D O��� l  D M������ I  D M�����
�� .sysooffslong    ��� null��  � ����
�� 
psof� m   F G�� ���  E� �����
�� 
psin� o   H I���� 0 anumber aNumber��  ��  ��  � o      ���� 0 b  � ��� r   P [��� l  P Y������ I  P Y�����
�� .sysooffslong    ��� null��  � ����
�� 
psof� m   R S�� ���  +� �����
�� 
psin� o   T U���� 0 anumber aNumber��  ��  ��  � o      ���� 0 c  � ��� r   \ g��� l  \ e������ I  \ e�����
�� .sysooffslong    ��� null��  � ����
�� 
psof� m   ^ _�� ���  -� �����
�� 
psin� o   ` a���� 0 anumber aNumber��  ��  ��  � o      ���� 0 d  � ��� l  h h��������  ��  ��  � � � Z   h ���� =  h k o   h i���� 0 b   m   i j����   l  n { Z   n {	��
 o   n o���� 0 
isnegative 
isNegative	 L   r v b   r u m   r s �  - o   s t���� 0 anumber aNumber��  
 L   y { o   y z���� 0 anumber aNumber + % we do not have an exponential number    � J   w e   d o   n o t   h a v e   a n   e x p o n e n t i a l   n u m b e r��  ��     l  � ���������  ��  ��    Z   � ��� =  � � o   � ����� 0 a   m   � �����   r   � � m   � � �   o      ���� 0 	firstpart 	firstPart��   r   � �  n   � �!"! 7  � ���#$
�� 
ctxt# m   � ����� $ l  � �%����% \   � �&'& o   � ����� 0 a  ' m   � ����� ��  ��  " o   � ����� 0 anumber aNumber  o      ���� 0 	firstpart 	firstPart ()( l  � ���������  ��  ��  ) *+* r   � �,-, n   � �./. 7  � ���01
�� 
ctxt0 l  � �2����2 [   � �343 o   � ����� 0 a  4 m   � ����� ��  ��  1 l  � �5����5 \   � �676 o   � ����� 0 b  7 m   � ����� ��  ��  / o   � ����� 0 anumber aNumber- o      ���� 0 
secondpart 
secondPart+ 898 l  � ���������  ��  ��  9 :;: Z   �<=>?< F   � �@A@ =  � �BCB o   � ����� 0 c  C m   � ���  A =  � �DED o   � ��~�~ 0 d  E m   � ��}�}  = l  � �FGHF k   � �II JKJ r   � �LML m   � ��|
�| boovtrueM o      �{�{ (0 ispositiveexponent isPositiveExponentK N�zN r   � �OPO n   � �QRQ 7  � ��yST
�y 
ctxtS l  � �U�x�wU [   � �VWV o   � ��v�v 0 b  W m   � ��u�u �x  �w  T m   � ��t�t��R o   � ��s�s 0 anumber aNumberP o      �r�r 0 	thirdpart 	thirdPart�z  G !  assume a positive exponent   H �XX 6   a s s u m e   a   p o s i t i v e   e x p o n e n t> YZY >  � �[\[ o   � ��q�q 0 c  \ m   � ��p�p  Z ]�o] k   � �^^ _`_ r   � �aba m   � ��n
�n boovtrueb o      �m�m (0 ispositiveexponent isPositiveExponent` c�lc r   � �ded n   � �fgf 7  � ��khi
�k 
ctxth l  � �j�j�ij [   � �klk o   � ��h�h 0 b  l m   � ��g�g �j  �i  i m   � ��f�f��g o   � ��e�e 0 anumber aNumbere o      �d�d 0 	thirdpart 	thirdPart�l  �o  ? k   �mm non r   � �pqp m   � ��c
�c boovfalsq o      �b�b (0 ispositiveexponent isPositiveExponento r�ar r   �sts n   �uvu 7  ��`wx
�` 
ctxtw l  � �y�_�^y [   � �z{z o   � ��]�] 0 b  { m   � ��\�\ �_  �^  x m   � �[�[��v o   � ��Z�Z 0 anumber aNumbert o      �Y�Y 0 	thirdpart 	thirdPart�a  ; |}| r  ~~ c  	��� o  �X�X 0 	thirdpart 	thirdPart� m  �W
�W 
nmbr o      �V�V 0 	thirdpart 	thirdPart} ��� l �U�T�S�U  �T  �S  � ��R� Z  ���Q�� o  �P�P (0 ispositiveexponent isPositiveExponent� k  ��� ��� r  ��� o  �O�O 0 	firstpart 	firstPart� o      �N�N 0 	newnumber 	newNumber� ��� r  ��� o  �M�M 0 
secondpart 
secondPart� o      �L�L 0 theremainder theRemainder� ��� Y  m��K���J� Q  "h���� k  %Y�� ��� r  %-��� b  %+��� o  %&�I�I 0 	newnumber 	newNumber� n  &*��� 4  '*�H�
�H 
cha � o  ()�G�G 0 i  � o  &'�F�F 0 
secondpart 
secondPart� o      �E�E 0 	newnumber 	newNumber� ��D� Z  .Y���C�B� > .3��� o  ./�A�A 0 theremainder theRemainder� m  /2�� ���  � Z  6U���@�� = 6=��� l 6;��?�>� I 6;�=��<
�= .corecnte****       ****� o  67�;�; 0 theremainder theRemainder�<  �?  �>  � m  ;<�:�: � r  @E��� m  @C�� ���  � o      �9�9 0 theremainder theRemainder�@  � r  HU��� n  HS��� 7 IS�8��
�8 
ctxt� m  MO�7�7 � m  PR�6�6��� o  HI�5�5 0 theremainder theRemainder� o      �4�4 0 theremainder theRemainder�C  �B  �D  � R      �3�2�1
�3 .ascrerr ****      � ****�2  �1  � r  ah��� b  af��� o  ab�0�0 0 	newnumber 	newNumber� m  be�� ���  0� o      �/�/ 0 	newnumber 	newNumber�K 0 i  � m  �.�. � o  �-�- 0 	thirdpart 	thirdPart�J  � ��� l nn�,�+�*�,  �+  �*  � ��)� Z  n����(�'� > ns��� o  no�&�& 0 theremainder theRemainder� m  or�� ���  � r  v��� b  v}��� b  v{��� o  vw�%�% 0 	newnumber 	newNumber� m  wz�� ���  .� o  {|�$�$ 0 theremainder theRemainder� o      �#�# 0 	newnumber 	newNumber�(  �'  �)  �Q  � k  ��� ��� l ���"�!� �"  �!  �   � ��� l ������  �  �  � ��� r  ����� m  ���� ���  � o      �� 0 	newnumber 	newNumber� ��� r  ����� o  ���� 0 	firstpart 	firstPart� o      �� 0 theremainder theRemainder� ��� Y  �������� Q  ������ k  ���� ��� r  ����� b  ����� n  ����� 4  ����
� 
cha � d  ���� o  ���� 0 i  � o  ���� 0 	firstpart 	firstPart� o  ���� 0 	newnumber 	newNumber� o      �� 0 	newnumber 	newNumber� ��� Z  ������� > ����� o  ���� 0 theremainder theRemainder� m  ���� ���  � Z  ������� = ����� l �� ��  I ����

� .corecnte****       **** o  ���	�	 0 theremainder theRemainder�
  �  �  � m  ���� � r  �� m  �� �   o      �� 0 theremainder theRemainder�  � r  �� n  ��	 7 ���

� 
ctxt
 m  ����  m  ������	 o  ���� 0 theremainder theRemainder o      �� 0 theremainder theRemainder�  �  �  � R      �� ��
� .ascrerr ****      � ****�   ��  � r  �� b  �� m  �� �  0 o  ������ 0 	newnumber 	newNumber o      ���� 0 	newnumber 	newNumber� 0 i  � m  ������ � o  ������ 0 	thirdpart 	thirdPart�  �  l ����������  ��  ��   �� Z  ��� > �� o  ������ 0 theremainder theRemainder m  �� �   r  �� b  �� b  �� !  b  ��"#" o  ������ 0 theremainder theRemainder# m  ��$$ �%%  .! o  ������ 0 	newnumber 	newNumber o  ������ 0 
secondpart 
secondPart o      ���� 0 	newnumber 	newNumber��   r  �&'& b  �()( b  �*+* m  �,, �--  0 .+ o  ���� 0 	newnumber 	newNumber) o  ���� 0 
secondpart 
secondPart' o      ���� 0 	newnumber 	newNumber��  �R  � R      ������
�� .ascrerr ****      � ****��  ��  � Z  ./��0. o  ���� 0 
isnegative 
isNegative/ L  11 b  232 m  44 �55  -3 o  ���� 0 anumber aNumber��  0 L  66 o  ���� 0 anumber aNumber� 787 l   ��������  ��  ��  8 9��9 Z   /:;��<: o   !���� 0 
isnegative 
isNegative; L  $*== b  $)>?> m  $'@@ �AA  -? o  '(���� 0 	newnumber 	newNumber��  < L  -/BB o  -.���� 0 	newnumber 	newNumber��  � CDC l     ��������  ��  ��  D EFE l      ��GH��  G o i========================
Function: getJSON(theJSON)
Returen: Applescript Record
=========================   H �II � = = = = = = = = = = = = = = = = = = = = = = = = 
 F u n c t i o n :   g e t J S O N ( t h e J S O N ) 
 R e t u r e n :   A p p l e s c r i p t   R e c o r d 
 = = = = = = = = = = = = = = = = = = = = = = = = =F JKJ i    LML I      ��N���� 0 getjson getJSONN O��O o      ���� 0 thejson theJSON��  ��  M k     PP QRQ r     STS I    ��U��
�� .sysodsct****        scptU l    V����V I    ��W��
�� .sysoexecTEXT���     TEXTW l    X����X b     YZY b     [\[ m     ]] �^^ 
 e c h o  \ n   _`_ 1    ��
�� 
strq` o    ���� 0 thejson theJSONZ m    aa �bb �   |   s e d   - E   ' s / " ( [ ^ " ] + ) " [ [ : s p a c e : ] ] * : [ [ : s p a c e : ] ] * / | \ 1 | : / g '   |   t r   - d   ' \ n \ r '��  ��  ��  ��  ��  ��  T o      ���� $0 applescriptvalue applescriptValueR c��c L    dd o    ���� $0 applescriptvalue applescriptValue��  K efe l     ��������  ��  ��  f ghg l      ��ij��  i y s ===============================
Encode URL
RETURNS: Encoded URL or error string
==================================   j �kk �   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 E n c o d e   U R L 
 R E T U R N S :   E n c o d e d   U R L   o r   e r r o r   s t r i n g 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =h l��l i    mnm I      ��o���� 0 	urlencode 	urlEncodeo p��p o      ���� 0 str  ��  ��  n k     qq rsr q      tt ������ 0 str  ��  s u��u Q     vwxv L    yy l   z����z I   ��{��
�� .sysoexecTEXT���     TEXT{ b    
|}| b    ~~ m    �� ���  / b i n / e c h o   n    ��� 1    ��
�� 
strq� o    ���� 0 str  } m    	�� ��� b   |   p e r l   - M U R I : : E s c a p e   - l n e   ' p r i n t   u r i _ e s c a p e ( $ _ ) '��  ��  ��  w R      ����
�� .ascrerr ****      � ****� o      ���� 0 emsg eMsg� �����
�� 
errn� o      ���� 0 enum eNum��  x R    ����
�� .ascrerr ****      � ****� b    ��� m    �� ��� " C a n ' t   u r l E n c o d e :  � o    ���� 0 emsg eMsg� �����
�� 
errn� o    ���� 0 enum eNum��  ��  ��       �����������  � ������������
�� .aevtoappnull  �   � ****�� "0 removecharacter RemoveCharacter�� 0 stringsplit StringSplit��  0 numbertostring numberToString�� 0 getjson getJSON�� 0 	urlencode 	urlEncode� �� ��������
�� .aevtoappnull  �   � ****�� 0 thequery theQuery��  � ������������ 0 thequery theQuery�� 
0 prefix  �� 0 c  �� 0 
themessage 
theMessage�� 0 theitem theItem� � ! % ) - 0������ E���� P Y�� f�� t���� ���������������\�������� �������������������8����~�}C�|^�{�z�y�x�w���v�u�t�s��r��q��p��
 "�o0�n�m�l�k��j��i���h��g�f�e�d�c%/V�bn�a�`��_�^������]��\�[�Z�Y�� +?A�XLNZ^{}�W�V�U�T�S�R�Q�P�O���N�M13579;=dhlq��������L����K��J������I��� �� $0 prefixestoremove prefixesToRemove�� 0 askforthename askForTheName
�� .sysoexecTEXT���     TEXT�� 0 todoisttoken todoistToken
�� 
psxf�� 0 
thedatadir 
theDataDir
�� 
ctxt�� 0 thedatafile theDataFile��  0 themailboxfile theMailboxFile�� $0 themailboxconfig theMailboxConfig
�� 
file
�� .rdwrread****        ****
�� 
cpar��  ��  
�� .miscactvnull��� ��� null
�� 
slct�� $0 selectedmessages selectedMessages
�� .corecnte****       ****�� 0 response  
�� 
cobj�� 0 
themessage 
theMessage
�� 
subj�� 0 
thesubject 
theSubject
�� 
sndr�� 0 	thesender 	theSender
�� 
kocl
�� 
leng
�� 
dtxt
� .sysodlogaskr        TEXT
�~ 
rslt
�} 
bhit
�| 
ttxt�{ (0 destinationmailbox destinationMailbox
�z 
mbxp
�y 
mact
�x 
pnam�w 0 
theaccount 
theAccount�v 0 stringsplit StringSplit�u 0 thevaluepair theValuePair�t  0 theaccountname theAccountName�s  0 themailboxname theMailboxName
�r 
meid�q 0 theurl theURL�p "0 removecharacter RemoveCharacter�o 0 
thecontent 
theContent�n 0 mailarchived mailArchived
�m 
insh
�l .coremovenull���     obj �k  0 theprojectdata theProjectData
�j .ascrcmnt****      � ****�i 0 thelabeldata theLabelData�h $0 theprojectrecord theProjectRecord�g *0 theprojectnamearray theProjectNameArray�f 0 
theproject 
theProject�e &0 theprojectidarray theProjectIdArray�d 0 theprojectid theProjectId�c 0 	projectid 	ProjectId�b  0 thelabelrecord theLabelRecord�a &0 thelabelnamearray theLabelNameArray�` 0 thelabel theLabel�_ "0 thelabelidarray theLabelIdArray�^ 0 
thelabelid 
theLabelId
�] 
psof
�\ 
psin�[ 
�Z .sysooffslong    ��� null�Y 0 
thesnippet 
theSnippet�X 0 theduestring theDueString�W 0 curl  �V  0 theprojectjson theProjectJson�U 0 getjson getJSON�T "0 thetodoistitems theTodoistItems�S 0 id  �R  0 numbertostring numberToString�Q 0 theid theId�P 0 name  �O 0 thename theName�N 0 thelabeljson theLabelJson�M 0 myuuid myUUID�L 

�K 
appr
�J .sysonotfnull��� ��� TEXT
�I .GURLGURLnull��� ��� TEXT��m������vE�OfE�O�j 	E�O��x�j 	O*��j 	/E�O�a %a &E` O�a %a &E` OjvE` O *a _ /j a -E` W X  jvE` Oa 7*j O*a ,EE` O_ j j  a  E` !Y_ a "i/E` #O_ #a $,E` %O_ #a &,E` 'O =�[a (a "l kh _ %� _ %[a \[Zk�a ),\Zi2E` %Y h[OY��O� 5a *a +_ %l ,E` -O_ -a .,a /  _ -a 0,E` %Y hY hOa 1E` 2O_ a ),j �_ a "k/a 3,a 4,a 5,E` 6O c_ [a (a "l kh �a 7 B)�a 8l+ 9E` :O_ :a "k/E` ;O_ :a "l/E` <O_ 6_ ;  _ <E` 2Y hY h[OY��OPY hOa =_ #a >,%a ?%E` @O)_ %a Al+ BE` %O)_ 'a Cl+ BE` 'O)_ %a Dl+ BE` %O)_ 'a El+ BE` 'Oa F_ %%a G%_ @%a H%_ '%a I%E` JO_ 2a K Z T_ [a (a "l kh  -eE` LO�a M*a 4�a 3,a 4,a 5,E/a 3_ 2/l NW X  fE` LOP[OY��Y hOPUOjvE` OO *a _ /j a -E` OW X  jvE` OOa Pj QO�a R%a &E` OjvE` SO *a _ /j a -E` SW X  jvE` SOa Tj QO_ Oa ),j t*_ Oa &a Ul+ 9E` VO H*_ Va "l/a Wl+ 9E` XO_ Xa "l/E` YO*_ Va "k/a Zl+ 9E` [O_ [a "l/E` \W X  jE` ]Oa ^E` YY jE` \Oa _E` YO_ Sa ),j v*_ Sa &a `l+ 9E` aO H*_ aa "l/a bl+ 9E` cO_ ca "l/E` dO*_ aa "k/a el+ 9E` fO_ fa "l/E` gW X  a hE` gOa iE` dY a jE` gOa kE` dO�a &E�O�a l Q�[a \[Z*a ma na o�a p qk\Zi2E` rO_ ra s *_ ra tl+ 9a "k/E` dY 	_ rE` dY hO�a u Q�[a \[Z*a ma va o�a p qk\Zi2E` rO_ ra w *_ ra xl+ 9a "k/E` YY 	_ rE` YY hOa y�%a z%j 	E` {Oa |_ {%a }%j 	E` {O_ {a &a ~  a E` {Y hOa ��%a �%E` �O_ �j 	E` �O*_ �k+ �E` �O H_ �[a (a "l kh *�a �,k+ �E` �O�a �,E` �O_ �_ Y  _ �E` \Y h[OY��Oa ��%a �%E` �O_ �j 	E` �O*_ �k+ �E` �O H_ �[a (a "l kh *�a �,k+ �E` �O�a �,E` �O_ �_ d  _ �E` gY h[OY��Oa �j 	E` �Oa �_ J%a �%_ {%a �%_ \%a �%_ g%a �%�%a �%_ �%a �%E` �O_ �j 	E` !O_ !a � a �E` !Y 	a �E` !OPY 	a �E` !O_ !a �  x_ Ya �  a �E` YY a �_ Y%E` YO_ da �  a �E` dY a �_ d%E` dO_ %[a \[Zk\Za �2a �%_ {%a �%_ Y%a �%_ d%a �a �l �Y R_ !a �  !a �a �a �l �Oa � 	a �j �UY )_ !a �  a �a �a �l �Y a �a �a �l �OP� �H�G�F���E�H "0 removecharacter RemoveCharacter�G �D��D �  �C�B�C 0 thestr theStr�B 0 thechar theChar�F  � �A�@�?�>�=�A 0 thestr theStr�@ 0 thechar theChar�? 0 theclist theClist�> 0 	newstring 	newString�= 0 c  � �</�;�:�9
�< 
cha 
�; 
kocl
�: 
cobj
�9 .corecnte****       ****�E 3��-E�O�E�O $�[��l kh �� 
��%E�Y h[OY��O�� �8K�7�6���5�8 0 stringsplit StringSplit�7 �4��4 �  �3�2�3 0 	thestring 	theString�2 0 thedelimiter theDelimiter�6  � �1�0�/�.�1 0 	thestring 	theString�0 0 thedelimiter theDelimiter�/ 0 olddelimiters oldDelimiters�. 0 thearray theArray� �-�,�+
�- 
ascr
�, 
txdl
�+ 
citm�5 ��,E�O���,FO��-E�O���,FO�� �*��)�(���'�*  0 numbertostring numberToString�) �&��& �  �%�% 0 anumber aNumber�(  � �$�#�"�!� ���������$ 0 anumber aNumber�# 0 
isnegative 
isNegative�" 0 a  �! 0 b  �  0 c  � 0 d  � 0 	firstpart 	firstPart� 0 
secondpart 
secondPart� (0 ispositiveexponent isPositiveExponent� 0 	thirdpart 	thirdPart� 0 	newnumber 	newNumber� 0 theremainder theRemainder� 0 i  � $���������������������������$,4@
� 
ctxt
� .sysoexecTEXT���     TEXT
� 
cha 
� 
psof
� 
psin� 
� .sysooffslong    ��� null
� 
bool
� 
nmbr
� .corecnte****       ****�  �  ����'0��&E�O�%�%j E�OfE�O��k/�  eE�O�[�\[Zl\Zi2E�Y hO�*���� 
E�O*���� 
E�O*���� 
E�O*���� 
E�O�j  � 	�%Y �Y hO�j  �E�Y �[�\[Zk\Z�k2E�O�[�\[Z�k\Z�k2E�O�j 	 	�j a & eE�O�[�\[Z�k\Zi2E�Y 1�j eE�O�[�\[Z�l\Zi2E�Y fE�O�[�\[Z�l\Zi2E�O�a &E�O� x�E�O�E�O Tk�kh  9���/%E�O�a  $�j k  
a E�Y �[�\[Zl\Zi2E�Y hW X  �a %E�[OY��O�a  �a %�%E�Y hY �a E�O�E�O Wk�kh  <��'/�%E�O�a  &�j k  
a E�Y �[�\[Zk\Za 2E�Y hW X  a �%E�[OY��O�a  �a  %�%�%E�Y a !�%�%E�W X  � a "�%Y �O� a #�%Y �� �
M�	�����
 0 getjson getJSON�	 ��� �  �� 0 thejson theJSON�  � ��� 0 thejson theJSON� $0 applescriptvalue applescriptValue� ]�a�� 
� 
strq
� .sysoexecTEXT���     TEXT
�  .sysodsct****        scpt� ��,%�%j j E�O�� ��n���������� 0 	urlencode 	urlEncode�� ����� �  ���� 0 str  ��  � �������� 0 str  �� 0 emsg eMsg�� 0 enum eNum� ������������
�� 
strq
�� .sysoexecTEXT���     TEXT�� 0 emsg eMsg� ������
�� 
errn�� 0 enum eNum��  
�� 
errn��   ��,%�%j W X  )�l�% ascr  ��ޭ