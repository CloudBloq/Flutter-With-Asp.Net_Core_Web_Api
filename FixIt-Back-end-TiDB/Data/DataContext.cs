
using fixit.Models;
using Microsoft.EntityFrameworkCore;
using MySql.Data.EntityFrameworkCore;
namespace fixit.Data

{
    
    public class DataContext : DbContext
    {
        public DataContext() { }
        public DataContext(DbContextOptions<DataContext> options) : base(options) { }

            public DbSet<Service> Service { get; set; }
        
        }
}

