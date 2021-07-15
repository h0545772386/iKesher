namespace iKesher
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class AssignedOAuth
    {
        [Key]
        public int UOAId { get; set; }

        [Required]
        [StringLength(100)]
        public string ObjType { get; set; }

        public int ObjId { get; set; }

        [Required]
        [MaxLength(100)]
        public byte[] OAuthRD { get; set; }

        [Required]
        [MaxLength(100)]
        public byte[] OAuthWR { get; set; }

        public int DateStart { get; set; }

        public int DateEnd { get; set; }

        public bool IsActive { get; set; }

        public int CreatedBy { get; set; }

        public long CreatedAt { get; set; }

        public int ChangedBy { get; set; }

        public long ChangedAt { get; set; }
    }
}
