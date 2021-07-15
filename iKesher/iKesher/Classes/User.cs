namespace iKesher
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class User
    {
        [Key]
        public int UId { get; set; }

        [StringLength(200)]
        public string FullName { get; set; }

        public bool IsSysAdmin { get; set; }

        [Required]
        [StringLength(100)]
        public string Status { get; set; }

        [Required]
        [StringLength(50)]
        public string UName { get; set; }

        [Required]
        [MaxLength(100)]
        public byte[] UPass { get; set; }

        [Required]
        [MaxLength(100)]
        public byte[] UCode { get; set; }

        [Required]
        [MaxLength(100)]
        public byte[] UResetPass { get; set; }

        [Required]
        [MaxLength(100)]
        public byte[] U_GUID { get; set; }

        public int CreatedBy { get; set; }

        public long CreatedAt { get; set; }

        public int ChangedBy { get; set; }

        public long ChangedAt { get; set; }
    }
}
