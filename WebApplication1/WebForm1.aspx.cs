﻿using System;
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
            try
            {

                short a = short.Parse(FirstValueTB.Text);
                float b = float.Parse(SecondValueTB.Text);

                switch (OperationLB.SelectedItem.Value)
                {
                    case "+":
                        Response.Write($"<h1> Ответ: {(a + b)} </h1>");
                        break;
                    case "-":
                        Response.Write($"<h1> Ответ: {(a - b)} </h1>");
                        break;
                    case "*":
                        Response.Write($"<h1> Ответ: {(a * b)} </h1>");
                        break;
                    case "/":
                        Response.Write($"<h1> Ответ: {(a / b)} </h1>");
                        break;
                }
            }
            catch
            {
            }
        }

        protected void ValFirst_ServerValidate(object source, ServerValidateEventArgs args)
        {
            try
            {
                double.Parse(FirstValueTB.Text);
            }
            catch (Exception)
            {
                args.IsValid = false;
            }
        }

        protected void ValSecond_ServerValidate(object source, ServerValidateEventArgs args)
        {
            try
            {
                double.Parse(SecondValueTB.Text);
            }
            catch (Exception)
            {
                args.IsValid = false;
            }
        }

        protected void Menu_MenuItemClick(object sender, MenuEventArgs e)
        {
            switch (e.Item.Value)
            {
                case "First value":
                    MultiView.ActiveViewIndex = 0;
                    break;
                case "Operation":
                    MultiView.ActiveViewIndex = 1;
                    break;
                case "Second value":
                    MultiView.ActiveViewIndex = 2;
                    break;
                default:
                    MultiView.ActiveViewIndex = 0;
                    break;

            }
        }
    }
}