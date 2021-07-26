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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace iKesher
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            FlowDirection = Base.GetFlowDirection();
        }

        private void BClose_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void BMini_Click(object sender, RoutedEventArgs e)
        {
            WindowState = WindowState.Minimized;
        }

        private void rbHostel_Click(object sender, RoutedEventArgs e)
        {
            fram.Navigate(new Hostel());
        }

        private void rbReminder_Click(object sender, RoutedEventArgs e)
        {
            fram.Navigate(new RemainderPage());
        }

        private void rbUser_Click(object sender, RoutedEventArgs e)
        {
            fram.Navigate(new UserPage());
        }
    }
}
