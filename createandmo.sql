drop database recreiodosbandeirantes;
Create database RecreioDosBandeirantes ;
USE RecreioDosBandeirantes ;



#drop table condominio;
CREATE TABLE  condominio (
  nome VARCHAR(45) NOT NULL,
  cvco INT NOT NULL,
  cep INT NULL,
  numero INT NULL,
  PRIMARY KEY (nome, cvco));

CREATE TABLE bloco ( 
 idbloco int not null auto_increment,
  senha INT NULL,
  letra VARCHAR(1) NOT NULL,
  nome varchar(45),
  
  PRIMARY KEY (idbloco), 
   foreign key(nome)
  references condominio(nome)
 );
  
  
 CREATE TABLE andar (
  idandar  int not null auto_increment,
  numero  INT NOT NULL,
   idbloco int,
  PRIMARY KEY ( idandar ),
  foreign key(idbloco)
  references bloco(idbloco)
  );

CREATE TABLE apartamento  (
   idapartamento int not null auto_increment,
   numero  INT NOT NULL,
   idandar int,
   
  PRIMARY KEY ( idapartamento ),
    FOREIGN KEY ( idandar )
    REFERENCES  andar  ( idandar )
);
#drop table areas_de_lazer;

CREATE TABLE areas_de_lazer (
  regras VARCHAR(500) NULL,
  horarios VARCHAR(45) NULL,
  idlazer int NOT NULL,
  nome varchar(45),
   PRIMARY KEY (idlazer),
  tipo varchar(45) NULL,
  foreign key(nome)
  references condominio(nome)
 );

CREATE TABLE Pessoa (
  cpf INT NOT NULL,
  nome VARCHAR(45) NULL,
  PRIMARY KEY (cpf));
  
  CREATE TABLE  telefone (
  DDD INT NULL,
  numero INT NOT NULL,
  operadora VARCHAR(10) NULL,
  Pessoa_cpf INT NOT NULL,
  PRIMARY KEY (numero),
    FOREIGN KEY (Pessoa_cpf)
    REFERENCES Pessoa (cpf));


# drop table andar;

CREATE TABLE visitante (
  horario_entrada DATETIME NULL,
  horario_saida DATETIME NULL,
  Pessoa_cpf INT NOT NULL,
  endereço VARCHAR(80) NULL,
  PRIMARY KEY (Pessoa_cpf),
    FOREIGN KEY (Pessoa_cpf)
    REFERENCES Pessoa (cpf)
    );
    
    
CREATE TABLE  residente  (
   pet  VARCHAR(45) NULL,
   apartamento_numero  INT NOT NULL,
   Pessoa_cpf  INT NOT NULL,
  PRIMARY KEY ( Pessoa_cpf ),
    FOREIGN KEY ( apartamento_numero )
    REFERENCES  apartamento  ( idapartamento ), 
    FOREIGN KEY ( Pessoa_cpf )
    REFERENCES  Pessoa  ( cpf )
);

  CREATE TABLE subsindico (
  mandato DATETIME NULL,
  subsindico_cpf INT NOT NULL,
 bloco int,
  PRIMARY KEY (subsindico_cpf),
    FOREIGN KEY (subsindico_cpf)
    REFERENCES residente (pessoa_cpf),
    foreign key (bloco)
    references bloco(idbloco));




CREATE TABLE  proprietario  (
   morador  BINARY(1) NULL COMMENT '1 para proprietario morador\n0 para proprietario nao morador',
   apartamento_numero  INT NOT NULL,
   Pessoa_cpf  INT NOT NULL,
   endereço  VARCHAR(45) NULL,
  PRIMARY KEY ( Pessoa_cpf ), 
    FOREIGN KEY ( apartamento_numero )
    REFERENCES  apartamento  ( idapartamento ),
    FOREIGN KEY ( Pessoa_cpf )
    REFERENCES Pessoa  ( cpf )
  );
 


CREATE TABLE vaga  (
   numero  INT NOT NULL  auto_increment,
   local_num  INT NOT NULL,
   Dono  INT NOT NULL,
  PRIMARY KEY ( numero ),
    FOREIGN KEY ( local_num )
    REFERENCES   apartamento  ( idapartamento ),
    FOREIGN KEY ( Dono )
    REFERENCES apartamento  ( idapartamento )
);
CREATE TABLE tag (
  pin INT NOT NULL,
  idbloco int,
 PRIMARY KEY (pin),
    FOREIGN KEY (idbloco)
    REFERENCES bloco (idbloco)
  );
create table log(
	descricao varchar(45),
    pintag int,
    idlazer int,
    foreign key (idlazer)
    references areas_de_lazer(idlazer),
    primary key(pintag),
    foreign key(pintag)
    references tag(pin));
    


CREATE TABLE residente_has_tag  (
   residente_Pessoa_cpf  INT NOT NULL ,
   tag_pin  INT NOT NULL,
  PRIMARY KEY ( residente_Pessoa_cpf ,  tag_pin ),
    FOREIGN KEY ( residente_Pessoa_cpf )
    REFERENCES  residente  ( Pessoa_cpf ),
    FOREIGN KEY ( tag_pin )
    REFERENCES  tag  ( pin )
);







	
	
      
      