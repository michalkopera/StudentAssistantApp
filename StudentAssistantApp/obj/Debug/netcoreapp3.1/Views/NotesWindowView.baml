   M S B A M L   `   `   `  ����N  JStudentAssistantApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:StudentAssistantApp.ViewsStudentAssistantApp.Views  5      G(clr-namespace:StudentAssistantApp.ModelsStudentAssistantApp.Models  5      b ^Microsoft.VisualBasic.Core, Version=10.0.5.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3aaGclr-namespace:Microsoft.VisualBasic;assembly=Microsoft.VisualBasic.CoreMicrosoft.VisualBasic 5
      /    )StudentAssistantApp.Views.NotesWindowView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      R NCaliburn.Micro.Platform, Version=4.0.0.0, Culture=neutral, PublicKeyToken=null(calhttp://www.caliburnproject.org  5      3local'clr-namespace:StudentAssistantApp.Views  5      5models(clr-namespace:StudentAssistantApp.Models  5      b	 ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes 	 5	      OiGclr-namespace:Microsoft.VisualBasic;assembly=Microsoft.VisualBasic.Core 	 5
      .��5      � 
�������.+�5      ) 	 #MaterialDesignThemes.Wpf.DialogHost  -   5           Name$  
DialogOpen��5   (      IsOpen 6<   �� *IsDialogOpen+   DialogContent 5      � 5      $	��350��6   $	��350��6)   ���#28324b.+�5      �� $
��Open��6   $��0 30 0 0q�6+   $��15(�6>   $��Center=�6L   ���#fff6i   �� 5      $��50 80q�6#   .��5      �� -   5         ��Name$ ListBoxOpen��5   &   $	��3 0q�6Y   ��6;   �� *Notes+��5   "   �� 5   &    �� 
TargetType" ��6,      MaterialDesignListBoxItem �� BasedOn# [  6E    �� Triggers 5   *   P� 5   .    P� Property �@��
IsSelected P� Value$
 True��6L   . �5   2   �� 	 �� Property	 � ��
 �� Value
 �#596b996O   5   /   .�5   *   �� 	 �@�Cursor$

 Hand��6C   5   '   ��5!   "   �� 5"   &   .R�5#   *   ��  ��Name$ SelectedNote��64   ���#fff��6J   �� *
NoteName+6d   5$   '   5&      5'      �� 5(       �� Orientation$ 
Horizontal=�6%   $��0 0 0 40q�6>   $��Center=�6P   $��Bottom=�6m   .+�5)      �� $��Close��6%   $
��15 0q�65   
���   ����#ffb525���#ffb525  Caliburn.Micro.Message   Attach$* $[Event Click] = [Action CloseDialog]��5*   !   �� 5+      $
��Open��6%   $
��15 0q�64   
���   ����#ffb525���#ffb525$B <[Event Click] = [Action LoadNote(ListBoxOpen.SelectedIndex)]��5,   !   5-      5.      .��50      � ���#28324b � RowDefinitions 52      �� 53      $��* �6$   �� 54      $
��Auto �6$   .+�57      �� -   5         ��Name$ 	noteSpace��57   '   $��0��6   $��Stretch=�58      $��Stretch=�59      " �� VerticalScrollBarVisibility$ Visible=�5:       �� AcceptsReturn$
 True��5;      $��0q�5<      $	��5 0q�5>       �� TextWrapping$
 Wrap=�5?       �� 
CaretBrush �#000 �� 
AcceptsTab$
 True��5A      ���#fff��57   :   �� *NoteContent+. 	 (MaterialDesignThemes.Wpf.TextFieldAssist   UnderlineBrush 5=      Z� .��5A   B   5C      �� 5D      $ 
Horizontal=�6   $��1��66   $��Right=�6C   $
��0 15q�6_   .+�5F      �� $��Right=�6   $
��Save��69   $
��15 0q�6H   
���   ����#ffb525���#ffb525$( "[Event Click] = [Action SaveNotes]��5H      $	��120��5I      �� 5K      $��Right=�6   $
��Open��69   $
��15 0q�6H   
���   ����#ffb525���#ffb525$( "[Event Click] = [Action OpenNotes]��5M      $	��120��5N      5P      �� 5R      $ 
Horizontal=�6   $��1��66   $
��Left=�6C   $
��0 15q�6^   .+�5S      �� $��Right=�6   $��Delete��69   $
��15 0q�6J   
����������#e41e1e���#e41e1e$2 ,[Event Click] = [Action DeleteNote($source)]��5U      $	��120��5V       � Cursor$
 Hand��6%   {�5U   [   �� *	IsEditing+5V   %   5W      5Y      5Z        5\      -   5        $  
DialogSave��5\   (    6<   �� *IsDialogSaveOpen+ 5]      � 5^      $	��350��6   $	��350��6)   ���#28324b.+�5_      �� $
��Save��6    $��0 30 0 0q�6/   $��15(�6B   $��Center=�6P   ���#fff6m   �� 5`      $��50 80q�6%   .+�5a      �� $	��0 2q�6&   ) 	 #MaterialDesignThemes.Wpf.HintAssist   Hint$ 	Note name��5b         
HelperText$ Max 20 symbols��5c      
�������
 �����   
Foreground
 �����
 ��������#fff��5a   4   �� *
NoteName+5g      5h      �� 5i      $ 
Horizontal=�6%   $��0 0 0 40q�6>   $��Center=�6P   $��Bottom=�6m   .+�5j      �� $��Close��6%   $
��15 0q�65   
���   ����#ffb525���#ffb525$. ([Event Click] = [Action CloseSaveDialog]��5k   !   �� 5l      $��Accept��6%   $
��15 0q�66   
���   ����#ffb525���#ffb525$' ![Event Click] = [Action SaveNote]��5m   !   5n      5o      5q      5s      5t      