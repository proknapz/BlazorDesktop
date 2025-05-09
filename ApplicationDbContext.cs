//written by omar  starting 3/25/2025 CS 4485 
using BlazorDesktop.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;

public class ApplicationDbContext : DbContext
{
    // Constructor that passes options to the base DbContext
    public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
        : base(options)
    { }


    // Define DbSets for your tables (entities)
    public DbSet<Instructor> Instructors { get; set; }

    public DbSet<Student> Students { get; set; }

    public DbSet<Class> Classes { get; set; }

    public DbSet<Config> Configs { get; set; }

    public DbSet<AttendanceRecord> AttendanceRecords { get; set; }


    public DbSet<QuizBank> QuizBanks { get; set; }
    public DbSet<QuizQuestion> QuizQuestions { get; set; }


    public DbSet<QuizSession> QuizSessions { get; set; }

}

