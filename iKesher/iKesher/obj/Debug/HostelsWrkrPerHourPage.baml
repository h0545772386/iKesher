   M S B A M L   `   `   `  ����B  >iKesher, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:iKesheriKesher  5      $    iKesher.HostelsWrkrPerHourPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:iKesher     5        N� Title$  HostelsWrkrPerHourPage��5	      .��5      �  � RowDefinitions 5   
   �� 5      $��40 �6   6*   �� 5      $��40 �6   6*   �� 5      6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   .+�5      ��    HostelsWrkrPerHour#���   6   $��Center=�5        defaultHeader#��[ 5      6A   5      � 5   
   $��1��6    � ColumnDefinitions 5      �� 5      $
��auto �6#   62   �� 5      6%   .+�5      �� $ 
Horizontal=�6   .+�5      �� -   5         ��Name$ btnAdd��5        	imgButton#��[ 6)   
������ .��5      �� $ 
Horizontal=�6!   .+�5      �� $	����6%   $��22(�67   $��Heavy"�6E   $��Segoe MDL2 Assets)�6X     DefBackColor#��[ 6w   6�   5      5       �� 5!        Add#���  6   $��Center=�69   $��16(�6T   $	��4,0q�6b   6q   5"      5-      &   System.Windows.Controls.DataGrid  5.   
   $��2��6      AutoGenerateColumns .     CanUserAddRows .  ��. $
��Auto=�6x   $
��Auto=�6�      Columns 5/      0  *System.Windows.Controls.DataGridTextColumn  50      ,  &System.Windows.Controls.DataGridColumn   Width5  /System.Windows.Controls.DataGridLengthConverter$ 80 6&   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 61   �� *	HostelNum+
   Header
 51      �� 52        	HostelNum#���  6$   $��Center=�6G   6f   54        55      $ 80 6&   	 61   �� *	WrkrNum+
 56      �� 57        WrkrNum#���  6$   $��Center=�6E   6d   59        5:      $ 80 6&   	 61   �� *
PerHour1+
 5;      �� 5<      $ 
Horizontal=�6%   $��Center=�6>   .+�5=      ��   PerHour#���  6(   $��Center=�6I   6h   �� 5>      $��1��6(   63   5?      5A        5B      $ 80 6&   	 61   �� *
PerHour2+
 5C      �� 5D      $ 
Horizontal=�6%   $��Center=�6>   .+�5E      �� #���  6(   $��Center=�6I   6h   �� 5F      $��2��6(   63   5G      5I        5J      $ 80 6&   	 61   �� *
PerHour3+
 5K      �� 5L      $ 
Horizontal=�6%   $��Center=�6>   .+�5M      �� #���  6(   $��Center=�6I   6h   �� 5N      $��3��6(   63   5O      5Q        5R      $ 80 6&   	 61   �� *
PerTrip1+
 5S      �� 5T      $ 
Horizontal=�6%   $��Center=�6>   .+�5U      ��   PerTrip#���  6(   $��Center=�6I   6h   �� 5V      $��1��6(   63   5W      5Y        5Z      $ 80 6&   	 62   �� *
PerTrip2+
 5[      �� 5\      $ 
Horizontal=�6%   $��Center=�6>   .+�5]      �� #���  6(   $��Center=�6I   6h   �� 5^      $��2��6(   63   5_      5a        5b      $ 80 6&   	 62   �� *
PerTrip3+
 5c      �� 5d      $ 
Horizontal=�6%   $��Center=�6>   .+�5e      �� #���  6(   $��Center=�6I   6h   �� 5f      $��3��6(   63   5g      5i        5j      $ 80 6&   	 62   �� *Pay4SpltTrip1+
 5k      �� 5l      $ 
Horizontal=�6%   $��Center=�6>   .+�5m      ��  	 Pay4SpltTrip#��� 	 6(   $��Center=�6N   6m   �� 5n      $��1��6(   63   5o      5q        5r      $ 80 6&   	 62   �� *Pay4SpltTrip2+
 5s      �� 5t      $ 
Horizontal=�6%   $��Center=�6>   .+�5u      �� #��� 	 6(   $��Center=�6N   6m   �� 5v      $��2��6(   63   5w      5y        5z      $	 100 6%   	 61   �� *	DateStart+
 5{      �� 5|      ��6$   �� *	DateStart+6A   5~        5      $	 100 6%   	 61   �� *	DateEnd+
 5�      �� 5�      ��6$   �� *	DateEnd+6?   5�      4  .System.Windows.Controls.DataGridTemplateColumn  5�      $ 80 6)   
 5�      �� 5�       
 IsActive#��� 
 6$   6H      CellTemplate 5�      �� 5�      .R�5�      ��  d� 	IsChecked 6'   �� *
IsActive+6H   5�      5�        5�      	 6%   �� *Status+
 5�      �� 5�       
 Status#���  6$   6F   5�        5�      $	 160 6*   
 5�      �� 5�       
 Action#���  6$   $��Center=�6D   6c    5�      �� 5�      .R�5�      �� $ 
Horizontal=�6)   $��Center=�6B   .+�5�   "   ��   linkBtn#��[ 6)     Save#���  6J   $��80��6k   6x   �� 5�   "   #��[ 6)    
 Delete#���  6J   $��80��6m   6z   5�      5�      5�      5�      5�      5�      