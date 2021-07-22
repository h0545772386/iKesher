using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace iKesher
{
    class Base
    {
        public static int IntVal(object o)
        {
            if (o == null || o.ToString() == "")
                return 0;
            //int val = 0;
            Int32.TryParse(o.ToString(), out int val);
            return val;
        }
        public static decimal DemicelVal(object o)
        {
            if (o == null || o.ToString() == "")
                return 0;
            //decimal val = 0;
            decimal.TryParse(o.ToString(), out decimal val);
            return val;
        }

        public static FlowDirection GetFlowDirection()
        {
            return FlowDirection.LeftToRight;
        }
    }
}
