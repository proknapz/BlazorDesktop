using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
[Table("attendancerecord")]
public class AttendanceRecord
{
    [Key]
    public int AttendanceId { get; set; }  // Primary Key, Auto-incremented
    public int StudentId { get; set; }     // Foreign Key to the Student table
    public int ClassId { get; set; }       // Foreign Key to the Class table
    public TimeSpan ArrivalTime { get; set; } // Timestamp for the arrival time
    public bool IsPresent { get; set; }    // Indicates if the student was present (tinyint(1))
    public bool IsExcused { get; set; }    // Indicates if the absence was excused (tinyint(1))
    public DateTime ClassDate { get; set; } // Date of the class
    public string CurrentIP { get; set; }  // IP address of the student

}
