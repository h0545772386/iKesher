   M S B A M L   `   `   `  ����B  >iKesher, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:iKesheriKesher  5          iKesher.UserPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:iKesher     5        N� Title$  UserPage��5	      .��5
      �  � RowDefinitions 5   
   �� 5      $��40 �6   6*   �� 5      $��40 �6   6*   �� 5      6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   .+�5      ��    User#���   6   $��Center=�5        defaultHeader#��[ 5      6A   5      � 5   
   $��1��6    � ColumnDefinitions 5      �� 5      $
��auto �6#   62   �� 5      6%   .+�5      �� $ 
Horizontal=�6   .+�5      �� -   5         ��Name$ btnAdd��5        	imgButton#��[ 6)   
������ .��5      �� $ 
Horizontal=�6!   .+�5      �� $	����6%   $��22(�67   $��Heavy"�6E   $��Segoe MDL2 Assets)�6X     DefBackColor#��[ 6w   6�   5      5      �� 5         Add#���  6   $��Center=�69   $��16(�6T   $	��4,0q�6b   6q   5!      �� 5"      $ 
Horizontal=�6   $��Right=�62   $��1��6N   $��0 0 10 0q�6^   .+�5#      �� 
�������$��1q�61   $	��230��6E   $��30��6Q   ._�5$      �� $ 
Horizontal=�6!   
�������.+�5%      �� -   5         ��Name$ tbFilter��5%   a    
 markTb#��[ 6"    	 UName
 � Tag# �  6B   
������ $	��200��6�   6�   �� 5&      -   5        $ btnFind��5&   !   #��[ 62   
������ .��5'      �� $	����6)   $��22(�6;   $��Heavy"�6I   $��Segoe MDL2 Assets)�6\   #��[ 6{   6�   5(      5)      5*      5+      5,      &   System.Windows.Controls.DataGrid  5-   
   $��2��6      AutoGenerateColumns .     CanUserAddRows .  ��. $
��Auto=�6x   $
��Auto=�6�   	   Columns	 5.      0  *System.Windows.Controls.DataGridTextColumn  5/      ,  &System.Windows.Controls.DataGridColumn
   Width5  /System.Windows.Controls.DataGridLengthConverter$	
 100 6&   1  +System.Windows.Controls.DataGridBoundColumn   Binding 62   �� *
FullName+   Header 50      �� 51        FullName#���  6$   $��Center=�6F   6e   53      4  .System.Windows.Controls.DataGridTemplateColumn  54      $	
 100 6*    55      �� 56        
IsSysAdmin#���  6$   $��Center=�6H   6g      CellTemplate 58      �� 59      .R�5:      ��  d� 	IsChecked 6'   �� *
IsSysAdmin+6J   5;      5=        5>      $	
 100 6&    62   �� *Status+ 5?      �� 5@       
	 Status#��� 	 6$   $��Center=�6D   6c   5B        5C      $	
 100 6&    62   �� *UName+ 5D      �� 5E      #���  6$   $��Center=�6C   6b   5G        5H      $	
 100 6&    62   �� *UPass+ 5I      �� 5J       	
 UPass#��� 
 6$   $��Center=�6C   6b   5L        5M      $	
 100 6&    62   �� *UCode+ 5N      �� 5O       	 UCode#���  6$   $��Center=�6C   6b   5Q        5R      $	
 100 6&    62   �� *
UResetPass+ 5S      �� 5T        
UResetPass#���  6$   $��Center=�6H   6g   5V        5W      $	
 100 6&    62   �� *U_GUID+ 5X      �� 5Y       
 U_GUID#���  6$   $��Center=�6D   6c   5[        5\      $	
 160 6*    5]      �� 5^       
 Action#���  6$   $��Center=�6D   6c    5`      �� 5a      .R�5b      �� $ 
Horizontal=�6)   $��Center=�6B   .+�5c   "   ��   linkBtn#��[ 6)     Edit#���  6J   $��80��6k   6x   �� 5d   "   #��[ 6)    
 Delete#���  6J   $��80��6m   6z   5e      5f      5h      5j      5k      5l      