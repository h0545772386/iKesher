   M S B A M L   `   `   `  ����B  >iKesher, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:iKesheriKesher  5          iKesher.WorkersAggrgsPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:iKesher     5        N� Title$  WorkersAggrgsPage��5	      .��5      �  � RowDefinitions 5   
   �� 5      $��40 �6   6*   �� 5      $��40 �6   6*   �� 5      6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   .+�5      ��    WorkersAggrgsTotal#���   6   $��Center=�5        defaultHeader#��[ 5      6A   5      � 5   
   $��1��6    � ColumnDefinitions 5      �� 5      $
��auto �6#   62   �� 5      6%   .+�5      �� $ 
Horizontal=�6   .+�5      �� -   5         ��Name$ btnAdd��5        	imgButton#��[ 6)   
������ .��5      �� $ 
Horizontal=�6!   .+�5      �� $	����6%   $��22(�67   $��Heavy"�6E   $��Segoe MDL2 Assets)�6X     DefBackColor#��[ 6w   6�   5      5       �� 5!        Add#���  6   $��Center=�69   $��16(�6T   $	��4,0q�6b   6q   5"      5-      &   System.Windows.Controls.DataGrid  5.   
   $��2��6      AutoGenerateColumns .     CanUserAddRows .  ��. $
��Auto=�6x   $
��Auto=�6�      Columns 5/      0  *System.Windows.Controls.DataGridTextColumn  50      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$ 80 6&   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 61   �� *	WrkrNum+
   Header
 51      �� 52        WrkrNum#���  6$   $��Center=�6E   6d   54        55      $ 80 6&   	 61   �� *Total1+
 56      �� 57      $ 
Horizontal=�6%   $��Center=�6>   .+�58      ��  	 Total#���  6(   $��Center=�6G   6f   �� 59      $��1��6(   63   5:      5<        5=      $ 80 6&   	 61   �� *Total2+
 5>      �� 5?      $ 
Horizontal=�6%   $��Center=�6>   .+�5@      �� #���  6(   $��Center=�6G   6f   �� 5A      $��2��6(   63   5B      5D        5E      $ 80 6&   	 61   �� *Total3+
 5F      �� 5G      $ 
Horizontal=�6%   $��Center=�6>   .+�5H      �� #���  6(   $��Center=�6G   6f   �� 5I      $��3��6(   63   5J      5L        5M      $ 80 6&   	 61   �� *Total4+
 5N      �� 5O      $ 
Horizontal=�6%   $��Center=�6>   .+�5P      �� #���  6(   $��Center=�6G   6f   �� 5Q      $��4��6(   63   5R      5T        5U      $ 80 6&   	 62   �� *Total5+
 5V      �� 5W      $ 
Horizontal=�6%   $��Center=�6>   .+�5X      �� #���  6(   $��Center=�6G   6f   �� 5Y      $��5��6(   63   5Z      5\        5]      $ 80 6&   	 62   �� *Total6+
 5^      �� 5_      $ 
Horizontal=�6%   $��Center=�6>   .+�5`      �� #���  6(   $��Center=�6G   6f   �� 5a      $��6��6(   63   5b      5d        5e      $ 80 6&   	 62   �� *Total7+
 5f      �� 5g      $ 
Horizontal=�6%   $��Center=�6>   .+�5h      �� #���  6(   $��Center=�6G   6f   �� 5i      $��7��6(   63   5j      5l        5m      $ 80 6&   	 62   �� *Total8+
 5n      �� 5o      $ 
Horizontal=�6%   $��Center=�6>   .+�5p      �� #���  6(   $��Center=�6G   6f   �� 5q      $��8��6(   63   5r      5t        5u      	 6%   �� *Status+
 5v      �� 5w       
 Status#���  6$   6F   5y      4  .System.Windows.Controls.DataGridTemplateColumn  5z      $	 160 6*   
 5{      �� 5|       
 Action#���  6$   $��Center=�6D   6c      CellTemplate 5~      �� 5      .R�5�      �� $ 
Horizontal=�6)   $��Center=�6B   .+�5�   "   ��  	 linkBtn#��[	 6)    
 Save#��� 
 6J   $��80��6k   6x   �� 5�   "   #��[	 6)    
 Delete#���  6J   $��80��6m   6z   5�      5�      5�      5�      5�      5�      