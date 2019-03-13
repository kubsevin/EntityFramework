using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseFirstDemo
{
    class Program
    {
        static void Main(string[] args)
        {
            var db = new NorthwindEntities();
            foreach (var product in db.Products)
            {
                Console.WriteLine(product.ProductID + " " + product.ProductName);
            }
            Console.ReadKey();
        }
    }
}
