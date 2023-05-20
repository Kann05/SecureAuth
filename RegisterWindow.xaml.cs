using System;
using System.Windows;
using System.Data.SQLite;

namespace Auth_System
{
    public static class DatabaseManager
    {
        public static SQLiteConnection CreateConnection()
        {
            string connectionString = "Data Source=MyDatabase.db;Version=3;";
            SQLiteConnection connection = new SQLiteConnection(connectionString);
            connection.Open();
            return connection;
        }
    }

    public partial class RegisterWindow : Window
    {
        private bool IsEmailExists(string email)
        {
            using (SQLiteConnection connection = DatabaseManager.CreateConnection())
            {
                string query = "SELECT COUNT(*) FROM Users WHERE Email = @Email";
                using (SQLiteCommand command = new SQLiteCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Email", email);
                    int count = Convert.ToInt32(command.ExecuteScalar());

                    return count > 0;
                }
            }
        }

        private void Submit_Click(object sender, RoutedEventArgs e)
        {
            string emailInfo = Email.Text.Trim();
            string password1 = PasswordBox1.Password;
            string password2 = PasswordBox2.Password;

            if (IsEmailExists(emailInfo))
            {
                MessageBox.Show("This email is already registered!", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            if (!string.IsNullOrEmpty(emailInfo) && emailInfo.Contains("@") && emailInfo.Length >= 6 && (emailInfo.Contains("com") || emailInfo.Contains("bg")))
            {
                if (!string.IsNullOrEmpty(password1) && !string.IsNullOrEmpty(password2))
                {
                    if (password1.Length >= 6 && password2.Length >= 6)
                    {
                        if (password1 == password2)
                        {
                            try
                            {
                                using (SQLiteConnection connection = DatabaseManager.CreateConnection())
                                {
                                    string createTableQuery = "CREATE TABLE IF NOT EXISTS Users (Email TEXT, Password TEXT)";
                                    using (SQLiteCommand createTableCommand = new SQLiteCommand(createTableQuery, connection))
                                    {
                                        createTableCommand.ExecuteNonQuery();
                                    }
                                    string query = "INSERT INTO Users (Email, Password) VALUES (@Email, @Password)";
                                    using (SQLiteCommand command = new SQLiteCommand(query, connection))
                                    {
                                        command.Parameters.AddWithValue("@Email", emailInfo);
                                        command.Parameters.AddWithValue("@Password", password1);
                                        command.ExecuteNonQuery();
                                    }
                                }

                                MainWindow mainWindow = new MainWindow();
                                mainWindow.Show();
                                Close(); // Close the current RegisterWindow
                            }
                            catch (Exception ex)
                            {
                                MessageBox.Show("An error occurred while accessing the database: " + ex.Message, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                            }
                        }
                        else
                        {
                            MessageBox.Show("Please fill in all fields correctly!", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                        }
                    }
                    else
                    {
                        MessageBox.Show("Password must be 6 or more letters!", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                }
                else
                {
                    MessageBox.Show("Please fill in the password field!", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
            else
            {
                MessageBox.Show("Please fill in the email field!", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        public RegisterWindow()
        {
            InitializeComponent();
        }
    }
}
