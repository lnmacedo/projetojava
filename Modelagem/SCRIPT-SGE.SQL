drop table if exists TB_PRODUTO;
drop table if exists TB_USUARIO;

/*==============================================================*/
/* Table: TB_USUARIO                                            */
/*==============================================================*/
create table TB_USUARIO
(
   ID                   Integer(10) not null auto_increment,
   STR_NOME             varchar(100) not null,
   STR_SOBRENOME        varchar(100),
   STR_LOGIN            varchar(30) not null,
   DT_NASCIMENTO        datetime,
   BOL_ATIVO            bool,
   DT_CADASTRO          datetime,
   primary key (ID)
);


/*==============================================================*/
/* Table: TB_PRODUTO                                            */
/*==============================================================*/
create table TB_PRODUTO
(
   ID                   Integer(10) not null,
   ID_USUARIO           Integer(10),
   STR_NOME             varchar(100) not null,
   STR_DESCRICAO        varchar(300),
   STR_COD_REF          varchar(8),
   D_VALOR              varchar(10),
   DAT_VALIDADE         varchar(10),
   D_VALOR_CUSTO        varchar(10),
   D_VALOR_VENDA        varchar(10),
   QTD_ESTOQUE          Integer(10),
   BOL_STATUS           bool,
   DAT_CADASTRO         datetime,
   primary key (ID)
);

alter table TB_PRODUTO add constraint FK_TB_USUARIO_TB_PRODUTO foreign key (ID_USUARIO)
      references TB_USUARIO (ID) on delete restrict on update cascade;

