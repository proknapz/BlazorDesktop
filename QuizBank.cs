//written by manoj starting 4/12/2025 CS 4485 
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BlazorDesktop.Models
{
    [Table("quizbank")]
    public class QuizBank
    {
        [Key]
        [Column("quizbankId")]
        public int QuizBankId { get; set; }

        [Column("bankName")]
        public string? Title { get; set; }

        public ICollection<QuizQuestion> Questions { get; set; }
    }
}