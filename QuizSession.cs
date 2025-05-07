using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using BlazorDesktop.Models; // ✅ Adjust this to your actual namespace

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
    public bool IsActive { get; set; } = true;

    [Column("sessionDate")]
    public DateTime SessionDate { get; set; } = DateTime.Now;

    [Column("startTime")]
    public TimeSpan startTime { get; set; }

    [Column("endTime")]
    public TimeSpan endTime { get; set; }

    // Navigation Properties
    public Class Class { get; set; }
    public QuizBank QuizBank { get; set; }

    [NotMapped]
    public bool IsExpired => DateTime.Now.TimeOfDay > endTime;
}
