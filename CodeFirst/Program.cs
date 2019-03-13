using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CodeFirst
{
    class Program
    {
        static void Main(string[] args)
        {
            var m = new Model1();
            var studentList = new List<Student>
            {
                new Student
                {
                    FirstName = "Kübra",
                    LastName = "Sevindi"
                },
                new Student
                {
                    FirstName = "Kübra1",
                    LastName = "Sevindi1"
                },
                new Student
                {
                    FirstName = "Kübra2",
                    LastName = "Sevindi2"
                }

            };
            m.Teachers.Add(new Teacher
            {
                Name = "Nükhet",
                Students = studentList
            });
            m.SaveChanges();
            foreach (var item in m.Teachers.First().Students)
            {
                Console.WriteLine(item.FirstName+ " " +item.LastName);
            }
            Console.ReadLine();
        }
    }
}
