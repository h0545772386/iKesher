   M S B A M L   `   `   `  ����B  >iKesher, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:iKesheriKesher  5          iKesher.Hostel   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:iKesher     5        N� Title$  Hostel��5	      .��5
      �  � RowDefinitions 5   
   �� 5      $��40 �6   6*   �� 5      $��40 �6   6*   �� 5      6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   .+�5      ��  
  Hostel#���   6   $��Center=�5        defaultHeader#��[ 5      6A   5      � 5   
   $��1��6    � ColumnDefinitions 5      �� 5      $
��auto �6#   62   �� 5      6%   .+�5      �� $ 
Horizontal=�6   .+�5      �� -   5         ��Name$ btnAdd��5        	imgButton#��[ 6)   
������ .��5      �� $ 
Horizontal=�6!   .+�5      �� $	����6%   $��22(�67   $��Heavy"�6E   $��Segoe MDL2 Assets)�6X     DefBackColor#��[ 6w   6�   5      5      �� 5         Add#���  6   $��Center=�69   $��16(�6T   $	��4,0q�6b   6q   5!      �� 5"      $ 
Horizontal=�6   $��Right=�62   $��1��6N   $��0 0 10 0q�6^   .+�5#      �� 
�������$��1q�61   $	��230��6E   $��30��6Q   ._�5$      �� $ 
Horizontal=�6!   
�������.+�5%      �� -   5         ��Name$ tbFilter��5%   f    
 markTb#��[ 6"     
HostelName
 � Tag# �  6B   
������ $	��200��6�   6�   �� 5&      -   5        $ btnFind��5&   !   #��[ 62   
������ .��5'      �� $	����6)   $��22(�6;   $��Heavy"�6I   $��Segoe MDL2 Assets)�6\   #��[ 6{   6�   5(      5)      5*      5+      5,      &   System.Windows.Controls.DataGrid  5-   
   $��2��6      AutoGenerateColumns .     CanUserAddRows .  ��. 	   Columns	 5.      0  *System.Windows.Controls.DataGridTextColumn  5/      ,  &System.Windows.Controls.DataGridColumn
   Width5  /System.Windows.Controls.DataGridLengthConverter$	
 150 6&   1  +System.Windows.Controls.DataGridBoundColumn   Binding 62   �� *
HostelName+   Header 50      �� 51      #���  6$   $��Center=�6H   6g   53        54      $	
 100 6&    62   �� *	HostelNum+ 55      �� 56        	HostelNum#���  6$   $��Center=�6G   6f   58        59      $	
 120 6&    62   �� *HostelColor+ 5:      �� 5;        HostelColor#���  6$   $��Center=�6I   6h   5=        5>      $	
 120 6&    62   �� *	DateStart+ 5?      �� 5@       	 	DateStart#��� 	 6$   $��Center=�6G   6f   5B        5C      $	
 120 6&    62   �� *	DateEnd+ 5D      �� 5E       
 DateEnd#��� 
 6$   $��Center=�6E   6d   5G      4  .System.Windows.Controls.DataGridTemplateColumn  5H      $	
 100 6*    5I      �� 5J        IsActive#���  6$   $��Center=�6F   6e      CellTemplate 5L      �� 5M      .R�5N      ��  d� 	IsChecked 6'   �� *
IsActive+6H   5O      5Q        5R      $	
 120 6&    62   �� *Status+ 5S      �� 5T       
 Status#���  6$   $��Center=�6D   6c   5V        5W      $	
 180 6*    5X      �� 5Y       
 Action#���  6$   $��Center=�6D   6c    5[      �� 5\      .R�5]      �� $ 
Horizontal=�6)   $��Center=�6B   .+�5^   "   ��   linkBtn#��[ 6)     Edit#���  6J   $��80��6k   6x   �� 5_   "   #��[ 6)    
 Delete#���  6J   $��80��6m   6z   5`      5a      5c      5e      5f      5g      