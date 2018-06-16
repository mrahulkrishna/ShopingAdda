using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ShopingAdda.BusinessDataLayer;

namespace ShopingAdda
{
    public partial class Help : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            BusinessLogic bl = new BusinessLogic
            {
                UserName = txtName.Text,
                UserEmailID = txtYourEmail.Text,
                UserMessage = txtMessage.Text

            };
            bl.GetEnquiry();
            txtName.Text = string.Empty;
            txtYourEmail.Text = string.Empty;
            txtMessage.Text = string.Empty;
            
        }
        
       
    }
}