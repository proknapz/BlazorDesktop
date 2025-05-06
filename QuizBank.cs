using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
//mxm200063 manoj manivannan
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