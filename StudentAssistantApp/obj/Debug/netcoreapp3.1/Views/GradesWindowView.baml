   M S B A M L   `   `   `  ����N  JStudentAssistantApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:StudentAssistantApp.ViewsStudentAssistantApp.Views  5      0    *StudentAssistantApp.Views.GradesWindowView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:StudentAssistantApp.Views     5      b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      R NCaliburn.Micro.Platform, Version=4.0.0.0, Culture=neutral, PublicKeyToken=null(calhttp://www.caliburnproject.org  5      $��22(�5
   7   .��5      � .+�5   
   )  #MaterialDesignThemes.Wpf.DialogHost      IsOpen  6$   �� *IsDialogOpen+   DialogContent 5      � 5      $	��350��6   $	��350��6%   ���#fff.+�5      �� $��Zarządzanie oceną��6   $��0 30 0 0q�68   $��15(�6K   $��Center=�6Y   ���#28324b6v   �� 5      $��50 80q�6!   .+�5      �� -   5         ��Name$ gradeBox��5   "   $	��0 2q�64   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Grade��5      ���#28324b �� 
CaretBrush �#28324b   
Foreground �#28324b.  (MaterialDesignThemes.Wpf.TextFieldAssist   UnderlineBrush �#28324b���#28324b��5   B   �� *Grade+   
HelperText 5      �� *HelperTextGrade+.��5   8   5      �� 5      -   5        $ wageBox��5   "   $	��0 2q�63   $��0 30 0 0q�6A   $
 Wage��5      $% Put value from interval 0 - 100��5      ���#28324b �#28324b �#28324b �#28324b���#28324b��5   S   �� *Wage+.��5#   8   5$      �� 5%      -   5         ��Name$ typesBox��5%   #   $
 Type��5&   #   $ Select type��5'   #   $	��0 2q�5(   I   $��0 30 0 0q�6W   ���#28324b �#28324b���#28324b	 �� SelectedItem	 5%   5   �� 
 �� Path$
 SelectedType� �� Mode$ OneWayToSource=���5(   #   �� *TypesOfGrades+5*   #   5+      �� 5-       �� Orientation$ 
Horizontal=�6!   $��0 0 0 40q�6:   $��Center=�6L   $��Bottom=�6i   .+�5.      �� $��Close��6!   $
��15 0q�61      CloseDialogCommand#��Z 6?   �� 5/      $��Accept��6!   $
��15 0q�62     Caliburn.Micro.Message   Attach$G A[Event Click] = [Action AddNewGrade(gradeBox.Text, wageBox.Text)]��6@   50      52      .��56      � ���#28324b � RowDefinitions 58      �� 59      $��* �6$   �� 5:      $
��Auto �6$    � ColumnDefinitions 5<      �� 5=      $��* �6'   .+�5A      �� .��5B      �� -   5         ��Name$ 
GridLayout��5B   #   $��0��6X   $��0��6h   
�������$��	20 20 0 0q�6�   ��67   �� *
Subjects+��5C      �� 5D      .R�5E   "   �� .+�5G   &   �� $ 
Horizontal=�61   $��0 0 0 20q�6J   .+�5H   *   ��  ��Name$ 
txtSubject��64   ��6H   �� *SubjectName+�� 5I   *    ��Name$ ButtonToAddNewGrade��61   $: 4[Event Click] = [Action OpenDialog(txtSubject.Text)]��5J   1    � ToolTip$ Add new grade��5K   1    J� Opacity$	 0.5Q�6`   ���#28324b���#fff$��25��5L   X   $��25��6c   $��0q�6o   $��15 0 0 0q�6{   ��5I   N   0  *MaterialDesignThemes.Wpf.PackIconExtension  *Plus+��5K   I   Z� 5L   {   5M   '   �� 5O   &   ��63   �� *Grades+��5R   *   �� 5S   .   .R�5T   2   �  � Orientation$ 
Horizontal=�6<   $��0 0 0 20q�6V   5U   /   ��5X   *   �� 5Y   .   .R�5Z   2   �� $ btnGrade��6h   $��50��69   $��50��6D   $��0 0 8 8q�5[   5   $��0q�6F   ���#ffb525���#28324b$��22(�6|   
 � Tag 5Z   P   �� *	GradeId+.��5\   6   '  !MaterialDesignThemes.Wpf.PopupBox     PlacementMode$ BottomAndAlignLeftEdges=�5]   5   
���   �   ToggleContent 5^   :   �� 5_   >    �� Padding$ 12q�6d   ��6H   �� *
GradeValue+��5`   H   ��  �� RelativeSource �� *FindAncestor+ �� AncestorType materialDesign:PopupBox$
 
Foreground�   PopupContent. 5b   :   �� $��15(�6�     Caliburn.Micro.Action   TargetWithoutContext 6B   �� *DataContext+ �� ElementName$ 
GridLayout��.@�5c   >   �� $��	Edytować��6J   $D >[Event MouseUp] = [Action EditGrade($source, txtSubject.Text)]��5d   F    5c   ]   �� $	
 Tag�$ btnGrade��5d   F   �� 5e   >   $��Usunąć��6J   $5 /[Event MouseUp] = [Action DeleteGrade($source)]��5f   F    5e   [   �� $	
 Tag�$ btnGrade��5f   F   5g   ;   5h   7   5i   3   5k   /   5o   '   5p   #   5q      5s      5t      �� 5x      $ 
Horizontal=�6   $��0��66   $��1��6F   $��	0 0 30 30q�6S   $��Right=�6f   .+�5y      �� $ Vertical=�6!   $��0 0 0 0q�68   .+�5z      �� -   5        $ 
AddSubject��5z   !   $��Add subject��65   $	��150��6K   ���#ffb525���#28324b$��0 0 0 10q�5{   H   $) #[Event Click] = [Action AddSubject]��5|      �� 5~      -   5        $ 
NewSubject��5~   "   
�������$	��150��6I   $��2q�6U   ���#28324b$��16(�5   2   5�      �� 5�      $ Vertical=�6!   $��20 0 0 0q�68   .+�5�      �� -   5        $ RemoveSubject��5�   !   $��Remove subject��68   $	��150��6Q   ���#ffb525���#28324b$��0 0 0 10q�5�   G   $, &[Event Click] = [Action RemoveSubject]��5�      �� 5�      -   5        $ TrashSubject��5�   #     � Cursor$
  Hand��6Z   $	��150��5�      
�������$��Center=�6>   $��5q�6`   ��5�   9   �� *
Subjects+! �� SelectedIndex! 6h   �� *SelectedItemToRemove+��5�      �� 5�   "   .R�5�   &   �� ���#28324b$��16(�6b   ��60   �� *SubjectName+6b   5�   #   5�      5�      5�      5�      5�      5�      5�      