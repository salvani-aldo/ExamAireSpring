using System;

namespace DTO
{
    public class EmployeeModel
    {
        public int EmployeeId { get; set; }
        public string LastName { get; set; }
        public string FirstName { get; set; }
        public string Phone { get; set; }
        public int Zip { get; set; }
        public DateTime HiredDate { get; set; }
        public string HiredDateString
        {
            get { return HiredDate.ToShortDateString(); }
        }
    }
}
