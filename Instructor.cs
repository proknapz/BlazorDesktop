using System;
using System.ComponentModel.DataAnnotations;

public class Instructor
{
    public int InstructorId { get; set; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string Email { get; set; }
    public string Username { get; set; } // Note: In a real-world scenario, you'd want to hash this

    public string Password { get; set; }
}