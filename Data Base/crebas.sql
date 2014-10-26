/*==============================================================*/
/* DBMS name:      Sybase SQL Anywhere 11                       */
/* Created on:     26/10/2014 03:48:13                          */
/*==============================================================*/


if exists(select 1 from sys.sysforeignkey where role='FK_ACCESOS__GRUPOS_AC_GRUPOS_U') then
    alter table ACCESOS_GRUPOS
       delete foreign key FK_ACCESOS__GRUPOS_AC_GRUPOS_U
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ACCESOS__SIGLAB_AC_SIGLAB') then
    alter table ACCESOS_GRUPOS
       delete foreign key FK_ACCESOS__SIGLAB_AC_SIGLAB
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ANALISIS_PACIENTES_PACIENTE') then
    alter table ANALISIS_CAB
       delete foreign key FK_ANALISIS_PACIENTES_PACIENTE
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ANALISIS_ANALISIS__ANALISIS') then
    alter table ANALISIS_DET
       delete foreign key FK_ANALISIS_ANALISIS__ANALISIS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_ANALISIS_LOTE_ANAL_LOTES') then
    alter table ANALISIS_DET
       delete foreign key FK_ANALISIS_LOTE_ANAL_LOTES
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_AUDITORI_USUARIO_A_USUARIOS') then
    alter table AUDITORIA
       delete foreign key FK_AUDITORI_USUARIO_A_USUARIOS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_COMPRAS__PROVEEDOR_PROVEEDO') then
    alter table COMPRAS_CAB
       delete foreign key FK_COMPRAS__PROVEEDOR_PROVEEDO
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_COMPRAS__SER_FACT__SER_FACT') then
    alter table COMPRAS_CAB
       delete foreign key FK_COMPRAS__SER_FACT__SER_FACT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_COMPRAS__TIP_CAMBI_TIP_CAMB') then
    alter table COMPRAS_CAB
       delete foreign key FK_COMPRAS__TIP_CAMBI_TIP_CAMB
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_COMPRAS__COMPRAS_C_COMPRAS_') then
    alter table COMPRAS_DET
       delete foreign key FK_COMPRAS__COMPRAS_C_COMPRAS_
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_COMPRAS__INSUMOS_C_INSUMOS') then
    alter table COMPRAS_DET
       delete foreign key FK_COMPRAS__INSUMOS_C_INSUMOS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_COMPRAS__LOTE_COMP_LOTES') then
    alter table COMPRAS_DET
       delete foreign key FK_COMPRAS__LOTE_COMP_LOTES
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_CUENTAS_ID_PERSON_PERSONAS') then
    alter table CUENTAS
       delete foreign key FK_CUENTAS_ID_PERSON_PERSONAS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_EMPLEADO_RELATIONS_PERSONAS') then
    alter table EMPLEADOS
       delete foreign key FK_EMPLEADO_RELATIONS_PERSONAS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_FACT_CAB_SER_FACT__SER_FACT') then
    alter table FACT_CAB
       delete foreign key FK_FACT_CAB_SER_FACT__SER_FACT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_FACT_CAB_TIP_CAMBI_TIP_CAMB') then
    alter table FACT_CAB
       delete foreign key FK_FACT_CAB_TIP_CAMBI_TIP_CAMB
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_FACT_DET_ANALISIS__ANALISIS') then
    alter table FACT_DET
       delete foreign key FK_FACT_DET_ANALISIS__ANALISIS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_FACT_DET_FACT_CAB__FACT_CAB') then
    alter table FACT_DET
       delete foreign key FK_FACT_DET_FACT_CAB__FACT_CAB
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_FORMAS_C_CUENTA_FO_CUENTAS') then
    alter table FORMAS_COBROS
       delete foreign key FK_FORMAS_C_CUENTA_FO_CUENTAS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_FORMAS_C_FACT_CAB__FACT_CAB') then
    alter table FORMAS_COBROS
       delete foreign key FK_FORMAS_C_FACT_CAB__FACT_CAB
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_FORMAS_C_RELATIONS_SER_TRAN') then
    alter table FORMAS_COBROS
       delete foreign key FK_FORMAS_C_RELATIONS_SER_TRAN
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_FORMAS_P_COMPRA_PA_COMPRAS_') then
    alter table FORMAS_PAGOS
       delete foreign key FK_FORMAS_P_COMPRA_PA_COMPRAS_
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_FORMAS_P_CUENTA_PA_CUENTAS') then
    alter table FORMAS_PAGOS
       delete foreign key FK_FORMAS_P_CUENTA_PA_CUENTAS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_FORMAS_P_SER_TRANS_SER_TRAN') then
    alter table FORMAS_PAGOS
       delete foreign key FK_FORMAS_P_SER_TRANS_SER_TRAN
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_INSUMOS_MATERIAL__MATERIAL') then
    alter table INSUMOS
       delete foreign key FK_INSUMOS_MATERIAL__MATERIAL
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_INSUMOS_UNIDAD_IN_UNIDADES') then
    alter table INSUMOS
       delete foreign key FK_INSUMOS_UNIDAD_IN_UNIDADES
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_LOTES_INSUMO_LO_INSUMOS') then
    alter table LOTES
       delete foreign key FK_LOTES_INSUMO_LO_INSUMOS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_MOV_STOC_INSUMO_MO_INSUMOS') then
    alter table MOV_STOCK_DET
       delete foreign key FK_MOV_STOC_INSUMO_MO_INSUMOS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_MOV_STOC_MOV_CAB_D_MOV_STOC') then
    alter table MOV_STOCK_DET
       delete foreign key FK_MOV_STOC_MOV_CAB_D_MOV_STOC
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PACIENTE_PERSONA_P_PERSONAS') then
    alter table PACIENTES
       delete foreign key FK_PACIENTE_PERSONA_P_PERSONAS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PACIENTE_SEGURO_PA_SEGUROS') then
    alter table PACIENTES
       delete foreign key FK_PACIENTE_SEGURO_PA_SEGUROS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PERMISOS_SIGLAB_PE_SIGLAB') then
    alter table PERMISOS
       delete foreign key FK_PERMISOS_SIGLAB_PE_SIGLAB
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PERMISOS_USUARIO_P_USUARIOS') then
    alter table PERMISOS
       delete foreign key FK_PERMISOS_USUARIO_P_USUARIOS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_PROVEEDO_PERSONA_P_PERSONAS') then
    alter table PROVEEDORES
       delete foreign key FK_PROVEEDO_PERSONA_P_PERSONAS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SEGUROS_PERSONA_S_PERSONAS') then
    alter table SEGUROS
       delete foreign key FK_SEGUROS_PERSONA_S_PERSONAS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SER_FACT_TIP_SER_F_TIP_FACT') then
    alter table SER_FACT
       delete foreign key FK_SER_FACT_TIP_SER_F_TIP_FACT
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SER_TRAN_ID_TIP_SE_TIP_TRAN') then
    alter table SER_TRANSACCION
       delete foreign key FK_SER_TRAN_ID_TIP_SE_TIP_TRAN
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_SIGLAB_MODULO_SI_MODULOS') then
    alter table SIGLAB
       delete foreign key FK_SIGLAB_MODULO_SI_MODULOS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_TIP_CAMB_MONDA_TIP_MONEDAS') then
    alter table TIP_CAMBIOS
       delete foreign key FK_TIP_CAMB_MONDA_TIP_MONEDAS
end if;

if exists(select 1 from sys.sysforeignkey where role='FK_USUARIOS_USUARIOS__GRUPOS_U') then
    alter table USUARIOS
       delete foreign key FK_USUARIOS_USUARIOS__GRUPOS_U
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='SIGLAB_ACCESOS_FK'
     and t.table_name='ACCESOS_GRUPOS'
) then
   drop index ACCESOS_GRUPOS.SIGLAB_ACCESOS_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='GRUPOS_ACCESOS_FK'
     and t.table_name='ACCESOS_GRUPOS'
) then
   drop index ACCESOS_GRUPOS.GRUPOS_ACCESOS_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ACCESOS_GRUPOS_PK'
     and t.table_name='ACCESOS_GRUPOS'
) then
   drop index ACCESOS_GRUPOS.ACCESOS_GRUPOS_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='ACCESOS_GRUPOS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table ACCESOS_GRUPOS
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='PACIENTES_ANALISIS_CAB_FK'
     and t.table_name='ANALISIS_CAB'
) then
   drop index ANALISIS_CAB.PACIENTES_ANALISIS_CAB_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ANALISIS_CAB_PK'
     and t.table_name='ANALISIS_CAB'
) then
   drop index ANALISIS_CAB.ANALISIS_CAB_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='ANALISIS_CAB'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table ANALISIS_CAB
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='LOTE_ANALISIS_DET_FK'
     and t.table_name='ANALISIS_DET'
) then
   drop index ANALISIS_DET.LOTE_ANALISIS_DET_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ANALISIS_CAB_DET_FK'
     and t.table_name='ANALISIS_DET'
) then
   drop index ANALISIS_DET.ANALISIS_CAB_DET_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ANALISIS_DET_PK'
     and t.table_name='ANALISIS_DET'
) then
   drop index ANALISIS_DET.ANALISIS_DET_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='ANALISIS_DET'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table ANALISIS_DET
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='USUARIO_AUDITORIA_FK'
     and t.table_name='AUDITORIA'
) then
   drop index AUDITORIA.USUARIO_AUDITORIA_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='AUDITORIA_PK'
     and t.table_name='AUDITORIA'
) then
   drop index AUDITORIA.AUDITORIA_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='AUDITORIA'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table AUDITORIA
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='TIP_CAMBIO_COMPRA_FK'
     and t.table_name='COMPRAS_CAB'
) then
   drop index COMPRAS_CAB.TIP_CAMBIO_COMPRA_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='PROVEEDOR_COMPRA_FK'
     and t.table_name='COMPRAS_CAB'
) then
   drop index COMPRAS_CAB.PROVEEDOR_COMPRA_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='SER_FACT_COMPRA_FK'
     and t.table_name='COMPRAS_CAB'
) then
   drop index COMPRAS_CAB.SER_FACT_COMPRA_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='COMPRAS_CAB_PK'
     and t.table_name='COMPRAS_CAB'
) then
   drop index COMPRAS_CAB.COMPRAS_CAB_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='COMPRAS_CAB'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table COMPRAS_CAB
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='LOTE_COMPRA_DET_FK'
     and t.table_name='COMPRAS_DET'
) then
   drop index COMPRAS_DET.LOTE_COMPRA_DET_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='RELATIONSHIP_34_FK'
     and t.table_name='COMPRAS_DET'
) then
   drop index COMPRAS_DET.RELATIONSHIP_34_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='COMPRAS_CAB_DET_FK'
     and t.table_name='COMPRAS_DET'
) then
   drop index COMPRAS_DET.COMPRAS_CAB_DET_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='COMPRAS_DET_PK'
     and t.table_name='COMPRAS_DET'
) then
   drop index COMPRAS_DET.COMPRAS_DET_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='COMPRAS_DET'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table COMPRAS_DET
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ID_PERSONA_CUENTA_FK'
     and t.table_name='CUENTAS'
) then
   drop index CUENTAS.ID_PERSONA_CUENTA_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='CUENTAS_PK'
     and t.table_name='CUENTAS'
) then
   drop index CUENTAS.CUENTAS_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='CUENTAS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table CUENTAS
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='RELATIONSHIP_1_FK'
     and t.table_name='EMPLEADOS'
) then
   drop index EMPLEADOS.RELATIONSHIP_1_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='EMPLEADOS_PK'
     and t.table_name='EMPLEADOS'
) then
   drop index EMPLEADOS.EMPLEADOS_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='EMPLEADOS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table EMPLEADOS
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='TIP_CAMBIO_FACT_FK'
     and t.table_name='FACT_CAB'
) then
   drop index FACT_CAB.TIP_CAMBIO_FACT_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='SER_FACT_CAB_FK'
     and t.table_name='FACT_CAB'
) then
   drop index FACT_CAB.SER_FACT_CAB_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='FACT_CAB_PK'
     and t.table_name='FACT_CAB'
) then
   drop index FACT_CAB.FACT_CAB_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='FACT_CAB'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table FACT_CAB
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='FACT_CAB_DET_FK'
     and t.table_name='FACT_DET'
) then
   drop index FACT_DET.FACT_CAB_DET_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ANALISIS_FACT_DET_FK'
     and t.table_name='FACT_DET'
) then
   drop index FACT_DET.ANALISIS_FACT_DET_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='FACT_DET_PK'
     and t.table_name='FACT_DET'
) then
   drop index FACT_DET.FACT_DET_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='FACT_DET'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table FACT_DET
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='FACT_CAB_COBROS_FK'
     and t.table_name='FORMAS_COBROS'
) then
   drop index FORMAS_COBROS.FACT_CAB_COBROS_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='CUENTA_FORMA_COBRO_FK'
     and t.table_name='FORMAS_COBROS'
) then
   drop index FORMAS_COBROS.CUENTA_FORMA_COBRO_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='RELATIONSHIP_26_FK'
     and t.table_name='FORMAS_COBROS'
) then
   drop index FORMAS_COBROS.RELATIONSHIP_26_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='FORMAS_COBROS_PK'
     and t.table_name='FORMAS_COBROS'
) then
   drop index FORMAS_COBROS.FORMAS_COBROS_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='FORMAS_COBROS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table FORMAS_COBROS
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='COMPRA_PAGO_FK'
     and t.table_name='FORMAS_PAGOS'
) then
   drop index FORMAS_PAGOS.COMPRA_PAGO_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='CUENTA_PAGO_FK'
     and t.table_name='FORMAS_PAGOS'
) then
   drop index FORMAS_PAGOS.CUENTA_PAGO_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='SER_TRANSACCION_PAGO_FK'
     and t.table_name='FORMAS_PAGOS'
) then
   drop index FORMAS_PAGOS.SER_TRANSACCION_PAGO_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='FORMAS_PAGOS_PK'
     and t.table_name='FORMAS_PAGOS'
) then
   drop index FORMAS_PAGOS.FORMAS_PAGOS_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='FORMAS_PAGOS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table FORMAS_PAGOS
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='GRUPOS_USUARIOS_PK'
     and t.table_name='GRUPOS_USUARIOS'
) then
   drop index GRUPOS_USUARIOS.GRUPOS_USUARIOS_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='GRUPOS_USUARIOS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table GRUPOS_USUARIOS
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='UNIDAD_INSUMO_FK'
     and t.table_name='INSUMOS'
) then
   drop index INSUMOS.UNIDAD_INSUMO_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='MATERIAL_INSUMO_FK'
     and t.table_name='INSUMOS'
) then
   drop index INSUMOS.MATERIAL_INSUMO_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='INSUMOS_PK'
     and t.table_name='INSUMOS'
) then
   drop index INSUMOS.INSUMOS_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='INSUMOS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table INSUMOS
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='INSUMO_LOTE_FK'
     and t.table_name='LOTES'
) then
   drop index LOTES.INSUMO_LOTE_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='LOTES_PK'
     and t.table_name='LOTES'
) then
   drop index LOTES.LOTES_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='LOTES'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table LOTES
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='MATERIALES_PK'
     and t.table_name='MATERIALES'
) then
   drop index MATERIALES.MATERIALES_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='MATERIALES'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table MATERIALES
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='MODULOS_PK'
     and t.table_name='MODULOS'
) then
   drop index MODULOS.MODULOS_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='MODULOS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table MODULOS
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='MONEDAS_PK'
     and t.table_name='MONEDAS'
) then
   drop index MONEDAS.MONEDAS_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='MONEDAS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table MONEDAS
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='MOV_STOCK_CAB_PK'
     and t.table_name='MOV_STOCK_CAB'
) then
   drop index MOV_STOCK_CAB.MOV_STOCK_CAB_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='MOV_STOCK_CAB'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table MOV_STOCK_CAB
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='INSUMO_MOV_STOCK_DET_FK'
     and t.table_name='MOV_STOCK_DET'
) then
   drop index MOV_STOCK_DET.INSUMO_MOV_STOCK_DET_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='MOV_CAB_DET_FK'
     and t.table_name='MOV_STOCK_DET'
) then
   drop index MOV_STOCK_DET.MOV_CAB_DET_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='MOV_STOCK_DET_PK'
     and t.table_name='MOV_STOCK_DET'
) then
   drop index MOV_STOCK_DET.MOV_STOCK_DET_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='MOV_STOCK_DET'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table MOV_STOCK_DET
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='SEGURO_PACIENTE_FK'
     and t.table_name='PACIENTES'
) then
   drop index PACIENTES.SEGURO_PACIENTE_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='PERSONA_PACIENTE_FK'
     and t.table_name='PACIENTES'
) then
   drop index PACIENTES.PERSONA_PACIENTE_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='PACIENTES_PK'
     and t.table_name='PACIENTES'
) then
   drop index PACIENTES.PACIENTES_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='PACIENTES'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table PACIENTES
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='USUARIO_PERMISO_FK'
     and t.table_name='PERMISOS'
) then
   drop index PERMISOS.USUARIO_PERMISO_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='SIGLAB_PERMISO_FK'
     and t.table_name='PERMISOS'
) then
   drop index PERMISOS.SIGLAB_PERMISO_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='PERMISOS_PK'
     and t.table_name='PERMISOS'
) then
   drop index PERMISOS.PERMISOS_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='PERMISOS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table PERMISOS
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='PERSONAS_PK'
     and t.table_name='PERSONAS'
) then
   drop index PERSONAS.PERSONAS_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='PERSONAS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table PERSONAS
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='PERSONA_PROVEEDOR_FK'
     and t.table_name='PROVEEDORES'
) then
   drop index PROVEEDORES.PERSONA_PROVEEDOR_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='PROVEEDORES_PK'
     and t.table_name='PROVEEDORES'
) then
   drop index PROVEEDORES.PROVEEDORES_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='PROVEEDORES'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table PROVEEDORES
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='PERSONA_SEGURO_FK'
     and t.table_name='SEGUROS'
) then
   drop index SEGUROS.PERSONA_SEGURO_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='SEGUROS_PK'
     and t.table_name='SEGUROS'
) then
   drop index SEGUROS.SEGUROS_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='SEGUROS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table SEGUROS
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='TIP_SER_FACT_FK'
     and t.table_name='SER_FACT'
) then
   drop index SER_FACT.TIP_SER_FACT_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='SER_FACT_PK'
     and t.table_name='SER_FACT'
) then
   drop index SER_FACT.SER_FACT_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='SER_FACT'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table SER_FACT
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='ID_TIP_SER_TRANSACCION_FK'
     and t.table_name='SER_TRANSACCION'
) then
   drop index SER_TRANSACCION.ID_TIP_SER_TRANSACCION_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='SER_TRANSACCION_PK'
     and t.table_name='SER_TRANSACCION'
) then
   drop index SER_TRANSACCION.SER_TRANSACCION_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='SER_TRANSACCION'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table SER_TRANSACCION
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='MODULO_SIGLAB_FK'
     and t.table_name='SIGLAB'
) then
   drop index SIGLAB.MODULO_SIGLAB_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='SIGLAB_PK'
     and t.table_name='SIGLAB'
) then
   drop index SIGLAB.SIGLAB_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='SIGLAB'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table SIGLAB
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='MONDA_TIP_CAMBIO_FK'
     and t.table_name='TIP_CAMBIOS'
) then
   drop index TIP_CAMBIOS.MONDA_TIP_CAMBIO_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='TIP_CAMBIOS_PK'
     and t.table_name='TIP_CAMBIOS'
) then
   drop index TIP_CAMBIOS.TIP_CAMBIOS_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='TIP_CAMBIOS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table TIP_CAMBIOS
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='TIP_FACT_PK'
     and t.table_name='TIP_FACT'
) then
   drop index TIP_FACT.TIP_FACT_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='TIP_FACT'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table TIP_FACT
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='TIP_TRANSACCION_PK'
     and t.table_name='TIP_TRANSACCION'
) then
   drop index TIP_TRANSACCION.TIP_TRANSACCION_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='TIP_TRANSACCION'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table TIP_TRANSACCION
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='UNIDADES_PK'
     and t.table_name='UNIDADES'
) then
   drop index UNIDADES.UNIDADES_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='UNIDADES'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table UNIDADES
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='USUARIOS_GRUPOS_FK'
     and t.table_name='USUARIOS'
) then
   drop index USUARIOS.USUARIOS_GRUPOS_FK
end if;

if exists(
   select 1 from sys.sysindex i, sys.systable t
   where i.table_id=t.table_id 
     and i.index_name='USUARIOS_PK'
     and t.table_name='USUARIOS'
) then
   drop index USUARIOS.USUARIOS_PK
end if;

if exists(
   select 1 from sys.systable 
   where table_name='USUARIOS'
     and table_type in ('BASE', 'GBL TEMP')
) then
    drop table USUARIOS
end if;

/*==============================================================*/
/* Table: ACCESOS_GRUPOS                                        */
/*==============================================================*/
create table ACCESOS_GRUPOS 
(
   ID_PANTALLA          integer                        not null,
   ID_GRUPO             integer                        not null,
   CONSULTAR            smallint                       not null,
   INSERTAR             smallint                       not null,
   BORRAR               smallint                       not null,
   ACTUALIZAR           smallint                       not null,
   constraint PK_ACCESOS_GRUPOS primary key (ID_PANTALLA, ID_GRUPO)
);

/*==============================================================*/
/* Index: ACCESOS_GRUPOS_PK                                     */
/*==============================================================*/
create unique index ACCESOS_GRUPOS_PK on ACCESOS_GRUPOS (
ID_PANTALLA ASC,
ID_GRUPO ASC
);

/*==============================================================*/
/* Index: GRUPOS_ACCESOS_FK                                     */
/*==============================================================*/
create index GRUPOS_ACCESOS_FK on ACCESOS_GRUPOS (
ID_GRUPO ASC
);

/*==============================================================*/
/* Index: SIGLAB_ACCESOS_FK                                     */
/*==============================================================*/
create index SIGLAB_ACCESOS_FK on ACCESOS_GRUPOS (
ID_PANTALLA ASC
);

/*==============================================================*/
/* Table: ANALISIS_CAB                                          */
/*==============================================================*/
create table ANALISIS_CAB 
(
   ID_ANALISIS          integer                        not null default autoincrement,
   ID_PACIENTE          integer                        not null,
   FEC_ANALISIS         date                           not null,
   TOTAL                numeric                        not null,
   constraint PK_ANALISIS_CAB primary key (ID_ANALISIS)
);

/*==============================================================*/
/* Index: ANALISIS_CAB_PK                                       */
/*==============================================================*/
create unique index ANALISIS_CAB_PK on ANALISIS_CAB (
ID_ANALISIS ASC
);

/*==============================================================*/
/* Index: PACIENTES_ANALISIS_CAB_FK                             */
/*==============================================================*/
create index PACIENTES_ANALISIS_CAB_FK on ANALISIS_CAB (
ID_PACIENTE ASC
);

/*==============================================================*/
/* Table: ANALISIS_DET                                          */
/*==============================================================*/
create table ANALISIS_DET 
(
   ID_ANALISIS          integer                        not null,
   ID_LOTE              integer                        not null,
   RESULTADO            float                          not null,
   constraint PK_ANALISIS_DET primary key (ID_ANALISIS, ID_LOTE)
);

/*==============================================================*/
/* Index: ANALISIS_DET_PK                                       */
/*==============================================================*/
create unique index ANALISIS_DET_PK on ANALISIS_DET (
ID_ANALISIS ASC,
ID_LOTE ASC
);

/*==============================================================*/
/* Index: ANALISIS_CAB_DET_FK                                   */
/*==============================================================*/
create index ANALISIS_CAB_DET_FK on ANALISIS_DET (
ID_ANALISIS ASC
);

/*==============================================================*/
/* Index: LOTE_ANALISIS_DET_FK                                  */
/*==============================================================*/
create index LOTE_ANALISIS_DET_FK on ANALISIS_DET (
ID_LOTE ASC
);

/*==============================================================*/
/* Table: AUDITORIA                                             */
/*==============================================================*/
create table AUDITORIA 
(
   ID_MOVIMIENTO        integer                        not null default autoincrement,
   ID_USUARIO           char(256)                      not null,
   NOM_TABLA            char(256)                      not null,
   TIP_OPERACION        char(1)                        not null,
   CAMPOS               long varchar                   not null,
   FECHA                timestamp                      not null,
   DATOS_ANTERIORES     long varchar                   not null,
   DATOS_POSTERIORES    long varchar                   not null,
   constraint PK_AUDITORIA primary key (ID_MOVIMIENTO)
);

/*==============================================================*/
/* Index: AUDITORIA_PK                                          */
/*==============================================================*/
create unique index AUDITORIA_PK on AUDITORIA (
ID_MOVIMIENTO ASC
);

/*==============================================================*/
/* Index: USUARIO_AUDITORIA_FK                                  */
/*==============================================================*/
create index USUARIO_AUDITORIA_FK on AUDITORIA (
ID_USUARIO ASC
);

/*==============================================================*/
/* Table: COMPRAS_CAB                                           */
/*==============================================================*/
create table COMPRAS_CAB 
(
   ID_COMPRA            integer                        not null default autoincrement,
   SER_FACT             char(7)                        not null,
   TIP_FACT             char(3)                        not null,
   ID_PROVEEDOR         integer                        not null,
   FECHA                date                           null,
   ID_MONEDA            integer                        null,
   NRO_FACT             numeric                        not null,
   TOTAL                numeric                        not null,
   constraint PK_COMPRAS_CAB primary key (ID_COMPRA)
);

/*==============================================================*/
/* Index: COMPRAS_CAB_PK                                        */
/*==============================================================*/
create unique index COMPRAS_CAB_PK on COMPRAS_CAB (
ID_COMPRA ASC
);

/*==============================================================*/
/* Index: SER_FACT_COMPRA_FK                                    */
/*==============================================================*/
create index SER_FACT_COMPRA_FK on COMPRAS_CAB (
SER_FACT ASC,
TIP_FACT ASC
);

/*==============================================================*/
/* Index: PROVEEDOR_COMPRA_FK                                   */
/*==============================================================*/
create index PROVEEDOR_COMPRA_FK on COMPRAS_CAB (
ID_PROVEEDOR ASC
);

/*==============================================================*/
/* Index: TIP_CAMBIO_COMPRA_FK                                  */
/*==============================================================*/
create index TIP_CAMBIO_COMPRA_FK on COMPRAS_CAB (
FECHA ASC,
ID_MONEDA ASC
);

/*==============================================================*/
/* Table: COMPRAS_DET                                           */
/*==============================================================*/
create table COMPRAS_DET 
(
   ID_INSUMO            integer                        not null,
   ID_COMPRA            integer                        not null,
   ID_LOTE              integer                        null,
   CANTIDAD             numeric                        not null,
   PRECIO_UNITARIO      numeric                        not null,
   TOTAL                numeric                        not null,
   constraint PK_COMPRAS_DET primary key (ID_INSUMO, ID_COMPRA)
);

/*==============================================================*/
/* Index: COMPRAS_DET_PK                                        */
/*==============================================================*/
create unique index COMPRAS_DET_PK on COMPRAS_DET (
ID_INSUMO ASC,
ID_COMPRA ASC
);

/*==============================================================*/
/* Index: COMPRAS_CAB_DET_FK                                    */
/*==============================================================*/
create index COMPRAS_CAB_DET_FK on COMPRAS_DET (
ID_COMPRA ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_34_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_34_FK on COMPRAS_DET (
ID_INSUMO ASC
);

/*==============================================================*/
/* Index: LOTE_COMPRA_DET_FK                                    */
/*==============================================================*/
create index LOTE_COMPRA_DET_FK on COMPRAS_DET (
ID_LOTE ASC
);

/*==============================================================*/
/* Table: CUENTAS                                               */
/*==============================================================*/
create table CUENTAS 
(
   ID_CUENTA            integer                        not null default autoincrement,
   ID_PERSONA           integer                        not null,
   NOMBRE               long varchar                   not null,
   constraint PK_CUENTAS primary key (ID_CUENTA, ID_PERSONA)
);

/*==============================================================*/
/* Index: CUENTAS_PK                                            */
/*==============================================================*/
create unique index CUENTAS_PK on CUENTAS (
ID_CUENTA ASC,
ID_PERSONA ASC
);

/*==============================================================*/
/* Index: ID_PERSONA_CUENTA_FK                                  */
/*==============================================================*/
create index ID_PERSONA_CUENTA_FK on CUENTAS (
ID_PERSONA ASC
);

/*==============================================================*/
/* Table: EMPLEADOS                                             */
/*==============================================================*/
create table EMPLEADOS 
(
   ID_EMPLEADO          integer                        not null default autoincrement,
   ID_PERSONA           integer                        not null,
   TIP_EMPLEADO         char(2)                        not null,
   ESPECIALIDAD         long varchar                   null,
   ACTIVO               smallint                       not null,
   OBSERVACION          long varchar                   null,
   constraint PK_EMPLEADOS primary key (ID_EMPLEADO)
);

/*==============================================================*/
/* Index: EMPLEADOS_PK                                          */
/*==============================================================*/
create unique index EMPLEADOS_PK on EMPLEADOS (
ID_EMPLEADO ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_1_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_1_FK on EMPLEADOS (
ID_PERSONA ASC
);

/*==============================================================*/
/* Table: FACT_CAB                                              */
/*==============================================================*/
create table FACT_CAB 
(
   ID_FACT              integer                        not null default autoincrement,
   SER_FACT             char(7)                        not null,
   TIP_FACT             char(3)                        not null,
   FECHA                date                           null,
   ID_MONEDA            integer                        null,
   NRO_FACT             numeric                        not null,
   REFERENCIA           char(20)                       not null,
   TOTAL                numeric                        null,
   constraint PK_FACT_CAB primary key (ID_FACT)
);

/*==============================================================*/
/* Index: FACT_CAB_PK                                           */
/*==============================================================*/
create unique index FACT_CAB_PK on FACT_CAB (
ID_FACT ASC
);

/*==============================================================*/
/* Index: SER_FACT_CAB_FK                                       */
/*==============================================================*/
create index SER_FACT_CAB_FK on FACT_CAB (
SER_FACT ASC,
TIP_FACT ASC
);

/*==============================================================*/
/* Index: TIP_CAMBIO_FACT_FK                                    */
/*==============================================================*/
create index TIP_CAMBIO_FACT_FK on FACT_CAB (
FECHA ASC,
ID_MONEDA ASC
);

/*==============================================================*/
/* Table: FACT_DET                                              */
/*==============================================================*/
create table FACT_DET 
(
   ID_FACT              integer                        not null,
   ID_ANALISIS          integer                        not null,
   constraint PK_FACT_DET primary key (ID_FACT, ID_ANALISIS)
);

/*==============================================================*/
/* Index: FACT_DET_PK                                           */
/*==============================================================*/
create unique index FACT_DET_PK on FACT_DET (
ID_FACT ASC,
ID_ANALISIS ASC
);

/*==============================================================*/
/* Index: ANALISIS_FACT_DET_FK                                  */
/*==============================================================*/
create index ANALISIS_FACT_DET_FK on FACT_DET (
ID_ANALISIS ASC
);

/*==============================================================*/
/* Index: FACT_CAB_DET_FK                                       */
/*==============================================================*/
create index FACT_CAB_DET_FK on FACT_DET (
ID_FACT ASC
);

/*==============================================================*/
/* Table: FORMAS_COBROS                                         */
/*==============================================================*/
create table FORMAS_COBROS 
(
   ID_COBRO             integer                        not null default autoincrement,
   SER_TRANSACCION      char(7)                        not null,
   ID_TRANSACCION       integer                        not null,
   ID_CUENTA            integer                        null,
   ID_PERSONA           integer                        null,
   ID_FACT              integer                        not null,
   REFERENCIA           char(50)                       null,
   MONTO                numeric                        not null,
   constraint PK_FORMAS_COBROS primary key (ID_COBRO, ID_FACT)
);

/*==============================================================*/
/* Index: FORMAS_COBROS_PK                                      */
/*==============================================================*/
create unique index FORMAS_COBROS_PK on FORMAS_COBROS (
ID_COBRO ASC,
ID_FACT ASC
);

/*==============================================================*/
/* Index: RELATIONSHIP_26_FK                                    */
/*==============================================================*/
create index RELATIONSHIP_26_FK on FORMAS_COBROS (
SER_TRANSACCION ASC,
ID_TRANSACCION ASC
);

/*==============================================================*/
/* Index: CUENTA_FORMA_COBRO_FK                                 */
/*==============================================================*/
create index CUENTA_FORMA_COBRO_FK on FORMAS_COBROS (
ID_CUENTA ASC,
ID_PERSONA ASC
);

/*==============================================================*/
/* Index: FACT_CAB_COBROS_FK                                    */
/*==============================================================*/
create index FACT_CAB_COBROS_FK on FORMAS_COBROS (
ID_FACT ASC
);

/*==============================================================*/
/* Table: FORMAS_PAGOS                                          */
/*==============================================================*/
create table FORMAS_PAGOS 
(
   ID_PAGO              integer                        not null default autoincrement,
   SER_TRANSACCION      char(7)                        not null,
   ID_TRANSACCION       integer                        not null,
   ID_CUENTA            integer                        null,
   ID_PERSONA           integer                        null,
   ID_COMPRA            integer                        not null,
   REFERENCIA           char(256)                      null,
   MONTO                numeric                        not null,
   constraint PK_FORMAS_PAGOS primary key (ID_PAGO, ID_COMPRA)
);

/*==============================================================*/
/* Index: FORMAS_PAGOS_PK                                       */
/*==============================================================*/
create unique index FORMAS_PAGOS_PK on FORMAS_PAGOS (
ID_PAGO ASC,
ID_COMPRA ASC
);

/*==============================================================*/
/* Index: SER_TRANSACCION_PAGO_FK                               */
/*==============================================================*/
create index SER_TRANSACCION_PAGO_FK on FORMAS_PAGOS (
SER_TRANSACCION ASC,
ID_TRANSACCION ASC
);

/*==============================================================*/
/* Index: CUENTA_PAGO_FK                                        */
/*==============================================================*/
create index CUENTA_PAGO_FK on FORMAS_PAGOS (
ID_CUENTA ASC,
ID_PERSONA ASC
);

/*==============================================================*/
/* Index: COMPRA_PAGO_FK                                        */
/*==============================================================*/
create index COMPRA_PAGO_FK on FORMAS_PAGOS (
ID_COMPRA ASC
);

/*==============================================================*/
/* Table: GRUPOS_USUARIOS                                       */
/*==============================================================*/
create table GRUPOS_USUARIOS 
(
   ID_GRUPO             integer                        not null default autoincrement,
   NOMBRE               long varchar                   not null,
   constraint PK_GRUPOS_USUARIOS primary key (ID_GRUPO)
);

/*==============================================================*/
/* Index: GRUPOS_USUARIOS_PK                                    */
/*==============================================================*/
create unique index GRUPOS_USUARIOS_PK on GRUPOS_USUARIOS (
ID_GRUPO ASC
);

/*==============================================================*/
/* Table: INSUMOS                                               */
/*==============================================================*/
create table INSUMOS 
(
   ID_INSUMO            integer                        not null default autoincrement,
   ID_MATERIAL          integer                        null,
   ID_UNIDAD            integer                        null,
   NOMBRE               long varchar                   not null,
   TIP_INSUMO           char(2)                        not null,
   VALOR_INFERIOR       numeric(8,2)                   null,
   VALOR_SUPERIOR       numeric(8,2)                   null,
   REFENCIA             long varchar                   null,
   MANEJA_LOTE          smallint                       not null,
   ACTIVO               smallint                       not null,
   EXISTENCIA           numeric                        not null,
   constraint PK_INSUMOS primary key (ID_INSUMO)
);

/*==============================================================*/
/* Index: INSUMOS_PK                                            */
/*==============================================================*/
create unique index INSUMOS_PK on INSUMOS (
ID_INSUMO ASC
);

/*==============================================================*/
/* Index: MATERIAL_INSUMO_FK                                    */
/*==============================================================*/
create index MATERIAL_INSUMO_FK on INSUMOS (
ID_MATERIAL ASC
);

/*==============================================================*/
/* Index: UNIDAD_INSUMO_FK                                      */
/*==============================================================*/
create index UNIDAD_INSUMO_FK on INSUMOS (
ID_UNIDAD ASC
);

/*==============================================================*/
/* Table: LOTES                                                 */
/*==============================================================*/
create table LOTES 
(
   ID_LOTE              integer                        not null default autoincrement,
   ID_INSUMO            integer                        not null,
   DESCRICPCION         long varchar                   not null,
   NRO_LOTE             char(256)                      not null,
   FEC_ENTRADA          date                           not null,
   FEC_VENCIMIENTO      date                           null,
   CANTIDAD             numeric                        not null,
   constraint PK_LOTES primary key (ID_LOTE)
);

/*==============================================================*/
/* Index: LOTES_PK                                              */
/*==============================================================*/
create unique index LOTES_PK on LOTES (
ID_LOTE ASC
);

/*==============================================================*/
/* Index: INSUMO_LOTE_FK                                        */
/*==============================================================*/
create index INSUMO_LOTE_FK on LOTES (
ID_INSUMO ASC
);

/*==============================================================*/
/* Table: MATERIALES                                            */
/*==============================================================*/
create table MATERIALES 
(
   ID_MATERIAL          integer                        not null default autoincrement,
   NOMBRE               long varchar                   not null,
   constraint PK_MATERIALES primary key (ID_MATERIAL)
);

/*==============================================================*/
/* Index: MATERIALES_PK                                         */
/*==============================================================*/
create unique index MATERIALES_PK on MATERIALES (
ID_MATERIAL ASC
);

/*==============================================================*/
/* Table: MODULOS                                               */
/*==============================================================*/
create table MODULOS 
(
   ID_MODULO            char(2)                        not null,
   NOMBRE               long varchar                   null,
   constraint PK_MODULOS primary key (ID_MODULO)
);

/*==============================================================*/
/* Index: MODULOS_PK                                            */
/*==============================================================*/
create unique index MODULOS_PK on MODULOS (
ID_MODULO ASC
);

/*==============================================================*/
/* Table: MONEDAS                                               */
/*==============================================================*/
create table MONEDAS 
(
   ID_MONEDA            integer                        not null default autoincrement,
   DESCRIPCION          long varchar                   not null,
   NOM_CORTO            char(2)                        null,
   DECIMALES            numeric                        null,
   constraint PK_MONEDAS primary key (ID_MONEDA)
);

/*==============================================================*/
/* Index: MONEDAS_PK                                            */
/*==============================================================*/
create unique index MONEDAS_PK on MONEDAS (
ID_MONEDA ASC
);

/*==============================================================*/
/* Table: MOV_STOCK_CAB                                         */
/*==============================================================*/
create table MOV_STOCK_CAB 
(
   ID_MOV_STOCK         integer                        not null default autoincrement,
   TIP_MOVIMIENTO       char(1)                        not null,
   constraint PK_MOV_STOCK_CAB primary key (ID_MOV_STOCK)
);

/*==============================================================*/
/* Index: MOV_STOCK_CAB_PK                                      */
/*==============================================================*/
create unique index MOV_STOCK_CAB_PK on MOV_STOCK_CAB (
ID_MOV_STOCK ASC
);

/*==============================================================*/
/* Table: MOV_STOCK_DET                                         */
/*==============================================================*/
create table MOV_STOCK_DET 
(
   ID_MOV_STOCK         integer                        not null,
   ID_INSUMO            integer                        not null,
   CANTIDAD             numeric                        not null,
   constraint PK_MOV_STOCK_DET primary key (ID_MOV_STOCK, ID_INSUMO)
);

/*==============================================================*/
/* Index: MOV_STOCK_DET_PK                                      */
/*==============================================================*/
create unique index MOV_STOCK_DET_PK on MOV_STOCK_DET (
ID_MOV_STOCK ASC,
ID_INSUMO ASC
);

/*==============================================================*/
/* Index: MOV_CAB_DET_FK                                        */
/*==============================================================*/
create index MOV_CAB_DET_FK on MOV_STOCK_DET (
ID_MOV_STOCK ASC
);

/*==============================================================*/
/* Index: INSUMO_MOV_STOCK_DET_FK                               */
/*==============================================================*/
create index INSUMO_MOV_STOCK_DET_FK on MOV_STOCK_DET (
ID_INSUMO ASC
);

/*==============================================================*/
/* Table: PACIENTES                                             */
/*==============================================================*/
create table PACIENTES 
(
   ID_PACIENTE          integer                        not null default autoincrement,
   ID_PERSONA           integer                        not null,
   ID_SEGURO            integer                        null,
   TIP_SANGRE           char(4)                        not null,
   FEC_ENTRADA          date                           not null,
   constraint PK_PACIENTES primary key (ID_PACIENTE)
);

/*==============================================================*/
/* Index: PACIENTES_PK                                          */
/*==============================================================*/
create unique index PACIENTES_PK on PACIENTES (
ID_PACIENTE ASC
);

/*==============================================================*/
/* Index: PERSONA_PACIENTE_FK                                   */
/*==============================================================*/
create index PERSONA_PACIENTE_FK on PACIENTES (
ID_PERSONA ASC
);

/*==============================================================*/
/* Index: SEGURO_PACIENTE_FK                                    */
/*==============================================================*/
create index SEGURO_PACIENTE_FK on PACIENTES (
ID_SEGURO ASC
);

/*==============================================================*/
/* Table: PERMISOS                                              */
/*==============================================================*/
create table PERMISOS 
(
   ID_PANTALLA          integer                        not null,
   ID_USUARIO           char(256)                      not null,
   NOMBRE               char(256)                      null,
   PERMISO              smallint                       null,
   constraint PK_PERMISOS primary key (ID_PANTALLA, ID_USUARIO)
);

/*==============================================================*/
/* Index: PERMISOS_PK                                           */
/*==============================================================*/
create unique index PERMISOS_PK on PERMISOS (
ID_PANTALLA ASC,
ID_USUARIO ASC
);

/*==============================================================*/
/* Index: SIGLAB_PERMISO_FK                                     */
/*==============================================================*/
create index SIGLAB_PERMISO_FK on PERMISOS (
ID_PANTALLA ASC
);

/*==============================================================*/
/* Index: USUARIO_PERMISO_FK                                    */
/*==============================================================*/
create index USUARIO_PERMISO_FK on PERMISOS (
ID_USUARIO ASC
);

/*==============================================================*/
/* Table: PERSONAS                                              */
/*==============================================================*/
create table PERSONAS 
(
   ID_PERSONA           integer                        not null default autoincrement,
   NOMBRE               long varchar                   not null,
   SEXO                 char(2)                        not null,
   FEC_NACIMIENTO       date                           not null,
   DIRECCION            long varchar                   not null,
   CIUDAD               long varchar                   not null,
   TELEFONO             long varchar                   not null,
   EMAIL                long varchar                   null,
   DOCUMENTO            long varchar                   not null,
   constraint PK_PERSONAS primary key (ID_PERSONA)
);

/*==============================================================*/
/* Index: PERSONAS_PK                                           */
/*==============================================================*/
create unique index PERSONAS_PK on PERSONAS (
ID_PERSONA ASC
);

/*==============================================================*/
/* Table: PROVEEDORES                                           */
/*==============================================================*/
create table PROVEEDORES 
(
   ID_PROVEEDOR         integer                        not null default autoincrement,
   ID_PERSONA           integer                        not null,
   constraint PK_PROVEEDORES primary key (ID_PROVEEDOR)
);

/*==============================================================*/
/* Index: PROVEEDORES_PK                                        */
/*==============================================================*/
create unique index PROVEEDORES_PK on PROVEEDORES (
ID_PROVEEDOR ASC
);

/*==============================================================*/
/* Index: PERSONA_PROVEEDOR_FK                                  */
/*==============================================================*/
create index PERSONA_PROVEEDOR_FK on PROVEEDORES (
ID_PERSONA ASC
);

/*==============================================================*/
/* Table: SEGUROS                                               */
/*==============================================================*/
create table SEGUROS 
(
   ID_SEGURO            integer                        not null default autoincrement,
   ID_PERSONA           integer                        not null,
   constraint PK_SEGUROS primary key (ID_SEGURO)
);

/*==============================================================*/
/* Index: SEGUROS_PK                                            */
/*==============================================================*/
create unique index SEGUROS_PK on SEGUROS (
ID_SEGURO ASC
);

/*==============================================================*/
/* Index: PERSONA_SEGURO_FK                                     */
/*==============================================================*/
create index PERSONA_SEGURO_FK on SEGUROS (
ID_PERSONA ASC
);

/*==============================================================*/
/* Table: SER_FACT                                              */
/*==============================================================*/
create table SER_FACT 
(
   SER_FACT             char(7)                        not null,
   TIP_FACT             char(3)                        not null,
   constraint PK_SER_FACT primary key (SER_FACT, TIP_FACT)
);

/*==============================================================*/
/* Index: SER_FACT_PK                                           */
/*==============================================================*/
create unique index SER_FACT_PK on SER_FACT (
SER_FACT ASC,
TIP_FACT ASC
);

/*==============================================================*/
/* Index: TIP_SER_FACT_FK                                       */
/*==============================================================*/
create index TIP_SER_FACT_FK on SER_FACT (
TIP_FACT ASC
);

/*==============================================================*/
/* Table: SER_TRANSACCION                                       */
/*==============================================================*/
create table SER_TRANSACCION 
(
   SER_TRANSACCION      char(7)                        not null,
   ID_TRANSACCION       integer                        not null,
   constraint PK_SER_TRANSACCION primary key (SER_TRANSACCION, ID_TRANSACCION)
);

/*==============================================================*/
/* Index: SER_TRANSACCION_PK                                    */
/*==============================================================*/
create unique index SER_TRANSACCION_PK on SER_TRANSACCION (
SER_TRANSACCION ASC,
ID_TRANSACCION ASC
);

/*==============================================================*/
/* Index: ID_TIP_SER_TRANSACCION_FK                             */
/*==============================================================*/
create index ID_TIP_SER_TRANSACCION_FK on SER_TRANSACCION (
ID_TRANSACCION ASC
);

/*==============================================================*/
/* Table: SIGLAB                                                */
/*==============================================================*/
create table SIGLAB 
(
   ID_PANTALLA          integer                        not null default autoincrement,
   ID_MODULO            char(2)                        not null,
   NOMBRE               long varchar                   not null,
   DESCRIPCION          long varchar                   null,
   constraint PK_SIGLAB primary key (ID_PANTALLA)
);

/*==============================================================*/
/* Index: SIGLAB_PK                                             */
/*==============================================================*/
create unique index SIGLAB_PK on SIGLAB (
ID_PANTALLA ASC
);

/*==============================================================*/
/* Index: MODULO_SIGLAB_FK                                      */
/*==============================================================*/
create index MODULO_SIGLAB_FK on SIGLAB (
ID_MODULO ASC
);

/*==============================================================*/
/* Table: TIP_CAMBIOS                                           */
/*==============================================================*/
create table TIP_CAMBIOS 
(
   FECHA                date                           not null,
   ID_MONEDA            integer                        not null,
   VAL_VENTA            numeric                        not null,
   VAL_COMPRA           numeric                        not null,
   constraint PK_TIP_CAMBIOS primary key (FECHA, ID_MONEDA)
);

/*==============================================================*/
/* Index: TIP_CAMBIOS_PK                                        */
/*==============================================================*/
create unique index TIP_CAMBIOS_PK on TIP_CAMBIOS (
FECHA ASC,
ID_MONEDA ASC
);

/*==============================================================*/
/* Index: MONDA_TIP_CAMBIO_FK                                   */
/*==============================================================*/
create index MONDA_TIP_CAMBIO_FK on TIP_CAMBIOS (
ID_MONEDA ASC
);

/*==============================================================*/
/* Table: TIP_FACT                                              */
/*==============================================================*/
create table TIP_FACT 
(
   TIP_FACT             char(3)                        not null,
   DESCRIPCION          long varchar                   not null,
   COD_MODULO           char(2)                        not null,
   constraint PK_TIP_FACT primary key (TIP_FACT)
);

/*==============================================================*/
/* Index: TIP_FACT_PK                                           */
/*==============================================================*/
create unique index TIP_FACT_PK on TIP_FACT (
TIP_FACT ASC
);

/*==============================================================*/
/* Table: TIP_TRANSACCION                                       */
/*==============================================================*/
create table TIP_TRANSACCION 
(
   ID_TRANSACCION       integer                        not null default autoincrement,
   NOMBRE               long varchar                   not null,
   USA_VALORES          smallint                       not null,
   constraint PK_TIP_TRANSACCION primary key (ID_TRANSACCION)
);

/*==============================================================*/
/* Index: TIP_TRANSACCION_PK                                    */
/*==============================================================*/
create unique index TIP_TRANSACCION_PK on TIP_TRANSACCION (
ID_TRANSACCION ASC
);

/*==============================================================*/
/* Table: UNIDADES                                              */
/*==============================================================*/
create table UNIDADES 
(
   ID_UNIDAD            integer                        not null default autoincrement,
   NOMBRE               long varchar                   not null,
   constraint PK_UNIDADES primary key (ID_UNIDAD)
);

/*==============================================================*/
/* Index: UNIDADES_PK                                           */
/*==============================================================*/
create unique index UNIDADES_PK on UNIDADES (
ID_UNIDAD ASC
);

/*==============================================================*/
/* Table: USUARIOS                                              */
/*==============================================================*/
create table USUARIOS 
(
   ID_USUARIO           char(256)                      not null,
   ID_GRUPO             integer                        not null,
   PASSWORD             long varchar                   not null,
   ACTIVO               smallint                       not null,
   constraint PK_USUARIOS primary key (ID_USUARIO)
);

/*==============================================================*/
/* Index: USUARIOS_PK                                           */
/*==============================================================*/
create unique index USUARIOS_PK on USUARIOS (
ID_USUARIO ASC
);

/*==============================================================*/
/* Index: USUARIOS_GRUPOS_FK                                    */
/*==============================================================*/
create index USUARIOS_GRUPOS_FK on USUARIOS (
ID_GRUPO ASC
);

alter table ACCESOS_GRUPOS
   add constraint FK_ACCESOS__GRUPOS_AC_GRUPOS_U foreign key (ID_GRUPO)
      references GRUPOS_USUARIOS (ID_GRUPO)
      on update restrict
      on delete restrict;

alter table ACCESOS_GRUPOS
   add constraint FK_ACCESOS__SIGLAB_AC_SIGLAB foreign key (ID_PANTALLA)
      references SIGLAB (ID_PANTALLA)
      on update restrict
      on delete restrict;

alter table ANALISIS_CAB
   add constraint FK_ANALISIS_PACIENTES_PACIENTE foreign key (ID_PACIENTE)
      references PACIENTES (ID_PACIENTE)
      on update restrict
      on delete restrict;

alter table ANALISIS_DET
   add constraint FK_ANALISIS_ANALISIS__ANALISIS foreign key (ID_ANALISIS)
      references ANALISIS_CAB (ID_ANALISIS)
      on update restrict
      on delete restrict;

alter table ANALISIS_DET
   add constraint FK_ANALISIS_LOTE_ANAL_LOTES foreign key (ID_LOTE)
      references LOTES (ID_LOTE)
      on update restrict
      on delete restrict;

alter table AUDITORIA
   add constraint FK_AUDITORI_USUARIO_A_USUARIOS foreign key (ID_USUARIO)
      references USUARIOS (ID_USUARIO)
      on update restrict
      on delete restrict;

alter table COMPRAS_CAB
   add constraint FK_COMPRAS__PROVEEDOR_PROVEEDO foreign key (ID_PROVEEDOR)
      references PROVEEDORES (ID_PROVEEDOR)
      on update restrict
      on delete restrict;

alter table COMPRAS_CAB
   add constraint FK_COMPRAS__SER_FACT__SER_FACT foreign key (SER_FACT, TIP_FACT)
      references SER_FACT (SER_FACT, TIP_FACT)
      on update restrict
      on delete restrict;

alter table COMPRAS_CAB
   add constraint FK_COMPRAS__TIP_CAMBI_TIP_CAMB foreign key (FECHA, ID_MONEDA)
      references TIP_CAMBIOS (FECHA, ID_MONEDA)
      on update restrict
      on delete restrict;

alter table COMPRAS_DET
   add constraint FK_COMPRAS__COMPRAS_C_COMPRAS_ foreign key (ID_COMPRA)
      references COMPRAS_CAB (ID_COMPRA)
      on update restrict
      on delete restrict;

alter table COMPRAS_DET
   add constraint FK_COMPRAS__INSUMOS_C_INSUMOS foreign key (ID_INSUMO)
      references INSUMOS (ID_INSUMO)
      on update restrict
      on delete restrict;

alter table COMPRAS_DET
   add constraint FK_COMPRAS__LOTE_COMP_LOTES foreign key (ID_LOTE)
      references LOTES (ID_LOTE)
      on update restrict
      on delete restrict;

alter table CUENTAS
   add constraint FK_CUENTAS_ID_PERSON_PERSONAS foreign key (ID_PERSONA)
      references PERSONAS (ID_PERSONA)
      on update restrict
      on delete restrict;

alter table EMPLEADOS
   add constraint FK_EMPLEADO_RELATIONS_PERSONAS foreign key (ID_PERSONA)
      references PERSONAS (ID_PERSONA)
      on update restrict
      on delete restrict;

alter table FACT_CAB
   add constraint FK_FACT_CAB_SER_FACT__SER_FACT foreign key (SER_FACT, TIP_FACT)
      references SER_FACT (SER_FACT, TIP_FACT)
      on update restrict
      on delete restrict;

alter table FACT_CAB
   add constraint FK_FACT_CAB_TIP_CAMBI_TIP_CAMB foreign key (FECHA, ID_MONEDA)
      references TIP_CAMBIOS (FECHA, ID_MONEDA)
      on update restrict
      on delete restrict;

alter table FACT_DET
   add constraint FK_FACT_DET_ANALISIS__ANALISIS foreign key (ID_ANALISIS)
      references ANALISIS_CAB (ID_ANALISIS)
      on update restrict
      on delete restrict;

alter table FACT_DET
   add constraint FK_FACT_DET_FACT_CAB__FACT_CAB foreign key (ID_FACT)
      references FACT_CAB (ID_FACT)
      on update restrict
      on delete restrict;

alter table FORMAS_COBROS
   add constraint FK_FORMAS_C_CUENTA_FO_CUENTAS foreign key (ID_CUENTA, ID_PERSONA)
      references CUENTAS (ID_CUENTA, ID_PERSONA)
      on update restrict
      on delete restrict;

alter table FORMAS_COBROS
   add constraint FK_FORMAS_C_FACT_CAB__FACT_CAB foreign key (ID_FACT)
      references FACT_CAB (ID_FACT)
      on update restrict
      on delete restrict;

alter table FORMAS_COBROS
   add constraint FK_FORMAS_C_RELATIONS_SER_TRAN foreign key (SER_TRANSACCION, ID_TRANSACCION)
      references SER_TRANSACCION (SER_TRANSACCION, ID_TRANSACCION)
      on update restrict
      on delete restrict;

alter table FORMAS_PAGOS
   add constraint FK_FORMAS_P_COMPRA_PA_COMPRAS_ foreign key (ID_COMPRA)
      references COMPRAS_CAB (ID_COMPRA)
      on update restrict
      on delete restrict;

alter table FORMAS_PAGOS
   add constraint FK_FORMAS_P_CUENTA_PA_CUENTAS foreign key (ID_CUENTA, ID_PERSONA)
      references CUENTAS (ID_CUENTA, ID_PERSONA)
      on update restrict
      on delete restrict;

alter table FORMAS_PAGOS
   add constraint FK_FORMAS_P_SER_TRANS_SER_TRAN foreign key (SER_TRANSACCION, ID_TRANSACCION)
      references SER_TRANSACCION (SER_TRANSACCION, ID_TRANSACCION)
      on update restrict
      on delete restrict;

alter table INSUMOS
   add constraint FK_INSUMOS_MATERIAL__MATERIAL foreign key (ID_MATERIAL)
      references MATERIALES (ID_MATERIAL)
      on update restrict
      on delete restrict;

alter table INSUMOS
   add constraint FK_INSUMOS_UNIDAD_IN_UNIDADES foreign key (ID_UNIDAD)
      references UNIDADES (ID_UNIDAD)
      on update restrict
      on delete restrict;

alter table LOTES
   add constraint FK_LOTES_INSUMO_LO_INSUMOS foreign key (ID_INSUMO)
      references INSUMOS (ID_INSUMO)
      on update restrict
      on delete restrict;

alter table MOV_STOCK_DET
   add constraint FK_MOV_STOC_INSUMO_MO_INSUMOS foreign key (ID_INSUMO)
      references INSUMOS (ID_INSUMO)
      on update restrict
      on delete restrict;

alter table MOV_STOCK_DET
   add constraint FK_MOV_STOC_MOV_CAB_D_MOV_STOC foreign key (ID_MOV_STOCK)
      references MOV_STOCK_CAB (ID_MOV_STOCK)
      on update restrict
      on delete restrict;

alter table PACIENTES
   add constraint FK_PACIENTE_PERSONA_P_PERSONAS foreign key (ID_PERSONA)
      references PERSONAS (ID_PERSONA)
      on update restrict
      on delete restrict;

alter table PACIENTES
   add constraint FK_PACIENTE_SEGURO_PA_SEGUROS foreign key (ID_SEGURO)
      references SEGUROS (ID_SEGURO)
      on update restrict
      on delete restrict;

alter table PERMISOS
   add constraint FK_PERMISOS_SIGLAB_PE_SIGLAB foreign key (ID_PANTALLA)
      references SIGLAB (ID_PANTALLA)
      on update restrict
      on delete restrict;

alter table PERMISOS
   add constraint FK_PERMISOS_USUARIO_P_USUARIOS foreign key (ID_USUARIO)
      references USUARIOS (ID_USUARIO)
      on update restrict
      on delete restrict;

alter table PROVEEDORES
   add constraint FK_PROVEEDO_PERSONA_P_PERSONAS foreign key (ID_PERSONA)
      references PERSONAS (ID_PERSONA)
      on update restrict
      on delete restrict;

alter table SEGUROS
   add constraint FK_SEGUROS_PERSONA_S_PERSONAS foreign key (ID_PERSONA)
      references PERSONAS (ID_PERSONA)
      on update restrict
      on delete restrict;

alter table SER_FACT
   add constraint FK_SER_FACT_TIP_SER_F_TIP_FACT foreign key (TIP_FACT)
      references TIP_FACT (TIP_FACT)
      on update restrict
      on delete restrict;

alter table SER_TRANSACCION
   add constraint FK_SER_TRAN_ID_TIP_SE_TIP_TRAN foreign key (ID_TRANSACCION)
      references TIP_TRANSACCION (ID_TRANSACCION)
      on update restrict
      on delete restrict;

alter table SIGLAB
   add constraint FK_SIGLAB_MODULO_SI_MODULOS foreign key (ID_MODULO)
      references MODULOS (ID_MODULO)
      on update restrict
      on delete restrict;

alter table TIP_CAMBIOS
   add constraint FK_TIP_CAMB_MONDA_TIP_MONEDAS foreign key (ID_MONEDA)
      references MONEDAS (ID_MONEDA)
      on update restrict
      on delete restrict;

alter table USUARIOS
   add constraint FK_USUARIOS_USUARIOS__GRUPOS_U foreign key (ID_GRUPO)
      references GRUPOS_USUARIOS (ID_GRUPO)
      on update restrict
      on delete restrict;

