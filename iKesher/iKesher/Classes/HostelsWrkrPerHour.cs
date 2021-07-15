namespace iKesher
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("HostelsWrkrPerHour")]
    public partial class HostelsWrkrPerHour
    {
        [Key]
        public int HWPHId { get; set; }

        public int GroupId { get; set; }

        public int OrganizationId { get; set; }

        public int CompanyId { get; set; }

        public int PlantId { get; set; }

        public int SLocId { get; set; }

        public int HostelNum { get; set; }

        public int WrkrNum { get; set; }

        public decimal PerHour1 { get; set; }

        public decimal PerHour2 { get; set; }

        public decimal PerHour3 { get; set; }

        public decimal PerTrip1 { get; set; }

        public decimal PerTrip2 { get; set; }

        public decimal PerTrip3 { get; set; }

        public bool Pay4SpltTrip1 { get; set; }

        public bool Pay4SpltTrip2 { get; set; }

        public int DateStart { get; set; }

        public int DateEnd { get; set; }

        public bool IsActive { get; set; }

        [Required]
        [StringLength(100)]
        public string Status { get; set; }

        public int CreatedBy { get; set; }

        public long CreatedAt { get; set; }

        public int ChangedBy { get; set; }

        public long ChangedAt { get; set; }
    }
}
