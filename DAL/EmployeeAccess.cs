using DAL.Interface;
using DTO;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public sealed class EmployeeAccess : DALBase, IEmployeeAccess
    {
        private EmployeeModel MappModel(SqlDataReader reader)
        {
            return new EmployeeModel()
            {
                EmployeeId = int.Parse(reader["EmployeeId"].ToString()),
                FirstName = reader["FirstName"].ToString(),
                LastName = reader["LastName"].ToString(),
                Phone = reader["Phone"].ToString(),
                Zip = int.Parse(reader["Zip"].ToString()),
                HiredDate = DateTime.Parse(reader["HiredDate"].ToString())
            };
        }

        public IEnumerable<EmployeeModel> GetEmployeeByLastOrPhone(string searchText)
        {
            List<EmployeeModel> employeeList = new List<EmployeeModel>();
            string sp = "EmployeeSearchByLastNameOfPhone";

            _sqlCm.CommandText = sp;
            _sqlCm.CommandType = System.Data.CommandType.StoredProcedure;
            _sqlCm.Parameters.Add(new System.Data.SqlClient.SqlParameter()
            {
                Value = searchText,
                ParameterName = "@searchText",
            });

            _dataReader = _sqlCm.ExecuteReader();

            while (_dataReader.Read())
            {
                employeeList.Add(MappModel(_dataReader));
            }

            return employeeList;
        }

        public void EmployeeAdd(EmployeeModel model)
        {
            string sp = "Employee_Add";
            _sqlCm.CommandText = sp;
            _sqlCm.CommandType = System.Data.CommandType.StoredProcedure;

            _sqlCm.Parameters.Add(new System.Data.SqlClient.SqlParameter()
            {
                Value = model.FirstName,
                ParameterName = "@FirstName",
            });
            _sqlCm.Parameters.Add(new System.Data.SqlClient.SqlParameter()
            {
                Value = model.LastName,
                ParameterName = "@LastName"
            });
            _sqlCm.Parameters.Add(new System.Data.SqlClient.SqlParameter()
            {
                Value = model.Phone,
                ParameterName = "@Phone"
            });
            _sqlCm.Parameters.Add(new System.Data.SqlClient.SqlParameter()
            {
                Value = model.Zip,
                ParameterName = "@Zip"
            });
            _sqlCm.Parameters.Add(new System.Data.SqlClient.SqlParameter()
            {
                Value = model.HiredDate,
                ParameterName = "@HiredDate"
            });

            _sqlCm.ExecuteNonQuery();
        }

        public IEnumerable<EmployeeModel> GetEmployeeList()
        {
            List<EmployeeModel> employeeList = new List<EmployeeModel>();

            string sp = "Employee_GetAll";

            _sqlCm.CommandText = sp;
            _sqlCm.CommandType = System.Data.CommandType.StoredProcedure;

            _dataReader = _sqlCm.ExecuteReader();

            while (_dataReader.Read())
            {
                employeeList.Add(MappModel(_dataReader));
            }

            return employeeList;
        }
    }
}
