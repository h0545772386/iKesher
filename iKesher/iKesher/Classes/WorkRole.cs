namespace iKesher
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class WorkRole
    {
        [Key]
        public int RolId { get; set; }

        public int DeprId { get; set; }

        public int GroupId { get; set; }

        public int OrganizationId { get; set; }

        public int CompanyId { get; set; }

        public int PlantId { get; set; }

        public int SLocId { get; set; }

        public int HostelId { get; set; }

        [Required]
        [StringLength(100)]
        public string RoleName { get; set; }

        [StringLength(300)]
        public string RoleDescr { get; set; }

        [Required]
        [StringLength(100)]
        public string Status { get; set; }

        public int CreatedBy { get; set; }

        public long CreatedAt { get; set; }

        public int ChangedBy { get; set; }

        public long ChangedAt { get; set; }
    }
}
