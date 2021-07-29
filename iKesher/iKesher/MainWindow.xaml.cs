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

        private void rbAddress_Click(object sender, RoutedEventArgs e)
        {
            EditAddressWindow editAddressWindow = new EditAddressWindow();
            editAddressWindow.ShowDialog();
        }

        private void rbAssignedOAuth_Click(object sender, RoutedEventArgs e)
        {
            EditAssignedOAuthWindow editAssignedOAuthWindow = new EditAssignedOAuthWindow();
            editAssignedOAuthWindow.ShowDialog();
        }

        private void rbAtendcType_Click(object sender, RoutedEventArgs e)
        {
            EditAtendcTypeWindow editAtendcTypeWindow = new EditAtendcTypeWindow();
            editAtendcTypeWindow.ShowDialog();
        }

        private void rbCommunication_Click(object sender, RoutedEventArgs e)
        {
            EditCommunicationWindow editCommunicationWindow = new EditCommunicationWindow();
            editCommunicationWindow.ShowDialog();
        }

        private void rbDepartment_Click(object sender, RoutedEventArgs e)
        {
            EditDepartmentWindow editDepartmentWindow = new EditDepartmentWindow();
            editDepartmentWindow.ShowDialog();
        }

        private void rbDescription_Click(object sender, RoutedEventArgs e)
        {
            EditDescriptionWindow editDescriptionWindow = new EditDescriptionWindow();
            editDescriptionWindow.ShowDialog();
        }

        private void rbDoc_Click(object sender, RoutedEventArgs e)
        {
            EditDocWindow editDocWindow = new EditDocWindow();
            editDocWindow.ShowDialog();
        }

        private void rbHostelsManager_Click(object sender, RoutedEventArgs e)
        {
            EditHostelsManagerWindow editHostelsManagerWindow = new EditHostelsManagerWindow();
        }

        private void rbWorkerRole_Click(object sender, RoutedEventArgs e)
        {
            EditWorkerRoleWindow editWorkRoleWindow = new EditWorkerRoleWindow();
            editWorkRoleWindow.ShowDialog();
        }

        private void rbWorkersAggrgsTotal_Click(object sender, RoutedEventArgs e)
        {
            fram.Navigate(new WorkersAggrgsPage());
        }

        private void rbWorkRole_Click(object sender, RoutedEventArgs e)
        {
            EditWorkRoleWindow editWorkRoleWindow = new EditWorkRoleWindow();
            editWorkRoleWindow.ShowDialog();
        }
    }
}
