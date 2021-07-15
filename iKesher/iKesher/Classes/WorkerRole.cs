namespace iKesher
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class WorkerRole
    {
        [Key]
        public int WrkrId { get; set; }

        public int WrkrNum { get; set; }

        public int DeprId { get; set; }

        public int RolId { get; set; }

        public int DateStart { get; set; }

        public int DateEnd { get; set; }

        [Required]
        [StringLength(100)]
        public string Status { get; set; }

        public int CreatedBy { get; set; }

        public long CreatedAt { get; set; }

        public int ChangedBy { get; set; }

        public long ChangedAt { get; set; }
    }
}
