FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � � ================================================
mail2todoist.scpt generate Todosit task from an Email and Achrive the Email
================================================      � 	 	^   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 m a i l 2 t o d o i s t . s c p t   g e n e r a t e   T o d o s i t   t a s k   f r o m   a n   E m a i l   a n d   A c h r i v e   t h e   E m a i l 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =     
  
 i         I     �� ��
�� .aevtoappnull  �   � ****  o      ���� 0 thequery theQuery��    k    V       l     ��  ��    , & READ CONFIG and Environment variables     �   L   R E A D   C O N F I G   a n d   E n v i r o n m e n t   v a r i a b l e s      l     ��  ��    0 * Prefixes to be removed from email subject     �   T   P r e f i x e s   t o   b e   r e m o v e d   f r o m   e m a i l   s u b j e c t      r     	    J             m      ! ! � " "  r e :      # $ # m     % % � & & 
 o d p :   $  ' ( ' m     ) ) � * *  f w :   (  + , + m     - - � . . 
 f w d :   ,  /�� / m     0 0 � 1 1  A W :  ��    o      ���� $0 prefixestoremove prefixesToRemove   2 3 2 l  
 
�� 4 5��   4 U O Decide if you want to confirm name of created task. Defaut is message subject.    5 � 6 6 �   D e c i d e   i f   y o u   w a n t   t o   c o n f i r m   n a m e   o f   c r e a t e d   t a s k .   D e f a u t   i s   m e s s a g e   s u b j e c t . 3  7 8 7 r   
  9 : 9 m   
 ��
�� boovfals : o      ���� 0 askforthename askForTheName 8  ; < ; l   �� = >��   = , & Get todoist token from Workflow value    > � ? ? L   G e t   t o d o i s t   t o k e n   f r o m   W o r k f l o w   v a l u e <  @ A @ r     B C B I   �� D��
�� .sysoexecTEXT���     TEXT D m     E E � F F $ e c h o   $ t o d o i s t T o k e n��   C o      ���� 0 todoisttoken todoistToken A  G H G l   ��������  ��  ��   H  I J I Z   � K L�� M K >    N O N o    ���� 0 todoisttoken todoistToken O m     P P � Q Q   L k   y R R  S T S l   ! U V W U I   !�� X��
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
theContent $%$ l LL����  �  �  % &'& l LL�()�  (   Archive mail   ) �**    A r c h i v e   m a i l' +�+ Z  L�,-��, > LS./. o  LO�� (0 destinationmailbox destinationMailbox/ m  OR00 �11  - X  V�2�32 k  l�44 565 l ll�78�  7 &   Archive to destination mailbox    8 �99 @   A r c h i v e   t o   d e s t i n a t i o n   m a i l b o x  6 :;: I l��<=
� .coremovenull���     obj < o  lm�� 0 
themessage 
theMessage= �
>�	
�
 
insh> n  p�?@? 4  ���A
� 
mbxpA o  ���� (0 destinationmailbox destinationMailbox@ 4  p��B
� 
mactB l t�C��C n  t�DED 1  }��
� 
pnamE l t}F��F n  t}GHG m  y}� 
�  
mactH l tyI����I n  tyJKJ m  uy��
�� 
mbxpK o  tu���� 0 
themessage 
theMessage��  ��  �  �  �  �  �	  ; L��L l ����MN��  M $ display dialog "mail archived"   N �OO < d i s p l a y   d i a l o g   " m a i l   a r c h i v e d "��  � 0 
themessage 
theMessage3 o  Y\���� $0 selectedmessages selectedMessages�  �  �   � P��P l ����������  ��  ��  ��   � m   v yQQf                                                                                  emal  alis      SSD                            BD ����Mail.app                                                       ����            ����  
 cu             Applications  /:Applications:Mail.app/    M a i l . a p p    S S D  Applications/Mail.app   / ��   � RSR l ����������  ��  ��  S TUT l ����VW��  V  ------------------   W �XX $ - - - - - - - - - - - - - - - - - -U YZY l ����[\��  [   Read Project Data file   \ �]] .   R e a d   P r o j e c t   D a t a   f i l eZ ^_^ l ����`a��  `  ------------------   a �bb $ - - - - - - - - - - - - - - - - - -_ cdc r  ��efe J  ������  f o      ����  0 theprojectdata theProjectDatad ghg Q  ��ijki r  ��lml n  ��non 2 ����
�� 
cparo l ��p����p I ����q��
�� .rdwrread****        ****q 4  ����r
�� 
filer o  ������ 0 thedatafile theDataFile��  ��  ��  m o      ����  0 theprojectdata theProjectDataj R      ������
�� .ascrerr ****      � ****��  ��  k k  ��ss tut r  ��vwv J  ������  w o      ����  0 theprojectdata theProjectDatau x��x I ����y��
�� .ascrcmnt****      � ****y l ��z����z m  ��{{ �||  f i l e   e m p t y��  ��  ��  ��  h }~} l ����������  ��  ��  ~ � l ��������  �  ----------------   � ���   - - - - - - - - - - - - - - - -� ��� l ��������  �   Read label data file   � ��� *   R e a d   l a b e l   d a t a   f i l e� ��� l ��������  �  ----------------    � ��� " - - - - - - - - - - - - - - - -  � ��� r  ����� c  ����� b  ����� o  ������ 0 
thedatadir 
theDataDir� m  ���� ���  : l a b e l . t x t� m  ����
�� 
ctxt� o      ���� 0 thedatafile theDataFile� ��� r  ����� J  ������  � o      ���� 0 thelabeldata theLabelData� ��� Q  ����� r  ����� n  ����� 2 ����
�� 
cpar� l �������� I �������
�� .rdwrread****        ****� 4  �����
�� 
file� o  ������ 0 thedatafile theDataFile��  ��  ��  � o      ���� 0 thelabeldata theLabelData� R      ������
�� .ascrerr ****      � ****��  ��  � k  �� ��� r  ��� J  ����  � o      ���� 0 thelabeldata theLabelData� ���� I �����
�� .ascrcmnt****      � ****� l ������ m  �� ���  f i l e   e m p t y��  ��  ��  ��  � ��� l ��������  ��  ��  � ��� l ������  �   --------------------------   � ��� 4 - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� l ������  � $  Get ProjectID from saved data   � ��� <   G e t   P r o j e c t I D   f r o m   s a v e d   d a t a� ��� l ������  �   --------------------------   � ��� 4 - - - - - - - - - - - - - - - - - - - - - - - - - -� ��� Z  ������� > ��� n  ��� 1  ��
�� 
leng� o  ����  0 theprojectdata theProjectData� m  ����  � k  !��� ��� r  !4��� I  !0������� 0 stringsplit StringSplit� ��� c  ")��� o  "%����  0 theprojectdata theProjectData� m  %(��
�� 
ctxt� ���� m  ),�� ���  |��  ��  � o      ���� $0 theprojectrecord theProjectRecord� ���� Q  5����� k  8{�� ��� l 8L���� r  8L��� I  8H������� 0 stringsplit StringSplit� ��� l 9A������ n  9A��� 4  <A���
�� 
cobj� m  ?@���� � o  9<���� $0 theprojectrecord theProjectRecord��  ��  � ���� m  AD�� ���  :��  ��  � o      ���� *0 theprojectnamearray theProjectNameArray� * $ Project Name, required for response   � ��� H   P r o j e c t   N a m e ,   r e q u i r e d   f o r   r e s p o n s e� ��� r  MY��� n  MU��� 4  PU���
�� 
cobj� m  ST���� � o  MP���� *0 theprojectnamearray theProjectNameArray� o      ���� 0 
theproject 
theProject� ��� l ZZ��������  ��  ��  � ��� l Zn���� r  Zn��� I  Zj�� ���� 0 stringsplit StringSplit   l [c���� n  [c 4  ^c��
�� 
cobj m  ab����  o  [^���� $0 theprojectrecord theProjectRecord��  ��   �� m  cf �		  :��  ��  � o      ���� &0 theprojectidarray theProjectIdArray�   Project ID   � �

    P r o j e c t   I D� �� r  o{ n  ow 4  rw��
�� 
cobj m  uv����  o  or���� &0 theprojectidarray theProjectIdArray o      ���� 0 theprojectid theProjectId��  � R      ������
�� .ascrerr ****      � ****��  ��  � k  ��  r  �� m  ������   l     ���� o      ���� 0 	projectid 	ProjectId��  ��   �� r  �� m  �� �   o      ���� 0 
theproject 
theProject��  ��  ��  � k  ��  r  ��  m  ������    o      ���� 0 theprojectid theProjectId !��! r  ��"#" m  ��$$ �%% 
 I N B O X# o      ���� 0 
theproject 
theProject��  � &'& l ���������  ��  �  ' ()( l ���~*+�~  *  -------------------------   + �,, 2 - - - - - - - - - - - - - - - - - - - - - - - - -) -.- l ���}/0�}  / "  Get LabelID from daved data   0 �11 8   G e t   L a b e l I D   f r o m   d a v e d   d a t a. 232 l ���|45�|  4   -------------------------	   5 �66 4 - - - - - - - - - - - - - - - - - - - - - - - - - 	3 787 Z  �09:�{;9 > ��<=< n  ��>?> 1  ���z
�z 
leng? o  ���y�y 0 thelabeldata theLabelData= m  ���x�x  : k  �@@ ABA r  ��CDC I  ���wE�v�w 0 stringsplit StringSplitE FGF c  ��HIH o  ���u�u 0 thelabeldata theLabelDataI m  ���t
�t 
ctxtG J�sJ m  ��KK �LL  |�s  �v  D o      �r�r  0 thelabelrecord theLabelRecordB MNM l ���q�p�o�q  �p  �o  N O�nO Q  �PQRP k  �SS TUT l ��VWXV r  ��YZY I  ���m[�l�m 0 stringsplit StringSplit[ \]\ l ��^�k�j^ n  ��_`_ 4  ���ia
�i 
cobja m  ���h�h ` o  ���g�g  0 thelabelrecord theLabelRecord�k  �j  ] b�fb m  ��cc �dd  :�f  �l  Z o      �e�e &0 thelabelnamearray theLabelNameArrayW ) # Label Name, required for response    X �ee F   L a b e l   N a m e ,   r e q u i r e d   f o r   r e s p o n s e  U fgf r  ��hih n  ��jkj 4  ���dl
�d 
cobjl m  ���c�c k o  ���b�b &0 thelabelnamearray theLabelNameArrayi o      �a�a 0 thelabel theLabelg mnm l ���`�_�^�`  �_  �^  n opo l ��qrsq r  ��tut I  ���]v�\�] 0 stringsplit StringSplitv wxw l ��y�[�Zy n  ��z{z 4  ���Y|
�Y 
cobj| m  ���X�X { o  ���W�W  0 thelabelrecord theLabelRecord�[  �Z  x }�V} m  ��~~ �  :�V  �\  u o      �U�U "0 thelabelidarray theLabelIdArrayr  	 Label ID   s ���    L a b e l   I Dp ��T� r  ���� n  ���� 4  ��S�
�S 
cobj� m  �R�R � o  ���Q�Q "0 thelabelidarray theLabelIdArray� o      �P�P 0 
thelabelid 
theLabelId�T  Q R      �O�N�M
�O .ascrerr ****      � ****�N  �M  R k  �� ��� r  ��� m  �� ���  � o      �L�L 0 
thelabelid 
theLabelId� ��K� r  ��� m  �� ���  � o      �J�J 0 thelabel theLabel�K  �n  �{  ; k  !0�� ��� r  !(��� m  !$�� ���  � o      �I�I 0 
thelabelid 
theLabelId� ��H� r  )0��� m  ),�� ���  � o      �G�G 0 thelabel theLabel�H  8 ��� l 11�F�E�D�F  �E  �D  � ��� l 11�C���C  �  ---------------------   � ��� * - - - - - - - - - - - - - - - - - - - - -� ��� l 11�B���B  � E ? Get due data language, Project and Label, if emtpy set default   � ��� ~   G e t   d u e   d a t a   l a n g u a g e ,   P r o j e c t   a n d   L a b e l ,   i f   e m t p y   s e t   d e f a u l t� ��� l 11�A���A  �  ----------------------   � ��� , - - - - - - - - - - - - - - - - - - - - - -� ��� r  18��� c  16��� o  12�@�@ 0 thequery theQuery� m  25�?
�? 
ctxt� o      �>�> 0 thequery theQuery� ��� l 99�=�<�;�=  �<  �;  � ��� l 99�:���:  �   Extract Label from query   � ��� 2   E x t r a c t   L a b e l   f r o m   q u e r y� ��� Z  9����9�8� E  9>��� o  9:�7�7 0 thequery theQuery� m  :=�� ���  @� k  A��� ��� r  Ad��� n  A`��� 7 B`�6��
�6 
ctxt� l H\��5�4� [  H\��� l IZ��3�2� I IZ�1�0�
�1 .sysooffslong    ��� null�0  � �/��
�/ 
psof� m  MP�� ���  @� �.��-
�. 
psin� o  ST�,�, 0 thequery theQuery�-  �3  �2  � m  Z[�+�+ �5  �4  � m  ]_�*�*��� o  AB�)�) 0 thequery theQuery� o      �(�( 0 
thesnippet 
theSnippet� ��'� Z  e����&�� E  el��� o  eh�%�% 0 
thesnippet 
theSnippet� m  hk�� ���   � r  o���� n  o��� 4  z�$�
�$ 
cobj� m  }~�#�# � I  oz�"��!�" 0 stringsplit StringSplit� ��� o  ps� �  0 
thesnippet 
theSnippet� ��� m  sv�� ���   �  �!  � o      �� 0 thelabel theLabel�&  � r  ����� o  ���� 0 
thesnippet 
theSnippet� o      �� 0 thelabel theLabel�'  �9  �8  � ��� l ������  �  �  � ��� l ������  � !  Extract Project from query   � ��� 6   E x t r a c t   P r o j e c t   f r o m   q u e r y� ��� Z  ������� E  ����� o  ���� 0 thequery theQuery� m  ���� ���  #� k  ���� ��� r  ��� � n  �� 7 ���
� 
ctxt l ���� [  �� l ���� I ����	
� .sysooffslong    ��� null�  	 �

� 
psof
 m  �� �  # ��
� 
psin o  ���
�
 0 thequery theQuery�  �  �   m  ���	�	 �  �   m  ������ o  ���� 0 thequery theQuery  o      �� 0 
thesnippet 
theSnippet� � Z  ��� E  �� o  ���� 0 
thesnippet 
theSnippet m  �� �    r  �� n  �� 4  ���
� 
cobj m  ����  I  ��� ���  0 stringsplit StringSplit  o  ������ 0 
thesnippet 
theSnippet �� m  ��   �!!   ��  ��   o      ���� 0 
theproject 
theProject�   r  ��"#" o  ������ 0 
thesnippet 
theSnippet# o      ���� 0 
theproject 
theProject�  �  �  � $%$ l ����������  ��  ��  % &'& l ����()��  (   Due Date String Extract    ) �** 2   D u e   D a t e   S t r i n g   E x t r a c t  ' +,+ r  ��-.- I ����/��
�� .sysoexecTEXT���     TEXT/ b  ��010 b  ��232 m  ��44 �55  e c h o   "3 o  ������ 0 thequery theQuery1 m  ��66 �77 > "   |   s e d   - E   ' s / # [ A - Z a - z 0 - 9 ] + / / g '��  . o      ���� 0 theduestring theDueString, 898 r  �:;: I ���<��
�� .sysoexecTEXT���     TEXT< b  �=>= b  �?@? m  � AA �BB  e c h o   "@ o   ���� 0 theduestring theDueString> m  CC �DD > "   |   s e d   - E   ' s / @ [ A - Z a - z 0 - 9 ] + / / g '��  ; o      ���� 0 theduestring theDueString9 EFE l ��������  ��  ��  F GHG Z *IJ����I = KLK c  MNM o  ���� 0 theduestring theDueStringN m  ��
�� 
ctxtL m  OO �PP  J r  &QRQ m  "SS �TT " t o m o r r o w   a t   1 0 : 0 0R o      ���� 0 theduestring theDueString��  ��  H UVU l ++��������  ��  ��  V WXW l ++��YZ��  Y " ----------------------------   Z �[[ 8 - - - - - - - - - - - - - - - - - - - - - - - - - - - -X \]\ l ++��^_��  ^ 6 0 Get List of all available projects from Todoist   _ �`` `   G e t   L i s t   o f   a l l   a v a i l a b l e   p r o j e c t s   f r o m   T o d o i s t] aba l ++��cd��  c + %-------------------------------------   d �ee J - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -b fgf l ++��������  ��  ��  g hih r  +8jkj b  +4lml b  +0non m  +.pp �qq � c u r l   - X   G E T   h t t p s : / / b e t a . t o d o i s t . c o m / A P I / v 8 / p r o j e c t s   - H   " A u t h o r i z a t i o n :   B e a r e r  o o  ./���� 0 todoisttoken todoistTokenm m  03rr �ss  "k o      ���� 0 curl  i tut l 9Dvwxv r  9Dyzy I 9@��{��
�� .sysoexecTEXT���     TEXT{ o  9<���� 0 curl  ��  z o      ����  0 theprojectjson theProjectJsonw   get Json from response   x �|| .   g e t   J s o n   f r o m   r e s p o n s eu }~} l EE��������  ��  ��  ~ � l EE������  �   Read JSON into AS Record   � ��� 2   R e a d   J S O N   i n t o   A S   R e c o r d� ��� r  EQ��� I  EM������� 0 getjson getJSON� ���� o  FI����  0 theprojectjson theProjectJson��  ��  � o      ���� "0 thetodoistitems theTodoistItems� ��� l RR��������  ��  ��  � ��� X  R������ k  h��� ��� r  hv��� I  hr�������  0 numbertostring numberToString� ���� n  in��� o  jn���� 0 id  � o  ij���� 0 theitem theItem��  ��  � o      ���� 0 theid theId� ��� r  w���� n  w|��� o  x|���� 0 name  � o  wx���� 0 theitem theItem� o      ���� 0 thename theName� ���� Z ��������� = ����� o  ������ 0 thename theName� o  ������ 0 
theproject 
theProject� r  ����� o  ������ 0 theid theId� o      ���� 0 theprojectid theProjectId��  ��  ��  �� 0 theitem theItem� o  UX���� "0 thetodoistitems theTodoistItems� ��� l ����������  ��  ��  � ��� l ��������  �  ----------------------   � ��� , - - - - - - - - - - - - - - - - - - - - - -� ��� l ��������  � , & Get List of all lablels from Tododist   � ��� L   G e t   L i s t   o f   a l l   l a b l e l s   f r o m   T o d o d i s t� ��� l ��������  � % ------------------------------	   � ��� > - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 	� ��� r  ����� b  ����� b  ����� m  ���� ��� � c u r l   - X   G E T   h t t p s : / / b e t a . t o d o i s t . c o m / A P I / v 8 / l a b e l s   - H   " A u t h o r i z a t i o n :   B e a r e r  � o  ������ 0 todoisttoken todoistToken� m  ���� ���  "� o      ���� 0 curl  � ��� l ������ r  ����� I �������
�� .sysoexecTEXT���     TEXT� o  ������ 0 curl  ��  � o      ���� 0 thelabeljson theLabelJson�   get Json from response   � ��� .   g e t   J s o n   f r o m   r e s p o n s e� ��� l ����������  ��  ��  � ��� l ��������  �   Read JSON into AS Record   � ��� 2   R e a d   J S O N   i n t o   A S   R e c o r d� ��� r  ����� I  ��������� 0 getjson getJSON� ���� o  ������ 0 thelabeljson theLabelJson��  ��  � o      ���� "0 thetodoistitems theTodoistItems� ��� l ����������  ��  ��  � ��� X  ������ k  ��� ��� r  ����� I  ���������  0 numbertostring numberToString� ���� n  ����� o  ������ 0 id  � o  ������ 0 theitem theItem��  ��  � o      ���� 0 theid theId� ��� r  ����� n  ����� o  ������ 0 name  � o  ������ 0 theitem theItem� o      ���� 0 thename theName� ���� Z �������� = ����� o  ������ 0 thename theName� o  ������ 0 thelabel theLabel� r  ���� o  ������ 0 theid theId� o      ���� 0 
thelabelid 
theLabelId��  ��  ��  �� 0 theitem theItem� o  ������ "0 thetodoistitems theTodoistItems� ��� l ��������  ��  ��  � ��� l ������  � ( " genearte a uuid for task creation   � ��� D   g e n e a r t e   a   u u i d   f o r   t a s k   c r e a t i o n� ��� r  ��� I �� ��
�� .sysoexecTEXT���     TEXT  m   �  u u i d g e n��  � o      ���� 0 myuuid myUUID�  l ��������  ��  ��    l ����   U O build curl command based on API v8 beta. This may be changed by totodist later    �		 �   b u i l d   c u r l   c o m m a n d   b a s e d   o n   A P I   v 8   b e t a .   T h i s   m a y   b e   c h a n g e d   b y   t o t o d i s t   l a t e r 

 r  N b  J b  F b  B b  > b  < b  8 b  4 b  0 b  , b  ( !  b  $"#" b   $%$ m  && �'' � c u r l   " h t t p s : / / b e t a . t o d o i s t . c o m / A P I / v 8 / t a s k s "   - X   P O S T   - - d a t a   ' { " c o n t e n t " :   "% o  ���� 0 
thecontent 
theContent# m   #(( �)) $ " ,   " d u e _ s t r i n g " :   "! o  $'���� 0 theduestring theDueString m  (+** �++ ` " ,   " d u e _ l a n g " :   " e n " ,   " p r i o r i t y " :   4 , " p r o j e c t _ i d " : o  ,/���� 0 theprojectid theProjectId m  03,, �--  , " l a b e l _ i d s " : [ o  47���� 0 
thelabelid 
theLabelId m  8;.. �// � ] , " c o m m e n t _ c o u n t " :   0 ,   " c o m p l e t e d " :   f a l s e } '   - H   " C o n t e n t - T y p e :   a p p l i c a t i o n / j s o n "   - H   " A u t h o r i z a t i o n :   B e a r e r   o  <=�� 0 todoisttoken todoistToken m  >A00 �11 ( "   - H   " X - R e q u e s t - I d :   o  BE�~�~ 0 myuuid myUUID m  FI22 �33  " o      �}�} 0 curl   454 l OO�|67�|  6  display dialog curl   7 �88 & d i s p l a y   d i a l o g   c u r l5 9:9 l OO�{�z�y�{  �z  �y  : ;<; l OO�x=>�x  = $  exec command and get response   > �?? <   e x e c   c o m m a n d   a n d   g e t   r e s p o n s e< @A@ r  OZBCB I OV�wD�v
�w .sysoexecTEXT���     TEXTD o  OR�u�u 0 curl  �v  C o      �t�t 0 response  A EFE l [[�sGH�s  G  log (response)   H �II  l o g   ( r e s p o n s e )F JKJ l [[�r�q�p�r  �q  �p  K LML l [[�oNO�o  N J D finally if response results success id will be part of the response   O �PP �   f i n a l l y   i f   r e s p o n s e   r e s u l t s   s u c c e s s   i d   w i l l   b e   p a r t   o f   t h e   r e s p o n s eM QRQ Z  [wST�nUS H  [cVV E  [bWXW o  [^�m�m 0 response  X m  ^aYY �ZZ 
 " i d " :T r  fm[\[ m  fi]] �^^  $ f a i l e d\ o      �l�l 0 response  �n  U r  pw_`_ m  psaa �bb  $ s u c c e s s` o      �k�k 0 response  R c�jc l xx�i�h�g�i  �h  �g  �j  ��   M r  |�ded m  |ff �gg  $ a p i k e ye o      �f�f 0 response   J hih l ���ejk�e  j 2 ,--------------------------------------------   k �ll X - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -i mnm l ���dop�d  o 8 2 handle response success,error and missing api key   p �qq d   h a n d l e   r e s p o n s e   s u c c e s s , e r r o r   a n d   m i s s i n g   a p i   k e yn rsr l ���ctu�c  t 2 ,--------------------------------------------   u �vv X - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -s wxw Z  �Tyz{|y = ��}~} o  ���b�b 0 response  ~ m  �� ���  $ s u c c e s sz l ����� k  ��� ��� l ���a���a  � ; 5 Format response wether Label or Project is available   � ��� j   F o r m a t   r e s p o n s e   w e t h e r   L a b e l   o r   P r o j e c t   i s   a v a i l a b l e� ��� Z  �����`�� = ����� o  ���_�_ 0 
theproject 
theProject� m  ���� ���  � r  ����� m  ���� ���  � o      �^�^ 0 
theproject 
theProject�`  � r  ����� b  ����� m  ���� ���  #� o  ���]�] 0 
theproject 
theProject� o      �\�\ 0 
theproject 
theProject� ��� l ���[�Z�Y�[  �Z  �Y  � ��� Z  �����X�� = ����� o  ���W�W 0 thelabel theLabel� m  ���� ���  � r  ����� m  ���� ���  � o      �V�V 0 thelabel theLabel�X  � r  ����� b  ����� m  ���� ���  @� o  ���U�U 0 thelabel theLabel� o      �T�T 0 thelabel theLabel� ��S� I ��R��
�R .sysonotfnull��� ��� TEXT� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� l ����Q�P� n  ����� 7 ���O��
�O 
ctxt� m  ���N�N � m  ���M�M 
� o  ���L�L 0 
thesubject 
theSubject�Q  �P  � m  ���� ���  . . . ,� o  ���K�K 0 theduestring theDueString� m  ���� ���    
!�  � o  ���J�J 0 
theproject 
theProject� m  ���� ���   � o  ���I�I 0 thelabel theLabel� �H��G
�H 
appr� m  ���� ��� * T o d o i s t   t a s k   c r e a t e d !�G  �S  �   SUCCESS   � ���    S U C C E S S{ ��� = ��� o  �F�F 0 response  � m  
�� ���  $ a p i k e y� ��� l *���� k  *�� ��� I �E��
�E .sysonotfnull��� ��� TEXT� m  �� ��� � A d d   T o d i s t   A P I   K e y   t o   w o r k f l o w   c o n f i g u r a t i o n ,   [ X ]   s y m b o l   i n   W F   d e t a i l s� �D��C
�D 
appr� m  �� ��� D T o d o i s t   A P I   K e y   m i s s i n g   o r   i n v a l i d�C  � ��B� O  *��� I ")�A��@
�A .GURLGURLnull��� ��� TEXT� m  "%�� ��� L h t t p s : / / t o d o i s t . c o m / p r e f s / i n t e g r a t i o n s�@  � m  ���                                                                                  MACS  alis    .  SSD                            BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    S S D  &System/Library/CoreServices/Finder.app  / ��  �B  � 2 , API key missing and open Todoist Dev center   � ��� X   A P I   k e y   m i s s i n g   a n d   o p e n   T o d o i s t   D e v   c e n t e r� ��� = -4��� o  -0�?�? 0 response  � m  03�� ���  $ s e l e c t i o n� ��>� l 7D���� I 7D�=��
�= .sysonotfnull��� ��� TEXT� m  7:�� ��� B P l e a s e   s e l e c t   E m a i l   i n   A p p l e   M a i l� �<��;
�< 
appr� m  =@�� ��� 6 A d d   T a s k   t o   T o d o i s t   f a i l e d !�;  � - ' No email selected or not in Apple mail   � ��� N   N o   e m a i l   s e l e c t e d   o r   n o t   i n   A p p l e   m a i l�>  | I GT�:� 
�: .sysonotfnull��� ��� TEXT� m  GJ � * S o m e t h i n g   w e n t   w r o n g !  �9�8
�9 
appr m  MP � 6 A d d   T a s k   t o   T o d o i s t   f a i l e d !�8  x �7 l UU�6�5�4�6  �5  �4  �7     l     �3�2�1�3  �2  �1   	
	 l      �0�0   w q =============================
Removes a chracter from a String
OUTPUT: String
==================================    � �   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 R e m o v e s   a   c h r a c t e r   f r o m   a   S t r i n g 
 O U T P U T :   S t r i n g 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
  i     I      �/�.�/ "0 removecharacter RemoveCharacter  o      �-�- 0 thestr theStr �, o      �+�+ 0 thechar theChar�,  �.   l    2 k     2  r      n      2    �*
�* 
cha  o     �)�) 0 thestr theStr o      �(�( 0 theclist theClist  !  r    	"#" m    $$ �%%  # o      �'�' 0 	newstring 	newString! &'& X   
 /(�&)( Z    **+�%�$* H    ,, E    -.- o    �#�# 0 c  . o    �"�" 0 thechar theChar+ r   ! &/0/ b   ! $121 o   ! "�!�! 0 	newstring 	newString2 o   " #� �  0 c  0 o      �� 0 	newstring 	newString�%  �$  �& 0 c  ) o    �� 0 theclist theClist' 3�3 L   0 244 o   0 1�� 0 	newstring 	newString�   &   theStr(String), theChar(String)    �55 @   t h e S t r ( S t r i n g ) ,   t h e C h a r ( S t r i n g ) 676 l     ����  �  �  7 898 l      �:;�  : � � ================================================================
FUNTION: Splits a String with a given delimiter
RETURNS: List of String  (List)
==================================================================   ; �<<�   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 F U N T I O N :   S p l i t s   a   S t r i n g   w i t h   a   g i v e n   d e l i m i t e r 
 R E T U R N S :   L i s t   o f   S t r i n g     ( L i s t ) 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =9 =>= i    ?@? I      �A�� 0 stringsplit StringSplitA BCB o      �� 0 	thestring 	theStringC D�D o      �� 0 thedelimiter theDelimiter�  �  @ k     EE FGF l     �HI�  H . ( save delimiters to restore old settings   I �JJ P   s a v e   d e l i m i t e r s   t o   r e s t o r e   o l d   s e t t i n g sG KLK r     MNM n    OPO 1    �
� 
txdlP 1     �
� 
ascrN o      �� 0 olddelimiters oldDelimitersL QRQ l   �ST�  S - ' set delimiters to delimiter to be used   T �UU N   s e t   d e l i m i t e r s   t o   d e l i m i t e r   t o   b e   u s e dR VWV r    XYX o    �� 0 thedelimiter theDelimiterY n     Z[Z 1    
�
� 
txdl[ 1    �
� 
ascrW \]\ l   �
^_�
  ^   create the array   _ �`` "   c r e a t e   t h e   a r r a y] aba r    cdc n    efe 2    �	
�	 
citmf o    �� 0 	thestring 	theStringd o      �� 0 thearray theArrayb ghg l   �ij�  i   restore the old setting   j �kk 0   r e s t o r e   t h e   o l d   s e t t i n gh lml r    non o    �� 0 olddelimiters oldDelimiterso n     pqp 1    �
� 
txdlq 1    �
� 
ascrm rsr l   �tu�  t   return the result   u �vv $   r e t u r n   t h e   r e s u l ts w�w L    xx o    � �  0 thearray theArray�  > yzy l     ��������  ��  ��  z {|{ l     ��������  ��  ��  | }~} l      �����   � � ================================================================
FUNTION: Convert Scientific Number to a String
RETURNS: String
==================================================================   � ����   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 F U N T I O N :   C o n v e r t   S c i e n t i f i c   N u m b e r   t o   a   S t r i n g 
 R E T U R N S :   S t r i n g 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =~ ��� i    ��� I      �������  0 numbertostring numberToString� ���� o      ���� 0 anumber aNumber��  ��  � k    /�� ��� r     ��� c     ��� o     ���� 0 anumber aNumber� m    ��
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
psin� o   ` a���� 0 anumber aNumber��  ��  ��  � o      ���� 0 d  � ��� l  h h��������  ��  ��  � ��� Z   h ������� =  h k��� o   h i���� 0 b  � m   i j����  � l  n {���� Z   n {������ o   n o���� 0 
isnegative 
isNegative� L   r v   b   r u m   r s �  - o   s t���� 0 anumber aNumber��  � L   y { o   y z���� 0 anumber aNumber� + % we do not have an exponential number   � � J   w e   d o   n o t   h a v e   a n   e x p o n e n t i a l   n u m b e r��  ��  �  l  � ���������  ��  ��   	
	 Z   � ��� =  � � o   � ����� 0 a   m   � �����   r   � � m   � � �   o      ���� 0 	firstpart 	firstPart��   r   � � n   � � 7  � ���
�� 
ctxt m   � �����  l  � ����� \   � � o   � ����� 0 a   m   � ����� ��  ��   o   � ����� 0 anumber aNumber o      ���� 0 	firstpart 	firstPart
  l  � ���������  ��  ��     r   � �!"! n   � �#$# 7  � ���%&
�� 
ctxt% l  � �'����' [   � �()( o   � ����� 0 a  ) m   � ����� ��  ��  & l  � �*����* \   � �+,+ o   � ����� 0 b  , m   � ����� ��  ��  $ o   � ����� 0 anumber aNumber" o      ���� 0 
secondpart 
secondPart  -.- l  � ���������  ��  ��  . /0/ Z   �12341 F   � �565 =  � �787 o   � ����� 0 c  8 m   � �����  6 =  � �9:9 o   � ����� 0 d  : m   � �����  2 l  � �;<=; k   � �>> ?@? r   � �ABA m   � ���
�� boovtrueB o      ���� (0 ispositiveexponent isPositiveExponent@ C��C r   � �DED n   � �FGF 7  � ���HI
�� 
ctxtH l  � �J���J [   � �KLK o   � ��~�~ 0 b  L m   � ��}�} ��  �  I m   � ��|�|��G o   � ��{�{ 0 anumber aNumberE o      �z�z 0 	thirdpart 	thirdPart��  < !  assume a positive exponent   = �MM 6   a s s u m e   a   p o s i t i v e   e x p o n e n t3 NON >  � �PQP o   � ��y�y 0 c  Q m   � ��x�x  O R�wR k   � �SS TUT r   � �VWV m   � ��v
�v boovtrueW o      �u�u (0 ispositiveexponent isPositiveExponentU X�tX r   � �YZY n   � �[\[ 7  � ��s]^
�s 
ctxt] l  � �_�r�q_ [   � �`a` o   � ��p�p 0 b  a m   � ��o�o �r  �q  ^ m   � ��n�n��\ o   � ��m�m 0 anumber aNumberZ o      �l�l 0 	thirdpart 	thirdPart�t  �w  4 k   �bb cdc r   � �efe m   � ��k
�k boovfalsf o      �j�j (0 ispositiveexponent isPositiveExponentd g�ig r   �hih n   �jkj 7  ��hlm
�h 
ctxtl l  � �n�g�fn [   � �opo o   � ��e�e 0 b  p m   � ��d�d �g  �f  m m   � �c�c��k o   � ��b�b 0 anumber aNumberi o      �a�a 0 	thirdpart 	thirdPart�i  0 qrq r  sts c  	uvu o  �`�` 0 	thirdpart 	thirdPartv m  �_
�_ 
nmbrt o      �^�^ 0 	thirdpart 	thirdPartr wxw l �]�\�[�]  �\  �[  x y�Zy Z  z{�Y|z o  �X�X (0 ispositiveexponent isPositiveExponent{ k  �}} ~~ r  ��� o  �W�W 0 	firstpart 	firstPart� o      �V�V 0 	newnumber 	newNumber ��� r  ��� o  �U�U 0 
secondpart 
secondPart� o      �T�T 0 theremainder theRemainder� ��� Y  m��S���R� Q  "h���� k  %Y�� ��� r  %-��� b  %+��� o  %&�Q�Q 0 	newnumber 	newNumber� n  &*��� 4  '*�P�
�P 
cha � o  ()�O�O 0 i  � o  &'�N�N 0 
secondpart 
secondPart� o      �M�M 0 	newnumber 	newNumber� ��L� Z  .Y���K�J� > .3��� o  ./�I�I 0 theremainder theRemainder� m  /2�� ���  � Z  6U���H�� = 6=��� l 6;��G�F� I 6;�E��D
�E .corecnte****       ****� o  67�C�C 0 theremainder theRemainder�D  �G  �F  � m  ;<�B�B � r  @E��� m  @C�� ���  � o      �A�A 0 theremainder theRemainder�H  � r  HU��� n  HS��� 7 IS�@��
�@ 
ctxt� m  MO�?�? � m  PR�>�>��� o  HI�=�= 0 theremainder theRemainder� o      �<�< 0 theremainder theRemainder�K  �J  �L  � R      �;�:�9
�; .ascrerr ****      � ****�:  �9  � r  ah��� b  af��� o  ab�8�8 0 	newnumber 	newNumber� m  be�� ���  0� o      �7�7 0 	newnumber 	newNumber�S 0 i  � m  �6�6 � o  �5�5 0 	thirdpart 	thirdPart�R  � ��� l nn�4�3�2�4  �3  �2  � ��1� Z  n����0�/� > ns��� o  no�.�. 0 theremainder theRemainder� m  or�� ���  � r  v��� b  v}��� b  v{��� o  vw�-�- 0 	newnumber 	newNumber� m  wz�� ���  .� o  {|�,�, 0 theremainder theRemainder� o      �+�+ 0 	newnumber 	newNumber�0  �/  �1  �Y  | k  ��� ��� l ���*�)�(�*  �)  �(  � ��� l ���'�&�%�'  �&  �%  � ��� r  ����� m  ���� ���  � o      �$�$ 0 	newnumber 	newNumber� ��� r  ����� o  ���#�# 0 	firstpart 	firstPart� o      �"�" 0 theremainder theRemainder� ��� Y  ����!��� � Q  ������ k  ���� ��� r  ����� b  ����� n  ����� 4  ����
� 
cha � d  ���� o  ���� 0 i  � o  ���� 0 	firstpart 	firstPart� o  ���� 0 	newnumber 	newNumber� o      �� 0 	newnumber 	newNumber� ��� Z  ������� > ����� o  ���� 0 theremainder theRemainder� m  ���� ���  � Z  ������� = ����� l ������ I �����
� .corecnte****       ****� o  ���� 0 theremainder theRemainder�  �  �  � m  ���� � r  ����� m  ���� ���  � o      �� 0 theremainder theRemainder�  � r  ����� n  ����� 7 ���� 
� 
ctxt� m  ����   m  ������� o  ���� 0 theremainder theRemainder� o      �
�
 0 theremainder theRemainder�  �  �  � R      �	��
�	 .ascrerr ****      � ****�  �  � r  �� b  �� m  �� �  0 o  ���� 0 	newnumber 	newNumber o      �� 0 	newnumber 	newNumber�! 0 i  � m  ���� � o  ���� 0 	thirdpart 	thirdPart�   �  l ����� �  �  �    	��	 Z  �
��
 > �� o  ������ 0 theremainder theRemainder m  �� �   r  �� b  �� b  �� b  �� o  ������ 0 theremainder theRemainder m  �� �  . o  ������ 0 	newnumber 	newNumber o  ������ 0 
secondpart 
secondPart o      ���� 0 	newnumber 	newNumber��   r  � b  � b  �  m  �!! �""  0 .  o  ���� 0 	newnumber 	newNumber o  ���� 0 
secondpart 
secondPart o      ���� 0 	newnumber 	newNumber��  �Z  � R      ������
�� .ascrerr ****      � ****��  ��  � Z  #$��%# o  ���� 0 
isnegative 
isNegative$ L  && b  '(' m  )) �**  -( o  ���� 0 anumber aNumber��  % L  ++ o  ���� 0 anumber aNumber� ,-, l   ��������  ��  ��  - .��. Z   //0��1/ o   !���� 0 
isnegative 
isNegative0 L  $*22 b  $)343 m  $'55 �66  -4 o  '(���� 0 	newnumber 	newNumber��  1 L  -/77 o  -.���� 0 	newnumber 	newNumber��  � 898 l     ��������  ��  ��  9 :;: l      ��<=��  < o i========================
Function: getJSON(theJSON)
Returen: Applescript Record
=========================   = �>> � = = = = = = = = = = = = = = = = = = = = = = = = 
 F u n c t i o n :   g e t J S O N ( t h e J S O N ) 
 R e t u r e n :   A p p l e s c r i p t   R e c o r d 
 = = = = = = = = = = = = = = = = = = = = = = = = =; ?@? i    ABA I      ��C���� 0 getjson getJSONC D��D o      ���� 0 thejson theJSON��  ��  B k     EE FGF r     HIH I    ��J��
�� .sysodsct****        scptJ l    K����K I    ��L��
�� .sysoexecTEXT���     TEXTL l    M����M b     NON b     PQP m     RR �SS 
 e c h o  Q n   TUT 1    ��
�� 
strqU o    ���� 0 thejson theJSONO m    VV �WW �   |   s e d   - E   ' s / " ( [ ^ " ] + ) " [ [ : s p a c e : ] ] * : [ [ : s p a c e : ] ] * / | \ 1 | : / g '   |   t r   - d   ' \ n \ r '��  ��  ��  ��  ��  ��  I o      ���� $0 applescriptvalue applescriptValueG X��X L    YY o    ���� $0 applescriptvalue applescriptValue��  @ Z[Z l     ��������  ��  ��  [ \]\ l      ��^_��  ^ y s ===============================
Encode URL
RETURNS: Encoded URL or error string
==================================   _ �`` �   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = 
 E n c o d e   U R L 
 R E T U R N S :   E n c o d e d   U R L   o r   e r r o r   s t r i n g 
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =] a��a i    bcb I      ��d���� 0 	urlencode 	urlEncoded e��e o      ���� 0 str  ��  ��  c k     ff ghg q      ii ������ 0 str  ��  h j��j Q     klmk L    nn l   o����o I   ��p��
�� .sysoexecTEXT���     TEXTp b    
qrq b    sts m    uu �vv  / b i n / e c h o  t n    wxw 1    ��
�� 
strqx o    ���� 0 str  r m    	yy �zz b   |   p e r l   - M U R I : : E s c a p e   - l n e   ' p r i n t   u r i _ e s c a p e ( $ _ ) '��  ��  ��  l R      ��{|
�� .ascrerr ****      � ****{ o      ���� 0 emsg eMsg| ��}��
�� 
errn} o      ���� 0 enum eNum��  m R    ��~
�� .ascrerr ****      � ****~ b    ��� m    �� ��� " C a n ' t   u r l E n c o d e :  � o    ���� 0 emsg eMsg �����
�� 
errn� o    ���� 0 enum eNum��  ��  ��       �����������  � ������������
�� .aevtoappnull  �   � ****�� "0 removecharacter RemoveCharacter�� 0 stringsplit StringSplit��  0 numbertostring numberToString�� 0 getjson getJSON�� 0 	urlencode 	urlEncode� �� ��������
�� .aevtoappnull  �   � ****�� 0 thequery theQuery��  � ������������ 0 thequery theQuery�� 
0 prefix  �� 0 c  �� 0 
themessage 
theMessage�� 0 theitem theItem� � ! % ) - 0������ E���� P Y�� f�� t���� ���������������Q�������� �������������������8��������C��^������������~�}�|�{��z��y��x��
 "�w0�v�u�t{�s��r���q��p�o�n�m�l$K�kc�j�i~�h�g������f��e�d�c�b��� 46�aACOSpr�`�_�^�]�\�[�Z�Y�X���W�V&(*,.02Y]af�������U����T��S������R����� �� $0 prefixestoremove prefixesToRemove�� 0 askforthename askForTheName
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
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
bhit
�� 
ttxt�� (0 destinationmailbox destinationMailbox
�� 
mbxp
�� 
mact
�� 
pnam� 0 
theaccount 
theAccount�~ 0 stringsplit StringSplit�} 0 thevaluepair theValuePair�|  0 theaccountname theAccountName�{  0 themailboxname theMailboxName
�z 
meid�y 0 theurl theURL�x "0 removecharacter RemoveCharacter�w 0 
thecontent 
theContent
�v 
insh
�u .coremovenull���     obj �t  0 theprojectdata theProjectData
�s .ascrcmnt****      � ****�r 0 thelabeldata theLabelData�q $0 theprojectrecord theProjectRecord�p *0 theprojectnamearray theProjectNameArray�o 0 
theproject 
theProject�n &0 theprojectidarray theProjectIdArray�m 0 theprojectid theProjectId�l 0 	projectid 	ProjectId�k  0 thelabelrecord theLabelRecord�j &0 thelabelnamearray theLabelNameArray�i 0 thelabel theLabel�h "0 thelabelidarray theLabelIdArray�g 0 
thelabelid 
theLabelId
�f 
psof
�e 
psin�d 
�c .sysooffslong    ��� null�b 0 
thesnippet 
theSnippet�a 0 theduestring theDueString�` 0 curl  �_  0 theprojectjson theProjectJson�^ 0 getjson getJSON�] "0 thetodoistitems theTodoistItems�\ 0 id  �[  0 numbertostring numberToString�Z 0 theid theId�Y 0 name  �X 0 thename theName�W 0 thelabeljson theLabelJson�V 0 myuuid myUUID�U 

�T 
appr
�S .sysonotfnull��� ��� TEXT
�R .GURLGURLnull��� ��� TEXT��W������vE�OfE�O�j 	E�O��b�j 	O*��j 	/E�O�a %a &E` O�a %a &E` OjvE` O *a _ /j a -E` W X  jvE` Oa !*j O*a ,EE` O_ j j  a  E` !Y�_ a "i/E` #O_ #a $,E` %O_ #a &,E` 'O =�[a (a "l kh _ %� _ %[a \[Zk�a ),\Zi2E` %Y h[OY��O� 5a *a +_ %l ,E` -O_ -a .,a /  _ -a 0,E` %Y hY hOa 1E` 2O_ a ),j �_ a "k/a 3,a 4,a 5,E` 6O c_ [a (a "l kh �a 7 B)�a 8l+ 9E` :O_ :a "k/E` ;O_ :a "l/E` <O_ 6_ ;  _ <E` 2Y hY h[OY��OPY hOa =_ #a >,%a ?%E` @O)_ %a Al+ BE` %O)_ 'a Cl+ BE` 'O)_ %a Dl+ BE` %O)_ 'a El+ BE` 'Oa F_ %%a G%_ @%a H%_ '%a I%E` JO_ 2a K D >_ [a (a "l kh �a L*a 4�a 3,a 4,a 5,E/a 3_ 2/l MOP[OY��Y hOPUOjvE` NO *a _ /j a -E` NW X  jvE` NOa Oj PO�a Q%a &E` OjvE` RO *a _ /j a -E` RW X  jvE` ROa Sj PO_ Na ),j t*_ Na &a Tl+ 9E` UO H*_ Ua "l/a Vl+ 9E` WO_ Wa "l/E` XO*_ Ua "k/a Yl+ 9E` ZO_ Za "l/E` [W X  jE` \Oa ]E` XY jE` [Oa ^E` XO_ Ra ),j v*_ Ra &a _l+ 9E` `O H*_ `a "l/a al+ 9E` bO_ ba "l/E` cO*_ `a "k/a dl+ 9E` eO_ ea "l/E` fW X  a gE` fOa hE` cY a iE` fOa jE` cO�a &E�O�a k Q�[a \[Z*a la ma n�a o pk\Zi2E` qO_ qa r *_ qa sl+ 9a "k/E` cY 	_ qE` cY hO�a t Q�[a \[Z*a la ua n�a o pk\Zi2E` qO_ qa v *_ qa wl+ 9a "k/E` XY 	_ qE` XY hOa x�%a y%j 	E` zOa {_ z%a |%j 	E` zO_ za &a }  a ~E` zY hOa �%a �%E` �O_ �j 	E` �O*_ �k+ �E` �O H_ �[a (a "l kh *�a �,k+ �E` �O�a �,E` �O_ �_ X  _ �E` [Y h[OY��Oa ��%a �%E` �O_ �j 	E` �O*_ �k+ �E` �O H_ �[a (a "l kh *�a �,k+ �E` �O�a �,E` �O_ �_ c  _ �E` fY h[OY��Oa �j 	E` �Oa �_ J%a �%_ z%a �%_ [%a �%_ f%a �%�%a �%_ �%a �%E` �O_ �j 	E` !O_ !a � a �E` !Y 	a �E` !OPY 	a �E` !O_ !a �  x_ Xa �  a �E` XY a �_ X%E` XO_ ca �  a �E` cY a �_ c%E` cO_ %[a \[Zk\Za �2a �%_ z%a �%_ X%a �%_ c%a �a �l �Y R_ !a �  !a �a �a �l �Oa � 	a �j �UY )_ !a �  a �a �a �l �Y a �a �a �l �OP� �Q�P�O���N�Q "0 removecharacter RemoveCharacter�P �M��M �  �L�K�L 0 thestr theStr�K 0 thechar theChar�O  � �J�I�H�G�F�J 0 thestr theStr�I 0 thechar theChar�H 0 theclist theClist�G 0 	newstring 	newString�F 0 c  � �E$�D�C�B
�E 
cha 
�D 
kocl
�C 
cobj
�B .corecnte****       ****�N 3��-E�O�E�O $�[��l kh �� 
��%E�Y h[OY��O�� �A@�@�?���>�A 0 stringsplit StringSplit�@ �=��= �  �<�;�< 0 	thestring 	theString�; 0 thedelimiter theDelimiter�?  � �:�9�8�7�: 0 	thestring 	theString�9 0 thedelimiter theDelimiter�8 0 olddelimiters oldDelimiters�7 0 thearray theArray� �6�5�4
�6 
ascr
�5 
txdl
�4 
citm�> ��,E�O���,FO��-E�O���,FO�� �3��2�1���0�3  0 numbertostring numberToString�2 �/��/ �  �.�. 0 anumber aNumber�1  � �-�,�+�*�)�(�'�&�%�$�#�"�!�- 0 anumber aNumber�, 0 
isnegative 
isNegative�+ 0 a  �* 0 b  �) 0 c  �( 0 d  �' 0 	firstpart 	firstPart�& 0 
secondpart 
secondPart�% (0 ispositiveexponent isPositiveExponent�$ 0 	thirdpart 	thirdPart�# 0 	newnumber 	newNumber�" 0 theremainder theRemainder�! 0 i  � $� ���������������������������!)5
�  
ctxt
� .sysoexecTEXT���     TEXT
� 
cha 
� 
psof
� 
psin� 
� .sysooffslong    ��� null
� 
bool
� 
nmbr
� .corecnte****       ****�  �  ����00��&E�O�%�%j E�OfE�O��k/�  eE�O�[�\[Zl\Zi2E�Y hO�*���� 
E�O*���� 
E�O*���� 
E�O*���� 
E�O�j  � 	�%Y �Y hO�j  �E�Y �[�\[Zk\Z�k2E�O�[�\[Z�k\Z�k2E�O�j 	 	�j a & eE�O�[�\[Z�k\Zi2E�Y 1�j eE�O�[�\[Z�l\Zi2E�Y fE�O�[�\[Z�l\Zi2E�O�a &E�O� x�E�O�E�O Tk�kh  9���/%E�O�a  $�j k  
a E�Y �[�\[Zl\Zi2E�Y hW X  �a %E�[OY��O�a  �a %�%E�Y hY �a E�O�E�O Wk�kh  <��'/�%E�O�a  &�j k  
a E�Y �[�\[Zk\Za 2E�Y hW X  a �%E�[OY��O�a  �a  %�%�%E�Y a !�%�%E�W X  � a "�%Y �O� a #�%Y �� �B������ 0 getjson getJSON� ��� �  �� 0 thejson theJSON�  � ��� 0 thejson theJSON� $0 applescriptvalue applescriptValue� R�V�
�	
� 
strq
�
 .sysoexecTEXT���     TEXT
�	 .sysodsct****        scpt� ��,%�%j j E�O�� �c������ 0 	urlencode 	urlEncode� ��� �  �� 0 str  �  � ��� � 0 str  � 0 emsg eMsg�  0 enum eNum� u��y��������
�� 
strq
�� .sysoexecTEXT���     TEXT�� 0 emsg eMsg� ������
�� 
errn�� 0 enum eNum��  
�� 
errn�   ��,%�%j W X  )�l�%ascr  ��ޭ