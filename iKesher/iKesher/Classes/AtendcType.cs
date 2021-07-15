namespace iKesher
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class AtendcType
    {
        [Key]
        public int AtndcId { get; set; }

        public int GroupId { get; set; }

        public int OrganizationId { get; set; }

        public int CompanyId { get; set; }

        public int PlantId { get; set; }

        public int SLocId { get; set; }

        public int HostelId { get; set; }

        [Required]
        [StringLength(100)]
        public string AtndcType { get; set; }

        [StringLength(300)]
        public string AtndcDescr { get; set; }

        public int NumOfDays { get; set; }

        public int NumOfWeeks { get; set; }

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
