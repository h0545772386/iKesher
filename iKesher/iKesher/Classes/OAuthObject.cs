namespace iKesher
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class OAuthObject
    {
        [Key]
        public int OAOId { get; set; }

        [Required]
        [MaxLength(100)]
        public byte[] OAuthObj { get; set; }

        [StringLength(300)]
        public string OAODescrp { get; set; }

        public bool IsActive { get; set; }

        public int CreatedBy { get; set; }

        public long CreatedAt { get; set; }

        public int ChangedBy { get; set; }

        public long ChangedAt { get; set; }
    }
}
