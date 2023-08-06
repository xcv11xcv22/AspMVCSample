namespace WebApplication4.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class qqq
    {
        [Key]
        public int ud { get; set; }

        [Required]
        [StringLength(50)]
        public string hi { get; set; }

        public int member_id { get; set; }

        public virtual member member { get; set; }
    }
}
