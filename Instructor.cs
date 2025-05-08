using System;
using System.ComponentModel.DataAnnotations;

public class Instructor
{
    public int instructorID { get; set; }
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string Email { get; set; }
    public string Username { get; set; } 

    public string password { get; set; }
}