using BL;
using BL.Interface;
using DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SetupGridData();
            }
        }

        private IEnumerable<EmployeeModel> GetEmployee()
        {
            IEmployee employee = new Employee();
            var result = employee.GetEmployeeList();

            return result;
        }

        private void SetupGridData()
        {
            employeeGridView.DataSource = GetEmployee();
            employeeGridView.DataBind();
        }

        protected void create_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/EmployeeAdd");
        }

        protected void search_Click(object sender, EventArgs e)
        {
            IEmployee employee = new Employee();
            var result = employee.GetEmployeeByLastOrPhone(searchBox.Value);

            employeeGridView.DataSource = result;
            employeeGridView.DataBind();
        }
    }
}