-- CRIAR TABLESPACE E USUÁRIO COM PRIVILÉGIOS 
-- PARA MANIPULA-LÁ

CREATE TABLESPACE RedeMais
LOGGING DATAFILE 'RedeMais.dbf'
SIZE 20M AUTOEXTEND ON NEXT 100M EXTENT MANAGEMENT LOCAL;

ALTER SESSION SET "_ORACLE_SCRIPT"=true; 
(PRECISEI USAR ESTE COMANDO PARA CONSEGUIR CRIAR O USUÁRIO)

CREATE USER rmadm
IDENTIFIED BY redemais123
DEFAULT TABLESPACE RedeMais
QUOTA UNLIMITED ON RedeMais;

GRANT
create session,
alter session,
create table,
create procedure,
create view,
create materialized view,
create trigger,
create sequence,
create any directory,
create type,
create synonym
TO
rmadm;
