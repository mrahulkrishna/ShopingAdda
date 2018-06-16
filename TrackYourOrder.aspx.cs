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
    public partial class TrackYourOrder : System.Web.UI.Page
    {
        protected string TransactionNo;
        protected void Page_Load(object sender, EventArgs e)
        {

            pnlOrder1.Visible = false;
        }

        
        
        private void ShowOrderDetails(int OrderNo)
        {
            if (IsOrderNovalid(OrderNo))
            {
                GetSetOrderStatus(0);
                pnlOrder1.Visible = true;

            }
            else
            {
                imgNoresult.Visible = true;

                pnlOrder1.Visible = false;
            }
        }

        private void GetSetOrderStatus(int Flag)
        {
           BusinessLogic bl  = new BusinessLogic
            {
                OrderStatus = string.Empty,
                OrderNo = Convert.ToInt32(TransactionNo),
                Flag = Flag
            };
            DataTable dt = bl.GetSetOrderStatus();
            gvOrderStatus.DataSource = dt;
            gvOrderStatus.DataBind();


        }

        private bool IsOrderNovalid(int OrderNo)
        {
            BusinessLogic bl = new BusinessLogic
            
            {
                Flag = OrderNo
            };
            DataTable dtCustomerDetails = bl.GetOrderList();
            if (dtCustomerDetails.Rows.Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        protected void btnTrackOrder_Click(object sender, EventArgs e)
        {
            TransactionNo = txtTransactionNo.Text;
            if (TransactionNo != string.Empty)
            {
                ShowOrderDetails(Convert.ToInt32(TransactionNo));
            }
        }

    }
}