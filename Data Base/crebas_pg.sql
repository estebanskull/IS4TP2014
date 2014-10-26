/*==============================================================*/
/* DBMS name:      PostgreSQL 9.x                               */
/* Created on:     26/10/2014 04:10:28                          */
/*==============================================================*/


drop index SIGLAB_ACCESOS_FK;

drop index GRUPOS_ACCESOS_FK;

drop index ACCESOS_GRUPOS_PK;

drop table IS4.ACCESOS_GRUPOS;

drop index PACIENTES_ANALISIS_CAB_FK;

drop index ANALISIS_CAB_PK;

drop table IS4.ANALISIS_CAB;

drop index LOTE_ANALISIS_DET_FK;

drop index ANALISIS_CAB_DET_FK;

drop index ANALISIS_DET_PK;

drop table IS4.ANALISIS_DET;

drop index USUARIO_AUDITORIA_FK;

drop index AUDITORIA_PK;

drop table IS4.AUDITORIA;

drop index TIP_CAMBIO_COMPRA_FK;

drop index PROVEEDOR_COMPRA_FK;

drop index SER_FACT_COMPRA_FK;

drop index COMPRAS_CAB_PK;

drop table IS4.COMPRAS_CAB;

drop index LOTE_COMPRA_DET_FK;

drop index RELATIONSHIP_34_FK;

drop index COMPRAS_CAB_DET_FK;

drop index COMPRAS_DET_PK;

drop table IS4.COMPRAS_DET;

drop index ID_PERSONA_CUENTA_FK;

drop index CUENTAS_PK;

drop table IS4.CUENTAS;

drop index RELATIONSHIP_1_FK;

drop index EMPLEADOS_PK;

drop table IS4.EMPLEADOS;

drop index TIP_CAMBIO_FACT_FK;

drop index SER_FACT_CAB_FK;

drop index FACT_CAB_PK;

drop table IS4.FACT_CAB;

drop index FACT_CAB_DET_FK;

drop index ANALISIS_FACT_DET_FK;

drop index FACT_DET_PK;

drop table IS4.FACT_DET;

drop index FACT_CAB_COBROS_FK;

drop index CUENTA_FORMA_COBRO_FK;

drop index RELATIONSHIP_26_FK;

drop index FORMAS_COBROS_PK;

drop table IS4.FORMAS_COBROS;

drop index COMPRA_PAGO_FK;

drop index CUENTA_PAGO_FK;

drop index SER_TRANSACCION_PAGO_FK;

drop index FORMAS_PAGOS_PK;

drop table IS4.FORMAS_PAGOS;

drop index GRUPOS_USUARIOS_PK;

drop table IS4.GRUPOS_USUARIOS;

drop index UNIDAD_INSUMO_FK;

drop index MATERIAL_INSUMO_FK;

drop index INSUMOS_PK;

drop table IS4.INSUMOS;

drop index INSUMO_LOTE_FK;

drop index LOTES_PK;

drop table IS4.LOTES;

drop index MATERIALES_PK;

drop table IS4.MATERIALES;

drop index MODULOS_PK;

drop table IS4.MODULOS;

drop index MONEDAS_PK;

drop table IS4.MONEDAS;

drop index MOV_STOCK_CAB_PK;

drop table IS4.MOV_STOCK_CAB;

drop index INSUMO_MOV_STOCK_DET_FK;

drop index MOV_CAB_DET_FK;

drop index MOV_STOCK_DET_PK;

drop table IS4.MOV_STOCK_DET;

drop index SEGURO_PACIENTE_FK;

drop index PERSONA_PACIENTE_FK;

drop index PACIENTES_PK;

drop table IS4.PACIENTES;

drop index USUARIO_PERMISO_FK;

drop index SIGLAB_PERMISO_FK;

drop index PERMISOS_PK;

drop table IS4.PERMISOS;

drop index PERSONAS_PK;

drop table IS4.PERSONAS;

drop index PERSONA_PROVEEDOR_FK;

drop index PROVEEDORES_PK;

drop table IS4.PROVEEDORES;

drop index PERSONA_SEGURO_FK;

drop index SEGUROS_PK;

drop table IS4.SEGUROS;

drop index TIP_SER_FACT_FK;

drop index SER_FACT_PK;

drop table IS4.SER_FACT;

drop index ID_TIP_SER_TRANSACCION_FK;

drop index SER_TRANSACCION_PK;

drop table IS4.SER_TRANSACCION;

drop index MODULO_SIGLAB_FK;

drop index SIGLAB_PK;

drop table IS4.SIGLAB;

drop index MONDA_TIP_CAMBIO_FK;

drop index TIP_CAMBIOS_PK;

drop table IS4.TIP_CAMBIOS;

drop index TIP_FACT_PK;

drop table IS4.TIP_FACT;

drop index TIP_TRANSACCION_PK;

drop table IS4.TIP_TRANSACCION;

drop index UNIDADES_PK;

drop table IS4.UNIDADES;

drop index USUARIOS_GRUPOS_FK;

drop index USUARIOS_PK;

drop table IS4.USUARIOS;

drop schema IS4;

/*==============================================================*/
/* User: IS4                                                    */
/*==============================================================*/
create schema IS4;

/*==============================================================*/
/* Table: ACCESOS_GRUPOS                                        */
/*==============================================================*/
create table IS4.ACCESOS_GRUPOS (
   ID_PANTALLA          integer              not null,
   ID_GRUPO             integer              not null,
   CONSULTAR            smallint             not null,
   INSERTAR             smallint             not null,
   BORRAR               smallint             not null,
   ACTUALIZAR           smallint             not null,
   constraint PK_ACCESOS_GRUPOS primary key (ID_PANTALLA, ID_GRUPO)
);

/*==============================================================*/
/* Index: ACCESOS_GRUPOS_PK                                     */
/*==============================================================*/
create unique index ACCESOS_GRUPOS_PK on ACCESOS_GRUPOS (
( ID_PANTALLA ASC ),
( ID_GRUPO ASC )
);

/*==============================================================*/
/* Index: GRUPOS_ACCESOS_FK                                     */
/*==============================================================*/
create  index GRUPOS_ACCESOS_FK on ACCESOS_GRUPOS (
( ID_GRUPO ASC )
);

/*==============================================================*/
/* Index: SIGLAB_ACCESOS_FK                                     */
/*==============================================================*/
create  index SIGLAB_ACCESOS_FK on ACCESOS_GRUPOS (
( ID_PANTALLA ASC )
);

/*==============================================================*/
/* Table: ANALISIS_CAB                                          */
/*==============================================================*/
create table IS4.ANALISIS_CAB (
   ID_ANALISIS          integer              not null default autoincrement,
   ID_PACIENTE          integer              not null,
   FEC_ANALISIS         date                 not null,
   TOTAL                numeric              not null,
   constraint PK_ANALISIS_CAB primary key (ID_ANALISIS)
);

/*==============================================================*/
/* Index: ANALISIS_CAB_PK                                       */
/*==============================================================*/
create unique index ANALISIS_CAB_PK on ANALISIS_CAB (
( ID_ANALISIS ASC )
);

/*==============================================================*/
/* Index: PACIENTES_ANALISIS_CAB_FK                             */
/*==============================================================*/
create  index PACIENTES_ANALISIS_CAB_FK on ANALISIS_CAB (
( ID_PACIENTE ASC )
);

/*==============================================================*/
/* Table: ANALISIS_DET                                          */
/*==============================================================*/
create table IS4.ANALISIS_DET (
   ID_ANALISIS          integer              not null,
   ID_LOTE              integer              not null,
   RESULTADO            float                not null,
   constraint PK_ANALISIS_DET primary key (ID_ANALISIS, ID_LOTE)
);

/*==============================================================*/
/* Index: ANALISIS_DET_PK                                       */
/*==============================================================*/
create unique index ANALISIS_DET_PK on ANALISIS_DET (
( ID_ANALISIS ASC ),
( ID_LOTE ASC )
);

/*==============================================================*/
/* Index: ANALISIS_CAB_DET_FK                                   */
/*==============================================================*/
create  index ANALISIS_CAB_DET_FK on ANALISIS_DET (
( ID_ANALISIS ASC )
);

/*==============================================================*/
/* Index: LOTE_ANALISIS_DET_FK                                  */
/*==============================================================*/
create  index LOTE_ANALISIS_DET_FK on ANALISIS_DET (
( ID_LOTE ASC )
);

/*==============================================================*/
/* Table: AUDITORIA                                             */
/*==============================================================*/
create table IS4.AUDITORIA (
   ID_MOVIMIENTO        integer              not null default autoincrement,
   ID_USUARIO           char(256)            not null,
   NOM_TABLA            char(256)            not null,
   TIP_OPERACION        char(1)              not null,
   CAMPOS               long varchar         not null,
   FECHA                timestamp            not null,
   DATOS_ANTERIORES     long varchar         not null,
   DATOS_POSTERIORES    long varchar         not null,
   constraint PK_AUDITORIA primary key (ID_MOVIMIENTO)
);

/*==============================================================*/
/* Index: AUDITORIA_PK                                          */
/*==============================================================*/
create unique index AUDITORIA_PK on AUDITORIA (
( ID_MOVIMIENTO ASC )
);

/*==============================================================*/
/* Index: USUARIO_AUDITORIA_FK                                  */
/*==============================================================*/
create  index USUARIO_AUDITORIA_FK on AUDITORIA (
( ID_USUARIO ASC )
);

/*==============================================================*/
/* Table: COMPRAS_CAB                                           */
/*==============================================================*/
create table IS4.COMPRAS_CAB (
   ID_COMPRA            integer              not null default autoincrement,
   SER_FACT             char(7)              not null,
   TIP_FACT             char(3)              not null,
   ID_PROVEEDOR         integer              not null,
   FECHA                date                 null,
   ID_MONEDA            integer              null,
   NRO_FACT             numeric              not null,
   TOTAL                numeric              not null,
   constraint PK_COMPRAS_CAB primary key (ID_COMPRA)
);

/*==============================================================*/
/* Index: COMPRAS_CAB_PK                                        */
/*==============================================================*/
create unique index COMPRAS_CAB_PK on COMPRAS_CAB (
( ID_COMPRA ASC )
);

/*==============================================================*/
/* Index: SER_FACT_COMPRA_FK                                    */
/*==============================================================*/
create  index SER_FACT_COMPRA_FK on COMPRAS_CAB (
( SER_FACT ASC ),
( TIP_FACT ASC )
);

/*==============================================================*/
/* Index: PROVEEDOR_COMPRA_FK                                   */
/*==============================================================*/
create  index PROVEEDOR_COMPRA_FK on COMPRAS_CAB (
( ID_PROVEEDOR ASC )
);

/*==============================================================*/
/* Index: TIP_CAMBIO_COMPRA_FK                                  */
/*==============================================================*/
create  index TIP_CAMBIO_COMPRA_FK on COMPRAS_CAB (
( FECHA ASC ),
( ID_MONEDA ASC )
);

/*==============================================================*/
/* Table: COMPRAS_DET                                           */
/*==============================================================*/
create table IS4.COMPRAS_DET (
   ID_INSUMO            integer              not null,
   ID_COMPRA            integer              not null,
   ID_LOTE              integer              null,
   CANTIDAD             numeric              not null,
   PRECIO_UNITARIO      numeric              not null,
   TOTAL                numeric              not null,
   constraint PK_COMPRAS_DET primary key (ID_INSUMO, ID_COMPRA)
);

/*==============================================================*/
/* Index: COMPRAS_DET_PK                                        */
/*==============================================================*/
create unique index COMPRAS_DET_PK on COMPRAS_DET (
( ID_INSUMO ASC ),
( ID_COMPRA ASC )
);

/*==============================================================*/
/* Index: COMPRAS_CAB_DET_FK                                    */
/*==============================================================*/
create  index COMPRAS_CAB_DET_FK on COMPRAS_DET (
( ID_COMPRA ASC )
);

/*==============================================================*/
/* Index: RELATIONSHIP_34_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_34_FK on COMPRAS_DET (
( ID_INSUMO ASC )
);

/*==============================================================*/
/* Index: LOTE_COMPRA_DET_FK                                    */
/*==============================================================*/
create  index LOTE_COMPRA_DET_FK on COMPRAS_DET (
( ID_LOTE ASC )
);

/*==============================================================*/
/* Table: CUENTAS                                               */
/*==============================================================*/
create table IS4.CUENTAS (
   ID_CUENTA            integer              not null default autoincrement,
   ID_PERSONA           integer              not null,
   NOMBRE               long varchar         not null,
   constraint PK_CUENTAS primary key (ID_CUENTA, ID_PERSONA)
);

/*==============================================================*/
/* Index: CUENTAS_PK                                            */
/*==============================================================*/
create unique index CUENTAS_PK on CUENTAS (
( ID_CUENTA ASC ),
( ID_PERSONA ASC )
);

/*==============================================================*/
/* Index: ID_PERSONA_CUENTA_FK                                  */
/*==============================================================*/
create  index ID_PERSONA_CUENTA_FK on CUENTAS (
( ID_PERSONA ASC )
);

/*==============================================================*/
/* Table: EMPLEADOS                                             */
/*==============================================================*/
create table IS4.EMPLEADOS (
   ID_EMPLEADO          integer              not null default autoincrement,
   ID_PERSONA           integer              not null,
   TIP_EMPLEADO         char(2)              not null,
   ESPECIALIDAD         long varchar         null,
   ACTIVO               smallint             not null,
   OBSERVACION          long varchar         null,
   constraint PK_EMPLEADOS primary key (ID_EMPLEADO)
);

/*==============================================================*/
/* Index: EMPLEADOS_PK                                          */
/*==============================================================*/
create unique index EMPLEADOS_PK on EMPLEADOS (
( ID_EMPLEADO ASC )
);

/*==============================================================*/
/* Index: RELATIONSHIP_1_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_1_FK on EMPLEADOS (
( ID_PERSONA ASC )
);

/*==============================================================*/
/* Table: FACT_CAB                                              */
/*==============================================================*/
create table IS4.FACT_CAB (
   ID_FACT              integer              not null default autoincrement,
   SER_FACT             char(7)              not null,
   TIP_FACT             char(3)              not null,
   FECHA                date                 null,
   ID_MONEDA            integer              null,
   NRO_FACT             numeric              not null,
   REFERENCIA           char(20)             not null,
   TOTAL                numeric              null,
   constraint PK_FACT_CAB primary key (ID_FACT)
);

/*==============================================================*/
/* Index: FACT_CAB_PK                                           */
/*==============================================================*/
create unique index FACT_CAB_PK on FACT_CAB (
( ID_FACT ASC )
);

/*==============================================================*/
/* Index: SER_FACT_CAB_FK                                       */
/*==============================================================*/
create  index SER_FACT_CAB_FK on FACT_CAB (
( SER_FACT ASC ),
( TIP_FACT ASC )
);

/*==============================================================*/
/* Index: TIP_CAMBIO_FACT_FK                                    */
/*==============================================================*/
create  index TIP_CAMBIO_FACT_FK on FACT_CAB (
( FECHA ASC ),
( ID_MONEDA ASC )
);

/*==============================================================*/
/* Table: FACT_DET                                              */
/*==============================================================*/
create table IS4.FACT_DET (
   ID_FACT              integer              not null,
   ID_ANALISIS          integer              not null,
   constraint PK_FACT_DET primary key (ID_FACT, ID_ANALISIS)
);

/*==============================================================*/
/* Index: FACT_DET_PK                                           */
/*==============================================================*/
create unique index FACT_DET_PK on FACT_DET (
( ID_FACT ASC ),
( ID_ANALISIS ASC )
);

/*==============================================================*/
/* Index: ANALISIS_FACT_DET_FK                                  */
/*==============================================================*/
create  index ANALISIS_FACT_DET_FK on FACT_DET (
( ID_ANALISIS ASC )
);

/*==============================================================*/
/* Index: FACT_CAB_DET_FK                                       */
/*==============================================================*/
create  index FACT_CAB_DET_FK on FACT_DET (
( ID_FACT ASC )
);

/*==============================================================*/
/* Table: FORMAS_COBROS                                         */
/*==============================================================*/
create table IS4.FORMAS_COBROS (
   ID_COBRO             integer              not null default autoincrement,
   SER_TRANSACCION      char(7)              not null,
   ID_TRANSACCION       integer              not null,
   ID_CUENTA            integer              null,
   ID_PERSONA           integer              null,
   ID_FACT              integer              not null,
   REFERENCIA           char(50)             null,
   MONTO                numeric              not null,
   constraint PK_FORMAS_COBROS primary key (ID_COBRO, ID_FACT)
);

/*==============================================================*/
/* Index: FORMAS_COBROS_PK                                      */
/*==============================================================*/
create unique index FORMAS_COBROS_PK on FORMAS_COBROS (
( ID_COBRO ASC ),
( ID_FACT ASC )
);

/*==============================================================*/
/* Index: RELATIONSHIP_26_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_26_FK on FORMAS_COBROS (
( SER_TRANSACCION ASC ),
( ID_TRANSACCION ASC )
);

/*==============================================================*/
/* Index: CUENTA_FORMA_COBRO_FK                                 */
/*==============================================================*/
create  index CUENTA_FORMA_COBRO_FK on FORMAS_COBROS (
( ID_CUENTA ASC ),
( ID_PERSONA ASC )
);

/*==============================================================*/
/* Index: FACT_CAB_COBROS_FK                                    */
/*==============================================================*/
create  index FACT_CAB_COBROS_FK on FORMAS_COBROS (
( ID_FACT ASC )
);

/*==============================================================*/
/* Table: FORMAS_PAGOS                                          */
/*==============================================================*/
create table IS4.FORMAS_PAGOS (
   ID_PAGO              integer              not null default autoincrement,
   SER_TRANSACCION      char(7)              not null,
   ID_TRANSACCION       integer              not null,
   ID_CUENTA            integer              null,
   ID_PERSONA           integer              null,
   ID_COMPRA            integer              not null,
   REFERENCIA           char(256)            null,
   MONTO                numeric              not null,
   constraint PK_FORMAS_PAGOS primary key (ID_PAGO, ID_COMPRA)
);

/*==============================================================*/
/* Index: FORMAS_PAGOS_PK                                       */
/*==============================================================*/
create unique index FORMAS_PAGOS_PK on FORMAS_PAGOS (
( ID_PAGO ASC ),
( ID_COMPRA ASC )
);

/*==============================================================*/
/* Index: SER_TRANSACCION_PAGO_FK                               */
/*==============================================================*/
create  index SER_TRANSACCION_PAGO_FK on FORMAS_PAGOS (
( SER_TRANSACCION ASC ),
( ID_TRANSACCION ASC )
);

/*==============================================================*/
/* Index: CUENTA_PAGO_FK                                        */
/*==============================================================*/
create  index CUENTA_PAGO_FK on FORMAS_PAGOS (
( ID_CUENTA ASC ),
( ID_PERSONA ASC )
);

/*==============================================================*/
/* Index: COMPRA_PAGO_FK                                        */
/*==============================================================*/
create  index COMPRA_PAGO_FK on FORMAS_PAGOS (
( ID_COMPRA ASC )
);

/*==============================================================*/
/* Table: GRUPOS_USUARIOS                                       */
/*==============================================================*/
create table IS4.GRUPOS_USUARIOS (
   ID_GRUPO             integer              not null default autoincrement,
   NOMBRE               long varchar         not null,
   constraint PK_GRUPOS_USUARIOS primary key (ID_GRUPO)
);

/*==============================================================*/
/* Index: GRUPOS_USUARIOS_PK                                    */
/*==============================================================*/
create unique index GRUPOS_USUARIOS_PK on GRUPOS_USUARIOS (
( ID_GRUPO ASC )
);

/*==============================================================*/
/* Table: INSUMOS                                               */
/*==============================================================*/
create table IS4.INSUMOS (
   ID_INSUMO            integer              not null default autoincrement,
   ID_MATERIAL          integer              null,
   ID_UNIDAD            integer              null,
   NOMBRE               long varchar         not null,
   TIP_INSUMO           char(2)              not null,
   VALOR_INFERIOR       numeric(8,2)         null,
   VALOR_SUPERIOR       numeric(8,2)         null,
   REFENCIA             long varchar         null,
   MANEJA_LOTE          smallint             not null,
   ACTIVO               smallint             not null,
   EXISTENCIA           numeric              not null,
   constraint PK_INSUMOS primary key (ID_INSUMO)
);

/*==============================================================*/
/* Index: INSUMOS_PK                                            */
/*==============================================================*/
create unique index INSUMOS_PK on INSUMOS (
( ID_INSUMO ASC )
);

/*==============================================================*/
/* Index: MATERIAL_INSUMO_FK                                    */
/*==============================================================*/
create  index MATERIAL_INSUMO_FK on INSUMOS (
( ID_MATERIAL ASC )
);

/*==============================================================*/
/* Index: UNIDAD_INSUMO_FK                                      */
/*==============================================================*/
create  index UNIDAD_INSUMO_FK on INSUMOS (
( ID_UNIDAD ASC )
);

/*==============================================================*/
/* Table: LOTES                                                 */
/*==============================================================*/
create table IS4.LOTES (
   ID_LOTE              integer              not null default autoincrement,
   ID_INSUMO            integer              not null,
   DESCRICPCION         long varchar         not null,
   NRO_LOTE             char(256)            not null,
   FEC_ENTRADA          date                 not null,
   FEC_VENCIMIENTO      date                 null,
   CANTIDAD             numeric              not null,
   constraint PK_LOTES primary key (ID_LOTE)
);

/*==============================================================*/
/* Index: LOTES_PK                                              */
/*==============================================================*/
create unique index LOTES_PK on LOTES (
( ID_LOTE ASC )
);

/*==============================================================*/
/* Index: INSUMO_LOTE_FK                                        */
/*==============================================================*/
create  index INSUMO_LOTE_FK on LOTES (
( ID_INSUMO ASC )
);

/*==============================================================*/
/* Table: MATERIALES                                            */
/*==============================================================*/
create table IS4.MATERIALES (
   ID_MATERIAL          integer              not null default autoincrement,
   NOMBRE               long varchar         not null,
   constraint PK_MATERIALES primary key (ID_MATERIAL)
);

/*==============================================================*/
/* Index: MATERIALES_PK                                         */
/*==============================================================*/
create unique index MATERIALES_PK on MATERIALES (
( ID_MATERIAL ASC )
);

/*==============================================================*/
/* Table: MODULOS                                               */
/*==============================================================*/
create table IS4.MODULOS (
   ID_MODULO            char(2)              not null,
   NOMBRE               long varchar         null,
   constraint PK_MODULOS primary key (ID_MODULO)
);

/*==============================================================*/
/* Index: MODULOS_PK                                            */
/*==============================================================*/
create unique index MODULOS_PK on MODULOS (
( ID_MODULO ASC )
);

/*==============================================================*/
/* Table: MONEDAS                                               */
/*==============================================================*/
create table IS4.MONEDAS (
   ID_MONEDA            integer              not null default autoincrement,
   DESCRIPCION          long varchar         not null,
   NOM_CORTO            char(2)              null,
   DECIMALES            numeric              null,
   constraint PK_MONEDAS primary key (ID_MONEDA)
);

/*==============================================================*/
/* Index: MONEDAS_PK                                            */
/*==============================================================*/
create unique index MONEDAS_PK on MONEDAS (
( ID_MONEDA ASC )
);

/*==============================================================*/
/* Table: MOV_STOCK_CAB                                         */
/*==============================================================*/
create table IS4.MOV_STOCK_CAB (
   ID_MOV_STOCK         integer              not null default autoincrement,
   TIP_MOVIMIENTO       char(1)              not null,
   constraint PK_MOV_STOCK_CAB primary key (ID_MOV_STOCK)
);

/*==============================================================*/
/* Index: MOV_STOCK_CAB_PK                                      */
/*==============================================================*/
create unique index MOV_STOCK_CAB_PK on MOV_STOCK_CAB (
( ID_MOV_STOCK ASC )
);

/*==============================================================*/
/* Table: MOV_STOCK_DET                                         */
/*==============================================================*/
create table IS4.MOV_STOCK_DET (
   ID_MOV_STOCK         integer              not null,
   ID_INSUMO            integer              not null,
   CANTIDAD             numeric              not null,
   constraint PK_MOV_STOCK_DET primary key (ID_MOV_STOCK, ID_INSUMO)
);

/*==============================================================*/
/* Index: MOV_STOCK_DET_PK                                      */
/*==============================================================*/
create unique index MOV_STOCK_DET_PK on MOV_STOCK_DET (
( ID_MOV_STOCK ASC ),
( ID_INSUMO ASC )
);

/*==============================================================*/
/* Index: MOV_CAB_DET_FK                                        */
/*==============================================================*/
create  index MOV_CAB_DET_FK on MOV_STOCK_DET (
( ID_MOV_STOCK ASC )
);

/*==============================================================*/
/* Index: INSUMO_MOV_STOCK_DET_FK                               */
/*==============================================================*/
create  index INSUMO_MOV_STOCK_DET_FK on MOV_STOCK_DET (
( ID_INSUMO ASC )
);

/*==============================================================*/
/* Table: PACIENTES                                             */
/*==============================================================*/
create table IS4.PACIENTES (
   ID_PACIENTE          integer              not null default autoincrement,
   ID_PERSONA           integer              not null,
   ID_SEGURO            integer              null,
   TIP_SANGRE           char(4)              not null,
   FEC_ENTRADA          date                 not null,
   constraint PK_PACIENTES primary key (ID_PACIENTE)
);

/*==============================================================*/
/* Index: PACIENTES_PK                                          */
/*==============================================================*/
create unique index PACIENTES_PK on PACIENTES (
( ID_PACIENTE ASC )
);

/*==============================================================*/
/* Index: PERSONA_PACIENTE_FK                                   */
/*==============================================================*/
create  index PERSONA_PACIENTE_FK on PACIENTES (
( ID_PERSONA ASC )
);

/*==============================================================*/
/* Index: SEGURO_PACIENTE_FK                                    */
/*==============================================================*/
create  index SEGURO_PACIENTE_FK on PACIENTES (
( ID_SEGURO ASC )
);

/*==============================================================*/
/* Table: PERMISOS                                              */
/*==============================================================*/
create table IS4.PERMISOS (
   ID_PANTALLA          integer              not null,
   ID_USUARIO           char(256)            not null,
   NOMBRE               char(256)            null,
   PERMISO              smallint             null,
   constraint PK_PERMISOS primary key (ID_PANTALLA, ID_USUARIO)
);

/*==============================================================*/
/* Index: PERMISOS_PK                                           */
/*==============================================================*/
create unique index PERMISOS_PK on PERMISOS (
( ID_PANTALLA ASC ),
( ID_USUARIO ASC )
);

/*==============================================================*/
/* Index: SIGLAB_PERMISO_FK                                     */
/*==============================================================*/
create  index SIGLAB_PERMISO_FK on PERMISOS (
( ID_PANTALLA ASC )
);

/*==============================================================*/
/* Index: USUARIO_PERMISO_FK                                    */
/*==============================================================*/
create  index USUARIO_PERMISO_FK on PERMISOS (
( ID_USUARIO ASC )
);

/*==============================================================*/
/* Table: PERSONAS                                              */
/*==============================================================*/
create table IS4.PERSONAS (
   ID_PERSONA           integer              not null default autoincrement,
   NOMBRE               long varchar         not null,
   SEXO                 char(2)              not null,
   FEC_NACIMIENTO       date                 not null,
   DIRECCION            long varchar         not null,
   CIUDAD               long varchar         not null,
   TELEFONO             long varchar         not null,
   EMAIL                long varchar         null,
   DOCUMENTO            long varchar         not null,
   constraint PK_PERSONAS primary key (ID_PERSONA)
);

/*==============================================================*/
/* Index: PERSONAS_PK                                           */
/*==============================================================*/
create unique index PERSONAS_PK on PERSONAS (
( ID_PERSONA ASC )
);

/*==============================================================*/
/* Table: PROVEEDORES                                           */
/*==============================================================*/
create table IS4.PROVEEDORES (
   ID_PROVEEDOR         integer              not null default autoincrement,
   ID_PERSONA           integer              not null,
   constraint PK_PROVEEDORES primary key (ID_PROVEEDOR)
);

/*==============================================================*/
/* Index: PROVEEDORES_PK                                        */
/*==============================================================*/
create unique index PROVEEDORES_PK on PROVEEDORES (
( ID_PROVEEDOR ASC )
);

/*==============================================================*/
/* Index: PERSONA_PROVEEDOR_FK                                  */
/*==============================================================*/
create  index PERSONA_PROVEEDOR_FK on PROVEEDORES (
( ID_PERSONA ASC )
);

/*==============================================================*/
/* Table: SEGUROS                                               */
/*==============================================================*/
create table IS4.SEGUROS (
   ID_SEGURO            integer              not null default autoincrement,
   ID_PERSONA           integer              not null,
   constraint PK_SEGUROS primary key (ID_SEGURO)
);

/*==============================================================*/
/* Index: SEGUROS_PK                                            */
/*==============================================================*/
create unique index SEGUROS_PK on SEGUROS (
( ID_SEGURO ASC )
);

/*==============================================================*/
/* Index: PERSONA_SEGURO_FK                                     */
/*==============================================================*/
create  index PERSONA_SEGURO_FK on SEGUROS (
( ID_PERSONA ASC )
);

/*==============================================================*/
/* Table: SER_FACT                                              */
/*==============================================================*/
create table IS4.SER_FACT (
   SER_FACT             char(7)              not null,
   TIP_FACT             char(3)              not null,
   constraint PK_SER_FACT primary key (SER_FACT, TIP_FACT)
);

/*==============================================================*/
/* Index: SER_FACT_PK                                           */
/*==============================================================*/
create unique index SER_FACT_PK on SER_FACT (
( SER_FACT ASC ),
( TIP_FACT ASC )
);

/*==============================================================*/
/* Index: TIP_SER_FACT_FK                                       */
/*==============================================================*/
create  index TIP_SER_FACT_FK on SER_FACT (
( TIP_FACT ASC )
);

/*==============================================================*/
/* Table: SER_TRANSACCION                                       */
/*==============================================================*/
create table IS4.SER_TRANSACCION (
   SER_TRANSACCION      char(7)              not null,
   ID_TRANSACCION       integer              not null,
   constraint PK_SER_TRANSACCION primary key (SER_TRANSACCION, ID_TRANSACCION)
);

/*==============================================================*/
/* Index: SER_TRANSACCION_PK                                    */
/*==============================================================*/
create unique index SER_TRANSACCION_PK on SER_TRANSACCION (
( SER_TRANSACCION ASC ),
( ID_TRANSACCION ASC )
);

/*==============================================================*/
/* Index: ID_TIP_SER_TRANSACCION_FK                             */
/*==============================================================*/
create  index ID_TIP_SER_TRANSACCION_FK on SER_TRANSACCION (
( ID_TRANSACCION ASC )
);

/*==============================================================*/
/* Table: SIGLAB                                                */
/*==============================================================*/
create table IS4.SIGLAB (
   ID_PANTALLA          integer              not null default autoincrement,
   ID_MODULO            char(2)              not null,
   NOMBRE               long varchar         not null,
   DESCRIPCION          long varchar         null,
   constraint PK_SIGLAB primary key (ID_PANTALLA)
);

/*==============================================================*/
/* Index: SIGLAB_PK                                             */
/*==============================================================*/
create unique index SIGLAB_PK on SIGLAB (
( ID_PANTALLA ASC )
);

/*==============================================================*/
/* Index: MODULO_SIGLAB_FK                                      */
/*==============================================================*/
create  index MODULO_SIGLAB_FK on SIGLAB (
( ID_MODULO ASC )
);

/*==============================================================*/
/* Table: TIP_CAMBIOS                                           */
/*==============================================================*/
create table IS4.TIP_CAMBIOS (
   FECHA                date                 not null,
   ID_MONEDA            integer              not null,
   VAL_VENTA            numeric              not null,
   VAL_COMPRA           numeric              not null,
   constraint PK_TIP_CAMBIOS primary key (FECHA, ID_MONEDA)
);

/*==============================================================*/
/* Index: TIP_CAMBIOS_PK                                        */
/*==============================================================*/
create unique index TIP_CAMBIOS_PK on TIP_CAMBIOS (
( FECHA ASC ),
( ID_MONEDA ASC )
);

/*==============================================================*/
/* Index: MONDA_TIP_CAMBIO_FK                                   */
/*==============================================================*/
create  index MONDA_TIP_CAMBIO_FK on TIP_CAMBIOS (
( ID_MONEDA ASC )
);

/*==============================================================*/
/* Table: TIP_FACT                                              */
/*==============================================================*/
create table IS4.TIP_FACT (
   TIP_FACT             char(3)              not null,
   DESCRIPCION          long varchar         not null,
   COD_MODULO           char(2)              not null,
   constraint PK_TIP_FACT primary key (TIP_FACT)
);

/*==============================================================*/
/* Index: TIP_FACT_PK                                           */
/*==============================================================*/
create unique index TIP_FACT_PK on TIP_FACT (
( TIP_FACT ASC )
);

/*==============================================================*/
/* Table: TIP_TRANSACCION                                       */
/*==============================================================*/
create table IS4.TIP_TRANSACCION (
   ID_TRANSACCION       integer              not null default autoincrement,
   NOMBRE               long varchar         not null,
   USA_VALORES          smallint             not null,
   constraint PK_TIP_TRANSACCION primary key (ID_TRANSACCION)
);

/*==============================================================*/
/* Index: TIP_TRANSACCION_PK                                    */
/*==============================================================*/
create unique index TIP_TRANSACCION_PK on TIP_TRANSACCION (
( ID_TRANSACCION ASC )
);

/*==============================================================*/
/* Table: UNIDADES                                              */
/*==============================================================*/
create table IS4.UNIDADES (
   ID_UNIDAD            integer              not null default autoincrement,
   NOMBRE               long varchar         not null,
   constraint PK_UNIDADES primary key (ID_UNIDAD)
);

/*==============================================================*/
/* Index: UNIDADES_PK                                           */
/*==============================================================*/
create unique index UNIDADES_PK on UNIDADES (
( ID_UNIDAD ASC )
);

/*==============================================================*/
/* Table: USUARIOS                                              */
/*==============================================================*/
create table IS4.USUARIOS (
   ID_USUARIO           char(256)            not null,
   ID_GRUPO             integer              not null,
   PASSWORD             long varchar         not null,
   ACTIVO               smallint             not null,
   constraint PK_USUARIOS primary key (ID_USUARIO)
);

/*==============================================================*/
/* Index: USUARIOS_PK                                           */
/*==============================================================*/
create unique index USUARIOS_PK on USUARIOS (
( ID_USUARIO ASC )
);

/*==============================================================*/
/* Index: USUARIOS_GRUPOS_FK                                    */
/*==============================================================*/
create  index USUARIOS_GRUPOS_FK on USUARIOS (
( ID_GRUPO ASC )
);

alter table ACCESOS_GRUPOS
   add constraint FK_ACCESOS__GRUPOS_AC_GRUPOS_U foreign key (ID_GRUPO)
      references GRUPOS_USUARIOS (ID_GRUPO)
      on delete restrict on update restrict;

alter table ACCESOS_GRUPOS
   add constraint FK_ACCESOS__SIGLAB_AC_SIGLAB foreign key (ID_PANTALLA)
      references SIGLAB (ID_PANTALLA)
      on delete restrict on update restrict;

alter table ANALISIS_CAB
   add constraint FK_ANALISIS_PACIENTES_PACIENTE foreign key (ID_PACIENTE)
      references PACIENTES (ID_PACIENTE)
      on delete restrict on update restrict;

alter table ANALISIS_DET
   add constraint FK_ANALISIS_ANALISIS__ANALISIS foreign key (ID_ANALISIS)
      references ANALISIS_CAB (ID_ANALISIS)
      on delete restrict on update restrict;

alter table ANALISIS_DET
   add constraint FK_ANALISIS_LOTE_ANAL_LOTES foreign key (ID_LOTE)
      references LOTES (ID_LOTE)
      on delete restrict on update restrict;

alter table AUDITORIA
   add constraint FK_AUDITORI_USUARIO_A_USUARIOS foreign key (ID_USUARIO)
      references USUARIOS (ID_USUARIO)
      on delete restrict on update restrict;

alter table COMPRAS_CAB
   add constraint FK_COMPRAS__PROVEEDOR_PROVEEDO foreign key (ID_PROVEEDOR)
      references PROVEEDORES (ID_PROVEEDOR)
      on delete restrict on update restrict;

alter table COMPRAS_CAB
   add constraint FK_COMPRAS__SER_FACT__SER_FACT foreign key (SER_FACT, TIP_FACT)
      references SER_FACT (SER_FACT, TIP_FACT)
      on delete restrict on update restrict;

alter table COMPRAS_CAB
   add constraint FK_COMPRAS__TIP_CAMBI_TIP_CAMB foreign key (FECHA, ID_MONEDA)
      references TIP_CAMBIOS (FECHA, ID_MONEDA)
      on delete restrict on update restrict;

alter table COMPRAS_DET
   add constraint FK_COMPRAS__COMPRAS_C_COMPRAS_ foreign key (ID_COMPRA)
      references COMPRAS_CAB (ID_COMPRA)
      on delete restrict on update restrict;

alter table COMPRAS_DET
   add constraint FK_COMPRAS__INSUMOS_C_INSUMOS foreign key (ID_INSUMO)
      references INSUMOS (ID_INSUMO)
      on delete restrict on update restrict;

alter table COMPRAS_DET
   add constraint FK_COMPRAS__LOTE_COMP_LOTES foreign key (ID_LOTE)
      references LOTES (ID_LOTE)
      on delete restrict on update restrict;

alter table CUENTAS
   add constraint FK_CUENTAS_ID_PERSON_PERSONAS foreign key (ID_PERSONA)
      references PERSONAS (ID_PERSONA)
      on delete restrict on update restrict;

alter table EMPLEADOS
   add constraint FK_EMPLEADO_RELATIONS_PERSONAS foreign key (ID_PERSONA)
      references PERSONAS (ID_PERSONA)
      on delete restrict on update restrict;

alter table FACT_CAB
   add constraint FK_FACT_CAB_SER_FACT__SER_FACT foreign key (SER_FACT, TIP_FACT)
      references SER_FACT (SER_FACT, TIP_FACT)
      on delete restrict on update restrict;

alter table FACT_CAB
   add constraint FK_FACT_CAB_TIP_CAMBI_TIP_CAMB foreign key (FECHA, ID_MONEDA)
      references TIP_CAMBIOS (FECHA, ID_MONEDA)
      on delete restrict on update restrict;

alter table FACT_DET
   add constraint FK_FACT_DET_ANALISIS__ANALISIS foreign key (ID_ANALISIS)
      references ANALISIS_CAB (ID_ANALISIS)
      on delete restrict on update restrict;

alter table FACT_DET
   add constraint FK_FACT_DET_FACT_CAB__FACT_CAB foreign key (ID_FACT)
      references FACT_CAB (ID_FACT)
      on delete restrict on update restrict;

alter table FORMAS_COBROS
   add constraint FK_FORMAS_C_CUENTA_FO_CUENTAS foreign key (ID_CUENTA, ID_PERSONA)
      references CUENTAS (ID_CUENTA, ID_PERSONA)
      on delete restrict on update restrict;

alter table FORMAS_COBROS
   add constraint FK_FORMAS_C_FACT_CAB__FACT_CAB foreign key (ID_FACT)
      references FACT_CAB (ID_FACT)
      on delete restrict on update restrict;

alter table FORMAS_COBROS
   add constraint FK_FORMAS_C_RELATIONS_SER_TRAN foreign key (SER_TRANSACCION, ID_TRANSACCION)
      references SER_TRANSACCION (SER_TRANSACCION, ID_TRANSACCION)
      on delete restrict on update restrict;

alter table FORMAS_PAGOS
   add constraint FK_FORMAS_P_COMPRA_PA_COMPRAS_ foreign key (ID_COMPRA)
      references COMPRAS_CAB (ID_COMPRA)
      on delete restrict on update restrict;

alter table FORMAS_PAGOS
   add constraint FK_FORMAS_P_CUENTA_PA_CUENTAS foreign key (ID_CUENTA, ID_PERSONA)
      references CUENTAS (ID_CUENTA, ID_PERSONA)
      on delete restrict on update restrict;

alter table FORMAS_PAGOS
   add constraint FK_FORMAS_P_SER_TRANS_SER_TRAN foreign key (SER_TRANSACCION, ID_TRANSACCION)
      references SER_TRANSACCION (SER_TRANSACCION, ID_TRANSACCION)
      on delete restrict on update restrict;

alter table INSUMOS
   add constraint FK_INSUMOS_MATERIAL__MATERIAL foreign key (ID_MATERIAL)
      references MATERIALES (ID_MATERIAL)
      on delete restrict on update restrict;

alter table INSUMOS
   add constraint FK_INSUMOS_UNIDAD_IN_UNIDADES foreign key (ID_UNIDAD)
      references UNIDADES (ID_UNIDAD)
      on delete restrict on update restrict;

alter table LOTES
   add constraint FK_LOTES_INSUMO_LO_INSUMOS foreign key (ID_INSUMO)
      references INSUMOS (ID_INSUMO)
      on delete restrict on update restrict;

alter table MOV_STOCK_DET
   add constraint FK_MOV_STOC_INSUMO_MO_INSUMOS foreign key (ID_INSUMO)
      references INSUMOS (ID_INSUMO)
      on delete restrict on update restrict;

alter table MOV_STOCK_DET
   add constraint FK_MOV_STOC_MOV_CAB_D_MOV_STOC foreign key (ID_MOV_STOCK)
      references MOV_STOCK_CAB (ID_MOV_STOCK)
      on delete restrict on update restrict;

alter table PACIENTES
   add constraint FK_PACIENTE_PERSONA_P_PERSONAS foreign key (ID_PERSONA)
      references PERSONAS (ID_PERSONA)
      on delete restrict on update restrict;

alter table PACIENTES
   add constraint FK_PACIENTE_SEGURO_PA_SEGUROS foreign key (ID_SEGURO)
      references SEGUROS (ID_SEGURO)
      on delete restrict on update restrict;

alter table PERMISOS
   add constraint FK_PERMISOS_SIGLAB_PE_SIGLAB foreign key (ID_PANTALLA)
      references SIGLAB (ID_PANTALLA)
      on delete restrict on update restrict;

alter table PERMISOS
   add constraint FK_PERMISOS_USUARIO_P_USUARIOS foreign key (ID_USUARIO)
      references USUARIOS (ID_USUARIO)
      on delete restrict on update restrict;

alter table PROVEEDORES
   add constraint FK_PROVEEDO_PERSONA_P_PERSONAS foreign key (ID_PERSONA)
      references PERSONAS (ID_PERSONA)
      on delete restrict on update restrict;

alter table SEGUROS
   add constraint FK_SEGUROS_PERSONA_S_PERSONAS foreign key (ID_PERSONA)
      references PERSONAS (ID_PERSONA)
      on delete restrict on update restrict;

alter table SER_FACT
   add constraint FK_SER_FACT_TIP_SER_F_TIP_FACT foreign key (TIP_FACT)
      references TIP_FACT (TIP_FACT)
      on delete restrict on update restrict;

alter table SER_TRANSACCION
   add constraint FK_SER_TRAN_ID_TIP_SE_TIP_TRAN foreign key (ID_TRANSACCION)
      references TIP_TRANSACCION (ID_TRANSACCION)
      on delete restrict on update restrict;

alter table SIGLAB
   add constraint FK_SIGLAB_MODULO_SI_MODULOS foreign key (ID_MODULO)
      references MODULOS (ID_MODULO)
      on delete restrict on update restrict;

alter table TIP_CAMBIOS
   add constraint FK_TIP_CAMB_MONDA_TIP_MONEDAS foreign key (ID_MONEDA)
      references MONEDAS (ID_MONEDA)
      on delete restrict on update restrict;

alter table USUARIOS
   add constraint FK_USUARIOS_USUARIOS__GRUPOS_U foreign key (ID_GRUPO)
      references GRUPOS_USUARIOS (ID_GRUPO)
      on delete restrict on update restrict;

