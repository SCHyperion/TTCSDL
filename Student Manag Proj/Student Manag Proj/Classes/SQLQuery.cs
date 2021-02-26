using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Data.Common;

namespace Student_Manag_Proj.Classes
{
    class SQLQuery
    {
        public static string source = @"Data Source=localhost\SQLEXPRESS; Database=CuaHangTienLoi; Integrated Security=true;";
        public static SqlConnection connection;
        public void Connect()
        {
            connection = new SqlConnection(source);
            connection.Open();
        }
        public bool checkConnection()
        {
            if (connection.State == ConnectionState.Open) return true;
            else return false;
        }
        public void Disconnect()
        {
            connection.Close();
        }
    }
}
