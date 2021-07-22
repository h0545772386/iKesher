using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Controls;
using System.Windows.Input;

namespace iKesher
{
    class NumberTextBox:TextBox
    {
        public int IntValue
        {
            get
            {
                try
                {
                    string txt = "";
                    Dispatcher.Invoke(() => {
                        txt = Text;
                    });
                    return Base.IntVal(txt);
                }
                catch
                {
                    return 0;
                }
            }
        }
        public decimal DemicalValue
        {
            get
            {
                try
                {
                    string txt = "";
                    Dispatcher.Invoke(() => {
                        txt = Text;
                    });
                    return Base.DemicelVal(txt);
                }
                catch
                {
                    return 0;
                }
            }
        }
        protected override void OnInitialized(EventArgs e)
        {
            VerticalContentAlignment = System.Windows.VerticalAlignment.Center;
            base.OnInitialized(e);
        }
        protected override void OnPreviewTextInput(TextCompositionEventArgs e)
        {
            //string s = e.Text;
            //if (s.Contains("."))
            //{
            //    s.Replace(".", "");
            //}
            //e.Handled = !int.TryParse(s, out int i);
            Regex re = new Regex("[^0-9.-]+");
            e.Handled = re.IsMatch(e.Text);

            base.OnPreviewTextInput(e);
        }

    }
}
