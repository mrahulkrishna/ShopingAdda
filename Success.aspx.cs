using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShopingAdda
{
    public partial class Success : System.Web.UI.Page
    {   protected string CustomerName;
        protected string CustomerPhoneNo;
        protected string CustomerEmailID;
        protected string CustomerAddress;
        protected string CustomerPaymentMode;

        protected void Page_Load(object sender, EventArgs e)
        {
            if ((!string.IsNullOrEmpty(Request.QueryString["txtCustomerName"])) && (!string.IsNullOrEmpty(Request.QueryString["txtCustomerPhoneNo"])) && (!string.IsNullOrEmpty(Request.QueryString["txtCusotmerEmailID"])) && (!string.IsNullOrEmpty(Request.QueryString["txtCustomerAddress"])) && (!string.IsNullOrEmpty(Request.QueryString["Payment"])))
            {
                if (Session["MyCart"] != null)
                {
                    CustomerName = Request.QueryString["txtCustomerName"];
                    CustomerPhoneNo = Request.QueryString["txtCustomerPhoneNo"];
                    CustomerEmailID = Request.QueryString["txtCustomerEmailID"];
                    CustomerAddress = Request.QueryString["txtCustomerAddress"];
                    CustomerPaymentMode = Request.QueryString["payment"];
                    Console.Write(CustomerName + CustomerEmailID + CustomerPhoneNo + CustomerPaymentMode + CustomerAddress);
                }
            }

        }
    }
}