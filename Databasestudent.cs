using Microsoft.AspNetCore.Mvc;
using MySql.Data.MySqlClient;
using Microsoft.Extensions.Configuration;
//written by Vishal Koundinya vrk200000 4/8/2025 (tests)
[ApiController]
[Route("api/[controller]")]
public class StudentController : ControllerBase
{
    private readonly IConfiguration _config;
    public StudentController(IConfiguration config)
    {
        _config = config;
    }
    [HttpPost("import-csv")]
    public async Task<IActionResult> ImportFromCsv([FromBody] List<Student> students)
    {
        if (students == null || students.Count == 0)
            return BadRequest("Nothing was inputted");
        //DB connection
        using var connect = new MySqlConnection(_config.GetConnectionString("DefaultConnection"));
        await connect.OpenAsync();

        //inserts the students into the DB from instuctor
        foreach (var stu in students)
        {
            var sqlcom = new MySqlCommand("INSERT INTO student (studentID, utdID, netID, lastName, firstName) VALUES (@studentId, @utdID, @netID, @last, @first)", connect);
            sqlcom.Parameters.AddWithValue("@studentId", stu.studentId);
            sqlcom.Parameters.AddWithValue("@utdID", stu.utdID);
            sqlcom.Parameters.AddWithValue("@netID", stu.netID);
            sqlcom.Parameters.AddWithValue("@first", stu.firstName);
            sqlcom.Parameters.AddWithValue("@last", stu.lastName);
            await sqlcom.ExecuteNonQueryAsync();
        }

        return Ok(new { inserted = students.Count });
    }

    public class Student
    {
        public string studentId { get; set; }
        public string utdID { get; set; }
        public string netID { get; set; }
        public string firstName { get; set; }
        public string lastName { get; set; }
    }
}
