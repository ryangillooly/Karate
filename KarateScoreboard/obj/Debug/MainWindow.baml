   M S B A M L   `   `   `  ����J  FWpfApplication1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:WpfApplication1WpfApplication1  5   	        WpfApplication1.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:WpfApplication1     5   	   -   5          �Name$
  app1��5   	    � Title$ 
MainWindow��5   	   $	��800��6   $
��1280��6)    � 
ResizeMode$ NoResize=�66    � WindowStartupLocation$ CenterScreen=�6L    � WindowState$ 	Maximized=�6q    � SizeToContent$ WidthAndHeight=�6�   
������� � WindowStyle$
 None=�6�   .��5	      � -   5         �Name$ grid1��5	      $��0q�6   $
��1274��6%   $	��771��62   ��5
   
   �� 5       �� ImageSource$: 4pack://application:,,,/Resources/backgroundImage.jpg��6   	 � RowDefinitions	 5   
   �� 5      $	��400 �6   .+�5   
   � -   5        $ redLabel_Grid��5      $	��400��6&   $	��460��63   $	��Top=�6?   $
��Left=�6W   $��	0,0,820,0q�6r   	 5      �� 5      $	��400 �6    .+�5      �� -   5        
 ��Name$
 redScore_Label��5      $��0��6,   $	��460��6N   $	��200(�6Z   $��Center=�6i   $��Center=�6�   ��68   Z� 6�   5      � 5   
   -   5        $ blueLabel_Grid��5      $	��400��6'   $	��460��64   $	��Top=�6@   $��Right=�6X   	 5      �� 5      $	��400 �6    .+�5      �� -   5        $
 blueScore_Label��5      $��0��6-   $��Center=�6O   $��Center=�6s   $	��200(�6�    J� RenderTransformOrigin$ 0.5,0.5&�6�   ��69   Z� 6�   5      � 5   
   -   5        $ lkaImage_Grid��5      $
��Left=�6&   $	��210��6A   $��	420,0,0,0q�6N   $	��Top=�6a   $	��440��6y   .+�5      �� -   5         ��Name$ lkaImage_Image��5      $��Resources/Untitled-2.jpg��6,   $
��Fill=�6N    J� OpacityMask 5       �� 5!       �� EndPoint$ 0.5,1&�6*    � MappingMode$ RelativeToBoundingBox=�6;    �� 
StartPoint$ 0.5,0&�6_    �� RelativeTransform 5"      V� 5#      .~�5$   "   ��  �� CenterY$	 0.5Q�61    �� CenterX$	 0.5Q�6?   �� 5%   "    �� CenterY$	 0.5Q�60    �� CenterX$	 0.5Q�6>   �� 5&   "    �� Angle$ 90Q�62    �� CenterY$	 0.5Q�6=    �� CenterX$	 0.5Q�6K   T� 5'   "   5(      .��5*      �  � Color$ White��6'    � Offset$ 0.506Q�65   � 5+      � 5,      $ 1Q�6'   � 5-      $ 	#C8FFFFFF��6'   $ 0.647Q�69   � 5.      $ 	#0CFFFFFF��6'   $ 0.056Q�69   � 5/      $ 	#2BFFFFFF��6'   $ 0.916Q�69   50      52      �� 53      -	   5         ��Name$ button��53      $�� ��6%   $
��Left=�60   $��	83,21,0,0q�6K   $	��Top=�6^   $	��277��6v   $	��179��6�   $��0q�6�   ���	#FFF3C4C4
���������54      �� 55      $ 0.5,1&�6*   $ 0.5,0&�6;    �� Opacity$ 0Q�6N   .��56      � $ Black��6'   $ 0Q�65   � 57      $ White��6'   $ 1Q�65   58      5:      5;      � 5<   
   -
   5        $ blueButtons_Grid��5<      $	��320��6)   $��
0,0,0,-370q�66   $	��454��6J   $��Bottom=�6V   $��Right=�6q    � ColumnDefinitions 5=      �� 5>      $	��227 �6#   �� 5?      $	��227 �6#   	 5A      �� 5B      $	��160 �6    �� 5C      $	��160 �6    .+�5E      �� -   5        $ blueChudanKick_Button��5E      $�� ��64   $��1��6z   ��6?   Z� ��5F      �� 5G      $= 7pack://application:,,,/Resources/Chudan_Kick_Left_T.png��6!    j� Stretch$ Uniform=�6g   5I      �� 5J      -   5        $ bluePunch_Button��5J      $�� ��6/   ��6:   Z� ��5K      �� 5L      $* $Resources/karate-punch-icon-left.png��6!   $ Uniform=�6T   5N      �� 5O      -   5        $ blueJodanKick_button��5O      $�� ��63   $��1��6>   $��1��6K   ��6[   Z� ��5P      �� 5Q      $< 6pack://application:,,,/Resources/Jodan_Kick_Left_T.png��6!   $ Uniform=�6f   5S      �� 5T      -   5        $ blueSweep_Button��5T      $��Sweep��6/   $��1��6?   $	��160��6L   $	��Top=�6o   $
��Left=�6�   $	��227��6�   ��6Y   Z� ��6�   Z� 6�   5U      � 5V   
   -   5        $ redButtons_Grid��5V      $
��Left=�6(   $	��320��6C   $��0,451,0,-370q�6P   $	��Top=�6f   $	��450��6~    5W      �� 5X      $	��225 �6#   �� 5Y      $	��225 �6#   	 5[      �� 5\      $	��160 �6    �� 5]      $	��160 �6    .+�5_      �� -   5        $ redChudanKick_Button��5_      $�� ��63   ��6>   Z� ��5`      �� 5a      $> 8pack://application:,,,/Resources/Chudan_Kick_Right_T.png��6!   $ Uniform=�6h   5d      �� 5e      -   5        $ redPunch_Button��5e      $�� ��6.   $��1��6n   ��69   Z� ��5f      �� 5g      $< 6pack://application:,,,/Resources/karate-punch-icon.png��6!   $ Uniform=�6f   5i      �� 5j      -   5        $ redJodanKick_button��5j      $�� ��62   $	��225��6=   $��1��6I   $	��160��6V   ��6c   Z� ��5k      �� 5l      $= 7pack://application:,,,/Resources/Jodan_Kick_Right_T.png��6!   $ Uniform=�6g   5n      �� 5o      -   5        $ redSweep_Button��5o      $��Sweep��6.   $	��225��6>   $��1��6J   $	��160��6W   $��1��6z   ��6d   Z� ��6�   Z� 6�   5p      � 5q   
   $
��Left=�6   $	��150��6*   $��450,621,0,-370q�67   $	��Top=�6O   $	��370��6g   	 5r      �� 5s      $��40 �6    �� 5t      $��35 �6    �� 5u      $��75 �6     5w      �� 5x      $��123.33 �6#   �� 5y      $��123.33 �6#   �� 5z      $��123.33 �6#   .+�5|      �� -   5        $ startTimer_Button��5|      $�� ��60   $
��Left=�6;   $��2��6V   $	��Top=�6c   $	��124��6{   $��75��6�   $��0q�6�   ��5}      �� 5~      $  Resources/button_start.png��6!   $ Uniform=�6J   5�      �� 5�      -   5        $ stopTimer_Button��5�      $�� ��6/   $
��Left=�6:   $��2��6U   $	��Top=�6b   $	��123��6z   $��1��6�   $��75��6�   $��0q�6�   ��5�      �� 5�      $% Resources/button_stop-reset.png��6!   $ Uniform=�6O   5�      �� 5�      -   5        $ pauseTimer_Button��5�      $�� ��60   $
��Left=�6;   $��2��6V   $	��Top=�6c   $	��123��6{   $��2��6�   $��75��6�   $��0q�6�   ��5�      �� 5�      $  Resources/button_pause.png��6!   $ Uniform=�6J   5�      �� 5�      -   5        $
 label��5�      $	��1
��6#   $
��Left=�69   $��24,4,0,0q�6T   $	��Top=�6f   
�������$��25��6�   $��1��6�   $��14(�6�   $��Center=�6�   $��Center=�6�   $
��Bold"�6  ��6~   Z� 6  �� 5�      -   5        $
 
label_Copy��5�      $��3��6(   $
��Left=�64   $��55,3,0,6q�6O   $��1��6a   
�������$��1��6�   $��14(�6�   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   ��6�   Z� 6�   �� 5�      -   5        $
 label_Copy1��5�      $��5��6)   $
��Left=�65   $��88,3,0,6q�6P   $��2��6b   
�������$��1��6�   $��14(�6�   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   ��6r   Z� 6�   �� 5�      -   5        $
 label_Copy2��5�      $��2��6)   $
��Left=�65   $��99,4,0,5q�6P   
�������$��1��6�   $��14(�6�   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   ��6u   Z� 6�   �� 5�      -   5        $
 label_Copy3��5�      $��4��6)   $
��Left=�65   $��11,3,0,6q�6P   $��2��6b   
�������$��1��6�   $��14(�6�   $��Center=�6�   $��Center=�6�   $
��Bold"�6�   ��6�   Z� 6�   5�      � 5�   
   -   5        $ 
timer_Grid��5�      $
��Left=�6#   $	��241��6>   $��420,210,0,-50q�6K   $	��Top=�6b   $	��440��6z   
���   � 5�      �� 5�      .+�5�      �� -   5        $
 
timerLabel��5�      $��00:00��6(   ���	#FFFBFBFB$	��160(�6e   $��Center=�6t   $��Center=�6�    � UseLayoutRounding .  $��5,5,5,0q�6�   $ 0.5,0.5&�6�   $��	0,-30,0,0q�6  ��68   Z� 6  5�      �� 5�   
   -   5          ��Name$  slider��5�      $
��Left=�6!   $��20��6<   $��475,645,0,-264q�6H   $	��Top=�6`   $	��325��6x   ! � Maximum$! 5Q�6�   " � Minimum$" 1Q�6�   5�      5�      