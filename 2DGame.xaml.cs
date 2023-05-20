using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Shapes;
using System.Windows.Threading;

namespace Auth_System
{
    public partial class _2DGame : Window
    {
        private const double CharacterSpeed = 5;
        private const double JumpHeight = 17;
        private const double Gravity = 1;

        private bool isJumping = false;
        private double jumpVelocity = 0;

        public _2DGame()
        {
            InitializeComponent();

            // Set up game loop
            DispatcherTimer gameTimer = new DispatcherTimer();
            gameTimer.Interval = TimeSpan.FromMilliseconds(10);
            gameTimer.Tick += GameLoop;
            gameTimer.Start();
        }

        private void GameLoop(object sender, EventArgs e)
        {
            // Update character position
            double characterLeft = Canvas.GetLeft(character);

            if (Keyboard.IsKeyDown(Key.A))
            {
                characterLeft -= CharacterSpeed;
            }
            if (Keyboard.IsKeyDown(Key.D))
            {
                characterLeft += CharacterSpeed;
            }

            // Apply gravity and check for jump
            if (isJumping)
            {
                jumpVelocity -= Gravity;
                double characterTop = Canvas.GetTop(character);
                characterTop -= jumpVelocity;

                if (characterTop >= 350)
                {
                    characterTop = 350;
                    isJumping = false;
                }

                Canvas.SetTop(character, characterTop);
            }

            // Update character position
            Canvas.SetLeft(character, characterLeft);
        }

        private void Window_KeyDown(object sender, KeyEventArgs e)
        {
            // Start jump on Spacebar press
            if (e.Key == Key.Space && !isJumping)
            {
                isJumping = true;
                jumpVelocity = JumpHeight;
            }
        }
    }
}
