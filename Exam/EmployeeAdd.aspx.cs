using System;

namespace Exam
{
    public partial class EmployeeAdd : System.Web.UI.Page
    {
        private BL.Employee _employee;

        protected void Page_Load(object sender, EventArgs e)
        {
            _employee = new BL.Employee();
        }

        protected void create_Click(object sender, EventArgs e)
        {

            if (string.IsNullOrEmpty(firstName.Text) || string.IsNullOrEmpty(lastName.Text) || string.IsNullOrEmpty(hiredDate.Text))
            {
                return;
            }

            _employee.EmployeeAdd(new DTO.EmployeeModel()
            {
                FirstName = firstName.Text,
                LastName = lastName.Text,
                Zip = zip.Text == "" ? 0 : int.Parse(zip.Text),
                Phone = phoneText.Value,
                HiredDate = DateTime.Parse(hiredDate.Text)
            });

            Response.Redirect("~/Default.aspx");
        }
    }
}