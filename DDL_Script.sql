/*==============================================================*/
/* DBMS name:      PostgreSQL 8                                 */
/* Created on:     09-08-2021 20:59:15                          */
/*==============================================================*/


drop index ABASTECE2_FK;

drop index ABASTECE_FK;

drop index ABASTECE_PK;

drop table ABASTECE;

drop index ALMACENA_FK;

drop index ALMACENA2_FK;

drop index ALMACENA_PK;

drop table ALMACENA;

drop index ATIENDE_FK;

drop index ATIENDE2_FK;

drop index ATIENDE_PK;

drop table ATIENDE;

drop index BIEN_PK;

drop table BIEN;

drop index POSEE2_FK;

drop index BODEGA_PK;

drop table BODEGA;

drop index CLIENTE_PK;

drop table CLIENTE;

drop index FIRMA2_FK;

drop index CONTRATO_PK;

drop table CONTRATO;

drop index DUENO_DE_FK;

drop index DUENO_DE2_FK;

drop index DUENO_DE_PK;

drop table DUENO_DE;

drop index FIRMA_FK;

drop index CONTACTA_FK;

drop index EMPLEADO_PK;

drop table EMPLEADO;

drop index ENTREGA_FK;

drop index ENTREGA2_FK;

drop index ENTREGA_PK;

drop table ENTREGA;

drop index ENVIA_FK;

drop index ENVIA2_FK;

drop index ENVIA_PK;

drop table ENVIA;

drop index MASCOTA_PK;

drop table MASCOTA;

drop index TRANSPORTA_FK;

drop index PEDIDO_PK;

drop table PEDIDO;

drop index COMPRA_FK;

drop index PRODUCTO_PK;

drop table PRODUCTO;

drop index PROVEEDOR_PK;

drop table PROVEEDOR;

drop index SERVICIO_PK;

drop table SERVICIO;

drop index POSEE_FK;

drop index TIENDA_PK;

drop table TIENDA;

drop index TRABAJA_FK;

drop index TRABAJA3_FK;

drop index TRABAJA2_FK;

drop index TRABAJA_PK;

drop table TRABAJA;

drop index USUARIO_PK;

drop table USUARIO;

drop index CONDUCE_FK;

drop index VEHICULO_PK;

drop table VEHICULO;

drop index VENDE_FK;

drop index VENDE2_FK;

drop index VENDE_PK;

drop table VENDE;

/*==============================================================*/
/* Table: ABASTECE                                              */
/*==============================================================*/
create table ABASTECE (
   RUT_PROVEEDOR        INT4                 not null,
   ID_BODEGA            INT4                 not null,
   constraint PK_ABASTECE primary key (RUT_PROVEEDOR, ID_BODEGA)
);

/*==============================================================*/
/* Index: ABASTECE_PK                                           */
/*==============================================================*/
create unique index ABASTECE_PK on ABASTECE (
RUT_PROVEEDOR,
ID_BODEGA
);

/*==============================================================*/
/* Index: ABASTECE_FK                                           */
/*==============================================================*/
create  index ABASTECE_FK on ABASTECE (
RUT_PROVEEDOR
);

/*==============================================================*/
/* Index: ABASTECE2_FK                                          */
/*==============================================================*/
create  index ABASTECE2_FK on ABASTECE (
ID_BODEGA
);

/*==============================================================*/
/* Table: ALMACENA                                              */
/*==============================================================*/
create table ALMACENA (
   ID_PRODUCTO          INT4                 not null,
   ID_BODEGA            INT4                 not null,
   constraint PK_ALMACENA primary key (ID_PRODUCTO, ID_BODEGA)
);

/*==============================================================*/
/* Index: ALMACENA_PK                                           */
/*==============================================================*/
create unique index ALMACENA_PK on ALMACENA (
ID_PRODUCTO,
ID_BODEGA
);

/*==============================================================*/
/* Index: ALMACENA2_FK                                          */
/*==============================================================*/
create  index ALMACENA2_FK on ALMACENA (
ID_PRODUCTO
);

/*==============================================================*/
/* Index: ALMACENA_FK                                           */
/*==============================================================*/
create  index ALMACENA_FK on ALMACENA (
ID_BODEGA
);

/*==============================================================*/
/* Table: ATIENDE                                               */
/*==============================================================*/
create table ATIENDE (
   ID_PRODUCTO          INT4                 not null,
   ID_MASCOTA           INT4                 not null,
   constraint PK_ATIENDE primary key (ID_PRODUCTO, ID_MASCOTA)
);

/*==============================================================*/
/* Index: ATIENDE_PK                                            */
/*==============================================================*/
create unique index ATIENDE_PK on ATIENDE (
ID_PRODUCTO,
ID_MASCOTA
);

/*==============================================================*/
/* Index: ATIENDE2_FK                                           */
/*==============================================================*/
create  index ATIENDE2_FK on ATIENDE (
ID_MASCOTA
);

/*==============================================================*/
/* Index: ATIENDE_FK                                            */
/*==============================================================*/
create  index ATIENDE_FK on ATIENDE (
ID_PRODUCTO
);

/*==============================================================*/
/* Table: BIEN                                                  */
/*==============================================================*/
create table BIEN (
   ID_PRODUCTO          INT4                 not null,
   RUT                  INT4                 null,
   PRECIO               INT4                 not null,
   NOMBRE_PRODUCTO      VARCHAR(50)          not null,
   TIPO_DE_BIEN         VARCHAR(50)          not null,
   constraint PK_BIEN primary key (ID_PRODUCTO)
);

/*==============================================================*/
/* Index: BIEN_PK                                               */
/*==============================================================*/
create unique index BIEN_PK on BIEN (
ID_PRODUCTO
);

/*==============================================================*/
/* Table: BODEGA                                                */
/*==============================================================*/
create table BODEGA (
   ID_BODEGA            INT4                 not null,
   ID_TIENDA            INT4                 null,
   STOCK                VARCHAR(50)          not null,
   NRO                  INT4                 not null,
   CALLE                VARCHAR(50)          not null,
   CIUDAD               VARCHAR(50)          not null,
   constraint PK_BODEGA primary key (ID_BODEGA)
);

/*==============================================================*/
/* Index: BODEGA_PK                                             */
/*==============================================================*/
create unique index BODEGA_PK on BODEGA (
ID_BODEGA
);

/*==============================================================*/
/* Index: POSEE2_FK                                             */
/*==============================================================*/
create  index POSEE2_FK on BODEGA (
ID_TIENDA
);

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   RUT                  INT4                 not null,
   NOMBRE_USUARIO       VARCHAR(50)          not null,
   CORREO               VARCHAR(100)         not null,
   CONTRASENA           VARCHAR(50)          not null,
   ANO_DE_NACIMIENTO    INT4                 not null,
   NRO                  INT4                 not null,
   CALLE                VARCHAR(50)          not null,
   CIUDAD               VARCHAR(50)          not null,
   constraint PK_CLIENTE primary key (RUT)
);

/*==============================================================*/
/* Index: CLIENTE_PK                                            */
/*==============================================================*/
create unique index CLIENTE_PK on CLIENTE (
RUT
);

/*==============================================================*/
/* Table: CONTRATO                                              */
/*==============================================================*/
create table CONTRATO (
   RUT                  INT4                 not null,
   ID_CONTRATO          INT4                 not null,
   SUELDO               INT4                 not null,
   FECHA_INICIAL        INT4                 not null,
   FECHA_FINAL          INT4                 not null,
   constraint PK_CONTRATO primary key (RUT, ID_CONTRATO)
);

/*==============================================================*/
/* Index: CONTRATO_PK                                           */
/*==============================================================*/
create unique index CONTRATO_PK on CONTRATO (
RUT,
ID_CONTRATO
);

/*==============================================================*/
/* Index: FIRMA2_FK                                             */
/*==============================================================*/
create  index FIRMA2_FK on CONTRATO (
RUT
);

/*==============================================================*/
/* Table: DUENO_DE                                              */
/*==============================================================*/
create table DUENO_DE (
   RUT                  INT4                 not null,
   ID_MASCOTA           INT4                 not null,
   constraint PK_DUENO_DE primary key (RUT, ID_MASCOTA)
);

/*==============================================================*/
/* Index: DUENO_DE_PK                                           */
/*==============================================================*/
create unique index DUENO_DE_PK on DUENO_DE (
RUT,
ID_MASCOTA
);

/*==============================================================*/
/* Index: DUENO_DE2_FK                                          */
/*==============================================================*/
create  index DUENO_DE2_FK on DUENO_DE (
RUT
);

/*==============================================================*/
/* Index: DUENO_DE_FK                                           */
/*==============================================================*/
create  index DUENO_DE_FK on DUENO_DE (
ID_MASCOTA
);

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   RUT                  INT4                 not null,
   NOMBRE_USUARIO       VARCHAR(50)          not null,
   CORREO               VARCHAR(100)         not null,
   CONTRASENA           VARCHAR(50)          not null,
   ANO_DE_NACIMIENTO    INT4                 not null,
   NRO                  INT4                 not null,
   CALLE                VARCHAR(50)          not null,
   CIUDAD               VARCHAR(50)          not null,
   RUT_PROVEEDOR        INT4                 not null,
   CON_RUT              INT4                 null,
   ID_CONTRATO          INT4                 null,
   CARGO                VARCHAR(50)          not null,
   constraint PK_EMPLEADO primary key (RUT)
);

/*==============================================================*/
/* Index: EMPLEADO_PK                                           */
/*==============================================================*/
create unique index EMPLEADO_PK on EMPLEADO (
RUT
);

/*==============================================================*/
/* Index: CONTACTA_FK                                           */
/*==============================================================*/
create  index CONTACTA_FK on EMPLEADO (
RUT_PROVEEDOR
);

/*==============================================================*/
/* Index: FIRMA_FK                                              */
/*==============================================================*/
create  index FIRMA_FK on EMPLEADO (
CON_RUT,
ID_CONTRATO
);

/*==============================================================*/
/* Table: ENTREGA                                               */
/*==============================================================*/
create table ENTREGA (
   RUT                  INT4                 not null,
   ID_PEDIDO            INT4                 not null,
   constraint PK_ENTREGA primary key (RUT, ID_PEDIDO)
);

/*==============================================================*/
/* Index: ENTREGA_PK                                            */
/*==============================================================*/
create unique index ENTREGA_PK on ENTREGA (
RUT,
ID_PEDIDO
);

/*==============================================================*/
/* Index: ENTREGA2_FK                                           */
/*==============================================================*/
create  index ENTREGA2_FK on ENTREGA (
RUT
);

/*==============================================================*/
/* Index: ENTREGA_FK                                            */
/*==============================================================*/
create  index ENTREGA_FK on ENTREGA (
ID_PEDIDO
);

/*==============================================================*/
/* Table: ENVIA                                                 */
/*==============================================================*/
create table ENVIA (
   ID_PRODUCTO          INT4                 not null,
   ID_PEDIDO            INT4                 not null,
   constraint PK_ENVIA primary key (ID_PRODUCTO, ID_PEDIDO)
);

/*==============================================================*/
/* Index: ENVIA_PK                                              */
/*==============================================================*/
create unique index ENVIA_PK on ENVIA (
ID_PRODUCTO,
ID_PEDIDO
);

/*==============================================================*/
/* Index: ENVIA2_FK                                             */
/*==============================================================*/
create  index ENVIA2_FK on ENVIA (
ID_PEDIDO
);

/*==============================================================*/
/* Index: ENVIA_FK                                              */
/*==============================================================*/
create  index ENVIA_FK on ENVIA (
ID_PRODUCTO
);

/*==============================================================*/
/* Table: MASCOTA                                               */
/*==============================================================*/
create table MASCOTA (
   ID_MASCOTA           INT4                 not null,
   ESPECIE              VARCHAR(50)          not null,
   SEXO                 CHAR(50)             not null,
   constraint PK_MASCOTA primary key (ID_MASCOTA)
);

/*==============================================================*/
/* Index: MASCOTA_PK                                            */
/*==============================================================*/
create unique index MASCOTA_PK on MASCOTA (
ID_MASCOTA
);

/*==============================================================*/
/* Table: PEDIDO                                                */
/*==============================================================*/
create table PEDIDO (
   ID_PEDIDO            INT4                 not null,
   PATENTE              VARCHAR(6)           null,
   PRECIO_ENVIO         INT4                 not null,
   METODO_DE_PAGO       VARCHAR(50)          not null,
   constraint PK_PEDIDO primary key (ID_PEDIDO)
);

/*==============================================================*/
/* Index: PEDIDO_PK                                             */
/*==============================================================*/
create unique index PEDIDO_PK on PEDIDO (
ID_PEDIDO
);

/*==============================================================*/
/* Index: TRANSPORTA_FK                                         */
/*==============================================================*/
create  index TRANSPORTA_FK on PEDIDO (
PATENTE
);

/*==============================================================*/
/* Table: PRODUCTO                                              */
/*==============================================================*/
create table PRODUCTO (
   ID_PRODUCTO          INT4                 not null,
   RUT                  INT4                 not null,
   PRECIO               INT4                 not null,
   NOMBRE_PRODUCTO      VARCHAR(50)          not null,
   constraint PK_PRODUCTO primary key (ID_PRODUCTO)
);

/*==============================================================*/
/* Index: PRODUCTO_PK                                           */
/*==============================================================*/
create unique index PRODUCTO_PK on PRODUCTO (
ID_PRODUCTO
);

/*==============================================================*/
/* Index: COMPRA_FK                                             */
/*==============================================================*/
create  index COMPRA_FK on PRODUCTO (
RUT
);

/*==============================================================*/
/* Table: PROVEEDOR                                             */
/*==============================================================*/
create table PROVEEDOR (
   RUT_PROVEEDOR        INT4                 not null,
   NOMBRE_PROVEEDOR     VARCHAR(50)          not null,
   TELEFONO             INT4                 not null,
   constraint PK_PROVEEDOR primary key (RUT_PROVEEDOR)
);

/*==============================================================*/
/* Index: PROVEEDOR_PK                                          */
/*==============================================================*/
create unique index PROVEEDOR_PK on PROVEEDOR (
RUT_PROVEEDOR
);

/*==============================================================*/
/* Table: SERVICIO                                              */
/*==============================================================*/
create table SERVICIO (
   ID_PRODUCTO          INT4                 not null,
   RUT                  INT4                 null,
   PRECIO               INT4                 not null,
   NOMBRE_PRODUCTO      VARCHAR(50)          not null,
   TIPO_DE_SERVICIO     VARCHAR(50)          not null,
   constraint PK_SERVICIO primary key (ID_PRODUCTO)
);

/*==============================================================*/
/* Index: SERVICIO_PK                                           */
/*==============================================================*/
create unique index SERVICIO_PK on SERVICIO (
ID_PRODUCTO
);

/*==============================================================*/
/* Table: TIENDA                                                */
/*==============================================================*/
create table TIENDA (
   ID_TIENDA            INT4                 not null,
   ID_BODEGA            INT4                 not null,
   NRO                  INT4                 not null,
   CALLE                VARCHAR(50)          not null,
   CIUDAD               VARCHAR(50)          not null,
   NOMBRE_TIENDA        VARCHAR(50)          not null,
   constraint PK_TIENDA primary key (ID_TIENDA)
);

/*==============================================================*/
/* Index: TIENDA_PK                                             */
/*==============================================================*/
create unique index TIENDA_PK on TIENDA (
ID_TIENDA
);

/*==============================================================*/
/* Index: POSEE_FK                                              */
/*==============================================================*/
create  index POSEE_FK on TIENDA (
ID_BODEGA
);

/*==============================================================*/
/* Table: TRABAJA                                               */
/*==============================================================*/
create table TRABAJA (
   RUT                  INT4                 not null,
   ID_TIENDA            INT4                 not null,
   ID_BODEGA            INT4                 not null,
   constraint PK_TRABAJA primary key (RUT, ID_TIENDA, ID_BODEGA)
);

/*==============================================================*/
/* Index: TRABAJA_PK                                            */
/*==============================================================*/
create unique index TRABAJA_PK on TRABAJA (
RUT,
ID_TIENDA,
ID_BODEGA
);

/*==============================================================*/
/* Index: TRABAJA2_FK                                           */
/*==============================================================*/
create  index TRABAJA2_FK on TRABAJA (
RUT
);

/*==============================================================*/
/* Index: TRABAJA3_FK                                           */
/*==============================================================*/
create  index TRABAJA3_FK on TRABAJA (
ID_TIENDA
);

/*==============================================================*/
/* Index: TRABAJA_FK                                            */
/*==============================================================*/
create  index TRABAJA_FK on TRABAJA (
ID_BODEGA
);

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
   RUT                  INT4                 not null,
   NOMBRE_USUARIO       VARCHAR(50)          not null,
   CORREO               VARCHAR(100)         not null,
   CONTRASENA           VARCHAR(50)          not null,
   ANO_DE_NACIMIENTO    INT4                 not null,
   NRO                  INT4                 not null,
   CALLE                VARCHAR(50)          not null,
   CIUDAD               VARCHAR(50)          not null,
   constraint PK_USUARIO primary key (RUT)
);

/*==============================================================*/
/* Index: USUARIO_PK                                            */
/*==============================================================*/
create unique index USUARIO_PK on USUARIO (
RUT
);

/*==============================================================*/
/* Table: VEHICULO                                              */
/*==============================================================*/
create table VEHICULO (
   PATENTE              VARCHAR(6)           not null,
   RUT                  INT4                 not null,
   TIPO_DE_VEHICULO     VARCHAR(50)          not null,
   constraint PK_VEHICULO primary key (PATENTE)
);

/*==============================================================*/
/* Index: VEHICULO_PK                                           */
/*==============================================================*/
create unique index VEHICULO_PK on VEHICULO (
PATENTE
);

/*==============================================================*/
/* Index: CONDUCE_FK                                            */
/*==============================================================*/
create  index CONDUCE_FK on VEHICULO (
RUT
);

/*==============================================================*/
/* Table: VENDE                                                 */
/*==============================================================*/
create table VENDE (
   ID_PRODUCTO          INT4                 not null,
   ID_TIENDA            INT4                 not null,
   constraint PK_VENDE primary key (ID_PRODUCTO, ID_TIENDA)
);

/*==============================================================*/
/* Index: VENDE_PK                                              */
/*==============================================================*/
create unique index VENDE_PK on VENDE (
ID_PRODUCTO,
ID_TIENDA
);

/*==============================================================*/
/* Index: VENDE2_FK                                             */
/*==============================================================*/
create  index VENDE2_FK on VENDE (
ID_PRODUCTO
);

/*==============================================================*/
/* Index: VENDE_FK                                              */
/*==============================================================*/
create  index VENDE_FK on VENDE (
ID_TIENDA
);

alter table ABASTECE
   add constraint FK_ABASTECE_ABASTECE_PROVEEDO foreign key (RUT_PROVEEDOR)
      references PROVEEDOR (RUT_PROVEEDOR)
      on delete restrict on update restrict;

alter table ABASTECE
   add constraint FK_ABASTECE_ABASTECE2_BODEGA foreign key (ID_BODEGA)
      references BODEGA (ID_BODEGA)
      on delete restrict on update restrict;

alter table ALMACENA
   add constraint FK_ALMACENA_ALMACENA_BODEGA foreign key (ID_BODEGA)
      references BODEGA (ID_BODEGA)
      on delete restrict on update restrict;

alter table ALMACENA
   add constraint FK_ALMACENA_ALMACENA2_BIEN foreign key (ID_PRODUCTO)
      references BIEN (ID_PRODUCTO)
      on delete restrict on update restrict;

alter table ATIENDE
   add constraint FK_ATIENDE_ATIENDE_SERVICIO foreign key (ID_PRODUCTO)
      references SERVICIO (ID_PRODUCTO)
      on delete restrict on update restrict;

alter table ATIENDE
   add constraint FK_ATIENDE_ATIENDE2_MASCOTA foreign key (ID_MASCOTA)
      references MASCOTA (ID_MASCOTA)
      on delete restrict on update restrict;

alter table BIEN
   add constraint FK_BIEN_HERENCIA__PRODUCTO foreign key (ID_PRODUCTO)
      references PRODUCTO (ID_PRODUCTO)
      on delete restrict on update restrict;

alter table BODEGA
   add constraint FK_BODEGA_POSEE2_TIENDA foreign key (ID_TIENDA)
      references TIENDA (ID_TIENDA)
      on delete restrict on update restrict;

alter table CLIENTE
   add constraint FK_CLIENTE_HERENCIA__USUARIO foreign key (RUT)
      references USUARIO (RUT)
      on delete restrict on update restrict;

alter table CONTRATO
   add constraint FK_CONTRATO_FIRMA2_EMPLEADO foreign key (RUT)
      references EMPLEADO (RUT)
      on delete restrict on update restrict;

alter table DUENO_DE
   add constraint FK_DUENO_DE_DUENO_DE_MASCOTA foreign key (ID_MASCOTA)
      references MASCOTA (ID_MASCOTA)
      on delete restrict on update restrict;

alter table DUENO_DE
   add constraint FK_DUENO_DE_DUENO_DE2_CLIENTE foreign key (RUT)
      references CLIENTE (RUT)
      on delete restrict on update restrict;

alter table EMPLEADO
   add constraint FK_EMPLEADO_CONTACTA_PROVEEDO foreign key (RUT_PROVEEDOR)
      references PROVEEDOR (RUT_PROVEEDOR)
      on delete restrict on update restrict;

alter table EMPLEADO
   add constraint FK_EMPLEADO_FIRMA_CONTRATO foreign key (CON_RUT, ID_CONTRATO)
      references CONTRATO (RUT, ID_CONTRATO)
      on delete restrict on update restrict;

alter table EMPLEADO
   add constraint FK_EMPLEADO_HERENCIA__USUARIO foreign key (RUT)
      references USUARIO (RUT)
      on delete restrict on update restrict;

alter table ENTREGA
   add constraint FK_ENTREGA_ENTREGA_PEDIDO foreign key (ID_PEDIDO)
      references PEDIDO (ID_PEDIDO)
      on delete restrict on update restrict;

alter table ENTREGA
   add constraint FK_ENTREGA_ENTREGA2_CLIENTE foreign key (RUT)
      references CLIENTE (RUT)
      on delete restrict on update restrict;

alter table ENVIA
   add constraint FK_ENVIA_ENVIA_BIEN foreign key (ID_PRODUCTO)
      references BIEN (ID_PRODUCTO)
      on delete restrict on update restrict;

alter table ENVIA
   add constraint FK_ENVIA_ENVIA2_PEDIDO foreign key (ID_PEDIDO)
      references PEDIDO (ID_PEDIDO)
      on delete restrict on update restrict;

alter table PEDIDO
   add constraint FK_PEDIDO_TRANSPORT_VEHICULO foreign key (PATENTE)
      references VEHICULO (PATENTE)
      on delete restrict on update restrict;

alter table PRODUCTO
   add constraint FK_PRODUCTO_COMPRA_CLIENTE foreign key (RUT)
      references CLIENTE (RUT)
      on delete restrict on update restrict;

alter table SERVICIO
   add constraint FK_SERVICIO_HERENCIA__PRODUCTO foreign key (ID_PRODUCTO)
      references PRODUCTO (ID_PRODUCTO)
      on delete restrict on update restrict;

alter table TIENDA
   add constraint FK_TIENDA_POSEE_BODEGA foreign key (ID_BODEGA)
      references BODEGA (ID_BODEGA)
      on delete restrict on update restrict;

alter table TRABAJA
   add constraint FK_TRABAJA_TRABAJA_BODEGA foreign key (ID_BODEGA)
      references BODEGA (ID_BODEGA)
      on delete restrict on update restrict;

alter table TRABAJA
   add constraint FK_TRABAJA_TRABAJA2_EMPLEADO foreign key (RUT)
      references EMPLEADO (RUT)
      on delete restrict on update restrict;

alter table TRABAJA
   add constraint FK_TRABAJA_TRABAJA3_TIENDA foreign key (ID_TIENDA)
      references TIENDA (ID_TIENDA)
      on delete restrict on update restrict;

alter table VEHICULO
   add constraint FK_VEHICULO_CONDUCE_EMPLEADO foreign key (RUT)
      references EMPLEADO (RUT)
      on delete restrict on update restrict;

alter table VENDE
   add constraint FK_VENDE_VENDE_TIENDA foreign key (ID_TIENDA)
      references TIENDA (ID_TIENDA)
      on delete restrict on update restrict;

alter table VENDE
   add constraint FK_VENDE_VENDE2_BIEN foreign key (ID_PRODUCTO)
      references BIEN (ID_PRODUCTO)
      on delete restrict on update restrict;

