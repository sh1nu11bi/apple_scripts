FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
Remove Folder Actions

This script brings up a dialog with a list of attached folder actions for the selected
folder and lets you remove any of those actions.
This script uses the object model of Folder Actions.

Copyright � 2007 Apple Inc.

You may incorporate this Apple sample code into your program(s) without
restriction.  This Apple sample code has been provided "AS IS" and the
responsibility for its operation is yours.  You are not permitted to
redistribute this Apple sample code as "Apple sample code" after having
made changes.  If you're going to redistribute the code, we require
that you make it clear that the code was descended from Apple sample
code, but that you've made changes.
     � 	 	z 
 R e m o v e   F o l d e r   A c t i o n s 
 
 T h i s   s c r i p t   b r i n g s   u p   a   d i a l o g   w i t h   a   l i s t   o f   a t t a c h e d   f o l d e r   a c t i o n s   f o r   t h e   s e l e c t e d 
 f o l d e r   a n d   l e t s   y o u   r e m o v e   a n y   o f   t h o s e   a c t i o n s . 
 T h i s   s c r i p t   u s e s   t h e   o b j e c t   m o d e l   o f   F o l d e r   A c t i o n s . 
  
 C o p y r i g h t   �   2 0 0 7   A p p l e   I n c . 
 
 Y o u   m a y   i n c o r p o r a t e   t h i s   A p p l e   s a m p l e   c o d e   i n t o   y o u r   p r o g r a m ( s )   w i t h o u t 
 r e s t r i c t i o n .     T h i s   A p p l e   s a m p l e   c o d e   h a s   b e e n   p r o v i d e d   " A S   I S "   a n d   t h e 
 r e s p o n s i b i l i t y   f o r   i t s   o p e r a t i o n   i s   y o u r s .     Y o u   a r e   n o t   p e r m i t t e d   t o 
 r e d i s t r i b u t e   t h i s   A p p l e   s a m p l e   c o d e   a s   " A p p l e   s a m p l e   c o d e "   a f t e r   h a v i n g 
 m a d e   c h a n g e s .     I f   y o u ' r e   g o i n g   t o   r e d i s t r i b u t e   t h e   c o d e ,   w e   r e q u i r e 
 t h a t   y o u   m a k e   i t   c l e a r   t h a t   t h e   c o d e   w a s   d e s c e n d e d   f r o m   A p p l e   s a m p l e 
 c o d e ,   b u t   t h a t   y o u ' v e   m a d e   c h a n g e s . 
   
  
 l     ��������  ��  ��        j     �� �� (0 choosefolderprompt ChooseFolderPrompt  m        �   ^ S e l e c t   f o l d e r ( s )   t o   r e m o v e   f o l d e r   a c t i o n s   f r o m        j    �� �� (0 choosescriptprompt ChooseScriptPrompt  m       �   @ S e l e c t   s c r i p t ( s )   t o   r e m o v e   f r o m        j    �� �� .0 nofoldersactionsexist NoFoldersActionsExist  m       �   8 T h e r e   a r e   n o   f o l d e r   a c t i o n s .      l     ��������  ��  ��        l     ����  O       !   l 	   "���� " r     # $ # n    	 % & % 1    	��
�� 
pnam & 2    ��
�� 
foac $ o      ���� &0 folderactionnames FolderActionNames��  ��   ! m      ' '�                                                                                  sevs   alis    �  Leopard9A409Int            �<H+     {System Events.app                                                ���+�        ����  	                CoreServices    �<cr      �,x       {   @   ?  =Leopard9A409Int:System:Library:CoreServices:System Events.app   $  S y s t e m   E v e n t s . a p p     L e o p a r d 9 A 4 0 9 I n t  -System/Library/CoreServices/System Events.app   / ��  ��  ��     ( ) ( l     ��������  ��  ��   )  * + * l   � ,���� , Z    � - .�� / - >    0 1 0 o    ���� &0 folderactionnames FolderActionNames 1 J    ����   . k    � 2 2  3 4 3 r    # 5 6 5 I   !�� 7 8
�� .gtqpchltTEXT  @   @ TEXT 7 l 
   9���� 9 o    ���� &0 folderactionnames FolderActionNames��  ��   8 �� : ;
�� 
prmp : o    ���� (0 choosefolderprompt ChooseFolderPrompt ; �� <��
�� 
mlsl < m    ��
�� boovtrue��   6 o      ���� 0 chosenfolders ChosenFolders 4  = > = l  $ $��������  ��  ��   >  ?�� ? Z   $ � @ A�� B @ =  $ ) C D C n   $ ' E F E 1   % '��
�� 
pcls F o   $ %���� 0 chosenfolders ChosenFolders D m   ' (��
�� 
bool A l  , ,�� G H��   G  user chose no folders    H � I I * u s e r   c h o s e   n o   f o l d e r s��   B X   0 � J�� K J k   @ � L L  M N M r   @ E O P O n   @ C Q R Q 1   A C��
�� 
pcnt R o   @ A���� 0 
eachfolder 
EachFolder P o      ���� $0 folderactionname FolderActionName N  S T S O  F Y U V U l 	 J X W���� W r   J X X Y X n   J T Z [ Z 1   R T��
�� 
pnam [ n   J R \ ] \ 2   N R��
�� 
scpt ] 4   J N�� ^
�� 
foac ^ o   L M���� $0 folderactionname FolderActionName Y o      ���� 0 	fascripts 	FAScripts��  ��   V m   F G _ _�                                                                                  sevs   alis    �  Leopard9A409Int            �<H+     {System Events.app                                                ���+�        ����  	                CoreServices    �<cr      �,x       {   @   ?  =Leopard9A409Int:System:Library:CoreServices:System Events.app   $  S y s t e m   E v e n t s . a p p     L e o p a r d 9 A 4 0 9 I n t  -System/Library/CoreServices/System Events.app   / ��   T  ` a ` r   Z o b c b I  Z k�� d e
�� .gtqpchltTEXT  @   @ TEXT d l 
 Z ] f���� f o   Z ]���� 0 	fascripts 	FAScripts��  ��   e �� g h
�� 
prmp g b   ^ e i j i o   ^ c���� (0 choosescriptprompt ChooseScriptPrompt j o   c d���� 0 
eachfolder 
EachFolder h �� k��
�� 
mlsl k m   f g��
�� boovtrue��   c o      ���� 0 chosenscripts ChosenScripts a  l m l l  p p��������  ��  ��   m  n�� n Z   p � o p�� q o =  p w r s r n   p u t u t 1   s u��
�� 
pcls u o   p s���� 0 chosenscripts ChosenScripts s m   u v��
�� 
bool p l  z z�� v w��   v 4 .user chose no scripts, skip this folder action    w � x x \ u s e r   c h o s e   n o   s c r i p t s ,   s k i p   t h i s   f o l d e r   a c t i o n��   q k   ~ � y y  z { z X   ~ � |�� } | k   � � ~ ~   �  r   � � � � � n   � � � � � 1   � ���
�� 
pcnt � o   � ����� 0 
eachscript 
EachScript � o      ���� 0 
scriptname 
ScriptName �  ��� � O  � � � � � l 	 � � ����� � I  � ��� ���
�� .coredelonull���    obj  � n   � � � � � 4   � ��� �
�� 
scpt � o   � ����� 0 
scriptname 
ScriptName � 4   � ��� �
�� 
foac � o   � ����� $0 folderactionname FolderActionName��  ��  ��   � m   � � � ��                                                                                  sevs   alis    �  Leopard9A409Int            �<H+     {System Events.app                                                ���+�        ����  	                CoreServices    �<cr      �,x       {   @   ?  =Leopard9A409Int:System:Library:CoreServices:System Events.app   $  S y s t e m   E v e n t s . a p p     L e o p a r d 9 A 4 0 9 I n t  -System/Library/CoreServices/System Events.app   / ��  ��  �� 0 
eachscript 
EachScript } o   � ����� 0 chosenscripts ChosenScripts {  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � L FIf we deleted all the scripts, delete the folder action object as well    � � � � � I f   w e   d e l e t e d   a l l   t h e   s c r i p t s ,   d e l e t e   t h e   f o l d e r   a c t i o n   o b j e c t   a s   w e l l �  ��� � Z  � � � ����� � =  � � � � � l  � � ����� � I  � ��� ���
�� .corecnte****       **** � o   � ����� 0 	fascripts 	FAScripts��  ��  ��   � l  � � ����� � I  � ��� ���
�� .corecnte****       **** � o   � ����� 0 chosenscripts ChosenScripts��  ��  ��   � l 	 � � ����� � O  � � � � � l 	 � � ����� � I  � ��� ���
�� .coredelonull���    obj  � 4   � ��� �
�� 
foac � o   � ����� $0 folderactionname FolderActionName��  ��  ��   � m   � � � ��                                                                                  sevs   alis    �  Leopard9A409Int            �<H+     {System Events.app                                                ���+�        ����  	                CoreServices    �<cr      �,x       {   @   ?  =Leopard9A409Int:System:Library:CoreServices:System Events.app   $  S y s t e m   E v e n t s . a p p     L e o p a r d 9 A 4 0 9 I n t  -System/Library/CoreServices/System Events.app   / ��  ��  ��  ��  ��  ��  ��  �� 0 
eachfolder 
EachFolder K o   3 4���� 0 chosenfolders ChosenFolders��  ��   / k   � � � �  � � � I  � �������
�� .miscactvnull��� ��� null��  ��   �  ��� � I  � ��� � �
�� .sysodlogaskr        TEXT � o   � ����� .0 nofoldersactionsexist NoFoldersActionsExist � �� ���
�� 
disp � m   � ���
�� stic   ��  ��  ��  ��   +  ��� � l     �������  ��  �  ��       �~ �    ��~   � �}�|�{�z�} (0 choosefolderprompt ChooseFolderPrompt�| (0 choosescriptprompt ChooseScriptPrompt�{ .0 nofoldersactionsexist NoFoldersActionsExist
�z .aevtoappnull  �   � **** � �y ��x�w � ��v
�y .aevtoappnull  �   � **** � k     � � �   � �  *�u�u  �x  �w   � �t�s�t 0 
eachfolder 
EachFolder�s 0 
eachscript 
EachScript �  '�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[
�r 
foac
�q 
pnam�p &0 folderactionnames FolderActionNames
�o 
prmp
�n 
mlsl�m 
�l .gtqpchltTEXT  @   @ TEXT�k 0 chosenfolders ChosenFolders
�j 
pcls
�i 
bool
�h 
kocl
�g 
cobj
�f .corecnte****       ****
�e 
pcnt�d $0 folderactionname FolderActionName
�c 
scpt�b 0 	fascripts 	FAScripts�a 0 chosenscripts ChosenScripts�` 0 
scriptname 
ScriptName
�_ .coredelonull���    obj 
�^ .miscactvnull��� ��� null
�] 
disp
�\ stic   
�[ .sysodlogaskr        TEXT�v �� 	*�-�,E�UO�jv ���b   �e� E�O��,�  hY � ��[��l kh  ��,E�O� *��/a -�,E` UO_ �b  �%�e� E` O_ �,�  hY Y 2_ [��l kh ��,E` O� *��/a _ /j U[OY��O_ j _ j   � 
*��/j UY h[OY�eY *j Ob  a a l ascr  ��ޭ