FasdUAS 1.101.10   ��   ��    l     ����  O         I   ��  
�� .sysoexecTEXT���     TEXT  l    	���� 	 m     
 
 �  � 
 	 	 #   l i s t   o f   a p p   t o   c h e c k 
 	 	 d e c l a r e   - a   a p p s = (   ' F i r e f o x '   ' E N A C d r i v e '   ' V L C ' ) 
 	 	 
     	 	 #   f u n c t i o n   t o   d o w n l o a d   t h e   i n s t a l l e r 
     	 	 f u n c t i o n   d o w n l o a d _ a p p   ( )   { 
       	 	 c u r l   - u   s h a r i n g : s h a r i n g   - O   h t t p : / / i t 3 p c 1 . e p f l . c h / S h a r e / $ 1 . d m g 
       	 	 a p p = $ 1 ' . p k g ' 
       	 	 i n s t a l l _ a p p   $ a p p 
     	 	 } 
 	 
     	 	 f u n c t i o n   i n s t a l l _ a p p   ( )   { 
       	 	 	 i n s t a l l e r   - p k g   $ 1   - t a r g e t   / 
     	 	 } 
 
     	 	 #   f u n c t i o n   t o   c h e c k   i f   t h e   a p p   a r e   a l r e a d y   i n s t a l l e d 
   	 	 f u n c t i o n   c h e c k _ a p p   ( )   { 
       	 	 i f   [   !   - d   ' ~ / i n s a l l e r _ a p p '   ] ; t h e n 
         	 	 	 m k d i r   ~ / i n s t a l l e r _ a p p 
       	 	 f i 
       	 	 c d   ~ / i n s t a l l e r _ a p p 
       	 	 #   c o m p a r e   A p p l i c a t i o n s   r e p o   a n d   a r r a y   a p p s 
       	 	 f o r   i   i n   ' $ { a p p s [ @ ] } ' ; d o 
 	         	 	 i f   !   o p e n   - R a   ' $ i '   ; t h e n 
                     	 	 	 e c h o   $ i   ' i s   a l r e a d y   i n s t a l l e d ' 
             	 	 	 e l s e 
                 	 	 	 e c h o   ' I N F O   : '   $ i   ' i s   n o t   i n s t a l l e d ' 
                 	 	 	 d o w n l o a d _ a p p   $ i 
             	 	 	 f i 
         	 	 d o n e 
 	 } 
 
 	 #   M A I N   # 
 
 	 c h e c k _ a p p 
 
 	 r m   - R   ~ / i n s t a l l e r _ a p p 
 	 #   E N D   M A I N   # 
 
 	 #   E N D   s c r i p t 
 	 
 	��  ��    �� ��
�� 
badm  m    ��
�� boovtrue��    m       �                                                                                      @ alis    r  Macintosh SSHD             ���~H+   	u�Terminal.app                                                    	�sե�G        ����  	                	Utilities     ���^      եz'     	u� �h  4Macintosh SSHD:Applications: Utilities: Terminal.app    T e r m i n a l . a p p    M a c i n t o s h   S S H D  #Applications/Utilities/Terminal.app   / ��  ��  ��       ��  ��    ��
�� .aevtoappnull  �   � ****  �� ����  ��
�� .aevtoappnull  �   � ****  k         ����  ��  ��         
����
�� 
badm
�� .sysoexecTEXT���     TEXT�� � 	��el U ascr  ��ޭ