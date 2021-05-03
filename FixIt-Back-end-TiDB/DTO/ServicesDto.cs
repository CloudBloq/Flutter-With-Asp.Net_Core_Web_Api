using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System;

namespace fixit.DTO
{
    public class ServiceDto
    {

        [Required]
        public int ServiceId { get; set; }
        [Required]
        public string ServiceName { get; set; }
        [Required]
        public string Description { get; set; }
        [Required]
        public string Category { get; set; }
        [Required]
        public int InitialPrice { get; set; }
        [Required]
        public int IntermediatePrice { get; set; }
        [Required]
        public int AdvancedPrice { get; set; }
        [Required]
        public DateTime AddedTime { get; set; }





    }
}