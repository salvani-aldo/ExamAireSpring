using DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL.Interface
{
    public interface IEmployeeAccess
    {
        IEnumerable<EmployeeModel> GetEmployeeList();
        void EmployeeAdd(EmployeeModel model);
        IEnumerable<EmployeeModel> GetEmployeeByLastOrPhone(string searchText);
    }
}
