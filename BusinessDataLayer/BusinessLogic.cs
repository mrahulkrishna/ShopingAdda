using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace ShopingAdda.BusinessDataLayer
{
    public class BusinessLogic
    {
        public int CategoryID;

        public string UserName;
        public string UserEmailID;
        public string UserMessage;

        public int ProductID;

        public string SearchProducts;

        public string OrderStatus;
        public int OrderNo;
        public int Flag;

        public void GetEnquiry()
        {
            SqlParameter[] parameters = new SqlParameter[3];
            parameters[0] = DataAccess.AddParameter("@UserName", UserName, System.Data.SqlDbType.VarChar, 50);
            parameters[1] = DataAccess.AddParameter("@UserEmailID", UserEmailID, System.Data.SqlDbType.VarChar, 100);
            parameters[2] = DataAccess.AddParameter("@UserMessage", UserMessage, System.Data.SqlDbType.VarChar, 1000);
            DataTable dt = DataAccess.ExecuteDTByProcedure("SA_GetEnquiry", parameters);

        }
        public DataTable GetProductDetails()
        {
            SqlParameter[] parameter = new SqlParameter[1];
            parameter[0] = DataAccess.AddParameter("@ProductID", ProductID, System.Data.SqlDbType.Int, 20);
            DataTable dt = DataAccess.ExecuteDTByProcedure("SA_GetProductDetail", parameter);
            return dt;
        }
        public DataTable GetSearchProucts()
        {
            SqlParameter[] parameter = new SqlParameter[1];
            parameter[0] = DataAccess.AddParameter("@SearchProducts", SearchProducts, System.Data.SqlDbType.VarChar, 150);
            DataTable dt = DataAccess.ExecuteDTByProcedure("SA_SearchProducts", parameter);
            return dt;

        }
        public DataTable GetProducts()
        {
            SqlParameter[] parameter = new SqlParameter[1];
            parameter[0] = DataAccess.AddParameter("@CategoryID", CategoryID, System.Data.SqlDbType.Int, 20);
            DataTable dt = DataAccess.ExecuteDTByProcedure("SA_GetAllProducts", parameter);
            return dt;
        }

        public DataTable GetSetOrderStatus()
        {
            SqlParameter[] parameters = new SqlParameter[3];
            parameters[0] = DataAccess.AddParameter("@TransactionNo", OrderNo, System.Data.SqlDbType.Int, 20);
            parameters[1] = DataAccess.AddParameter("@OrderStatus", OrderStatus, System.Data.SqlDbType.VarChar, 300);
            parameters[2] = DataAccess.AddParameter("@Flag", Flag, System.Data.SqlDbType.Int, 10);
            DataTable dt = DataAccess.ExecuteDTByProcedure("SP_OrderStatus", parameters);
            return dt;
        }
        public DataTable GetOrderList()
        {
            SqlParameter[] parameters = new SqlParameter[1];
            parameters[0] = DataAccess.AddParameter("@flag", Flag, System.Data.SqlDbType.Int, 20);
            DataTable dt = DataAccess.ExecuteDTByProcedure("SP_GetOrderList", parameters);
            return dt;
        }
    }
}