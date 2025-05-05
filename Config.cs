using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Table("config")]
public class Config
{
    [Key] // Marks this property as the primary key
    public int Id { get; set; } // Primary Key

    // Navigation Property
    [ForeignKey("classId")]
    public Class Class { get; set; }

    [Required]
    [StringLength(255)]
    public string dbLocation { get; set; }

    [Required]
    [StringLength(255)]
    public string dbName { get; set; }

    [Required]
    public int QuizDuration { get; set; }

    [Required]
    [StringLength(255)]
    public string CurrentClassPW { get; set; }



}