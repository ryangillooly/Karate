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
using System.Windows.Threading;

namespace WpfApplication1
{
	/// <summary>
	/// Interaction logic for MainWindow.xaml
	/// </summary>
	public partial class MainWindow : Window
	{
        private string currentState;
        private int time;
        private int setTime;
        private DispatcherTimer timer1;

       public MainWindow()
		{
			InitializeComponent();
            Loaded += MainWindow_Loaded;

            timer1 = new DispatcherTimer();
            timer1.Interval = new TimeSpan(0, 0, 1);
            timer1.Tick += timer1_tick;

		}

        void MainWindow_Loaded(object sender, RoutedEventArgs e)
        {
  
        }


        //*******************************************************************************//
        // Countdown Timer Section //

        private void startTimer_Button_Click(object sender, RoutedEventArgs e)
        {
            if (timer1.IsEnabled)        //If timer is enabled, break out. Don't allow it to reset m = labeltext. If input is blank or 0 then break out.
            {
                return;                                                                                 //Break out of the startTimer_Button_Click method
            }

            if (currentState == "paused")                                                                             //If currentState  = 1, the pause button has been pressed, and the timer has stopped
            {
                timer1.Start();                                                                         //Re-start the timer from where it left off
                currentState = "running";
                return;                                                                                 //Break out of the startTimer_Button_Click method
            }

            if (currentState == "stopped")
            {
                currentState = "running";
            }

            time = (Convert.ToInt32(slider.Value)*60)+1;
            //time = 6;
            setTime = time;
            timer1.Start();
        }

        private void pauseTimer_Button_Click(object sender, RoutedEventArgs e)
        {
            if (timer1.IsEnabled)
            {
                currentState = "paused"; //currentState is equal to 1 if the pause button has been pressed;
                timer1.Stop();
            }
        }

        private void stopTimer_Button_Click(object sender, RoutedEventArgs e)
        {
            if (timer1.IsEnabled)
            {
                //currentState = 3; //currentState is equal to 3 if the timer is active when pressing RESET
                //m = Convert.ToInt32(inputTime_Textbox.Content);
                timer1.Stop();
            }

                //    currentState = 2; //currentState is equal to 2 if the timer is not active when pressing RESET
            if (currentState == "paused")
            {
                currentState = "stopped";
            }

            time = 0;
            timerLabel.Content = "00:00";
            redScore_Label.Content = "0";
            blueScore_Label.Content = "0";
            timerLabel.Foreground = Brushes.White;
        }

        void timer1_tick(object sender, EventArgs e)
        {

                if (time == 61 || time == 121 || time == 181 || time == 241 || time == 301)
                {
                    time--;
                    timerLabel.Content = string.Format("0{0}:0{1}", time / 60, time % 60);
                }
                else
                { 
                    if (time <= 10)
                    {
                        if (time % 2 == 0)
                        {
                            timerLabel.Foreground = Brushes.Red;
                        }
                        else
                        {
                            timerLabel.Foreground = Brushes.White;
                        }

                        time--;
                        timerLabel.Content = string.Format("0{0}:0{1}", time / 60, time % 60);

                        if (time == 0)
                        {
                            timer1.Stop();
                            MessageBox.Show("Yame");
                        }

                    }
                    else
                    {
                        time--;
                        timerLabel.Content = string.Format("0{0}:{1}", time / 60, time % 60);
                    }
                }
        }


        //*******************************************************************************//
        // Red Team Score //

        int redScore;

        private void punchRed_Button_Click(object sender, RoutedEventArgs e)
        {
            if (timer1.IsEnabled)
            {
                redScore = Convert.ToInt32(redScore_Label.Content) + 1;
                redScore_Label.Content = Convert.ToString(redScore);
            }
        }

        private void chudanKickRed_Button_Click(object sender, RoutedEventArgs e)
        {
            if (timer1.IsEnabled)
            {
                redScore = Convert.ToInt32(redScore_Label.Content) + 2;
                redScore_Label.Content = Convert.ToString(redScore);
            }
        }

        private void jodanKickRed_Button_Click(object sender, RoutedEventArgs e)
        {
            if (timer1.IsEnabled)
            {
                redScore = Convert.ToInt32(redScore_Label.Content) + 3;
                redScore_Label.Content = Convert.ToString(redScore);
            }
        }

        private void sweepRed_Button_Click(object sender, RoutedEventArgs e)
        {
            if (timer1.IsEnabled)
            {
                redScore = Convert.ToInt32(redScore_Label.Content) + 3;
                redScore_Label.Content = Convert.ToString(redScore);
            }
        }

        //*******************************************************************************//
        // Blue Team Score //

        int blueScore;

        private void punchBlue_Button_Click(object sender, RoutedEventArgs e)
        {
            if (timer1.IsEnabled)
            {
                blueScore = Convert.ToInt32(blueScore_Label.Content) + 1;
                blueScore_Label.Content = Convert.ToString(blueScore);
            }
        }

        private void chudanKickBlue_Button_Click(object sender, RoutedEventArgs e)
        {
            if (timer1.IsEnabled)
            {
                blueScore = Convert.ToInt32(blueScore_Label.Content) + 2;
                blueScore_Label.Content = Convert.ToString(blueScore);
            }
        }

        private void jodanKickBlue_Button_Click(object sender, RoutedEventArgs e)
        {
            if (timer1.IsEnabled)
            {
                blueScore = Convert.ToInt32(blueScore_Label.Content) + 3;
                blueScore_Label.Content = Convert.ToString(blueScore);
            }
        }

        private void sweepBlue_Button_Click(object sender, RoutedEventArgs e)
        {
            if (timer1.IsEnabled)
            {
                blueScore = Convert.ToInt32(blueScore_Label.Content) + 3;
                blueScore_Label.Content = Convert.ToString(blueScore);
            }
        }


        //*******************************************************************************//
    }
}
