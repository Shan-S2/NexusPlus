using System;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Shapes;
using System.Windows.Media.Effects;
using System.Windows.Input;

namespace NexusPlus
{
    public partial class MainWindow : Window
    {
        private readonly Random _random = new Random();
        private readonly List<AnimatedTriangle> _triangles = new List<AnimatedTriangle>();


        private const int _triangleCount = 7; //Number of triangles

        public MainWindow()
        {
            InitializeComponent();

            // Add event handlers for textboxes
            txtUsername.TextChanged += TextBox_TextChanged;

            txtPassword.TextChanged += TextBox_TextChanged;

            txtLicense.TextChanged += TextBox_TextChanged;

            Loaded += Main_Load;
        }

        private void Main_Load(object sender, RoutedEventArgs e)
        {
            InitializeTriangles();
            CompositionTarget.Rendering += CompositionTarget_Rendering;
            Storyboard storyboard = (Storyboard)this.Resources["WindowWidthAnimation"];
            storyboard.Begin(this);

        }

        private void Window_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Delete)
            {
                Application.Current.Shutdown();
            }
        }

        protected override void OnMouseLeftButtonDown(MouseButtonEventArgs e)
        {
            base.OnMouseLeftButtonDown(e);
            DragMove();
        }

        private void TextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            UpdateCaretPosition((TextBox)sender);
        }

        private void UpdateCaretPosition(TextBox textBox) //Smooth caret movement
        {
            var caretIndex = textBox.CaretIndex;
            var rect = textBox.GetRectFromCharacterIndex(caretIndex, true);

            var caretRectangle = FindCaretRectangle(textBox);

            if (caretRectangle != null)
            {
                var targetMargin = new Thickness(rect.X, 0, 0, 0);

                var marginAnimation = new ThicknessAnimation
                {
                    To = targetMargin,
                    Duration = TimeSpan.FromMilliseconds(100),
                    EasingFunction = new QuadraticEase()
                };

                caretRectangle.BeginAnimation(Rectangle.MarginProperty, marginAnimation);
            }
        }

        private Rectangle FindCaretRectangle(TextBox textBox)
        {
            var template = textBox.Template;
            var animatedCaretRectangle = template.FindName("animatedCaretRectangle", textBox) as Rectangle;
            return animatedCaretRectangle;
        }


        private void regbtn_Click(object sender, RoutedEventArgs e)
        {

        }

        private void InitializeTriangles()
        {
            for (int i = 0; i < _triangleCount; i++)
            {
                var triangle = CreateTriangle();
                _triangles.Add(triangle);
                canvas.Children.Add(triangle.Polygon);
            }
        }

        private AnimatedTriangle CreateTriangle()
        {
            double size = _random.Next(3, 12); //Random triangle size between 3 and 12
            double xPos = _random.NextDouble() * (canvas.ActualWidth - size) + (size / 2);
            var triangle = new Polygon
            {
                Points = new PointCollection
                {
                    new Point(size / 2, 0),
                    new Point(size, Math.Sqrt(3) / 2 * size),
                    new Point(0, Math.Sqrt(3) / 2 * size)
                },
                Fill = Brushes.White,
                Effect = new DropShadowEffect //Triangle outer glow.
                {
                    Color = Colors.White,
                    BlurRadius = 13,
                    ShadowDepth = 0,
                    Direction = 0,
                    Opacity = 0.7
                }
            };

            var animatedTriangle = new AnimatedTriangle(triangle, size, _random, xPos);
            animatedTriangle.StartRotationAnimation(_random);
            return animatedTriangle;
        }


        private void CompositionTarget_Rendering(object sender, EventArgs e)
        {
            foreach (var triangle in _triangles)
            {
                triangle.UpdatePosition(canvas.ActualWidth, canvas.ActualHeight, _random);
                Canvas.SetLeft(triangle.Polygon, triangle.X);
                Canvas.SetTop(triangle.Polygon, triangle.Y);
            }
        }

    }

    public class AnimatedTriangle
    {
        public Polygon Polygon { get; }
        public double X { get; private set; }
        public double Y { get; private set; }
        private readonly double _size;
        private double _deltaX;
        private double _deltaY;
        private Point _rotationCenter;

        public AnimatedTriangle(Polygon polygon, double size, Random random, double xPos)
        {
            Polygon = polygon;
            _size = size;
            X = xPos;
            Y = -_size;

            double angle = random.Next(80, 111) + (random.NextDouble() - 0.5) * 20;  //Random travelling angle
            double radians = Math.PI * angle / 180;
            double speed = random.NextDouble() * 8 + 1;
            _deltaX = speed * Math.Cos(radians);
            _deltaY = speed * Math.Sin(radians);


            _rotationCenter = new Point(size / 2, Math.Sqrt(3) / 2 * size / 2);  //Calculate rotation center to spin itself
        }

        public void UpdatePosition(double canvasWidth, double canvasHeight, Random random)
        {
            X += _deltaX;
            Y += _deltaY;

            if (Math.Abs(_deltaX) < 0.1)
            {
                ResetPosition(random, canvasWidth);
                return;
            }

            if (Y >= canvasHeight || X + _size < 0 || X > canvasWidth)
            {
                ResetPosition(random, canvasWidth);
            }
        }

        private void ResetPosition(Random random, double canvasWidth)
        {
            double angle;
            double radians;
            do
            {
                X = random.NextDouble() * (canvasWidth - _size) + (_size / 2);
                Y = -_size;
                angle = random.Next(80, 111) + (random.NextDouble() - 0.5) * 20;
                radians = Math.PI * angle / 180;
            } while (Math.Abs(Math.Cos(radians)) < 0.1);
            double speed = random.NextDouble() * 8 + 1;
            _deltaX = speed * Math.Cos(radians);
            _deltaY = speed * Math.Sin(radians);
        }

        public void StartRotationAnimation(Random random)
        {
            var rotationAnimation = new DoubleAnimation
            {
                From = 360,
                To = 0,
                Duration = TimeSpan.FromSeconds(random.Next(3, 8)),  //Spinning speed
                RepeatBehavior = RepeatBehavior.Forever
            };

            var rotationCenterX = _rotationCenter.X;
            var rotationCenterY = _rotationCenter.Y;

            var rotateTransform = new RotateTransform
            {
                CenterX = rotationCenterX,
                CenterY = rotationCenterY
            };

            Polygon.RenderTransform = rotateTransform;
            rotateTransform.BeginAnimation(RotateTransform.AngleProperty, rotationAnimation);
        }
    }
}
