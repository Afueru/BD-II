CREATE TABLE  "PESSOA" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"NOME" VARCHAR2(50) NOT NULL ENABLE, 
	"ENDERECO" VARCHAR2(300) NOT NULL ENABLE, 
	"TELEFONE" VARCHAR2(11) NOT NULL ENABLE, 
	 CONSTRAINT "PESSOA_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "FUNCIONARIO" 
   (	"ID" NUMBER, 
	"PESSOA_ID" NUMBER, 
	"CARGO" VARCHAR2(50), 
	"SALARIO" NUMBER, 
	"UNIDADE_ID" NUMBER, 
	 CONSTRAINT "FUNCIONARIO_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "UNIDADE" 
   (	"ID" NUMBER, 
	"ENDERECO" VARCHAR2(300), 
	"GERENTE_ID" NUMBER NOT NULL ENABLE, 
	 CONSTRAINT "UNIDADE_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "CLIENTE" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"PESSOA_ID" NUMBER NOT NULL ENABLE, 
	"EMAIL" VARCHAR2(30) NOT NULL ENABLE, 
	"SENHA" VARCHAR2(20) NOT NULL ENABLE, 
	 CONSTRAINT "CLIENTE_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE, 
	 CONSTRAINT "CLIENTE_EMAIL_UK" UNIQUE ("EMAIL")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "TRANSPORTADORA" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"NOME" VARCHAR2(30) NOT NULL ENABLE, 
	 CONSTRAINT "TRANSPORTADORA_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "TIPOFRETE" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"NOME" VARCHAR2(30) NOT NULL ENABLE, 
	 CONSTRAINT "TIPOFRETE_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "PEDIDO" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"PRECO" NUMBER, 
	"PRAZO" DATE, 
	"DATA_COMPRA" DATE, 
	"CODIGO_RASTREIO" NUMBER, 
	"TRANSPORTADORA_ID" NUMBER, 
	"FRETE_ID" NUMBER, 
	"CLIENTE_ID" NUMBER NOT NULL ENABLE, 
	"STATUS_COMPRA" NUMBER NOT NULL ENABLE, 
	 CONSTRAINT "PEDIDO_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "PRODUTO" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"NOME" VARCHAR2(50) NOT NULL ENABLE, 
	"DESCRICAO" VARCHAR2(300) NOT NULL ENABLE, 
	"PRECO" NUMBER NOT NULL ENABLE, 
	"IMAGEM" VARCHAR2(500), 
	 CONSTRAINT "PRODUTO_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "PRODUTO_PEDIDO" 
   (	"PRODUTO_PEDIDO_ID" NUMBER NOT NULL ENABLE, 
	"PRODUTO_ID" NUMBER NOT NULL ENABLE, 
	"PEDIDO_ID" NUMBER NOT NULL ENABLE, 
	"QUANTIDADE" NUMBER NOT NULL ENABLE, 
	"PRECO" NUMBER NOT NULL ENABLE, 
	 CONSTRAINT "PRODUTO_PEDIDO_PK" PRIMARY KEY ("PRODUTO_PEDIDO_ID")
  USING INDEX  ENABLE, 
	 CONSTRAINT "PRODUTO_PEDIDO_CHECK_QUANTIDADE" CHECK ( "QUANTIDADE" >= 0) ENABLE
   )
/
CREATE TABLE  "ESTOQUE" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"PRODUTO_ID" NUMBER NOT NULL ENABLE, 
	"QUANTIDADE" NUMBER NOT NULL ENABLE, 
	"UNIDADE_ID" NUMBER, 
	 CONSTRAINT "ESTOQUE_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "FORNECEDOR" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"CNPJ" NUMBER NOT NULL ENABLE, 
	"NOME_EMPRESA" VARCHAR2(30) NOT NULL ENABLE, 
	"TELEFONE" VARCHAR2(11) NOT NULL ENABLE, 
	"EMAIL" VARCHAR2(25) NOT NULL ENABLE, 
	"ENDERECO" VARCHAR2(50) NOT NULL ENABLE, 
	 CONSTRAINT "FORNECEDOR_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "FORNECIMENTO" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"PRODUTO_ID" NUMBER NOT NULL ENABLE, 
	"FORNECEDOR_ID" NUMBER NOT NULL ENABLE, 
	"QUANTIDADE" NUMBER NOT NULL ENABLE, 
	 CONSTRAINT "FORNECIMENTO_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "JOGO" 
   (	"ID" NUMBER, 
	"PRODUTO_ID" NUMBER, 
	"GENERO" VARCHAR2(50), 
	"PUBLISHER" VARCHAR2(50), 
	"DEVELOPER" VARCHAR2(50), 
	"PLATAFORMA" VARCHAR2(50), 
	"DATALANCAMENTO" DATE, 
	"FAIXAETARIA" VARCHAR2(50), 
	 CONSTRAINT "JOGO_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "COLECIONAVEL" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"PRODUTO_ID" NUMBER NOT NULL ENABLE, 
	"MARCA" VARCHAR2(20) NOT NULL ENABLE, 
	 CONSTRAINT "COLECIONAVEL_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "CONSOLE" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"PRODUTO_ID" NUMBER NOT NULL ENABLE, 
	"MARCA" VARCHAR2(20) NOT NULL ENABLE, 
	"MODELO" VARCHAR2(20) NOT NULL ENABLE, 
	 CONSTRAINT "CONSOLE_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "HTMLDB_PLAN_TABLE" 
   (	"STATEMENT_ID" VARCHAR2(30), 
	"PLAN_ID" NUMBER, 
	"TIMESTAMP" DATE, 
	"REMARKS" VARCHAR2(4000), 
	"OPERATION" VARCHAR2(30), 
	"OPTIONS" VARCHAR2(255), 
	"OBJECT_NODE" VARCHAR2(128), 
	"OBJECT_OWNER" VARCHAR2(128), 
	"OBJECT_NAME" VARCHAR2(128), 
	"OBJECT_ALIAS" VARCHAR2(261), 
	"OBJECT_INSTANCE" NUMBER(*,0), 
	"OBJECT_TYPE" VARCHAR2(128), 
	"OPTIMIZER" VARCHAR2(255), 
	"SEARCH_COLUMNS" NUMBER, 
	"ID" NUMBER(*,0), 
	"PARENT_ID" NUMBER(*,0), 
	"DEPTH" NUMBER(*,0), 
	"POSITION" NUMBER(*,0), 
	"COST" NUMBER(*,0), 
	"CARDINALITY" NUMBER(*,0), 
	"BYTES" NUMBER(*,0), 
	"OTHER_TAG" VARCHAR2(255), 
	"PARTITION_START" VARCHAR2(255), 
	"PARTITION_STOP" VARCHAR2(255), 
	"PARTITION_ID" NUMBER(*,0), 
	"OTHER" LONG, 
	"DISTRIBUTION" VARCHAR2(30), 
	"CPU_COST" NUMBER(*,0), 
	"IO_COST" NUMBER(*,0), 
	"TEMP_SPACE" NUMBER(*,0), 
	"ACCESS_PREDICATES" VARCHAR2(4000), 
	"FILTER_PREDICATES" VARCHAR2(4000), 
	"PROJECTION" VARCHAR2(4000), 
	"TIME" NUMBER(*,0), 
	"QBLOCK_NAME" VARCHAR2(128)
   )
/
CREATE TABLE  "ACESSORIO" 
   (	"ID" NUMBER, 
	"PRODUTO_ID" NUMBER, 
	"TIPO" VARCHAR2(50), 
	"MARCA" VARCHAR2(50), 
	"COMPATIBILIDADE" VARCHAR2(100), 
	 CONSTRAINT "ACESSORIO_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )
/
CREATE TABLE  "CARGO" 
   (	"ID" NUMBER NOT NULL ENABLE, 
	"CARGO_DESC" VARCHAR2(50) NOT NULL ENABLE, 
	 CONSTRAINT "CARGO_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE
   )
/
ALTER TABLE  "CLIENTE" ADD CONSTRAINT "CLIENTE_FK" FOREIGN KEY ("PESSOA_ID")
	  REFERENCES  "PESSOA" ("ID") ENABLE
/
ALTER TABLE  "COLECIONAVEL" ADD CONSTRAINT "COLECIONAVEL_FK" FOREIGN KEY ("PRODUTO_ID")
	  REFERENCES  "PRODUTO" ("ID") ENABLE
/
ALTER TABLE  "CONSOLE" ADD CONSTRAINT "CONSOLE_FK" FOREIGN KEY ("PRODUTO_ID")
	  REFERENCES  "PRODUTO" ("ID") ENABLE
/
ALTER TABLE  "ESTOQUE" ADD CONSTRAINT "ESTOQUE_PRODUTO_FK" FOREIGN KEY ("PRODUTO_ID")
	  REFERENCES  "PRODUTO" ("ID") ENABLE
/
ALTER TABLE  "ESTOQUE" ADD CONSTRAINT "ESTOQUE_UNIDADE_FK" FOREIGN KEY ("UNIDADE_ID")
	  REFERENCES  "UNIDADE" ("ID") ENABLE
/
ALTER TABLE  "FORNECIMENTO" ADD CONSTRAINT "FORNECIMENTO_FORNECEDOR_FK" FOREIGN KEY ("FORNECEDOR_ID")
	  REFERENCES  "FORNECEDOR" ("ID") ENABLE
/
ALTER TABLE  "FORNECIMENTO" ADD CONSTRAINT "FORNECIMENTO_PRODUTO_FK" FOREIGN KEY ("PRODUTO_ID")
	  REFERENCES  "PRODUTO" ("ID") ENABLE
/
ALTER TABLE  "FUNCIONARIO" ADD CONSTRAINT "FUNCIONARIO_FK" FOREIGN KEY ("PESSOA_ID")
	  REFERENCES  "PESSOA" ("ID") ENABLE
/
ALTER TABLE  "FUNCIONARIO" ADD CONSTRAINT "FUNCIONARIO_UNIDADE_FK" FOREIGN KEY ("UNIDADE_ID")
	  REFERENCES  "UNIDADE" ("ID") ENABLE
/
ALTER TABLE  "UNIDADE" ADD CONSTRAINT "GERENTE_FK" FOREIGN KEY ("GERENTE_ID")
	  REFERENCES  "FUNCIONARIO" ("ID") ENABLE
/
ALTER TABLE  "JOGO" ADD CONSTRAINT "JOGO_FK" FOREIGN KEY ("PRODUTO_ID")
	  REFERENCES  "PRODUTO" ("ID") ENABLE
/
ALTER TABLE  "PEDIDO" ADD CONSTRAINT "PEDIDO_CLIENTE_FK" FOREIGN KEY ("CLIENTE_ID")
	  REFERENCES  "CLIENTE" ("ID") ENABLE
/
ALTER TABLE  "PEDIDO" ADD CONSTRAINT "PEDIDO_FK" FOREIGN KEY ("FRETE_ID")
	  REFERENCES  "TIPOFRETE" ("ID") ENABLE
/
ALTER TABLE  "PEDIDO" ADD CONSTRAINT "PEDIDO_TRANSPORTADORA_FK" FOREIGN KEY ("TRANSPORTADORA_ID")
	  REFERENCES  "TRANSPORTADORA" ("ID") ENABLE
/
ALTER TABLE  "PRODUTO_PEDIDO" ADD CONSTRAINT "PRODUTO_PEDIDO_PEDID_FK" FOREIGN KEY ("PEDIDO_ID")
	  REFERENCES  "PEDIDO" ("ID") ENABLE
/
ALTER TABLE  "PRODUTO_PEDIDO" ADD CONSTRAINT "PRODUTO_PEDIDO_PRODID_FK" FOREIGN KEY ("PRODUTO_ID")
	  REFERENCES  "PRODUTO" ("ID") ENABLE
/
Rem No function found to generate DDL.
CREATE UNIQUE INDEX  "ACESSORIO_PK" ON  "ACESSORIO" ("ID")
/
CREATE UNIQUE INDEX  "CARGO_PK" ON  "CARGO" ("ID")
/
CREATE UNIQUE INDEX  "CLIENTE_EMAIL_UK" ON  "CLIENTE" ("EMAIL")
/
CREATE UNIQUE INDEX  "CLIENTE_PK" ON  "CLIENTE" ("ID")
/
CREATE UNIQUE INDEX  "COLECIONAVEL_PK" ON  "COLECIONAVEL" ("ID")
/
CREATE UNIQUE INDEX  "CONSOLE_PK" ON  "CONSOLE" ("ID")
/
CREATE UNIQUE INDEX  "ESTOQUE_PK" ON  "ESTOQUE" ("ID")
/
CREATE UNIQUE INDEX  "FORNECEDOR_PK" ON  "FORNECEDOR" ("ID")
/
CREATE UNIQUE INDEX  "FORNECIMENTO_PK" ON  "FORNECIMENTO" ("ID")
/
CREATE UNIQUE INDEX  "FUNCIONARIO_PK" ON  "FUNCIONARIO" ("ID")
/
CREATE UNIQUE INDEX  "JOGO_PK" ON  "JOGO" ("ID")
/
CREATE UNIQUE INDEX  "PEDIDO_PK" ON  "PEDIDO" ("ID")
/
CREATE UNIQUE INDEX  "PESSOA_PK" ON  "PESSOA" ("ID")
/
CREATE UNIQUE INDEX  "PRODUTO_PEDIDO_PK" ON  "PRODUTO_PEDIDO" ("PRODUTO_PEDIDO_ID")
/
CREATE UNIQUE INDEX  "PRODUTO_PK" ON  "PRODUTO" ("ID")
/
CREATE UNIQUE INDEX  "TIPOFRETE_PK" ON  "TIPOFRETE" ("ID")
/
CREATE UNIQUE INDEX  "TRANSPORTADORA_PK" ON  "TRANSPORTADORA" ("ID")
/
CREATE UNIQUE INDEX  "UNIDADE_PK" ON  "UNIDADE" ("ID")
/
Rem No package found to generate DDL.
Rem No procedure found to generate DDL.
 CREATE SEQUENCE   "ACESSORIO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 121 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "CARGO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "CLIENTE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 241 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "COLECIONAVEL_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "CONSOLE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "ESTOQUE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 161 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "FORNECEDOR_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "FORNECIMENTO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 141 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "FUNCIONARIO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "JOGO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "PEDIDO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 181 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "PESSOA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 301 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "PRODUTO_PEDIDO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 181 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "PRODUTO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "RASTREIO_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 25 NOCACHE  NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "TIPOFRETE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "TRANSPORTADORA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
 CREATE SEQUENCE   "UNIDADE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL
/
Rem No synonym found to generate DDL.
CREATE OR REPLACE EDITIONABLE TRIGGER  "ADICIONA_ESTOQUE" 
AFTER INSERT ON Fornecimento
FOR EACH ROW


DECLARE

novo NUMBER;
velho NUMBER;
idd NUMBER;

BEGIN
SELECT COUNT(ID) into novo FROM Estoque WHERE Produto_ID = :NEW.Produto_ID;
IF (novo = 0) THEN
	INSERT INTO Estoque (ID, Produto_ID, Quantidade) values (ESTOQUE_SEQ.NEXTVAL,:NEW.Produto_ID,:NEW.Quantidade);

ELSE
	SELECT :NEW.Quantidade into novo FROM DUAL;
	SELECT Quantidade into velho FROM Estoque WHERE :NEW.Produto_ID = Produto_ID;
	novo := novo + velho;
    SELECT ID INTO idd FROM (SELECT ID FROM Estoque WHERE Produto_ID = :NEW.Produto_ID ORDER BY Quantidade ASC ) WHERE ROWNUM = 1;
	UPDATE Estoque SET Quantidade = novo WHERE ID = idd;
END IF; 
END;

/
ALTER TRIGGER  "ADICIONA_ESTOQUE" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "BIU_PRODUTO_PEDIDO_PRECO" 
  before insert or update on "PRODUTO_PEDIDO"               
  for each row
DECLARE
n NUMBER;  
begin   
SELECT PRECO INTO n FROM PRODUTO WHERE ID = :NEW.PRODUTO_ID;
n := n * :NEW.QUANTIDADE;
SELECT n INTO :NEW.PRECO FROM DUAL;    
end; 

/
ALTER TRIGGER  "BIU_PRODUTO_PEDIDO_PRECO" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "BI_ACESSORIO" 
  before insert on "ACESSORIO"               
  for each row  
begin   
  if :NEW."ID" is null then 
    select "ACESSORIO_SEQ".nextval into :NEW."ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_ACESSORIO" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "BI_CARGO" 
  before insert on "CARGO"               
  for each row  
begin   
  if :NEW."ID" is null then 
    select "CARGO_SEQ".nextval into :NEW."ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_CARGO" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "BI_CHECA_PRODUTO_ACESSORIO" 
BEFORE INSERT ON Acessorio
FOR EACH ROW
BEGIN
FOR CUR IN (SELECT * FROM COLECIONAVEL col LEFT JOIN CONSOLE c ON col.PRODUTO_ID = c.PRODUTO_ID LEFT JOIN JOGO j ON col.PRODUTO_ID = j.PRODUTO_ID) LOOP
    IF CUR.PRODUTO_ID = :NEW.PRODUTO_ID THEN
    RAISE_APPLICATION_ERROR(-20111,'Produto j?? est?? em outra categoria');
    END IF;
END LOOP;
END;

/
ALTER TRIGGER  "BI_CHECA_PRODUTO_ACESSORIO" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "BI_CHECA_PRODUTO_COLECIONAVEL" 
BEFORE INSERT ON COLECIONAVEL
FOR EACH ROW
BEGIN
FOR CUR IN (SELECT * FROM ACESSORIO a LEFT JOIN CONSOLE c ON a.PRODUTO_ID = c.PRODUTO_ID LEFT JOIN JOGO j ON a.PRODUTO_ID = j.PRODUTO_ID) LOOP
    IF CUR.PRODUTO_ID = :NEW.PRODUTO_ID THEN
    RAISE_APPLICATION_ERROR(-20111,'Produto j?? est?? em outra categoria');
    END IF;
END LOOP;
END;

/
ALTER TRIGGER  "BI_CHECA_PRODUTO_COLECIONAVEL" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "BI_CHECA_PRODUTO_CONSOLE" 
BEFORE INSERT ON CONSOLE
FOR EACH ROW
BEGIN
FOR CUR IN (SELECT * FROM ACESSORIO a LEFT JOIN COLECIONAVEL c ON a.PRODUTO_ID = c.PRODUTO_ID LEFT JOIN JOGO j ON a.PRODUTO_ID = j.PRODUTO_ID) LOOP
    IF CUR.PRODUTO_ID = :NEW.PRODUTO_ID THEN
    RAISE_APPLICATION_ERROR(-20111,'Produto j?? est?? em outra categoria');
    END IF;
END LOOP;
END;

/
ALTER TRIGGER  "BI_CHECA_PRODUTO_CONSOLE" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "BI_CHECA_PRODUTO_JOGO" 
BEFORE INSERT ON JOGO
FOR EACH ROW
BEGIN
FOR CUR IN (SELECT * FROM ACESSORIO a LEFT JOIN COLECIONAVEL c ON a.PRODUTO_ID = c.PRODUTO_ID LEFT JOIN CONSOLE con ON a.PRODUTO_ID = con.PRODUTO_ID) LOOP
    IF CUR.PRODUTO_ID = :NEW.PRODUTO_ID THEN
    RAISE_APPLICATION_ERROR(-20111,'Produto j?? est?? em outra categoria');
    END IF;
END LOOP;
END;

/
ALTER TRIGGER  "BI_CHECA_PRODUTO_JOGO" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "BI_CLIENTE" 
  before insert on "CLIENTE"               
  for each row  
begin   
  if :NEW."ID" is null then 
    select "CLIENTE_SEQ".nextval into :NEW."ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_CLIENTE" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "BI_COLECIONAVEL" 
  before insert on "COLECIONAVEL"               
  for each row  
begin   
  if :NEW."ID" is null then 
    select "COLECIONAVEL_SEQ".nextval into :NEW."ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_COLECIONAVEL" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "BI_CONSOLE" 
  before insert on "CONSOLE"               
  for each row  
begin   
  if :NEW."ID" is null then 
    select "CONSOLE_SEQ".nextval into :NEW."ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_CONSOLE" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "BI_ESTOQUE" 
  before insert on "ESTOQUE"               
  for each row  
begin   
  if :NEW."ID" is null then 
    select "ESTOQUE_SEQ".nextval into :NEW."ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_ESTOQUE" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "BI_FORNECEDOR" 
  before insert on "FORNECEDOR"               
  for each row  
begin   
  if :NEW."ID" is null then 
    select "FORNECEDOR_SEQ".nextval into :NEW."ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_FORNECEDOR" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "BI_FORNECIMENTO" 
  before insert on "FORNECIMENTO"               
  for each row  
begin   
  if :NEW."ID" is null then 
    select "FORNECIMENTO_SEQ".nextval into :NEW."ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_FORNECIMENTO" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "BI_FUNCIONARIO" 
  before insert on "FUNCIONARIO"               
  for each row  
begin   
  if :NEW."ID" is null then 
    select "FUNCIONARIO_SEQ".nextval into :NEW."ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_FUNCIONARIO" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "BI_JOGO" 
  before insert on "JOGO"               
  for each row  
begin   
  if :NEW."ID" is null then 
    select "JOGO_SEQ".nextval into :NEW."ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_JOGO" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "BI_PEDIDO" 
  before insert on "PEDIDO"               
  for each row  
begin   
  if :NEW."ID" is null then 
    select "PEDIDO_SEQ".nextval into :NEW."ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_PEDIDO" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "BI_PESSOA" 
  before insert on "PESSOA"               
  for each row  
begin   
  if :NEW."ID" is null then 
    select "PESSOA_SEQ".nextval into :NEW."ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_PESSOA" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "BI_PRODUTO" 
  before insert on "PRODUTO"               
  for each row  
begin   
  if :NEW."ID" is null then 
    select "PRODUTO_SEQ".nextval into :NEW."ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_PRODUTO" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "BI_PRODUTO_PEDIDO" 
  before insert on "PRODUTO_PEDIDO"               
  for each row  
begin   
  if :NEW."PRODUTO_PEDIDO_ID" is null then 
    select "PRODUTO_PEDIDO_SEQ".nextval into :NEW."PRODUTO_PEDIDO_ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_PRODUTO_PEDIDO" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "BI_QUANTIDADE_PRODUTO_PEDIDO" 
BEFORE INSERT OR UPDATE ON PRODUTO_PEDIDO
FOR EACH ROW
BEGIN
IF :NEW.QUANTIDADE IS NULL THEN
    :NEW.QUANTIDADE := 0;
END IF;
END;

/
ALTER TRIGGER  "BI_QUANTIDADE_PRODUTO_PEDIDO" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "BI_TIPOFRETE" 
  before insert on "TIPOFRETE"               
  for each row  
begin   
  if :NEW."ID" is null then 
    select "TIPOFRETE_SEQ".nextval into :NEW."ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_TIPOFRETE" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "BI_TRANSPORTADORA" 
  before insert on "TRANSPORTADORA"               
  for each row  
begin   
  if :NEW."ID" is null then 
    select "TRANSPORTADORA_SEQ".nextval into :NEW."ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_TRANSPORTADORA" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "BI_UNIDADE" 
  before insert on "UNIDADE"               
  for each row  
begin   
  if :NEW."ID" is null then 
    select "UNIDADE_SEQ".nextval into :NEW."ID" from sys.dual; 
  end if; 
end; 

/
ALTER TRIGGER  "BI_UNIDADE" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "BU_PEDIDO_AJUSTA_NULLS" 
BEFORE UPDATE ON Pedido
FOR EACH ROW
BEGIN
IF :NEW.Status_Compra = 1 THEN
    SELECT SYSDATE INTO :NEW.DATA_COMPRA FROM DUAL;                                                     --atualiza a data da compra
    SELECT (SYSDATE + 3) INTO :NEW.PRAZO FROM DUAL;                                                       --atualiza o prazo (por padr??o, data de hoje + 3 dias)
    SELECT RASTREIO_SEQ.nextval INTO :NEW.CODIGO_RASTREIO FROM DUAL;                                    --pega o c??digo de rastreio
    SELECT id INTO :NEW.TRANSPORTADORA_ID FROM (SELECT ID id FROM TRANSPORTADORA ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM = 1;         --Pega a transportadora aleatoriamente
    SELECT id INTO :NEW.FRETE_ID FROM (SELECT ID id FROM TIPOFRETE ORDER BY DBMS_RANDOM.RANDOM) WHERE ROWNUM = 1;                                         --Pega o frete aleatoriamente
END IF;
END;

/
ALTER TRIGGER  "BU_PEDIDO_AJUSTA_NULLS" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "RETIRA_ESTOQUE" 
AFTER UPDATE ON Pedido
FOR EACH ROW
DECLARE
num NUMBER;
disp NUMBER;
BEGIN
IF (:NEW.Status_Compra = 1) THEN
    FOR cur in (SELECT * FROM PRODUTO_PEDIDO WHERE PEDIDO_ID = :NEW.ID)                                 --Passa por todos os produtos do pedido
    LOOP
    SELECT cur.QUANTIDADE INTO num FROM DUAL;                                                           --Armazena a quantidade desejada do produto
        FOR est in (SELECT * FROM ESTOQUE WHERE PRODUTO_ID = cur.PRODUTO_iD ORDER BY Quantidade DESC) LOOP                                 --Passa por todos os estoques do produto
            SELECT est.Quantidade INTO disp FROM DUAL;                                                                                      --Armazena a quantidade disponivel

            IF disp < num THEN                                                                                                              --Verifica se tem menos produtos dispon??veis do que requisitado
                num := num - disp;                                                                                                          --Atualiza a quantidade desejada
                UPDATE Estoque SET Quantidade = 0 WHERE ID = est.ID;                                                                        --J?? que tem menos dispon??veis do que requisitados, seta 0 nesse estoque

            ELSE
                disp := disp - num;                                                                                     --Calcula o novo estoque                                                    
                UPDATE Estoque SET Quantidade = disp WHERE ID = est.ID;                                                 --Atualiza o estoque
                SELECT MAX(Quantidade) into num FROM Estoque WHERE Produto_ID = cur.PRODUTO_ID;                         --Pega o novo valor do estoque e armazena em num
                DELETE FROM Estoque e WHERE Produto_ID = cur.Produto_ID AND e.Quantidade = 0;
                EXIT;                                                                                                   --sai do loop j?? que a quantidade requisitada j?? foi atendida

            END IF;
        END LOOP;
    END LOOP;
END IF;
END;

/
ALTER TRIGGER  "RETIRA_ESTOQUE" ENABLE
/
CREATE OR REPLACE FORCE EDITIONABLE VIEW  "PESSOAS" ("ID_PESSOA", "NOME", "ENDERECO_RESIDENCIAL", "TELEFONE", "EMAIL_CLIENTE", "CARGO", "SALARIO", "UNIDADE_ENDERECO") AS 
  SELECT p.ID ID_PESSOA, p.Nome, p.Endereco Endereco_Residencial, p.Telefone, c.Email Email_Cliente, f.Cargo, f.Salario, u.Endereco Unidade_Endereco 
FROM Pessoa p LEFT OUTER JOIN Cliente c ON p.ID = c.Pessoa_ID 
LEFT OUTER JOIN Funcionario f ON p.ID = f.Pessoa_ID 
LEFT OUTER JOIN Unidade u ON u.ID = f.Unidade_ID
/
CREATE OR REPLACE FORCE EDITIONABLE VIEW  "PRODUTO_QUANTIDADE" ("NOME", "DESCRICAO", "PRECO", "QUANTIDADE", "GENERO", "PUBLISHER", "DEVELOPER", "PLATAFORMA", "DATALANCAMENTO", "FAIXAETARIA", "CONSOLEMARCA", "MODELO", "TIPO", "MARCA", "COMPATIBILIDADE", "COLECIONAVELMARCA") AS 
  SELECT p.NOME nome, p.DESCRICAO, p.Preco, SUM(e.Quantidade) Quantidade
,j.Genero, j.publisher, j.developer, j.plataforma, j.datalancamento, j.faixaetaria
, c.Marca ConsoleMarca, c.Modelo
, a.TIPO, a.MARCA, a.Compatibilidade
, co.Marca ColecionavelMarca  
FROM Produto p INNER JOIN Estoque e on p.ID = e.Produto_ID
LEFT OUTER JOIN Jogo j ON p.ID = j.Produto_ID
LEFT OUTER JOIN Console c ON p.ID = c.Produto_ID
LEFT OUTER JOIN Acessorio a ON p.ID = a.Produto_ID
LEFT OUTER JOIN Colecionavel co ON p.ID = co.Produto_ID  
GROUP BY e.Produto_ID, p.NOME, p.DESCRICAO, p.Preco
,j.Genero, j.publisher, j.developer, j.plataforma, j.datalancamento, j.faixaetaria
,c.Marca, c.Modelo, a.TIPO, a.MARCA, a.Compatibilidade
, co.Marca
/