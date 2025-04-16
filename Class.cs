using System;
using System.ComponentModel.DataAnnotations;

public class Class
{

    public int classId { get; set; } // Primary key, non-nullable by default in EF Core

    public string courseName { get; set; } // Stores the name of the course being taught

    public string courseNumber { get; set; }
}