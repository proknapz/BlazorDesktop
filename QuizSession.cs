using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using BlazorDesktop.Models;

[Table("quizsession")]
public class QuizSession
{
    [Key]
    [Column("sessionId")]
    public int SessionId { get; set; }

    [Column("classId")]
    public int ClassId { get; set; }

    [Column("quizbankId")]
    public int QuizBankId { get; set; }

    [Column("isActive")]
    public bool IsActive { get; set; } = true; // default true

    [Column("sessionDate")]
    public DateTime SessionDate { get; set; } = DateTime.Now;

    // Navigation Properties (Optional but nice for EF Core)
    public Class Class { get; set; }
    public QuizBank QuizBank { get; set; }
}
