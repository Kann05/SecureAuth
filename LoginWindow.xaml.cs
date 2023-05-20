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
using System.Data.SQLite;

namespace Auth_System
{
    public partial class LoginWindow : Window
    {
        private void Submit_Click(object sender, RoutedEventArgs e)
        {
            string email = Email.Text.Trim();
            string password = PasswordBox.Password;

           
            using (SQLiteConnection connection = DatabaseManager.CreateConnection())
            {
                string query = "SELECT COUNT(*) FROM Users WHERE Email = @Email AND Password = @Password";
                using (SQLiteCommand command = new SQLiteCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@Password", password);
                    int count = Convert.ToInt32(command.ExecuteScalar());

                    if (count > 0)
                    {
                        _2DGame game = new _2DGame();
                        game.Show();
                        Close();
                    }
                    else
                    {
                        MessageBox.Show("Invalid email or password!", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                }
            }
        }

        public LoginWindow()
        {
            InitializeComponent();
        }
    }
}
