//written by conan starting 3/26/2025 CS 4485 
using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Table("config")]
public class Config
{
    [Key]  
    public int Id { get; set; }  

  
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