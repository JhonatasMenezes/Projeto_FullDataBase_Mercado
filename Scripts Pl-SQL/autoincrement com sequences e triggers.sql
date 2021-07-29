-- AUTOINCREMENT DE ID'S PARA TODAS
-- AS TABELAS NECESSÁRIAS UTILIZANDO 
-- SEQUENCES E TRIGGERS 

-- ID_ESTADO
CREATE SEQUENCE SEQ_ESTADO
START WITH 100
INCREMENT BY 100;

CREATE OR REPLACE TRIGGER TRG_SEQ_ESTADO
BEFORE INSERT ON ESTADO
FOR EACH ROW

DECLARE 
V_SEQ NUMBER;

BEGIN 

SELECT SEQ_ESTADO.nextval
INTO V_SEQ
FROM DUAL;

:NEW.ID_ESTADO:= V_SEQ;

END;

-- ID_CIDADE
CREATE SEQUENCE SEQ_CIDADE
START WITH 10
INCREMENT BY 2;

CREATE OR REPLACE TRIGGER TRG_SEQ_CIDADE
BEFORE INSERT ON CIDADE
FOR EACH ROW

DECLARE 
V_SEQ NUMBER;

BEGIN 

SELECT SEQ_CIDADE.nextval
INTO V_SEQ
FROM DUAL;

:NEW.ID_CIDADE:= V_SEQ;

END;

-- ID_BAIRRO
CREATE SEQUENCE SEQ_BAIRRO
START WITH 1
INCREMENT BY 1;

CREATE OR REPLACE TRIGGER TRG_SEQ_BAIRRO
BEFORE INSERT ON BAIRRO
FOR EACH ROW

DECLARE 
V_SEQ NUMBER;

BEGIN 

SELECT SEQ_BAIRRO.nextval
INTO V_SEQ
FROM DUAL;

:NEW.ID_BAIRRO:= V_SEQ;

END;

-- ID_LOG
CREATE SEQUENCE SEQ_LOG
START WITH 1
INCREMENT BY 1;

CREATE OR REPLACE TRIGGER TRG_SEQ_LOG
BEFORE INSERT ON LOGRADOURO
FOR EACH ROW

DECLARE 
V_SEQ NUMBER;

BEGIN 

SELECT SEQ_LOG.nextval
INTO V_SEQ
FROM DUAL;

:NEW.ID_LOG:= V_SEQ;

END;

-- ID_CLIENTE
CREATE SEQUENCE SEQ_CLIENTE
START WITH 1
INCREMENT BY 1;

CREATE OR REPLACE TRIGGER TRG_SEQ_CLIENTE
BEFORE INSERT ON CLIENTE
FOR EACH ROW

DECLARE 
V_SEQ NUMBER;

BEGIN 

SELECT SEQ_CLIENTE.nextval
INTO V_SEQ
FROM DUAL;

:NEW.ID_CLIENTE:= V_SEQ;

END;

-- ID_LOJA
CREATE SEQUENCE SEQ_LOJA
START WITH 001
INCREMENT BY 1;

CREATE OR REPLACE TRIGGER TRG_SEQ_LOJA
BEFORE INSERT ON LOJA
FOR EACH ROW

DECLARE 
V_SEQ NUMBER;

BEGIN 

SELECT SEQ_LOJA.nextval
INTO V_SEQ
FROM DUAL;

:NEW.ID_LOJA:= V_SEQ;

END;

-- ID_SETOR
CREATE SEQUENCE SEQ_SETOR
START WITH 20
INCREMENT BY 10;
DROP SEQUENCE SEQ_SETOR;

DROP SEQUENCE SEQ_SETOR;

CREATE OR REPLACE TRIGGER TRG_SEQ_SETOR
BEFORE INSERT ON SETOR
FOR EACH ROW

DECLARE 
V_SEQ NUMBER;

BEGIN 

SELECT SEQ_SETOR.nextval
INTO V_SEQ
FROM DUAL;

:NEW.ID_SETOR:= V_SEQ;

END;

-- ID_PRODUTOS
CREATE SEQUENCE SEQ_PRODUTOS
START WITH 1
INCREMENT BY 1;

CREATE OR REPLACE TRIGGER TRG_SEQ_PRODUTOS
BEFORE INSERT ON PRODUTOS
FOR EACH ROW

DECLARE 
V_SEQ NUMBER;

BEGIN 

SELECT SEQ_PRODUTOS.nextval
INTO V_SEQ
FROM DUAL;

:NEW.ID_PROD:= V_SEQ;

END;

-- ID_NOTA
CREATE SEQUENCE SEQ_NOTA
START WITH 1
INCREMENT BY 1;