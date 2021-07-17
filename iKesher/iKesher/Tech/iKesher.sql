use iKesher
go

CREATE TABLE [dbo].[AtendcTypes](
	[AtndcId] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[GroupId] [int] NOT NULL DEFAULT 1000,
	[OrganizationId] [int] NOT NULL DEFAULT 1000,
	[CompanyId] [int] NOT NULL DEFAULT 1000,
	[PlantId] [int] NOT NULL DEFAULT 1000,
	[SLocId] [int] NOT NULL DEFAULT 1000,
	[HostelId] [int] NOT NULL DEFAULT 0,
	[AtndcType] [nvarchar](100) NOT NULL,
	[AtndcDescr] [nvarchar](300) NULL,
	[NumOfDays] [int] NOT NULL DEFAULT 0,
	[NumOfWeeks] [int] NOT NULL DEFAULT 0,
	[DateStart] [int] NOT NULL DEFAULT 0,  -- YYYYMMDD  
	[DateEnd] [int] NOT NULL DEFAULT 0,    -- YYYYMMDD  
	[Status] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL DEFAULT 0,
	[CreatedAt] [bigint] NOT NULL DEFAULT 0,
	[ChangedBy] [int] NOT NULL DEFAULT 0,
	[ChangedAt] [bigint] NOT NULL DEFAULT 0)
	
CREATE TABLE [dbo].[Departments](
	[DeprId] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[GroupId] [int] NOT NULL DEFAULT 1000,
	[OrganizationId] [int] NOT NULL DEFAULT 1000,
	[CompanyId] [int] NOT NULL DEFAULT 1000,
	[PlantId] [int] NOT NULL DEFAULT 1000,
	[SLocId] [int] NOT NULL DEFAULT 1000,
	[HostelId] [int] NOT NULL DEFAULT 0,
	[DeprName] [nvarchar](100) NOT NULL,
	[DeprDescr] [nvarchar](300) NULL,	
	[Status] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL DEFAULT 0,
	[CreatedAt] [bigint] NOT NULL DEFAULT 0,
	[ChangedBy] [int] NOT NULL DEFAULT 0,
	[ChangedAt] [bigint] NOT NULL DEFAULT 0)

CREATE TABLE [dbo].[WorkRoles](
	[RolId] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[DeprId] [int] NOT NULL DEFAULT 0,
	[GroupId] [int] NOT NULL DEFAULT 1000,
	[OrganizationId] [int] NOT NULL DEFAULT 1000,
	[CompanyId] [int] NOT NULL DEFAULT 1000,
	[PlantId] [int] NOT NULL DEFAULT 1000,
	[SLocId] [int] NOT NULL DEFAULT 1000,
	[HostelId] [int] NOT NULL DEFAULT 0,
	[RoleName] [nvarchar](100) NOT NULL,
	[RoleDescr] [nvarchar](300) NULL,
	[Status] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL DEFAULT 0,
	[CreatedAt] [bigint] NOT NULL DEFAULT 0,
	[ChangedBy] [int] NOT NULL DEFAULT 0,
	[ChangedAt] [bigint] NOT NULL DEFAULT 0)

CREATE TABLE [dbo].[OAuthObjects](
	[OAOId] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,	
	[OAuthObj] [varbinary](100) NOT NULL,  -- authorization object name
	[OAODescrp] [nvarchar](300) NULL,
	[IsActive] [bit] NOT NULL DEFAULT 0,
	[CreatedBy] [int] NOT NULL DEFAULT 0,
	[CreatedAt] [bigint] NOT NULL DEFAULT 0,
	[ChangedBy] [int] NOT NULL DEFAULT 0,
	[ChangedAt] [bigint] NOT NULL DEFAULT 0)

CREATE TABLE [dbo].[Users](
	[UId] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[FullName] [nvarchar](200) NULL,
	[IsSysAdmin] [bit] NOT NULL DEFAULT 0,
	[Status] [nvarchar](100) NOT NULL,
	[UName] [nvarchar](50) NOT NULL,
	[UPass] [varbinary](100) NOT NULL,
	[UCode] [varbinary](100) NOT NULL,
	[UResetPass] [varbinary](100) NOT NULL,
	[U_GUID] [varbinary](100) NOT NULL,
	[CreatedBy] [int] NOT NULL DEFAULT 0,
	[CreatedAt] [bigint] NOT NULL DEFAULT 0,
	[ChangedBy] [int] NOT NULL DEFAULT 0,
	[ChangedAt] [bigint] NOT NULL DEFAULT 0)	

CREATE TABLE [dbo].[AssignedOAuths](
	[UOAId] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[ObjType] [nvarchar](100) NOT NULL,    -- USR WRKR
	[ObjId] [int] NOT NULL DEFAULT 0,      -- UId WrkrNum
	[OAuthRD] [varbinary](100) NOT NULL,   -- Read authorization object 
	[OAuthWR] [varbinary](100) NOT NULL,   -- Write authorization object 
	[DateStart] [int] NOT NULL DEFAULT 0,  -- YYYYMMDD  
	[DateEnd] [int] NOT NULL DEFAULT 0,    -- YYYYMMDD  
	[IsActive] [bit] NOT NULL DEFAULT 0,
	[CreatedBy] [int] NOT NULL DEFAULT 0,
	[CreatedAt] [bigint] NOT NULL DEFAULT 0,
	[ChangedBy] [int] NOT NULL DEFAULT 0,
	[ChangedAt] [bigint] NOT NULL DEFAULT 0)

CREATE TABLE [dbo].[Hostels](
    [HosId] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[GroupId] [int] NOT NULL DEFAULT 1000,
	[OrganizationId] [int] NOT NULL DEFAULT 1000,
	[CompanyId] [int] NOT NULL DEFAULT 1000,
	[PlantId] [int] NOT NULL DEFAULT 1000,
	[SLocId] [int] NOT NULL DEFAULT 1000,
	[HostelNum] [int] NOT NULL DEFAULT 0,
	[HostelName] [nvarchar](200) NULL,
	[HostelColor] [nvarchar](200) NULL,	
	[DateStart] [int] NOT NULL DEFAULT 0,  -- YYYYMMDD  
	[DateEnd] [int] NOT NULL DEFAULT 0,    -- YYYYMMDD
	[OAuthRD] [varbinary](100) NOT NULL,  -- Read authorization object 
	[OAuthWR] [varbinary](100) NOT NULL,  -- Write authorization object 
	[IsActive] [bit] NOT NULL DEFAULT 1,
	[Status] [nvarchar](100) NOT NULL,	
	[CreatedBy] [int] NOT NULL DEFAULT 0,
	[CreatedAt] [bigint] NOT NULL DEFAULT 0,
	[ChangedBy] [int] NOT NULL DEFAULT 0,
	[ChangedAt] [bigint] NOT NULL DEFAULT 0)
create  index i1 on [Hostels] ( [HostelNum] )
create  index i3 on [Hostels] ( [GroupId], [OrganizationId], [CompanyId], [PlantId], [SLocId], [HostelNum] )

CREATE TABLE [dbo].[HostelsManagers](
    [HostMngId] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[GroupId] [int] NOT NULL DEFAULT 0,
	[OrganizationId] [int] NOT NULL DEFAULT 0,
	[CompanyId] [int] NOT NULL DEFAULT 0,
	[PlantId] [int] NOT NULL DEFAULT 0,
	[SLocId] [int] NOT NULL DEFAULT 0,
	[HostelNum] [int] NOT NULL DEFAULT 0,
	[WrkrNum] [int] NOT NULL DEFAULT 0,
	[HostMngrType] [nvarchar](100) NOT NULL,   -- Manager / Secratery / ....
	[HostMngrId] [int] NOT NULL DEFAULT 0,
	[DateStart] [int] NOT NULL DEFAULT 0,  -- YYYYMMDD  
	[DateEnd] [int] NOT NULL DEFAULT 0,    -- YYYYMMDD 
	[OAuthRD] [varbinary](100) NOT NULL,  -- Read authorization object 
	[OAuthWR] [varbinary](100) NOT NULL,  -- Write authorization object 
	[IsActive] [bit] NOT NULL DEFAULT 1,
	[Status] [nvarchar](100) NOT NULL,	
	[CreatedBy] [int] NOT NULL DEFAULT 0,
	[CreatedAt] [bigint] NOT NULL DEFAULT 0,
	[ChangedBy] [int] NOT NULL DEFAULT 0,
	[ChangedAt] [bigint] NOT NULL DEFAULT 0)
create  index i1 on [HostelsManagers] ( [HostelNum] )

CREATE TABLE [dbo].[HostelsWrkrPerHour](
    [HWPHId] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[GroupId] [int] NOT NULL DEFAULT 1000,
	[OrganizationId] [int] NOT NULL DEFAULT 1000,
	[CompanyId] [int] NOT NULL DEFAULT 1000,
	[PlantId] [int] NOT NULL DEFAULT 1000,
	[SLocId] [int] NOT NULL DEFAULT 1000,
	[HostelNum] [int] NOT NULL DEFAULT 0,
	[WrkrNum] [int] NOT NULL DEFAULT 0,
	[PerHour1] [decimal](12, 2) NOT NULL DEFAULT 0,    -- מחיר לשעה
	[PerHour2] [decimal](12, 2) NOT NULL DEFAULT 0,    -- מחיר לשעה
	[PerHour3] [decimal](12, 2) NOT NULL DEFAULT 0,    -- מחיר לשעה
	[PerTrip1] [decimal](12, 2) NOT NULL DEFAULT 0,      -- נסיעות
	[PerTrip2] [decimal](12, 2) NOT NULL DEFAULT 0,      -- נסיעות
	[PerTrip3] [decimal](12, 2) NOT NULL DEFAULT 0,      -- נסיעות
	[Pay4SpltTrip1] [bit] NOT NULL,                       -- האם לשלם נסיעות במקרה של פיצול משמרת
	[Pay4SpltTrip2] [bit] NOT NULL,                       -- האם לשלם נסיעות במקרה של פיצול משמרת
    [DateStart] [int] NOT NULL DEFAULT 0,  -- YYYYMMDD  
	[DateEnd] [int] NOT NULL DEFAULT 0,    -- YYYYMMDD  
	[IsActive] [bit] NOT NULL DEFAULT 1,
	[Status] [nvarchar](100) NOT NULL,	
	[CreatedBy] [int] NOT NULL DEFAULT 0,
	[CreatedAt] [bigint] NOT NULL DEFAULT 0,
	[ChangedBy] [int] NOT NULL DEFAULT 0,
	[ChangedAt] [bigint] NOT NULL DEFAULT 0)
create  index i1 on [HostelsWrkrPerHour] ( [HostelNum] )
create  index i2 on [HostelsWrkrPerHour] ( [GroupId], [OrganizationId], [CompanyId], [PlantId], [SLocId], [HostelNum] )


CREATE TABLE [dbo].[Workers](
	[WrkrId] [int] NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[WrkrNum] [int] NOT NULL DEFAULT 0,
	[WrkrIDN] [nvarchar](100) NOT NULL,
	[FullName] [nvarchar](200) NOT NULL,
	[WrkrType] [nvarchar](100) NOT NULL,    -- Hourly / Globally / Social / Dialy 
	[Gender] [nvarchar](50) NOT NULL,   -- Male / FeMale  / Other
	[MrgStatus] [nvarchar](50) NOT NULL,   -- Single / Married ......	
	[ExtrNumb1] [nvarchar](200) NOT NULL,
	[ExtrNumb2] [nvarchar](200) NOT NULL,
	[ExtrNumb3] [nvarchar](200) NOT NULL,
	[ExtrNumb4] [nvarchar](200) NOT NULL,
	[IsSysAdmin] [bit] NOT NULL,
	[IsManager] [bit] NOT NULL,
	[RolId] [int] NOT NULL,
	[DeprId] [int] NOT NULL,
	[ManagerId] [int] NOT NULL,
	[DateStartWork] [int] NOT NULL DEFAULT 0,  -- YYYYMMDD  
	[DateEndWork] [int] NOT NULL DEFAULT 0,    -- YYYYMMDD 
	[NNChildsLT3] [int] NOT NULL DEFAULT 0,    -- number of children under 3 years old age
	[NNChildsLT18] [int] NOT NULL DEFAULT 0,   -- number of children under 18 years old age
	[NNChilds] [int] NOT NULL DEFAULT 0,
	[PerHour1] [decimal](12, 2) NOT NULL DEFAULT 0,    -- מחיר לשעה
	[PerHour2] [decimal](12, 2) NOT NULL DEFAULT 0,    -- מחיר לשעה
	[PerHour3] [decimal](12, 2) NOT NULL DEFAULT 0,    -- מחיר לשעה
	[PerTrip1] [decimal](12, 2) NOT NULL DEFAULT 0,      -- נסיעות
	[PerTrip2] [decimal](12, 2) NOT NULL DEFAULT 0,      -- נסיעות
	[PerTrip3] [decimal](12, 2) NOT NULL DEFAULT 0,      -- נסיעות
	[Pay4SpltTrip1] [bit] NOT NULL DEFAULT 0,                       -- האם לשלם נסיעות במקרה של פיצול משמרת
	[Pay4SpltTrip2] [bit] NOT NULL DEFAULT 0,                       -- האם לשלם נסיעות במקרה של פיצול משמרת
	[GlobalFee] [decimal](12, 2) NOT NULL DEFAULT 0,
	[PosiScope3M] [decimal](12, 2) NOT NULL DEFAULT 0, 
	[PosiScope12M] [decimal](12, 2) NOT NULL DEFAULT 0, 
	-- היקף משרה (גלובאליים ומטפלים )   DECIMAL 
	-- חישוב משרה אוטומטי כל חודש להסתקל 3 חודשים אחרוה
	-- אחוז משרה בהסתכל על 12 חודשים
	---- סיכום שעות שנה מלאה וחלוקה ל 12
    [GlobalTrip] [decimal](12, 2) NOT NULL DEFAULT 0,    
	[MonthlyBonus] [decimal](12, 2) NOT NULL DEFAULT 0,    
	[FixedBonus] [decimal](12, 2) NOT NULL DEFAULT 0,
	[FixCredit01] [decimal](12, 2) NOT NULL DEFAULT 0, 	-- תוספת אם בית 
	[FixCredit02] [decimal](12, 2) NOT NULL DEFAULT 0,  -- מענק מטפלים מוסמכים
	[FixCredit03] [decimal](12, 2) NOT NULL DEFAULT 0,  -- גמול
	[FixCredit04] [decimal](12, 2) NOT NULL DEFAULT 0,  -- גמול נטו
	[FixCredit05] [decimal](12, 2) NOT NULL DEFAULT 0,  --בונוס נטו
	[FixCredit06] [decimal](12, 2) NOT NULL DEFAULT 0,  -- נסיעות נטו
	[FixCredit07] [decimal](12, 2) NOT NULL DEFAULT 0,  -- תעריף כונן לילה חצי תעריף רגיל
	[FixCredit08] [decimal](12, 2) NOT NULL DEFAULT 0,  -- בידוד
	[FixCredit09] [decimal](12, 2) NOT NULL DEFAULT 0,  --נסיעה2  בתפקיד
	[FixCredit10] [decimal](12, 2) NOT NULL DEFAULT 0,  --נסיעה  1בתפקיד
	[FixCredit11] [decimal](12, 2) NOT NULL DEFAULT 0,  -- עובד סוציאלי תוספת למשמרת
	[FixCredit12] [decimal](12, 2) NOT NULL DEFAULT 0,  -- תעריף שעתי לעובד סוציאלי
	[FixCredit13] [decimal](12, 2) NOT NULL DEFAULT 0,  -- קה"ש
	[FixCredit14] [decimal](12, 2) NOT NULL DEFAULT 0,  -- בסיס לקה"ש    עלות מעהביד .0.075    (אם משכורת חודש גבוהה מבסיס קה"ש מחשבים לפי בסיס קה"ש ואם משכורת נמוכה מבסיס קה"ש מחשבים לפי המשכורת הנמוכה	
	[Total1] [decimal](12, 2) NOT NULL DEFAULT 0,    
	[Total2] [decimal](12, 2) NOT NULL DEFAULT 0,    
	[Total3] [decimal](12, 2) NOT NULL DEFAULT 0,    
	[Total4] [decimal](12, 2) NOT NULL DEFAULT 0, 
	[CWorthy] [nvarchar](100) NOT NULL,
	[CRate] [nvarchar](100) NOT NULL,
	[Status] [nvarchar](100) NOT NULL,
	[UName] [nvarchar](50) NOT NULL,
	[UPass] [varbinary](100) NOT NULL,
	[UCode] [varbinary](100) NOT NULL,
	[UResetPass] [varbinary](100) NOT NULL,
	[U_GUID] [varbinary](100) NOT NULL,
	[OAuthLvl] [binary](100) NOT NULL,	
	[CreatedBy] [int] NOT NULL DEFAULT 0,
	[CreatedAt] [bigint] NOT NULL DEFAULT 0,
	[ChangedBy] [int] NOT NULL DEFAULT 0,
	[ChangedAt] [bigint] NOT NULL DEFAULT 0)
create  index i1 on [Workers] ( [WrkrNum] )


CREATE TABLE [dbo].[WorkerRoles](
	[WrkrId] [int] NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[WrkrNum] [int] NOT NULL DEFAULT 0,
	[DeprId] [int] NOT NULL DEFAULT 0,
	[RolId] [int] NOT NULL DEFAULT 0,
	[DateStart] [int] NOT NULL DEFAULT 0,  -- YYYYMMDD  
	[DateEnd] [int] NOT NULL DEFAULT 0,    -- YYYYMMDD 
    [Status] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL DEFAULT 0,
	[CreatedAt] [bigint] NOT NULL DEFAULT 0,
	[ChangedBy] [int] NOT NULL DEFAULT 0,
	[ChangedAt] [bigint] NOT NULL DEFAULT 0)


CREATE TABLE [dbo].[WorkersAggrgsTotals](
	[WATId] [int] NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[WrkrNum] [int] NOT NULL DEFAULT 0,
	[Total1] [decimal](12, 2) NOT NULL DEFAULT 0, -- ימים חופש   (+/-)
	[Total2] [decimal](12, 2) NOT NULL DEFAULT 0, -- ימי מחלה    (+/-)
	[Total3] [decimal](12, 2) NOT NULL DEFAULT 0,    
	[Total4] [decimal](12, 2) NOT NULL DEFAULT 0, 
	[Total5] [decimal](12, 2) NOT NULL DEFAULT 0, 
	[Total6] [decimal](12, 2) NOT NULL DEFAULT 0, 
	[Total7] [decimal](12, 2) NOT NULL DEFAULT 0, 
	[Total8] [decimal](12, 2) NOT NULL DEFAULT 0,
	[Status] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL DEFAULT 0,
	[CreatedAt] [bigint] NOT NULL DEFAULT 0,
	[ChangedBy] [int] NOT NULL DEFAULT 0,
	[ChangedAt] [bigint] NOT NULL DEFAULT 0)


CREATE TABLE [dbo].[Addresses](
	[AdrsId] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[ObjType] [nvarchar](100) NOT NULL,  -- HOSTL USR WRKR
	[ObjId] [int] NOT NULL DEFAULT 0,    -- HostelId UId WrkrNum
	[GymId] [int] NOT NULL DEFAULT 0,
	[Street] [nvarchar](100) NULL,
	[Street1] [nvarchar](100) NULL,
	[City] [nvarchar](100) NULL,
	[ZipCode] [nvarchar](100) NULL,
	[Address1] [nvarchar](100) NULL,
	[Address2] [nvarchar](100) NULL,
	[Address3] [nvarchar](100) NULL,
	[Address4] [nvarchar](100) NULL,
	[Status] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL DEFAULT 0,
	[CreatedAt] [bigint] NOT NULL DEFAULT 0,
	[ChangedBy] [int] NOT NULL DEFAULT 0,
	[ChangedAt] [bigint] NOT NULL DEFAULT 0)
create  index i1 on [Addresses] ( [ObjType] )
create  index i2 on [Addresses] ( [ObjId] )
create  index i3 on [Addresses] ( [ObjType], [ObjId] )
create  index i4 on [Addresses] ( [GymId] )

CREATE TABLE [dbo].[Communications](
	[CommuId] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[ObjType] [nvarchar](100) NOT NULL,   -- HOSTL USR WRKR
	[ObjId] [int] NOT NULL DEFAULT 0,     -- HostelId UId WrkrNum 
	[GymId] [int] NOT NULL DEFAULT 0,
	[CommuName] [nvarchar](100) NULL,
	[CommuType] [nvarchar](100) NULL,
	[CommuValue] [nvarchar](200) NULL,
	[Status] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL DEFAULT 0,
	[CreatedAt] [bigint] NOT NULL DEFAULT 0,
	[ChangedBy] [int] NOT NULL DEFAULT 0,
	[ChangedAt] [bigint] NOT NULL DEFAULT 0)	
create  index i1 on [Communications] ( [ObjType] )
create  index i2 on [Communications] ( [ObjId] )
create  index i3 on [Communications] ( [ObjType], [ObjId] )
create  index i4 on [Communications] ( [GymId] )

CREATE TABLE [dbo].[Descriptions](
	[DiscrId] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[ObjType] [nvarchar](100) NOT NULL,   -- HOSTL USR WRKR
	[ObjId] [int] NOT NULL DEFAULT 0,     -- HostelId UId WrkrNum
	[GymId] [int] NOT NULL DEFAULT 0,
	[DiscrTyp] [nvarchar](100) NULL,
	[DiscrText] [nvarchar](800) NULL,
	[Status] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL DEFAULT 0,
	[CreatedAt] [bigint] NOT NULL DEFAULT 0,
	[ChangedBy] [int] NOT NULL DEFAULT 0,
	[ChangedAt] [bigint] NOT NULL DEFAULT 0)
create  index i1 on [Descriptions] ( [ObjType] )
create  index i2 on [Descriptions] ( [ObjId] )
create  index i3 on [Descriptions] ( [ObjType], [ObjId] )
create  index i4 on [Descriptions] ( [GymId] )

CREATE TABLE [dbo].[Logs](
	[LgId] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[ObjType] [nvarchar](100) NOT NULL,   -- HOSTL USR WRKR
	[ObjId] [int] NOT NULL DEFAULT 0,     -- HostelId UId WrkrNum
	[GymId] [int] NOT NULL DEFAULT 0,
	[LgDate1] [int] NOT NULL DEFAULT 0,
	[LgType] [nvarchar](100) NULL,
	[LgText] [nvarchar](600) NULL,
	[LgDate2] [int] NOT NULL DEFAULT 0,
	[LgColor] [nvarchar](200) NULL,
	[Status] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL DEFAULT 0,
	[CreatedAt] [bigint] NOT NULL DEFAULT 0,
	[ChangedBy] [int] NOT NULL DEFAULT 0,
	[ChangedAt] [bigint] NOT NULL DEFAULT 0)	
create  index i1 on [Logs] ( [ObjType] )
create  index i2 on [Logs] ( [ObjId] )
create  index i3 on [Logs] ( [ObjType], [ObjId] )
create  index i4 on [Logs] ( [GymId] )


CREATE TABLE [dbo].[Docs](
	[DocId] [int] IDENTITY(1,1) NOT NULL,
	[DocName] [nvarchar](100) NULL,
	[ObjType] [nvarchar](100) NOT NULL,          -- HOSTL USR WRKR
	[ObjId] [int] NOT NULL,					     -- HostelId UId WrkrNum
	[DocCtg] [nvarchar](100) NOT NULL,
	[DocText] [nvarchar](300) NULL,
	[DocPath] [nvarchar](300) NOT NULL,
	[Status] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL DEFAULT 0,
	[CreatedAt] [bigint] NOT NULL DEFAULT 0,
	[ChangedBy] [int] NOT NULL DEFAULT 0,
	[ChangedAt] [bigint] NOT NULL DEFAULT 0)

	
CREATE TABLE [dbo].[Reminders](
	[RemId] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[ObjType] [nvarchar](100) NOT NULL,   -- HOSTL USR WRKR
	[ObjId] [int] NOT NULL DEFAULT 0,     -- HostelId UId WrkrNum
	[GymId] [int] NOT NULL DEFAULT 0,
	[PopUpAt_YYYYMMDDHHMM] [bigint] NOT NULL DEFAULT 0,
	[RemText] [nvarchar](300) NULL,
	[IsRecorsive] [bit] NOT NULL DEFAULT 0,
	[RecorsivType] [nvarchar](100) NULL,
	[RecorsivTime] [nvarchar](100) NULL,
	[RecorsivTime1] [nvarchar](100) NULL,
	[Frequence] [nvarchar](100) NULL,
	[RemColor] [nvarchar](200) NULL,
	[Status] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL DEFAULT 0,
	[CreatedAt] [bigint] NOT NULL DEFAULT 0,
	[ChangedBy] [int] NOT NULL DEFAULT 0,
	[ChangedAt] [bigint] NOT NULL DEFAULT 0)
create  index i1 on [Reminders] ( [ObjType] )
create  index i2 on [Reminders] ( [ObjId] )
create  index i3 on [Reminders] ( [ObjType], [ObjId] )
create  index i4 on [Reminders] ( [GymId] )


CREATE TABLE [dbo].[WHours](
	[WHId] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[HosId] [int] NOT NULL  DEFAULT 0,
	[GroupId] [int] NOT NULL DEFAULT 1000,
	[OrganizationId] [int] NOT NULL DEFAULT 1000,
	[CompanyId] [int] NOT NULL DEFAULT 1000,
	[PlantId] [int] NOT NULL DEFAULT 1000,
	[SLocId] [int] NOT NULL DEFAULT 1000,
	[HostelNum] [int] NOT NULL DEFAULT 0,
	[WrkrNum] [int] NOT NULL DEFAULT 0,
	[ShiftDOW] [nvarchar](100) NOT NULL,
	[IsHoliday] [bit] NOT NULL DEFAULT 0,
	[IsEveHoliday] [bit] NOT NULL DEFAULT 0,    -- ערב חג
	[IsHoliday1] [bit] NOT NULL DEFAULT 0,      -- חג + שבת יום אחרי יום
	[PlanedShiftDate] [int] NOT NULL DEFAULT 0,       -- YYYYMMDD 
	[PlanedShiftDateIn] [bigint] NOT NULL DEFAULT 0,  -- YYYYMMDDHHMM 
	[PlanedShiftDateOut] [bigint] NOT NULL DEFAULT 0, -- YYYYMMDDHHMM 
	[ShiftDate] [int] NOT NULL DEFAULT 0,       -- YYYYMMDD 
	[ShiftDateIn] [bigint] NOT NULL DEFAULT 0,  -- YYYYMMDDHHMM 
	[ShiftDateOut] [bigint] NOT NULL DEFAULT 0, -- YYYYMMDDHHMM 
	[WHIn] [nvarchar](100) NULL,
	[WHOut] [nvarchar](100) NULL,
	[WHTotalHours] [decimal](12, 2) NOT NULL DEFAULT 0,
	[ShiftType]  [nvarchar](100) NOT NULL,
	[Reg100] [decimal](12,2) NOT NULL DEFAULT 0,
	[Reg125] [decimal](12,2) NOT NULL DEFAULT 0,
	[Reg150] [decimal](12,2) NOT NULL DEFAULT 0,
	[Hol150] [decimal](12,2) NOT NULL DEFAULT 0,
	[Hol175] [decimal](12,2) NOT NULL DEFAULT 0,
	[Hol200] [decimal](12,2) NOT NULL DEFAULT 0,
	[Shb100] [decimal](12,2) NOT NULL DEFAULT 0,  --split to shb100 + shb50 
	[Shb050] [decimal](12,2) NOT NULL DEFAULT 0,  --split to shb100 + shb50 
	[Shb175] [decimal](12,2) NOT NULL DEFAULT 0,
	[Shb200] [decimal](12,2) NOT NULL DEFAULT 0,
	[FReg100] [decimal](12,2) NOT NULL DEFAULT 0,
	[FReg125] [decimal](12,2) NOT NULL DEFAULT 0,
	[FReg150] [decimal](12,2) NOT NULL DEFAULT 0,
	[FHol150] [decimal](12,2) NOT NULL DEFAULT 0,
	[FHol175] [decimal](12,2) NOT NULL DEFAULT 0,
	[FHol200] [decimal](12,2) NOT NULL DEFAULT 0,
	[FShb100] [decimal](12,2) NOT NULL DEFAULT 0,
	[FShb050] [decimal](12,2) NOT NULL DEFAULT 0,
	[FShb175] [decimal](12,2) NOT NULL DEFAULT 0,
	[FShb200] [decimal](12,2) NOT NULL DEFAULT 0,
	[Fee1] [decimal](12, 2) NOT NULL DEFAULT 0,    -- מחיר לשעה
	[Fee2] [decimal](12, 2) NOT NULL DEFAULT 0,    -- מחיר לשעה
	[Fee3] [decimal](12, 2) NOT NULL DEFAULT 0,    -- מחיר לשעה
	[PerHour1] [decimal](12, 2) NOT NULL DEFAULT 0,    -- מחיר לשעה
	[PerHour2] [decimal](12, 2) NOT NULL DEFAULT 0,    -- מחיר לשעה
	[PerHour3] [decimal](12, 2) NOT NULL DEFAULT 0,    -- מחיר לשעה
	[PerTrip1] [decimal](12, 2) NOT NULL DEFAULT 0,      -- נסיעות
	[PerTrip2] [decimal](12, 2) NOT NULL DEFAULT 0,      -- נסיעות
	[PerTrip3] [decimal](12, 2) NOT NULL DEFAULT 0,      -- נסיעות
	[Pay4SpltTrip1] [bit] NOT NULL DEFAULT 0,                       -- האם לשלם נסיעות במקרה של פיצול משמרת
	[Pay4SpltTrip2] [bit] NOT NULL DEFAULT 0,                       -- האם לשלם נסיעות במקרה של פיצול משמרת
	[GlobalFee] [decimal](12, 2) NOT NULL DEFAULT 0,	
    [GlobalTrip] [decimal](12, 2) NOT NULL DEFAULT 0,    
	[MonthlyBonus] [decimal](12, 2) NOT NULL DEFAULT 0,    
	[FixedBonus] [decimal](12, 2) NOT NULL DEFAULT 0,
	[FixCredit01] [decimal](12, 2) NOT NULL DEFAULT 0, 	-- תוספת אם בית 
	[FixCredit02] [decimal](12, 2) NOT NULL DEFAULT 0,  -- מענק מטפלים מוסמכים
	[FixCredit03] [decimal](12, 2) NOT NULL DEFAULT 0,  -- גמול
	[FixCredit04] [decimal](12, 2) NOT NULL DEFAULT 0,  -- גמול נטו
	[FixCredit05] [decimal](12, 2) NOT NULL DEFAULT 0,  --בונוס נטו
	[FixCredit06] [decimal](12, 2) NOT NULL DEFAULT 0,  -- נסיעות נטו
	[FixCredit07] [decimal](12, 2) NOT NULL DEFAULT 0,  -- תעריף כונן לילה חצי תעריף רגיל
	[FixCredit08] [decimal](12, 2) NOT NULL DEFAULT 0,  -- בידוד
	[FixCredit09] [decimal](12, 2) NOT NULL DEFAULT 0,  --נסיעה2  בתפקיד
	[FixCredit10] [decimal](12, 2) NOT NULL DEFAULT 0,  --נסיעה  1בתפקיד
	[FixCredit11] [decimal](12, 2) NOT NULL DEFAULT 0,  -- עובד סוציאלי תוספת למשמרת
	[FixCredit12] [decimal](12, 2) NOT NULL DEFAULT 0,  -- תעריף שעתי לעובד סוציאלי
	[FixCredit13] [decimal](12, 2) NOT NULL DEFAULT 0,  -- קה"ש
	[FixCredit14] [decimal](12, 2) NOT NULL DEFAULT 0,  -- בסיס לקה"ש    עלות מעהביד .0.075    (אם משכורת חודש גבוהה מבסיס קה"ש מחשבים לפי בסיס קה"ש ואם משכורת נמוכה מבסיס קה"ש מחשבים לפי המשכורת הנמוכה	
	[Total1] [decimal](12, 2) NOT NULL DEFAULT 0,    
	[Total2] [decimal](12, 2) NOT NULL DEFAULT 0,    
	[Total3] [decimal](12, 2) NOT NULL DEFAULT 0,    
	[Total4] [decimal](12, 2) NOT NULL DEFAULT 0, 
	[IsDeleted] [bit] NOT NULL DEFAULT 0,	
	[Status] [nvarchar](100) NOT NULL,
	[CreatedBy] [int] NOT NULL DEFAULT 0,
	[CreatedAt] [bigint] NOT NULL DEFAULT 0,
	[ChangedBy] [int] NOT NULL DEFAULT 0,
	[ChangedAt] [bigint] NOT NULL DEFAULT 0)
create  index i1 on [WHours] ( [HostelNum] )
create  index i2 on [WHours] ( [WrkrNum] )
create  index i3 on [WHours] ( [HostelNum], [WrkrNum] )
create  index i4 on [WHours] ( [ShiftDate] )