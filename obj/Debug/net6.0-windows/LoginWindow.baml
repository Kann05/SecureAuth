   M S B A M L   `   `   `  ����F  BAuth System, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:Auth_SystemAuth_System  5   	       Auth_System.LoginWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:Auth_System     5   	     � Title$  LoginWindow��5   	   $	��450��6   $	��800��6*    � WindowStartupLocation$ CenterScreen=�66    � 
ResizeMode$ NoResize=�6[   .��5	      � ���	#FF336699.+�5
   
   �� $��Center=�6   $��Center=�62   .+�5      �� $��LogIn Info:��6   $��20(�6*   $��Center=�68   $
��Bold"�6U   �� 5      $��Enter Email:��6   $
��Bold"�6+   �� 5      -   5         ��Name$ Email��5      $	��200��6%   $	��0 5q�61   $
��Bold"�6>   �� 5      $��Enter Password:��6   $
��Bold"�6.   G� 5      -   5         G�Name$ PasswordBox��5      $	��200��6/   $	��0 5q�6;   $
��Bold"�6H   �� 5      $'��!I agree with the terms of service��6   $
��Bold"�6C   �� 5      -   5        $��Submit��5      $	��100��6&   $
��0 10q�62   $
��Bold"�6@   6R   5      �� 5   
   -   5         ��Name$ Cloud1��5      $2��,/Auth System;component\Images/CloudImage.png��6    $
��Left=�6V   $	��100��6q   $��
261,40,0,0q�6~   $	��Top=�6�   $	��100��6�   �� 5   
   -   5        $ Cloud2��5      $2��,/Auth System;component\Images/CloudImage.png��6    $
��Left=�6V   $	��100��6q   $��	25,31,0,0q�6~   $	��Top=�6�   $	��100��6�   �� 5   
   -   5        $ Cloud3��5      $2��,/Auth System;component\Images/CloudImage.png��6    $
��Left=�6V   $	��100��6q   $��
667,83,0,0q�6~   $	��Top=�6�   $	��100��6�   �� 5   
   -   5        $ Cloud4��5      $2��,/Auth System;component\Images/CloudImage.png��6    $
��Left=�6V   $	��100��6q   $��
518,31,0,0q�6~   $	��Top=�6�   $	��100��6�   �� 5   
   -   5        $
 Land��5      $.��(/Auth System;component\Images/Ground.png��6   $
��Left=�6P   $	��100��6k   $��	0,315,0,0q�6x   $	��Top=�6�   $	��133��6�   �� 5   
   -	   5        $
 Lan1��5      $.��(/Auth System;component\Images/Ground.png��6   $
��Left=�6P   $	��100��6k   $��130,315,0,0q�6x   $	��Top=�6�   $	��133��6�   �� 5   
   -
   5        $
 Lan2��5      $.��(/Auth System;component\Images/Ground.png��6   $
��Left=�6P   $	��100��6k   $��260,315,0,0q�6x   $	��Top=�6�   $	��133��6�   �� 5   
   -   5        $ Land3��5      $.��(/Auth System;component\Images/Ground.png��6   $
��Left=�6Q   $	��100��6l   $��391,315,0,0q�6y   $	��Top=�6�   $	��133��6�   �� 5   
   -   5        $ Land4��5      $.��(/Auth System;component\Images/Ground.png��6   $
��Left=�6Q   $	��100��6l   $��521,315,0,0q�6y   $	��Top=�6�   $	��133��6�   �� 5   
   -   5        $ Land5��5      $.��(/Auth System;component\Images/Ground.png��6   $
��Left=�6Q   $	��100��6l   $��653,315,0,0q�6y   $	��Top=�6�   $	��133��6�   �� 5   
   -   5        $ tree2��5      $-��'/Auth System;component\Images/tree2.png��6   $
��Left=�6P   $	��140��6k   $��667,275,0,0q�6x   $	��Top=�6�   $	��133��6�   �� 5   
   -   5        $ tree3��5      $-��'/Auth System;component\Images/tree2.png��6   $
��Left=�6P   $	��100��6k   $��536,302,0,0q�6x   $	��Top=�6�   $	��133��6�   �� 5   
   -   5        $ tree4��5      $-��'/Auth System;component\Images/tree2.png��6   $
��Left=�6P   $	��100��6k   $��300,313,0,0q�6x   $	��Top=�6�   $	��133��6�   �� 5    
   -   5        $ tree5��5       $-��'/Auth System;component\Images/tree2.png��6   $
��Left=�6P   $	��170��6k   $��
11,245,0,0q�6x   $	��Top=�6�   $	��133��6�   �� 5!   
   -   5        $ bush1��5!      $,��&/Auth System;component\Images/Bush.png��6   $
��Left=�6O   $	��170��6j   $��
75,345,0,0q�6w   $	��Top=�6�   $	��133��6�   �� 5"   
   -   5        $ bush2��5"      $,��&/Auth System;component\Images/Bush.png��6   $
��Left=�6O   $	��122��6j   $��351,382,0,0q�6w   $	��Top=�6�   $��58��6�   �� 5#   
   -   5        $ bush3��5#      $,��&/Auth System;component\Images/Bush.png��6   $
��Left=�6O   $	��142��6j   $��616,372,0,0q�6w   $	��Top=�6�   $��78��6�   �� 5$   
   -   5        $ drybush��5$      $/��)/Auth System;component\Images/Drybush.png��6!   $
��Left=�6T   $	��143��6o   $��699,332,0,0q�6|   $	��Top=�6�   $	��102��6�   �� 5%   
   -   5        $ 	standBird��5%      $1��+/Auth System;component\Images/standBird.png��6#   $
��Left=�6X   $��39��6s   $��345,382,0,0q�6   $	��Top=�6�   $��30��6�    J� RenderTransformOrigin$ 0.5,0.5&�6�   z�5&      V� 5'      .~�5(      �� �� 5)      �� 5*       �� Angle$ -337.785Q�6&   T� 5+      5,      5.      �� 5/   
   -   5        $
 Bird��5/      $,��&/Auth System;component\Images/Bird.png��6   $
��Left=�6N   $	��128��6i   $��680,181,0,0q�6v   $	��Top=�6�   $��92��6�   50      51      