using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace calculator1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
    protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            var number = Int32.Parse(TextBox1.Text);
            var number2 = Int32.Parse(TextBox2.Text);
            var result = 0;
            var operation = DropDownList1.SelectedValue;
            if (operation == "0")
            {
                result = number + number2;
            }
            if (operation == "1")
            {
                result = number - number2;
            }
            if (operation == "2")
            {
                result = number * number2;
            }
            if (operation == "3")
            {
                result = number / number2;
            }
            Output.Text= result.ToString();
        }
    }
}