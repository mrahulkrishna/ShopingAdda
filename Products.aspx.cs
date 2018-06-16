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
    public partial class Products : System.Web.UI.Page
    {
        protected int ID;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
            {
                ID = Convert.ToInt32(Request.QueryString["Id"]);
                GetProducts(ID);
            }
            else
            {
                GetProducts(0);
            }
        }

        private void GetProducts(int CategoryID)
        {
            BusinessLogic bl = new BusinessLogic
            {
                CategoryID = CategoryID

            };

            DataTable dt = bl.GetProducts();
            dlProducts.DataSource = dt;
            dlProducts.DataBind();
            
        }

       

    }
}