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
    public partial class CheckOut : System.Web.UI.Page
    {
        protected DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {  
            if (!string.IsNullOrEmpty(Request.QueryString["Id"])) 
            {   
                
               int ProductID = Convert.ToInt32(Request.QueryString["Id"]);
                ProductAddedToCart(ProductID);
                
              }
            else if (!string.IsNullOrEmpty(Request.QueryString["String"]))
            {
                int ProductID = Convert.ToInt32(Request.QueryString["String"]);
                RemoveProductfromCart(ProductID);
            }
            else
            {
                DefaultDisplay();
            }
            UpdateTotalBill();
           
        }

        private void UpdateTotalBill()
        {
            long TotalPrice = 0;
            long TotalProducts = 0;
            foreach (DataListItem item in dlCheckOutList.Items)
            {
                Label PriceLabel = item.FindControl("lblTotalPrice") as Label;
                Label ProductQuantity = item.FindControl("lblTotalProducts") as Label;
                long ProductPrice = Convert.ToInt64(PriceLabel.Text) * Convert.ToInt64(ProductQuantity.Text);
                TotalPrice = TotalPrice + ProductPrice;
                TotalProducts = TotalProducts + Convert.ToInt32(ProductQuantity.Text);
            }
            lblTotalPrice.Text = Convert.ToString(TotalPrice);
            lblTotalProducts.Text = Convert.ToString(TotalProducts);
        }

        private DataTable GetProductDetails(int Id)
        {
            BusinessLogic bl = new BusinessLogic
            {
                ProductID = Id
            };
            DataTable dt = bl.GetProductDetails();
            return dt;
        }

        private void ProductAddedToCart(int ProductID)
        {
           


            DataTable dtProducts = GetProductDetails(ProductID);
            String ProductQuantity = "1";
            if (Session["MyCart"] != null)
            {
                dt = (DataTable)Session["MyCart"];
                var checkProduct = dt.AsEnumerable().Where(r => r.Field<int>("ProductID") == ProductID);
                if (checkProduct.Count() == 0)
                {

                    DataRow dr = dt.NewRow();
                    dr["ProductID"] = ProductID;
                    dr["Name"] = Convert.ToString(dtProducts.Rows[0]["Name"]);

                    dr["Price"] = Convert.ToString(dtProducts.Rows[0]["Price"]);
                    dr["ImageUrl"] = Convert.ToString(dtProducts.Rows[0]["ImageUrl"]);
                    dr["ProductQuantity"] = ProductQuantity;


                    dt.Rows.Add(dr);
                    Session["MyCart"] = dt;


                }
            }
            else
            {

                dt = new DataTable();
                dt.Columns.Add("ProductID", typeof(int));
                dt.Columns.Add("Name", typeof(string));

                dt.Columns.Add("Price", typeof(string));
                dt.Columns.Add("ImageUrl", typeof(string));
                dt.Columns.Add("ProductQuantity", typeof(string));

                DataRow dr = dt.NewRow();
                dr["ProductID"] = ProductID;
                dr["Name"] = Convert.ToString(dtProducts.Rows[0]["Name"]);

                dr["Price"] = Convert.ToString(dtProducts.Rows[0]["Price"]);
                dr["ImageUrl"] = Convert.ToString(dtProducts.Rows[0]["ImageUrl"]);
                dr["ProductQuantity"] = ProductQuantity;


                dt.Rows.Add(dr);
                Session["MyCart"] = dt;


            }


            dlCheckOutList.DataSource = dt;
            dlCheckOutList.DataBind();
            lblCheckoutProDuct.Text = dt.Rows.Count.ToString();
                
        }

        private void RemoveProductfromCart(int ProductID)
        {
            if (Session["MyCart"] != null)
            {
                 dt = (DataTable)Session["MyCart"];
                DataRow drr = dt.Select("ProductID = " + ProductID + " ").SingleOrDefault();
                if (drr != null)
                {
                    dt.Rows.Remove(drr);
                    Session["MyCart"] = dt;
                }

            }
            DefaultDisplay();

        }

        private void DefaultDisplay()
        {

            if (Session["MyCart"] != null)
            {
                 dt = (DataTable)Session["MyCart"];
                if (dt.Rows.Count > 0)
                {
                    dlCheckOutList.DataSource = dt;
                    dlCheckOutList.DataBind();
                    lblCheckoutProDuct.Text = dt.Rows.Count.ToString();
                }
                else
                {

                }

            }
        
        }

        protected void btnRemoveFromCart_Click(object sender, EventArgs e)
        {
        
        }

        protected void txtProductQuantity_TextChanged(object sender, EventArgs e)
        {

            
            TextBox txtQuantity = (sender as TextBox);
            DataListItem currentitem = (sender as TextBox).NamingContainer as DataListItem;
            HiddenField ProductID = currentitem.FindControl("hfProductID") as HiddenField;
           

            if (txtQuantity.Text == string.Empty || txtQuantity.Text == "0" || txtQuantity.Text == "1")
            {
                txtQuantity.Text = "1";
            }
            else
            {
                if (Session["MyCart"] != null)
                {
                    
                        DataTable dt = (DataTable)Session["MyCart"];
                        DataRow[] rows = dt.Select("ProductID ='" + ProductID.Value + "'");
                        int index = dt.Rows.IndexOf(rows[0]);
                        dt.Rows[index]["ProductQuantity"] = txtQuantity.Text;
                        Session["MyCart"] = dt;

                 
                }
            }
           // UpdateTotalBill();
        }
        


        
        
    }
}