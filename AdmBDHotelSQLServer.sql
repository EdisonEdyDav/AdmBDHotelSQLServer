/*==============================================================*/
/* Table: HABITACION                                            */
/*==============================================================*/
create table HABITACION (
   IDNUM_HABITACION     int                  not null,
   ID_TIPOHABITACION    varchar(12)          not null,
   constraint PK_HABITACION primary key (IDNUM_HABITACION)
)
go

/*==============================================================*/
/* Table: HUESPED                                               */
/*==============================================================*/
create table HUESPED (
   ID_HUESPED           int                  not null,
   NOMB_HUESPED         varchar(12)          not null,
   APELL1_HUESPED       varchar(12)          not null,
   APELL2_HUESPED       varchar(12)          not null,
   DIRECC_HUESPED       varchar(25)          not null,
   TELF_HUESPED         int                  not null,
   EMAIL_HUESPED        varchar(15)          not null,
   constraint PK_HUESPED primary key nonclustered (ID_HUESPED)
)
go

/*==============================================================*/
/* Table: PAGO                                                  */
/*==============================================================*/
create table PAGO (
   ID_PAGO              varchar(12)          not null,
   ID_RESERVA           varchar(10)          not null,
   ID_SERVICIO          varchar(12)          not null,
   FECHA_PAGO           date                 not null,
   constraint PK_PAGO primary key nonclustered (ID_PAGO)
)
go


/*==============================================================*/
/* Table: PRECIOHABITACION                                      */
/*==============================================================*/
create table PRECIOHABITACION (
   ID_PRECIOHABITACION  varchar(12)          not null,
   ID_TIPOHABITACION    varchar(12)          not null,
   PRECIO_PRECIOHABITACION int                  not null,
   constraint PK_PRECIOHABITACION primary key nonclustered (ID_PRECIOHABITACION)
)
go



/*==============================================================*/
/* Table: RESERVA                                               */
/*==============================================================*/
create table RESERVA (
   ID_RESERVA           varchar(10)          not null,
   ID_HUESPED           int                  not null,
   IDNUM_HABITACION     int                  not null,
   FECH_RESERVA         date                 not null,
   FECHENTR_RESERVA     date                 not null,
   FECHSAL_RESERVA      date                 not null,
   constraint PK_RESERVA primary key nonclustered (ID_RESERVA)
)
go

/*==============================================================*/
/* Table: SERVICIO                                              */
/*==============================================================*/
create table SERVICIO (
   ID_SERVICIO          varchar(12)          not null,
   NOMB_SERVICIO        varchar(12)          not null,
   PRECIO_SERVICIO      int                  not null,
   FECHA_SERVICIO       date            not null,
   constraint PK_SERVICIO primary key nonclustered (ID_SERVICIO)
)
go

/*==============================================================*/
/* Table: TIPOHABITACION                                        */
/*==============================================================*/
create table TIPOHABITACION (
   ID_TIPOHABITACION    varchar(12)          not null,
   DESCR_TIPOHABITACION varchar(20)          not null,
   CAMAS_TIPOHABITACION int                  not null,
   EXTERIOR_TIPOHABITACION char(2)              not null,
   PASILLO_TIPOHABITACION char(2)              not null,
   TERRAZA_TIPOHABITACION char(2)              not null,
   constraint PK_TIPOHABITACION primary key nonclustered (ID_TIPOHABITACION)
)
go