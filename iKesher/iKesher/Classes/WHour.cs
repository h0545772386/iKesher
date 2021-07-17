namespace iKesher
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class WHour
    {
        [Key]
        public int WHId { get; set; }

        public int HosId { get; set; }

        public int GroupId { get; set; }

        public int OrganizationId { get; set; }

        public int CompanyId { get; set; }

        public int PlantId { get; set; }

        public int SLocId { get; set; }

        public int HostelNum { get; set; }

        public int WrkrNum { get; set; }

        [Required]
        [StringLength(100)]
        public string ShiftDOW { get; set; }

        public bool IsHoliday { get; set; }

        public bool IsEveHoliday { get; set; }

        public bool IsHoliday1 { get; set; }

        public int PlanedShiftDate { get; set; }

        public long PlanedShiftDateIn { get; set; }

        public long PlanedShiftDateOut { get; set; }
        
        public int ShiftDate { get; set; }

        public long ShiftDateIn { get; set; }

        public long ShiftDateOut { get; set; }

        [StringLength(100)]
        public string WHIn { get; set; }

        [StringLength(100)]
        public string WHOut { get; set; }

        public decimal WHTotalHours { get; set; }

        [Required]
        [StringLength(100)]
        public string ShiftType { get; set; }

        public decimal Reg100 { get; set; }

        public decimal Reg125 { get; set; }

        public decimal Reg150 { get; set; }

        public decimal Hol150 { get; set; }

        public decimal Hol175 { get; set; }

        public decimal Hol200 { get; set; }

        public decimal Shb100 { get; set; }

        public decimal Shb050 { get; set; }

        public decimal Shb175 { get; set; }

        public decimal Shb200 { get; set; }

        public decimal FReg100 { get; set; }

        public decimal FReg125 { get; set; }

        public decimal FReg150 { get; set; }

        public decimal FHol150 { get; set; }

        public decimal FHol175 { get; set; }

        public decimal FHol200 { get; set; }

        public decimal FShb100 { get; set; }

        public decimal FShb050 { get; set; }

        public decimal FShb175 { get; set; }

        public decimal FShb200 { get; set; }

        public decimal Fee1 { get; set; }

        public decimal Fee2 { get; set; }

        public decimal Fee3 { get; set; }

        public decimal PerHour1 { get; set; }

        public decimal PerHour2 { get; set; }

        public decimal PerHour3 { get; set; }

        public decimal PerTrip1 { get; set; }

        public decimal PerTrip2 { get; set; }

        public decimal PerTrip3 { get; set; }

        public bool Pay4SpltTrip1 { get; set; }

        public bool Pay4SpltTrip2 { get; set; }

        public decimal GlobalFee { get; set; }

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

        public bool IsDeleted { get; set; }

        [Required]
        [StringLength(100)]
        public string Status { get; set; }

        public int CreatedBy { get; set; }

        public long CreatedAt { get; set; }

        public int ChangedBy { get; set; }

        public long ChangedAt { get; set; }
    }
}
