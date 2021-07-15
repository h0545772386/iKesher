namespace iKesher
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Worker
    {
        [Key]
        public int WrkrId { get; set; }

        public int WrkrNum { get; set; }

        [Required]
        [StringLength(100)]
        public string WrkrIDN { get; set; }

        [Required]
        [StringLength(200)]
        public string FullName { get; set; }

        [Required]
        [StringLength(100)]
        public string WrkrType { get; set; }

        [Required]
        [StringLength(50)]
        public string Gender { get; set; }

        [Required]
        [StringLength(50)]
        public string MrgStatus { get; set; }

        [Required]
        [StringLength(200)]
        public string ExtrNumb1 { get; set; }

        [Required]
        [StringLength(200)]
        public string ExtrNumb2 { get; set; }

        [Required]
        [StringLength(200)]
        public string ExtrNumb3 { get; set; }

        [Required]
        [StringLength(200)]
        public string ExtrNumb4 { get; set; }

        public bool IsSysAdmin { get; set; }

        public bool IsManager { get; set; }

        public int RolId { get; set; }

        public int DeprId { get; set; }

        public int ManagerId { get; set; }

        public int DateStartWork { get; set; }

        public int DateEndWork { get; set; }

        public int NNChildsLT3 { get; set; }

        public int NNChildsLT18 { get; set; }

        public int NNChilds { get; set; }

        public decimal PerHour1 { get; set; }

        public decimal PerHour2 { get; set; }

        public decimal PerHour3 { get; set; }

        public decimal PerTrip1 { get; set; }

        public decimal PerTrip2 { get; set; }

        public decimal PerTrip3 { get; set; }

        public bool Pay4SpltTrip1 { get; set; }

        public bool Pay4SpltTrip2 { get; set; }

        public decimal GlobalFee { get; set; }

        public decimal PosiScope3M { get; set; }

        public decimal PosiScope12M { get; set; }

        public decimal GlobalTrip { get; set; }

        public decimal MonthlyBonus { get; set; }

        public decimal FixedBonus { get; set; }

        public decimal FixCredit01 { get; set; }

        public decimal FixCredit02 { get; set; }

        public decimal FixCredit03 { get; set; }

        public decimal FixCredit04 { get; set; }

        public decimal FixCredit05 { get; set; }

        public decimal FixCredit06 { get; set; }

        public decimal FixCredit07 { get; set; }

        public decimal FixCredit08 { get; set; }

        public decimal FixCredit09 { get; set; }

        public decimal FixCredit10 { get; set; }

        public decimal FixCredit11 { get; set; }

        public decimal FixCredit12 { get; set; }

        public decimal FixCredit13 { get; set; }

        public decimal FixCredit14 { get; set; }

        public decimal Total1 { get; set; }

        public decimal Total2 { get; set; }

        public decimal Total3 { get; set; }

        public decimal Total4 { get; set; }

        [Required]
        [StringLength(100)]
        public string CWorthy { get; set; }

        [Required]
        [StringLength(100)]
        public string CRate { get; set; }

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

        [Required]
        [MaxLength(100)]
        public byte[] OAuthLvl { get; set; }

        public int CreatedBy { get; set; }

        public long CreatedAt { get; set; }

        public int ChangedBy { get; set; }

        public long ChangedAt { get; set; }
    }
}
