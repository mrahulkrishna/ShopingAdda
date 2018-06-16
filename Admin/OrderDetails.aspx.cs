using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ShopingAdda.BusinessDataLayer;

namespace ShopingAdda.Admin
{
    public partial class OrderDetails : System.Web.UI.Page
    {
        protected string TransactionNo;
        protected void Page_Load(object sender, EventArgs e)
        {
           

            if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
            {
                TransactionNo = Request.QueryString["Id"];
                ShowOrderDetails(Convert.ToInt32(TransactionNo));
            }

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            GetSetOrderStatus(1);
            txtStatus.Text = string.Empty;

        }



        private void ShowOrderDetails(int OrderNo)
        {

            

            if (IsOrderNovalid(OrderNo))
            {



               BusinessLogic k = new BusinessLogic
                {
                    Flag = OrderNo
                };
                DataTable dtCustomerDetails = k.GetOrderList();

                
                lblCstomerName.Text = Convert.ToString(dtCustomerDetails.Rows[0]["CustomerName"]);
                lblCustomerEmailId.Text = Convert.ToString(dtCustomerDetails.Rows[0]["CustomerEmailId"]);
                lblCustomerPhoneNo.Text = Convert.ToString(dtCustomerDetails.Rows[0]["CustomerPhoneNo"]);
                lblCustomerAddress.Text = Convert.ToString(dtCustomerDetails.Rows[0]["CustomerAddress"]);
                lblTotalProducts.Text = Convert.ToString(dtCustomerDetails.Rows[0]["TotalProducts"]);
                lblTotalPrice.Text = Convert.ToString(dtCustomerDetails.Rows[0]["TotalPrice"]);
                lblPaymentMethod.Text = Convert.ToString(dtCustomerDetails.Rows[0]["PaymentMethod"]);

               
              //  dlProducts.DataSource = k.GetTransactionDetails();
              //  dlProducts.DataBind();

                
                GetSetOrderStatus(0);
                txtStatus.Visible = true;
                btnAdd.Visible = true;



            }
        }

        private bool IsOrderNovalid(int OrderNo)
        {
            BusinessLogic k = new BusinessLogic
            {
                Flag = OrderNo
            };
            DataTable dtCustomerDetails = k.GetOrderList();
            if (dtCustomerDetails.Rows.Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }

        }
        

        private void GetSetOrderStatus(int Flag)
        {
           BusinessLogic k = new BusinessLogic
            {
                OrderStatus = txtStatus.Text,
                OrderNo = Convert.ToInt32(TransactionNo),
                Flag = Flag
            };
            DataTable dt = k.GetSetOrderStatus();
            gvOrderStatus.DataSource = dt;
            gvOrderStatus.DataBind();


        }
    }
}