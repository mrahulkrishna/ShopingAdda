using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.IO;
using ShopingAdda.BusinessDataLayer;

namespace ShopingAdda
{
    public partial class Single : System.Web.UI.Page
    {   protected int ProductID;
        protected void Page_Load(object sender, EventArgs e)
        { 
            if (!IsPostBack)
            {
               if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
            {
                ProductID = Convert.ToInt32(Request.QueryString["Id"]);
               DataTable dt =  GetProductDetails(ProductID);
               dlProduct.DataSource = dt;
               dlProduct.DataBind();
            }
            
            }

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

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
          // int id = Convert.ToInt32(Request.QueryString["Id"]);

           DataTable dtProducts = GetProductDetails(ProductID);
           String ProductQuantity = "1";
           
            if (Session["MyCart"] != null)
            {    
                DataTable dt = (DataTable)Session["MyCart"];
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
                   // btnShopping.Text = dt.Rows.Count.ToString();
                }
            }
            else
            {  
               
                DataTable dt = new DataTable();
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
               // btnShopping.Text = dt.Rows.Count.ToString();
            }
        }

       
    }
}