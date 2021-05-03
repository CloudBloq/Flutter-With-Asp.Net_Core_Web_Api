using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System;

namespace fixit.Models
{
    public class Service
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int ServiceId { get; set; }

        public string ServiceName { get; set; }

        public string Description { get; set; }

        public string Category { get; set; }

        public int InitialPrice { get; set; }

        public int IntermediatePrice { get; set; }

        public int AdvancedPrice { get; set; }

        public DateTime AddedTime {get;set;}




    }

}