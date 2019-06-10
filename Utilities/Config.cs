using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Utilities
{
    public static class Config
    {
        public static string GetSqlConnection()
        {
            var connection = ConfigurationManager.ConnectionStrings["information"].ConnectionString;

            return connection;
        }
    }
}
