   M S B A M L   `   `   `  ����  Auth System    Auth_System._2DGame   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   -   5          � Title$  2D Game��5   	   $	��800��6   $	��450��6%    � WindowStartupLocation$ CenterScreen=�6K    � 
ResizeMode$ NoResize=�6p   .��5      �� 
�������.+�5   
   ��  �� Left$	 448��6   
 �� Top$	 138��6"   $	��117��63   $	��297��6@   $
��Bold"�6L   $��20(�6^   $��Center=�6l   $	��Top=�6�   .��6�   You successfully Logged in !5      �� 5   
   -   5         ��Name$ 
gameCanvas��5      $	��800��6%   $	��450��61   $��Center=�6>   $��Center=�6[   .+�5	      �� -   5         ��Name$ 	character��5	      $2��,/Auth System;component/Images/character1.png��6'   $��83��6]   $��66��6h   $	 409��6t   $	 340��6�   �� 5
      -   5        $ Cloud1��5
      $2��,/Auth System;component\Images/CloudImage.png��6$   $
��Left=�6Z   $	��100��6u   $��
261,40,0,0q�6�   $	��Top=�6�   $	��100��6�   �� 5      -   5        $ Cloud2��5      $2��,/Auth System;component\Images/CloudImage.png��6$   $
��Left=�6Z   $	��100��6u   $��	25,31,0,0q�6�   $	��Top=�6�   $	��100��6�   �� 5      -   5        $ Cloud3��5      $2��,/Auth System;component\Images/CloudImage.png��6$   $
��Left=�6Z   $	��100��6u   $��
667,83,0,0q�6�   $	��Top=�6�   $	��100��6�   �� 5      -   5        $ Cloud4��5      $2��,/Auth System;component\Images/CloudImage.png��6$   $
��Left=�6Z   $	��100��6u   $��
518,31,0,0q�6�   $	��Top=�6�   $	��100��6�   �� 5      -   5        $
 Land��5      $.��(/Auth System;component\Images/Ground.png��6"   $
��Left=�6T   $	��100��6o   $��	0,315,0,0q�6|   $	��Top=�6�   $	��133��6�   �� 5      -	   5        $
 Lan1��5      $.��(/Auth System;component\Images/Ground.png��6"   $
��Left=�6T   $	��100��6o   $��130,315,0,0q�6|   $	��Top=�6�   $	��133��6�   �� 5      -
   5        $
 Lan2��5      $.��(/Auth System;component\Images/Ground.png��6"   $
��Left=�6T   $	��100��6o   $��260,315,0,0q�6|   $	��Top=�6�   $	��133��6�   �� 5      -   5        $ Land3��5      $.��(/Auth System;component\Images/Ground.png��6#   $
��Left=�6U   $	��100��6p   $��391,315,0,0q�6}   $	��Top=�6�   $	��133��6�   �� 5      -   5        $ Land4��5      $.��(/Auth System;component\Images/Ground.png��6#   $
��Left=�6U   $	��100��6p   $��521,315,0,0q�6}   $	��Top=�6�   $	��133��6�   �� 5      -   5        $ Land5��5      $.��(/Auth System;component\Images/Ground.png��6#   $
��Left=�6U   $	��100��6p   $��653,315,0,0q�6}   $	��Top=�6�   $	��133��6�   �� 5      -   5        $ tree2��5      $-��'/Auth System;component\Images/tree2.png��6#   $
��Left=�6T   $	��140��6o   $��667,275,0,0q�6|   $	��Top=�6�   $	��133��6�   �� 5      -   5        $ tree3��5      $-��'/Auth System;component\Images/tree2.png��6#   $
��Left=�6T   $	��100��6o   $��536,302,0,0q�6|   $	��Top=�6�   $	��133��6�   �� 5      -   5        $ tree4��5      $-��'/Auth System;component\Images/tree2.png��6#   $
��Left=�6T   $	��100��6o   $��300,313,0,0q�6|   $	��Top=�6�   $	��133��6�   �� 5      -   5        $ tree5��5      $-��'/Auth System;component\Images/tree2.png��6#   $
��Left=�6T   $	��170��6o   $��
11,245,0,0q�6|   $	��Top=�6�   $	��133��6�   �� 5      -   5        $ bush1��5      $,��&/Auth System;component\Images/Bush.png��6#   $
��Left=�6S   $	��170��6n   $��
75,345,0,0q�6{   $	��Top=�6�   $	��133��6�   �� 5      -   5        $ bush2��5      $,��&/Auth System;component\Images/Bush.png��6#   $
��Left=�6S   $	��122��6n   $��351,382,0,0q�6{   $	��Top=�6�   $��58��6�   �� 5      -   5        $ bush3��5      $,��&/Auth System;component\Images/Bush.png��6#   $
��Left=�6S   $	��142��6n   $��616,372,0,0q�6{   $	��Top=�6�   $��78��6�   �� 5      -   5        $ drybush��5      $/��)/Auth System;component\Images/Drybush.png��6%   $
��Left=�6X   $	��143��6s   $��699,332,0,0q�6�   $	��Top=�6�   $	��102��6�   �� 5      -   5        $ 	standBird��5      $1��+/Auth System;component\Images/standBird.png��6'   $
��Left=�6\   $��39��6w   $��345,382,0,0q�6�   $	��Top=�6�   $��30��6�    J� RenderTransformOrigin$ 0.5,0.5&�6�   z�5      V� 5      .~�5      �� �� 5       �� 5!       �� Angle$ -337.785Q�6*   T� 5"      5#      5%      �� 5&      -   5        $
 Bird��5&      $,��&/Auth System;component\Images/Bird.png��6"   $
��Left=�6R   $	��128��6m   $��186,122,0,0q�6z   $	��Top=�6�   $��92��6�   5'      5(      5)      