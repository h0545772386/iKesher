using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace iKesher
{
    public partial class Model1 : DbContext
    {
        public Model1()
            : base("name=Model1")
        {
        }

        public virtual DbSet<Address> Addresses { get; set; }
        public virtual DbSet<AssignedOAuth> AssignedOAuths { get; set; }
        public virtual DbSet<AtendcType> AtendcTypes { get; set; }
        public virtual DbSet<Communication> Communications { get; set; }
        public virtual DbSet<Department> Departments { get; set; }
        public virtual DbSet<Description> Descriptions { get; set; }
        public virtual DbSet<Hostel> Hostels { get; set; }
        public virtual DbSet<HostelsManager> HostelsManagers { get; set; }
        public virtual DbSet<HostelsWrkrPerHour> HostelsWrkrPerHours { get; set; }
        public virtual DbSet<Log> Logs { get; set; }
        public virtual DbSet<OAuthObject> OAuthObjects { get; set; }
        public virtual DbSet<Reminder> Reminders { get; set; }
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<WHour> WHours { get; set; }
        public virtual DbSet<WorkerRole> WorkerRoles { get; set; }
        public virtual DbSet<Worker> Workers { get; set; }
        public virtual DbSet<WorkersAggrgsTotal> WorkersAggrgsTotals { get; set; }
        public virtual DbSet<WorkRole> WorkRoles { get; set; }
        public virtual DbSet<Doc> Docs { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<HostelsWrkrPerHour>()
                .Property(e => e.PerHour1)
                .HasPrecision(12, 2);

            modelBuilder.Entity<HostelsWrkrPerHour>()
                .Property(e => e.PerHour2)
                .HasPrecision(12, 2);

            modelBuilder.Entity<HostelsWrkrPerHour>()
                .Property(e => e.PerHour3)
                .HasPrecision(12, 2);

            modelBuilder.Entity<HostelsWrkrPerHour>()
                .Property(e => e.PerTrip1)
                .HasPrecision(12, 2);

            modelBuilder.Entity<HostelsWrkrPerHour>()
                .Property(e => e.PerTrip2)
                .HasPrecision(12, 2);

            modelBuilder.Entity<HostelsWrkrPerHour>()
                .Property(e => e.PerTrip3)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.WHTotalHours)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.Reg100)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.Reg125)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.Reg150)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.Hol150)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.Hol175)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.Hol200)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.Shb100)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.Shb050)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.Shb175)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.Shb200)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.FReg100)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.FReg125)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.FReg150)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.FHol150)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.FHol175)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.FHol200)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.FShb100)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.FShb050)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.FShb175)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.FShb200)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.Fee1)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.Fee2)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.Fee3)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.PerHour1)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.PerHour2)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.PerHour3)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.PerTrip1)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.PerTrip2)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.PerTrip3)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.GlobalFee)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.GlobalTrip)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.MonthlyBonus)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.FixedBonus)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.FixCredit01)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.FixCredit02)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.FixCredit03)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.FixCredit04)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.FixCredit05)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.FixCredit06)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.FixCredit07)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.FixCredit08)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.FixCredit09)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.FixCredit10)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.FixCredit11)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.FixCredit12)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.FixCredit13)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.FixCredit14)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.Total1)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.Total2)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.Total3)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WHour>()
                .Property(e => e.Total4)
                .HasPrecision(12, 2);

            modelBuilder.Entity<Worker>()
                .Property(e => e.PerHour1)
                .HasPrecision(12, 2);

            modelBuilder.Entity<Worker>()
                .Property(e => e.PerHour2)
                .HasPrecision(12, 2);

            modelBuilder.Entity<Worker>()
                .Property(e => e.PerHour3)
                .HasPrecision(12, 2);

            modelBuilder.Entity<Worker>()
                .Property(e => e.PerTrip1)
                .HasPrecision(12, 2);

            modelBuilder.Entity<Worker>()
                .Property(e => e.PerTrip2)
                .HasPrecision(12, 2);

            modelBuilder.Entity<Worker>()
                .Property(e => e.PerTrip3)
                .HasPrecision(12, 2);

            modelBuilder.Entity<Worker>()
                .Property(e => e.GlobalFee)
                .HasPrecision(12, 2);

            modelBuilder.Entity<Worker>()
                .Property(e => e.PosiScope3M)
                .HasPrecision(12, 2);

            modelBuilder.Entity<Worker>()
                .Property(e => e.PosiScope12M)
                .HasPrecision(12, 2);

            modelBuilder.Entity<Worker>()
                .Property(e => e.GlobalTrip)
                .HasPrecision(12, 2);

            modelBuilder.Entity<Worker>()
                .Property(e => e.MonthlyBonus)
                .HasPrecision(12, 2);

            modelBuilder.Entity<Worker>()
                .Property(e => e.FixedBonus)
                .HasPrecision(12, 2);

            modelBuilder.Entity<Worker>()
                .Property(e => e.FixCredit01)
                .HasPrecision(12, 2);

            modelBuilder.Entity<Worker>()
                .Property(e => e.FixCredit02)
                .HasPrecision(12, 2);

            modelBuilder.Entity<Worker>()
                .Property(e => e.FixCredit03)
                .HasPrecision(12, 2);

            modelBuilder.Entity<Worker>()
                .Property(e => e.FixCredit04)
                .HasPrecision(12, 2);

            modelBuilder.Entity<Worker>()
                .Property(e => e.FixCredit05)
                .HasPrecision(12, 2);

            modelBuilder.Entity<Worker>()
                .Property(e => e.FixCredit06)
                .HasPrecision(12, 2);

            modelBuilder.Entity<Worker>()
                .Property(e => e.FixCredit07)
                .HasPrecision(12, 2);

            modelBuilder.Entity<Worker>()
                .Property(e => e.FixCredit08)
                .HasPrecision(12, 2);

            modelBuilder.Entity<Worker>()
                .Property(e => e.FixCredit09)
                .HasPrecision(12, 2);

            modelBuilder.Entity<Worker>()
                .Property(e => e.FixCredit10)
                .HasPrecision(12, 2);

            modelBuilder.Entity<Worker>()
                .Property(e => e.FixCredit11)
                .HasPrecision(12, 2);

            modelBuilder.Entity<Worker>()
                .Property(e => e.FixCredit12)
                .HasPrecision(12, 2);

            modelBuilder.Entity<Worker>()
                .Property(e => e.FixCredit13)
                .HasPrecision(12, 2);

            modelBuilder.Entity<Worker>()
                .Property(e => e.FixCredit14)
                .HasPrecision(12, 2);

            modelBuilder.Entity<Worker>()
                .Property(e => e.Total1)
                .HasPrecision(12, 2);

            modelBuilder.Entity<Worker>()
                .Property(e => e.Total2)
                .HasPrecision(12, 2);

            modelBuilder.Entity<Worker>()
                .Property(e => e.Total3)
                .HasPrecision(12, 2);

            modelBuilder.Entity<Worker>()
                .Property(e => e.Total4)
                .HasPrecision(12, 2);

            modelBuilder.Entity<Worker>()
                .Property(e => e.OAuthLvl)
                .IsFixedLength();

            modelBuilder.Entity<WorkersAggrgsTotal>()
                .Property(e => e.Total1)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WorkersAggrgsTotal>()
                .Property(e => e.Total2)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WorkersAggrgsTotal>()
                .Property(e => e.Total3)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WorkersAggrgsTotal>()
                .Property(e => e.Total4)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WorkersAggrgsTotal>()
                .Property(e => e.Total5)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WorkersAggrgsTotal>()
                .Property(e => e.Total6)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WorkersAggrgsTotal>()
                .Property(e => e.Total7)
                .HasPrecision(12, 2);

            modelBuilder.Entity<WorkersAggrgsTotal>()
                .Property(e => e.Total8)
                .HasPrecision(12, 2);
        }
    }
}
