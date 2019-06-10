using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public abstract class DALBase
    {
        protected readonly string _sqlConnectionString;
        protected readonly SqlCommand _sqlCm;
        protected SqlDataReader _dataReader;
        protected readonly SqlConnection _sqlConnection;
        public DALBase()
        {
            _sqlConnectionString = Utilities.Config.GetSqlConnection();
            _sqlCm = new SqlCommand();
            _sqlConnection = new SqlConnection(_sqlConnectionString);
            _sqlCm.Connection = _sqlConnection;
            _sqlConnection.Open();
        }
    }
}
