using BL.Interface;
using DAL;
using DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL
{
    public sealed class Employee : BLBase, IEmployee
    {
        public Employee() : base(new EmployeeAccess())
        {
        }

        public void EmployeeAdd(EmployeeModel model)
        {
            _employeeAccess.EmployeeAdd(model);
        }

        public IEnumerable<EmployeeModel> GetEmployeeList()
        {
            return _employeeAccess.GetEmployeeList();
        }

        public IEnumerable<EmployeeModel> GetEmployeeByLastOrPhone(string searchText)
        {
            return _employeeAccess.GetEmployeeByLastOrPhone(searchText);
        }
    }
}
