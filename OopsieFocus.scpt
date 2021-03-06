FasdUAS 1.101.10   ��   ��    k             l      ��  ��   �� 
OopsieFocus 2

A script to launch OmniFocus and activate the Quick Entry Panel (inspired by Shawn Blanc's version, which no longer works.)*

=====Copyright (C) 2015 Antonio Fortin

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

=====

*This documentation is copied from Shawn's original, available here: http://shawnblanc.net/2011/06/oopsiefocus/ , with slight changes.
Works great with Alfred, FastScripts or Keyboard Maestro:
	https://www.alfredapp.com/	http://www.red-sweater.com/fastscripts/	http://www.keyboardmaestro.com/main/
	
How it works:
	Set this script to run using the same keyboard shortut that you use to launch the Quick 
	Entry Panel in OmniFocus. If you ever try to activate the Quick Entry Panel but 
	OmniFocus happens to not be running, then this script will launch OmniFocus and bring 
	up the Quick Entry Panel for you.
     � 	 	�   
 O o p s i e F o c u s   2 
 
 A   s c r i p t   t o   l a u n c h   O m n i F o c u s   a n d   a c t i v a t e   t h e   Q u i c k   E n t r y   P a n e l   ( i n s p i r e d   b y   S h a w n   B l a n c ' s   v e r s i o n ,   w h i c h   n o   l o n g e r   w o r k s . ) * 
 
 = = = = =  C o p y r i g h t   ( C )   2 0 1 5   A n t o n i o   F o r t i n 
 
 T h i s   p r o g r a m   i s   f r e e   s o f t w a r e ;   y o u   c a n   r e d i s t r i b u t e   i t   a n d / o r 
 m o d i f y   i t   u n d e r   t h e   t e r m s   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e 
 a s   p u b l i s h e d   b y   t h e   F r e e   S o f t w a r e   F o u n d a t i o n ;   e i t h e r   v e r s i o n   2 
 o f   t h e   L i c e n s e ,   o r   ( a t   y o u r   o p t i o n )   a n y   l a t e r   v e r s i o n . 
 
 T h i s   p r o g r a m   i s   d i s t r i b u t e d   i n   t h e   h o p e   t h a t   i t   w i l l   b e   u s e f u l , 
 b u t   W I T H O U T   A N Y   W A R R A N T Y ;   w i t h o u t   e v e n   t h e   i m p l i e d   w a r r a n t y   o f 
 M E R C H A N T A B I L I T Y   o r   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E .     S e e   t h e 
 G N U   G e n e r a l   P u b l i c   L i c e n s e   f o r   m o r e   d e t a i l s . 
 
 Y o u   s h o u l d   h a v e   r e c e i v e d   a   c o p y   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e 
 a l o n g   w i t h   t h i s   p r o g r a m ;   i f   n o t ,   w r i t e   t o   t h e   F r e e   S o f t w a r e 
 F o u n d a t i o n ,   I n c . ,   5 1   F r a n k l i n   S t r e e t ,   F i f t h   F l o o r ,   B o s t o n ,   M A     0 2 1 1 0 - 1 3 0 1 ,   U S A . 
 
 = = = = = 
 
 * T h i s   d o c u m e n t a t i o n   i s   c o p i e d   f r o m   S h a w n ' s   o r i g i n a l ,   a v a i l a b l e   h e r e :   h t t p : / / s h a w n b l a n c . n e t / 2 0 1 1 / 0 6 / o o p s i e f o c u s /   ,   w i t h   s l i g h t   c h a n g e s . 
  W o r k s   g r e a t   w i t h   A l f r e d ,   F a s t S c r i p t s   o r   K e y b o a r d   M a e s t r o : 
 	 h t t p s : / / w w w . a l f r e d a p p . c o m /  	 h t t p : / / w w w . r e d - s w e a t e r . c o m / f a s t s c r i p t s /  	 h t t p : / / w w w . k e y b o a r d m a e s t r o . c o m / m a i n / 
 	  
 H o w   i t   w o r k s : 
 	 S e t   t h i s   s c r i p t   t o   r u n   u s i n g   t h e   s a m e   k e y b o a r d   s h o r t u t   t h a t   y o u   u s e   t o   l a u n c h   t h e   Q u i c k   
 	 E n t r y   P a n e l   i n   O m n i F o c u s .   I f   y o u   e v e r   t r y   t o   a c t i v a t e   t h e   Q u i c k   E n t r y   P a n e l   b u t   
 	 O m n i F o c u s   h a p p e n s   t o   n o t   b e   r u n n i n g ,   t h e n   t h i s   s c r i p t   w i l l   l a u n c h   O m n i F o c u s   a n d   b r i n g   
 	 u p   t h e   Q u i c k   E n t r y   P a n e l   f o r   y o u . 
   
  
 l     ��������  ��  ��     ��  l    5 ����  O     5    Z    4  ��   H       l    ����  I   �� ��
�� .coredoexnull���     ****  4    �� 
�� 
prcs  m       �   < M B A : A p p l i c a t i o n s : O m n i F o c u s . a p p��  ��  ��    O    0    k    /       I   ������
�� .miscactvnull��� ��� null��  ��     ��  O    /     k   # . ! !  " # " I  # (������
�� .aevtodocnull  �    alis��  ��   #  $�� $ I  ) .������
�� .miscactvnull��� ��� null��  ��  ��     1     ��
�� 
FCQE��    4    �� %
�� 
capp % m     & & � ' ' < M B A : A p p l i c a t i o n s : O m n i F o c u s . a p p��    m   3 4��
�� 
null  m      ( (�                                                                                  sevs  alis    v  MBA                        �(��H+  ��_System Events.app                                              ��w�5>�        ����  	                CoreServices    �(��      �5"�    ��_��S��R  4MBA:System: Library: CoreServices: System Events.app  $  S y s t e m   E v e n t s . a p p    M B A  -System/Library/CoreServices/System Events.app   / ��  ��  ��  ��       �� ) *��   ) ��
�� .aevtoappnull  �   � **** * �� +���� , -��
�� .aevtoappnull  �   � **** + k     5 . .  ����  ��  ��   ,   - 
 (�� ���� &��������
�� 
prcs
�� .coredoexnull���     ****
�� 
capp
�� .miscactvnull��� ��� null
�� 
FCQE
�� .aevtodocnull  �    alis
�� 
null�� 6� 2*��/j  %)��/ *j O*�, *j O*j UUY �Uascr  ��ޭ