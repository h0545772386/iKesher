   M S B A M L   `   `   `  ����B  >iKesher, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:iKesheriKesher  5          iKesher.RemainderPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:iKesher     5        N� Title$  RemainderPage��5	      .��5      �  � RowDefinitions 5   
   �� 5      $��40 �6   6*   �� 5      $��40 �6   6*   �� 5      6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   .+�5      ��    Reminder#���   6   $��Center=�5        defaultHeader#��[ 5      6A   5      � 5   
   $��1��6    � ColumnDefinitions 5      �� 5      $
��auto �6#   62   �� 5      6%   .+�5      �� $ 
Horizontal=�6   .+�5      �� -   5         ��Name$ btnAdd��5        	imgButton#��[ 6)   
������ .��5      �� $ 
Horizontal=�6!   .+�5      �� $	����6%   $��22(�67   $��Heavy"�6E   $��Segoe MDL2 Assets)�6X     DefBackColor#��[ 6w   6�   5      5       �� 5!        Add#���  6   $��Center=�69   $��16(�6T   $	��4,0q�6b   6q   5"      �� 5#      $ 
Horizontal=�6   $��Right=�62   $��1��6N   $��0 0 10 0q�6^   .+�5$      �� 
�������$��1q�61   $	��230��6E   $��30��6Q   ._�5%      �� $ 
Horizontal=�6!   
�������.+�5&      �� -   5         ��Name$ tbFilter��5&   h    
 markTb#��[ 6"     RecorsivType
 � Tag# �  6B   
������ $	��200��6�   6�   �� 5'      -   5        $ btnFind��5'   !   #��[ 62   
������ .��5(      �� $	����6)   $��22(�6;   $��Heavy"�6I   $��Segoe MDL2 Assets)�6\   #��[ 6{   6�   5)      5*      5+      5,      5-      &   System.Windows.Controls.DataGrid  5.   
   $��2��6      AutoGenerateColumns .     CanUserAddRows .  ��. $
��Auto=�6x   $
��Auto=�6�   	   Columns	 5/      0  *System.Windows.Controls.DataGridTextColumn  50      ,  &System.Windows.Controls.DataGridColumn
   Width5  /System.Windows.Controls.DataGridLengthConverter$	
 100 6&   1  +System.Windows.Controls.DataGridBoundColumn   Binding 62   �� *PopUpAt_YYYYMMDDHHMM+   Header 51      �� 52        PopUpAt_YYYYMMDDHHMM#���  6$   $��Center=�6R   6q   54        55      $	
 100 6&    62   �� *	RemText+ 56      �� 57        RemText#���  6$   $��Center=�6E   6d   59      4  .System.Windows.Controls.DataGridTemplateColumn  5:      $	
 100 6*    5;      �� 5<       	 IsRecorsive#��� 	 6$   $��Center=�6I   6h      CellTemplate 5>      �� 5?      .R�5@      ��  d� 	IsChecked 6'   �� *IsRecorsive+6K   5A      5C        5D      $	
 100 6&    62   �� *RecorsivType+ 5E      �� 5F      #���  6$   $��Center=�6J   6i   5H        5I      $	
 100 6&    62   �� *RecorsivTime+ 5J      �� 5K       
 RecorsivTime#��� 
 6$   $��Center=�6J   6i   5M        5N      $	
 100 6&    62   �� *RecorsivTime1+ 5O      �� 5P        RecorsivTime1#���  6$   $��Center=�6K   6j   5R        5S      $	
 100 6&    62   �� *	Frequence+ 5T      �� 5U        	Frequence#���  6$   $��Center=�6G   6f   5W        5X      $	
 100 6&    62   �� *
RemColor+ 5Y      �� 5Z        RemColor#���  6$   $��Center=�6F   6e   5\        5]      $	
 160 6*    5^      �� 5_       
 Action#���  6$   $��Center=�6D   6c    5a      �� 5b      .R�5c      �� $ 
Horizontal=�6)   $��Center=�6B   .+�5d   "   ��   linkBtn#��[ 6)     Edit#���  6J   $��80��6k   6x   �� 5e   "   #��[ 6)    
 Delete#���  6J   $��80��6m   6z   5f      5g      5i      5k      5l      5m      