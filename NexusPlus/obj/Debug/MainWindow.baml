   M S B A M L   `   `   `  ����D  @NexusPlus, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:NexusPlus	NexusPlus  5   	       NexusPlus.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:NexusPlus     5   	   b ^MaterialDesignThemes.Wpf, Version=4.1.0.2556, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5          �Name$  Login��5
   	    � WindowStyle$
 None=�5   	    � AllowsTransparency .  � 
ResizeMode$ NoResize=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � Title$ Nexus+��5   	   $	��450��6   $	��700��6%   ��5   	   Z�  � 	Resources 5         WindowWidthAnimation �� 
TargetName �� TargetProperty	 W� From	
 W� To g� Duration W� EasingFunction.  (System.Windows.Media.Animation.CubicEase7  1System.Windows.Media.Animation.EasingFunctionBase   
EasingMode  GlowingTextBox �� 
TargetType  MaterialDesignFilledTextBox �� BasedOn �� Property �� Value �� 
TargetType ��Name �� CornerRadius J� Effect3  -System.Windows.Media.Effects.DropShadowEffect   
BlurRadius   ShadowDepth   Color   Opacity ��Name J� SnapsToDevicePixels ��Name
 � Tag ��Name J� Opacity  �� Triggers! P� Property" P� Value# N� EnterActions	$ �� To	% t� To& g� AutoReverse' g� RepeatBehavior( N� ExitActions) ]� 
Conditions* �� Property+ �� Value, �� 
TargetName  BreatheGlow��%�  &	        &	 s    7  &	 D    �� 5   
   .��5      W� $ MainWin��5      $ Width�5      $	 0X�5      $	
 700X�5      $ 0:0:0.6D�5       5        5      $ EaseOut=�6    5      W� 5       $ MainWin��5!      $ Opacity�5"      $	 0X�5#      $	
 1.0X�5$      $ 0:0:0.4D�5%       5&        5'      $ EaseIn=�6    5)      5*      �� 5,   
   " ��6'   8   .�5-      ��  � �� 5.      �� 5/      " ��6&   .R�50      � .+�52      �� $ border��6%   #��z��53      #��z��54      #��z��55      $ 3��56       57   "     58   &   $ 12Q�67   $ 0Q�6G   $ White��6W   $ 0Q�6e   ._�5:   "   �� $ PART_ContentHost��6/   $��Center=�5;   '   $��8,0,0,0q�5<   '   $��0q�5=   '   
������ # z 5?   '   5@      �� 5C      $ hintTextBlock��6(   #��z 5D       ���	#FF808080$��10,8,0,0q�5F       $y�	Collapsed=�5G       �� 5J      $ animatedCaretRectangle��6(   
�������$	��1.5��6U   $��0��6a   $	 0.0Q�6l   $��Center=�6z   $
��Left=�6�   $��1,0,0,0q�6�   5L        5M      P� 5O      ! �@J�	IsFocused" . # 5P   "   �� 5Q   &   .��5R   *   �� .��5S   .   �� $ border��6=   $2 ,(Border.BorderBrush).(SolidColorBrush.Color)�5T   5   $$ WhiteX�5U   5   $ 0:0:0.3D�6@   W� 5V   .   $ border��6>   $ Effect.ShadowDepth�5W   6   $
 0X�5X   6   $ 0:0:0.3D�6=   W� 5Y   .   $ animatedCaretRectangle��6>   $ Height�5Z   6   $
 17X�5[   6   $ 0:0:0.2D�6>   t� 5\   .   $ animatedCaretRectangle��6A   $ Margin�5]   6   $% 10,0,0,0X�5^   6   $ 	0:0:0.150D�6D   W� 5_   .   $ animatedCaretRectangle��6>   $ Opacity�5`   6   & . $' Forever��6m   $	
 1.0X�5a   6   $ 0:0:0.5D�6?   W� 5b   .   $ border��6>   $ Effect.Opacity�5c   6   $	
 1.0X�5d   6   $ 0:0:0.3D�6?   5e   +   5f   '   ( 5h   "   �� 5i   &   .��5j   *   �� .��5k   .   �� $ border��6=   $2 ,(Border.BorderBrush).(SolidColorBrush.Color)�5l   5   $$ #17171cX�5m   5   $ 0:0:0.2D�6B   W� 5n   .   $ border��6>   $ Effect.ShadowDepth�5o   6   $
 0X�5p   6   $ 0:0:0.2D�6=   W� 5q   .   $ animatedCaretRectangle��6>   $ Height�5r   6   $
 0X�5s   6   $ 	0:0:0.150D�6=   t� 5t   .   $ animatedCaretRectangle��6A   $ Margin�5u   6   $% 1,0,0,0X�5v   6   $ 0:0:0.1D�6C   W� 5w   .   $ animatedCaretRectangle��6>   $ Opacity�5x   6   $	
 0.0X�5y   6   $ 0:0:0.3D�6?   W� 5z   .   $ border��6>   $ Effect.Opacity�5{   6   $
 0X�5|   6   $ 0:0:0.2D�6=   5}   +   5~   '   5�      ]� 5�      ) 5�   "   �� 5�   &   * � ��$+  ��6@   �� 5�   &   * � {�+ . 6E   ./�5�   "   �� $, hintTextBlock��6)    � y�$ Visible=�6Z   5�      5�      5�      �� 5�       �@�ContextMenu 6,   Z� 5�      �� 5�   
   .��5�      W� $		 0.0X�6   $	
 1.0X�6)   $ (Effect).Opacity�62   $ 0:0:2D�5�   "   & . $' Forever��6F   5�      5�      .��5�      #  MaterialDesignThemes.Wpf.Card  -   5        -  Name$- MainWin��5�      $ 0Q�6+   ���	#FF08080a.   UniformCornerRadius$. 3Q�6N   $��0��6f   $	��450��6p   .��5�   
   � .+�5�      �� -   5        / ��Name$/ canvas1��5�      
������ 0 K� ZIndex$0 1��6?   .+�5�      �� -   5        1 ��Name$1 txtUsername��5�      $	��440��6/   $��14(�6;   $ Username��5�      )  #MaterialDesignThemes.Wpf.HintAssist2   Hint$2 Username��5�      $��1q�5�      3 �� 	MaxLength$3 32��5�      #��[ 5�      $��35��5�      ���	#FF0c0c10���#17171c
�������4 �� AcceptsReturn4 .  $��Normal&�5�   0   5 �� MaxLines$5 1��6E   $��10,0,0,0q�6R   6 �� SelectionBrush6 �	#FF404040$��Center=�5�   5   7 �� Left$	7 130��6R   
8 �� Top$	8 129��6d   $��Center=�6u   9 �� 
CaretBrush9 �	#000000006�   �� 5�      -   5        $1 txtPassword��5�      $	��440��6/   $��14(�6;   $ Password��5�      $3 32��5�      $2 Password��5�      $��1q�6D   #��[ 5�      9 �	#00000000$��35��5�      ���	#FF0c0c10���#17171c
�������4 .  $��Normal&�5�   0   $5 1��6E   $��10,0,0,0q�6R   6 �	#FF404040$��Center=�5�   5   $	7 130��6R   $	8 180��6d   $	��Top=�6u   �� 5�      -   5        $1 
txtLicense��5�      $	��440��6.   $��14(�6:   $ License��5�      $3 32��5�      $2 License��5�      $��1q�6C   #��[ 5�      9 �	#00000000$��35��5�      ���	#FF0c0c10���#17171c
�������4 .  $��Normal&�5�   0   $5 1��6E   $��10,0,0,0q�6R   6 �	#FF404040$��Center=�5�   5   $	7 130��6R   $	8 230��6d   $��Center=�6u   �� 5�      -   5        : ��Name$: 	signinbtn��5�      $��SIGN IN��6,     MaterialDesignRaisedButton#��[ 5�      $	��440��5�      $	7 130��5�      $	8 320��5�      
������ 
����������#17171c$��Segoe UI)�5�      $��Normal"�5�      $��16(�5�      ; J� RenderTransformOrigin; 5�      8� 5�      < 8� X$	< 0.5Q�6    = 8� Y$	= 0.5Q�6(   z�5�      �� 5�      > �� ScaleX$> 1Q�6)   ? �� ScaleY$? 1Q�64    5�        HoverStoryboard  HoverEndStoryboard  ClickStoryboard  ClickEndStoryboard��%8  &	       &	 �    &	 p    &	 @    �� 5�      .��5�      W� $ RenderTransform.ScaleX�6.   $

 0.97X�5�      $ 0:0:0.2D�5�      �� 5�      $1 +(Button.Background).(SolidColorBrush.Color)�6-   $$ 	#44ffffffX�5�      $ 0:0:0.2D�5�      �� 5�      $2 ,(Button.BorderBrush).(SolidColorBrush.Color)�6-   $$ 	#44ffffffX�5�      $ 0:0:0.2D�5�      W� 5�      $ RenderTransform.ScaleY�6.   $

 0.97X�5�      $ 0:0:0.2D�5�      5�      �� 5�      .��5�      W� $ RenderTransform.ScaleX�6.   $
 1X�5�      $ 0:0:0.2D�5�      W� 5�      $ RenderTransform.ScaleY�6.   $
 1X�5�      $ 0:0:0.2D�5�      �� 5�      $1 +(Button.Background).(SolidColorBrush.Color)�6-   $$ TransparentX�5�      $ 0:0:0.2D�5�      �� 5�      $2 ,(Button.BorderBrush).(SolidColorBrush.Color)�6-   $$ #17171cX�5�      $ 0:0:0.2D�5�      5�      �� 5�      .��5�      W� $ RenderTransform.ScaleX�6.   $

 0.93X�5�      $ 0:0:0.2D�5�      W� 5�      $ RenderTransform.ScaleY�6.   $

 0.93X�5�      $ 0:0:0.2D�5�      5�      �� 5�      .��5�      W� $ RenderTransform.ScaleX�6.   $

 0.97X�5�      $ 0:0:0.2D�5�      W� 5�      $ RenderTransform.ScaleY�6.   $

 0.97X�5�      $ 0:0:0.2D�5�      5�      5�      @ � Triggers@ 5�      :� 5      A :� RoutedEvent$A 
MouseEnter��6'   .[�5     �� #��[ 6.   5     :� 5     $A 
MouseLeave��6'   .[�5     �� #��[ 6.   5     :� 5     $A PreviewMouseDown��6'   .[�5     �� #��[ 6.   5     :� 5	     $A PreviewMouseUp��6'   .[�5
     �� #��[ 6.   5     5     �� 5     -   5        $: regbtn��5     $��REGISTER��6)   #��[ 5     $	��440��5     $	7 130��5     $	8 360��5     
������ 
����������#17171c$��Segoe UI)�5     $��Normal"�5     $��16(�5     ; 5     8� 5     $	< 0.5Q�6    $	= 0.5Q�6(   z�5#     �� 5$     $> 1Q�6)   $? 1Q�64    5'     ��%8  &	       &	 �    &	 p    &	 @    �� 5(     .��5)     W� $ RenderTransform.ScaleX�6.   $

 0.97X�5*     $ 0:0:0.2D�5+     �� 5,     $1 +(Button.Background).(SolidColorBrush.Color)�6-   $$ 	#44ffffffX�5-     $ 0:0:0.2D�5.     �� 5/     $2 ,(Button.BorderBrush).(SolidColorBrush.Color)�6-   $$ 	#44ffffffX�50     $ 0:0:0.2D�51     W� 52     $ RenderTransform.ScaleY�6.   $

 0.97X�53     $ 0:0:0.2D�54     55     �� 56     .��57     W� $ RenderTransform.ScaleX�6.   $
 1X�58     $ 0:0:0.2D�59     W� 5:     $ RenderTransform.ScaleY�6.   $
 1X�5;     $ 0:0:0.2D�5<     �� 5=     $1 +(Button.Background).(SolidColorBrush.Color)�6-   $$ TransparentX�5>     $ 0:0:0.2D�5?     �� 5@     $2 ,(Button.BorderBrush).(SolidColorBrush.Color)�6-   $$ #17171cX�5A     $ 0:0:0.2D�5B     5C     �� 5D     .��5E     W� $ RenderTransform.ScaleX�6.   $

 0.93X�5F     $ 0:0:0.2D�5G     W� 5H     $ RenderTransform.ScaleY�6.   $

 0.93X�5I     $ 0:0:0.2D�5J     5K     �� 5L     .��5M     W� $ RenderTransform.ScaleX�6.   $

 0.97X�5N     $ 0:0:0.2D�5O     W� 5P     $ RenderTransform.ScaleY�6.   $

 0.97X�5Q     $ 0:0:0.2D�5R     5S     5T     @ 5V     :� 5W     $A 
MouseEnter��6'   .[�5X     �� #��[ 6.   5Y     :� 5Z     $A 
MouseLeave��6'   .[�5[     �� #��[ 6.   5\     :� 5]     $A PreviewMouseDown��6'   .[�5^     �� #��[ 6.   5_     :� 5`     $A PreviewMouseUp��6'   .[�5a     �� #��[ 6.   5b     5d     �� 5g     &   System.Windows.Media.TextOptionsB   TextFormattingMode$B Ideal=�6   C   TextRenderingMode$C 	ClearType=�6C   $	7 256��6m   $
��Wrap=�6   $��NEXUS+��6�   $8 38��6�   D   TextHintingMode$D Fixed=�5h      		 Nevan#��[	 6<   $��45(�6`   
������� 5i       5j     $ 10Q�6+   $ White��6;   $ 0Q�6I   5m     �� 5o     $B Ideal=�6   $C 	ClearType=�6C   $	7 256��6m   $
��Wrap=�6   $��NEXUS+��6�   $8 38��6�   $D Fixed=�5p     #��[	 6=   $��45(�6a   
���������5q     �� 5r     " ��6    .�5s     ��  �@J�Effect 5t  "     5u  &   $ 25Q�67   $ White��6G   $ 0Q�6U   5x     E �� TriggersE 5y     :� 5z  "   $A Loaded��6/   [�5{  &   �� 5|  *   #��[ 6:   5~  #   5�     5�     �� 5�     $	7 130��6   $	8 285��6-   
�������
�������$��Remember Me��5�  .   $��Arial)�6D   $��Center=�6W   $	��Top=�6t   $0 4��6�   5�     �� 5�     -	   5        $/ canvas��5�     $	��700��6%   $	��450��61   
������ $0 0��6W   5�     5�     5�     