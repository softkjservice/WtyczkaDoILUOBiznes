   M S B A M L   `   `   `  ����F  BopisPozycji, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:opisPozycjiopisPozycji  5   	       opisPozycji.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:opisPozycji     5   	     � Title$%  Wtyczka do programu ILUO Biznes��5	   	   $	��600��61   $	��920��6>   .��5
      �  J� OpacityMask
 �   ����	#FFE5E5EA.+�5   
   �� -   5         ��Name$ 
labProgram��5      $@��:Znajdź dokumenty handlowe z podanym niżej opisem pozycji��6$   $
��Left=�6g   $��	45,10,0,0q�6�   $	��Top=�6�    J� RenderTransformOrigin$ -0.079,-0.5&�6�   $��16(�6�   ���	#FFD4CFCF6�   �� 5   
   -   5        $ labWprowadz��5      $)��#Wprowadź poszukiwany opis pozycji:��6%   $
��Left=�6R   $��	45,74,0,0q�6m   $	��Top=�6�   �� 5   
   -   5         ��Name$ tbOpis��5      $
��Left=�6"   $��23��6=   $��
265,77,0,0q�6I    �� TextWrapping$
 Wrap=�6]   $�� ��6q   $	��Top=�6y   $	��183��6�   �� 5   
   -   5         ��Name$ butEnter��5      $��Enter��6#   $
��Left=�63   $��
493,80,0,0q�6N   $	��Top=�6b   $��75��6z   $ -2,0.5&�6�   6�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dgWynik��5      $
��Left=�6<   $��
45,137,0,0q�6W   $	��Top=�6k   $	��100��6�   $	��800��6�   ��6$   �� 6�   5      5      