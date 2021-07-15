namespace iKesher
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class HostelsManager
    {
        [Key]
        public int HostMngId { get; set; }

        public int GroupId { get; set; }

        public int OrganizationId { get; set; }

        public int CompanyId { get; set; }

        public int PlantId { get; set; }

        public int SLocId { get; set; }

        public int HostelNum { get; set; }

        public int WrkrNum { get; set; }

        [Required]
        [StringLength(100)]
        public string HostMngrType { get; set; }

        public int HostMngrId { get; set; }

        public int DateStart { get; set; }

        public int DateEnd { get; set; }

        [Required]
        [MaxLength(100)]
        public byte[] OAuthRD { get; set; }

        [Required]
        [MaxLength(100)]
        public byte[] OAuthWR { get; set; }

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
