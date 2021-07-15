namespace iKesher
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Doc
    {
        [Key]
        [Column(Order = 0)]
        public int DocId { get; set; }

        [StringLength(100)]
        public string DocName { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(100)]
        public string ObjType { get; set; }

        [Key]
        [Column(Order = 2)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ObjId { get; set; }

        [Key]
        [Column(Order = 3)]
        [StringLength(100)]
        public string DocCtg { get; set; }

        [StringLength(300)]
        public string DocText { get; set; }

        [Key]
        [Column(Order = 4)]
        [StringLength(300)]
        public string DocPath { get; set; }

        [Key]
        [Column(Order = 5)]
        [StringLength(100)]
        public string Status { get; set; }

        [Key]
        [Column(Order = 6)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int CreatedBy { get; set; }

        [Key]
        [Column(Order = 7)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public long CreatedAt { get; set; }

        [Key]
        [Column(Order = 8)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ChangedBy { get; set; }

        [Key]
        [Column(Order = 9)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public long ChangedAt { get; set; }
    }
}
