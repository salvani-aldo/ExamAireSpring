using DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL.Interface
{
    public interface IEmployee
    {
        IEnumerable<EmployeeModel> GetEmployeeList();
        void EmployeeAdd(EmployeeModel model);
        IEnumerable<EmployeeModel> GetEmployeeByLastOrPhone(string searchText);
    }
}
