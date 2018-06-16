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
    public partial class SearchProduct : System.Web.UI.Page
    {
        protected string SearchProducts;
        protected void Page_Load(object sender, EventArgs e)
        {   
            if (!string.IsNullOrEmpty(Request.QueryString["Search"]))
            {
                SearchProducts = Request.QueryString["Search"];
                BusinessLogic bl = new BusinessLogic
                {
                    SearchProducts = SearchProducts
                };
                DataTable dt = bl.GetSearchProucts();
                dlProduct.DataSource = null;
                dlProduct.DataSource = bl.GetSearchProucts();
                dlProduct.DataBind();

            }
           
        }
    }
}