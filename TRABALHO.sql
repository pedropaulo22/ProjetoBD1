CREATE TABLE cadastro( 

    Login VARCHAR(25) NOT NULL, 

    Senha VARCHAR(25) NOT NULL, 
    nome VARCHAR
    email   VARCHAR   
    PRIMARY KEY(Login));




     

CREATE TABLE MOTORISTA( 

    id_motorista INT(5) PRIMARY KEY,
    km FLOAT
    valor FLOAT
    
     

CREATE TABLE EMPRESA( 

    IdEmpresa INT (5)   PRIMARY KEY ,
    nome_motorista VARCHAR,
    NomeEmpresa VARCHAR(25),
    valor_total FLOAT ,
    km_total Float );
         
CREATE TABLE VEICULOS(

):

CREATE TABLE CAMINHAO (
placa  CHAR(6),
modelo VARCHAR(30),
ano INT (4)
);

CREATE TABLE ONIBUS (
placa  CHAR(6),
modelo VARCHAR(30),
ano INT (4)
);


CREATE TABLE cidade( 

    NomeCidade VARCHAR(50), 

    UF CHAR(2), 

    PRIMARY KEY (Cidade, UF)); 

  
CREATE TABLE viagem( 

    serie INT(10), 
    carga VARCHAR (100),

    Cidade CHAR(50), 
    UF CHAR(2),

    PesoTonelada INT, 

    
    DistanciaKm INT, 

    Valor FLOAT , 

    IdMotorista INT(5) NOT NULL, 

    PRIMARY KEY (Serie), 

    FOREIGN KEY (NomeCidade , UF ) REFERENCES (cidade), 
  

CREATE TABLE RANKIN( 

    id_motorista  INT(5),
    IdEmpresa INT(5),

    FOREIGN KEY (id_motorista) REFERENCES MOTORISTA, 

    FOREIGN KEY ( IdEmpresa) REFERENCES EMPRESA  ); 

     