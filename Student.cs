// written by vishal starting 4/12/2025 CS 4485 

using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Table("student")]
public class Student
{
    public int studentId { get; set; }
    public string utdID { get; set; }
    public string lastName { get; set; }
    public string firstName { get; set; }
    public int classId { get; set; }


    [Column("instructorID")]
    public int instructorId { get; set; }
}