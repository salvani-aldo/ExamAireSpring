using DAL.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BL
{
    public abstract class BLBase
    {
        protected readonly IEmployeeAccess _employeeAccess;

        public BLBase(IEmployeeAccess employeeAccess)
        {
            _employeeAccess = employeeAccess;
        }
    }
}
