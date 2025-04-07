using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using ShareData;
public class ApplicationDbContext : DbContext
{
    // Constructor that passes options to the base DbContext
    public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
        : base(options)
    { }


    // Define DbSets for your tables (entities)
    public DbSet<Instructor> Instructors { get; set; }

}
