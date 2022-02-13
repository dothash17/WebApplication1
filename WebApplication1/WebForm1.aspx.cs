using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Calculate_Click(object sender, EventArgs e)
        {
            var a = FirstValueTB.Text;
            var b = SecondValueTB.Text;
            var c = OperationLB.Text;

            double output = 0;
            switch (c.ToString())
            {
                case "+":
                    output = double.Parse(a) + double.Parse(b);
                    Result.Text = "Ответ: " + output;
                    break;
                case "-":
                    output = double.Parse(a) - double.Parse(b);
                    Result.Text = "Ответ: " + output;
                    break;
                case "*":
                    output = double.Parse(a) * double.Parse(b);
                    Result.Text = "Ответ: " + output;
                    break;
                case "/":
                    output = double.Parse(a) / double.Parse(b);
                    Result.Text = "Ответ: " + output;
                    break;
            }
        }
    }
}