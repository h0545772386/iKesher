namespace iKesher
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class WorkersAggrgsTotal
    {
        [Key]
        public int WATId { get; set; }

        public int WrkrNum { get; set; }

        public decimal Total1 { get; set; }

        public decimal Total2 { get; set; }

        public decimal Total3 { get; set; }

        public decimal Total4 { get; set; }

        public decimal Total5 { get; set; }

        public decimal Total6 { get; set; }

        public decimal Total7 { get; set; }

        public decimal Total8 { get; set; }

        [Required]
        [StringLength(100)]
        public string Status { get; set; }

        public int CreatedBy { get; set; }

        public long CreatedAt { get; set; }

        public int ChangedBy { get; set; }

        public long ChangedAt { get; set; }
    }
}
