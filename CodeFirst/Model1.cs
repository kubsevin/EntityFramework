namespace CodeFirst
{
    using System;
    using System.Collections.Generic;
    using System.Data.Entity;
    using System.Linq;

    public class Model1 : DbContext
    {
        
        public Model1()
            : base("name=Model1")
        {
        }

        public virtual DbSet<Student> Students { get; set; }
        public virtual DbSet<Teacher> Teachers { get; set; }
    }
    public class Teacher
    {
        public int Id { get; set; }
        public List<Student> Students;
        public string Name { get; set; }
        
    }
    public class Student
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
    }
}