CREATE TABLE CADASTRO_USUARIO( 

    Login VARCHAR(25) NOT NULL, 

    Senha VARCHAR(25) NOT NULL, 
    nome VARCHAR(50),
    email   VARCHAR(50),   
    PRIMARY KEY(Login));

     

CREATE TABLE MOTORISTA( 

    id_motorista INT(5),
    km FLOAT,
    valor FLOAT,
    PRIMARY KEY(id_motorista));
    
     

CREATE TABLE EMPRESA( 

    IdEmpresa INT (5),
    nome_motorista VARCHAR(20),
    NomeEmpresa VARCHAR(25),
    valor_total FLOAT ,
    km_total FLOAT,
    PRIMARY KEY(IdEmpresa) );
         
CREATE TABLE VEICULOS(
	id_veiculo INT(5)  NOT NULL,
	PRIMARY KEY(id_veiculo)
);

CREATE TABLE CAMINHAO (
    placa  CHAR (6),
    modelo VARCHAR (30),
    ano INT (4),
    id_veiculo INT(5) NOT NULL,
    PRIMARY KEY(placa),
    FOREIGN KEY (id_veiculo) REFERENCES veiculos (id_veiculo)
);
CREATE TABLE ONIBUS (
	placa  CHAR(6),
	modelo VARCHAR(30),
	ano INT (4),
	id_veiculo INT(5) NOT NULL,
	PRIMARY KEY(placa),
	FOREIGN KEY (id_veiculo) REFERENCES veiculos (id_veiculo)
);

CREATE TABLE CIDADE( 

    NomeCidade VARCHAR(50), 

    UF CHAR(2), 

    PRIMARY KEY (NomeCidade, UF)); 

  
CREATE TABLE VIAGEM( 
    serie INT(10), 
    nome VARCHAR (100),
    NomeCidade CHAR(50), 
    UF CHAR(2),
    PesoTonelada float,    
    DistanciaKm float,
    Valor FLOAT, 
   id_motorista  INT(5),
    PRIMARY KEY (Serie), 
    FOREIGN KEY (id_motorista) REFERENCES motorista (id_motorista), 
    FOREIGN KEY (NomeCidade, UF ) REFERENCES cidade (NomeCidade, UF)
 ); 
  
  

CREATE TABLE RANKIN( 
    id_motorista  INT(5),
    IdEmpresa INT(5),
    FOREIGN KEY (id_motorista) REFERENCES motorista (id_motorista), 

    FOREIGN KEY ( IdEmpresa) REFERENCES empresa (IdEmpresa)
 ); 

CREATE TABLE HISTORICO_MOTORISTA(
    id_motorista INT (5),
    serie INT(10), 
    data_h DATE,
    nome VARCHAR(100),
    PRIMARY KEY (data_h,id_motorista),    
    FOREIGN KEY (id_motorista) REFERENCES motorista (id_motorista),
    FOREIGN KEY ( serie )  REFERENCES viagem (serie)
);