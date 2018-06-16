using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace ShopingAdda.BusinessDataLayer
{
    public class DataAccess
    {
        public static string ConnectionString
        {
            get
            {
                return ConfigurationManager.ConnectionStrings["Myconn"].ConnectionString.ToString();
            }
        }

        public static SqlParameter AddParameter(String ParameterName, object value, SqlDbType Dbtype, int size)
        {
            SqlParameter param = new SqlParameter();
            param.ParameterName = ParameterName;
            param.Value = value.ToString();
            param.SqlDbType = Dbtype;
            param.Size = size;
            param.Direction = ParameterDirection.Input;
            return param;
        }

        public static DataTable ExecuteDTByProcedure(String ProcedureName, SqlParameter[] p)
        {
            SqlConnection con = new SqlConnection(ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = ProcedureName;
            cmd.Parameters.AddRange(p);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable dTable = new DataTable();

            try
            {
                adapter.Fill(dTable);
            }
            catch (Exception e)
            {
            }
            finally
            {
                adapter.Dispose();
                cmd.Parameters.Clear();
                cmd.Dispose();
                con.Dispose();
            }
            return dTable;
        }

    }

}