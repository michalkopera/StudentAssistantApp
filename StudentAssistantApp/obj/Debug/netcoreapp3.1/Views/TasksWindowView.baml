   M S B A M L   `   `   `  ����N  JStudentAssistantApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:StudentAssistantApp.ViewsStudentAssistantApp.Views  5      b ^Microsoft.VisualBasic.Core, Version=10.0.5.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3aaGclr-namespace:Microsoft.VisualBasic;assembly=Microsoft.VisualBasic.CoreMicrosoft.VisualBasic 5	      /    )StudentAssistantApp.Views.TasksWindowView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      R NCaliburn.Micro.Platform, Version=4.0.0.0, Culture=neutral, PublicKeyToken=null(calhttp://www.caliburnproject.org  5      3local'clr-namespace:StudentAssistantApp.Views  5      b	 ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes 	 5      OiGclr-namespace:Microsoft.VisualBasic;assembly=Microsoft.VisualBasic.Core 	 5	      .��5      � .+�5   
   ) 	 #MaterialDesignThemes.Wpf.DialogHost      IsOpen  6$   �� *IsDialogOpen+   DialogContent 5      � 5      $	��350��6   $	��350��6%   ���#fff.+�5      �� $��Nowe zadanie��6   $��0 30 0 0q�63   $��15(�6F   $��Center=�6T   ���#28324b6q   �� 5      $��50 80q�6!   .+�5      �� -   5         ��Name$ TaskName��5   "   $	��0 2q�64   ) 	 #MaterialDesignThemes.Wpf.HintAssist   Hint$ 	Task name��5         
HelperText$ Max 20 symbols��5      ���#28324b �� 
CaretBrush �#28324b   
Foreground �#28324b. 	 (MaterialDesignThemes.Wpf.TextFieldAssist   UnderlineBrush �#28324b���#28324b��5   B   �� *
TaskName+.��5   8   5      �� 5      -   5        $ TaskExplanation��5   "    �� TextWrapping$
 Wrap=�5   "   $��80��5   "   $��0 50 0 0q�5   "   $ This is a text area��5    "   ���#28324b �#28324b �#28324b �#28324b���#28324b��5   ;   �� *TaskExplanation+5$   "   5%      �� 5&      	 �� Orientation$	 
Horizontal=�6!   $��0 0 0 40q�6:   $��Center=�6L   $��Bottom=�6i   .+�5'      �� $��Close��6!   $
��15 0q�61   
���   ����#ffb525���#ffb525  Caliburn.Micro.Message
   Attach$*
 $[Event Click] = [Action CloseDialog]��5(   !   �� 5)      $��Accept��6!   $
��15 0q�62   
���   ����#ffb525���#ffb525$)
 #[Event Click] = [Action AddNewTask]��5*   !   5+      5,      .��52      � ���#28324b � RowDefinitions 53      �� 54      $��* �6$   �� 55      $
��Auto �6$   .+�58      �� .��5:      �� -   5         ��Name$ 
GridLayout��5:   #   $��0��67   ��6D   �� *Tasks+��5<      �� 5=      .R�5>   "   �  � Orientation$ 
Horizontal=�6,    K� IsItemsHost$
 True��6E   5?      ��5B      �� 5C      .R�5D   "   ��  ��Name$ gbTask��6+      MaterialDesignGroupBox#���   5E   +   $��16q�5F   +   . 	 (MaterialDesignThemes.Wpf.ColorZoneAssist   Mode$ Custom=�5G   +      
Background �#ffb525   
Foreground �#28324b
�������$	��250��5K   +   $	��250��67   
 � Tag 5D   ;   �� *TaskID+��6R   �� *
TaskName+.��5L   &   �� .��5M   *   �� $
��Wrap=�64   ��6H   �� *TaskExplanation+5N   '   ��5Q   &   �� 5R   *   .R�5S   .   �  � ColumnDefinitions 5T   2   �� 5U   6   $��* �6G   �� 5V   6   $
��Auto �6G   .+�5Z   2   �� $��0��6<   ��6L   ��  �� Path$ Header� �� ElementName$ gbTask��' 	 !MaterialDesignThemes.Wpf.PopupBox  5^   2      PlacementMode$ BottomAndAlignRightEdges=�5_   5   $��1��6^   
���   �   ToggleContent 5`   6   ' 	 !MaterialDesignThemes.Wpf.PackIcon  5a   :      Kind$ DotsHorizontal=�6R   ��5b   R   ��  �� RelativeSource �� *FindAncestor+ �� AncestorType materialDesign:PopupBox$ 
Foreground�   PopupContent. 5d   6   ��   Caliburn.Micro.Action   TargetWithoutContext 6>   �� *DataContext+$ 
GridLayout��.@�5e   :   �� $��	Edytować��6F   $2
 ,[Event MouseUp] = [Action EditTask($source)]��5f   F    5e   Y   �� $	 Tag�$ gbTask��5f   F   �� 5g   :   $��Usunąć��6F   $9
 3[Event MouseUp] = [Action DeleteTaskAsync($source)]��5h   F    5g   W   �� $	 Tag�$ gbTask��5h   F   5i   7   5j   3   5m   /   5n   +   5q   #   5r      5t      5v      �� 5y      $��1��6   $��Right=�6&   $��	0 0 50 20q�6B   ���#ffb525 $  MaterialDesignRaisedAccentButton#��[ 5{         OpenDialogCommand#��Z 5|      $	��120��5}       � ToolTip$ Click to add new task!��5~      .��6:   Add new task5�      5�      5�      5�      5�      