using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace iKesher
{
    /// <summary>
    /// EditDescriptionWindow.xaml 的交互逻辑
    /// </summary>
    public partial class EditDescriptionWindow : Window
    {
        public EditDescriptionWindow()
        {
            InitializeComponent();
            FlowDirection = Base.GetFlowDirection();
            CommandBindings.Add(new CommandBinding(SystemCommands.MinimizeWindowCommand, MimizeWindow));
            CommandBindings.Add(new CommandBinding(SystemCommands.CloseWindowCommand, CloseWindow));
        }

        private void CloseWindow(object sender, ExecutedRoutedEventArgs e)
        {
            DialogResult = false;
        }

        private void MimizeWindow(object sender, ExecutedRoutedEventArgs e)
        {
            WindowState = WindowState.Minimized;
        }
        private void BClose_Click(object sender, RoutedEventArgs e)
        {

        }

        private void BCancel_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
