using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Table("student")]
public class Student
{
    [Key]
    public int StudentId { get; set; }  // Primary Key, Auto-incremented

    [Required]
    [StringLength(50)]
    public string UtdID { get; set; }   // UTD ID, e.g., "1234567890"

    [Required]
    [StringLength(9)]
    public string NetID { get; set; }   // University NetID

    [Required]
    [StringLength(255)]
    public string LastName { get; set; }

    [Required]
    [StringLength(255)]
    public string FirstName { get; set; }

    [Required]
    [StringLength(45)]
    public string Password { get; set; } // Password (should be hashed in production)
}
