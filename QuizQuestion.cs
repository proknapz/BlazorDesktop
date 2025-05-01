using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
//mxm200063 manoj manivannan
namespace BlazorDesktop.Models
{
    [Table("quizquestions")]
    public class QuizQuestion
    {
        [Key]
        [Column("questionId")]
        public int QuizQuestionId { get; set; }

        [Column("quizbankId")]
        public int? QuizBankId { get; set; }

        [Column("questionText")]
        public string? QuestionText { get; set; }

        [Column("correctAns")]
        public int? CorrectAnswer { get; set; }

        [Column("optionA")]
        public string? OptionA { get; set; }

        [Column("optionB")]
        public string? OptionB { get; set; }

        [Column("optionC")]
        public string? OptionC { get; set; }

        [Column("optionD")]
        public string? OptionD { get; set; }

        [ForeignKey("QuizBankId")]
        public QuizBank QuizBank { get; set; }
    }
}