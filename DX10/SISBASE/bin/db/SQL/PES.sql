CREATE TABLE PES (
    PES_NR_PESSOA INTEGER NOT NULL,
    PES_NM_PESSOA VARCHAR (100) NOT NULL,
    PES_LG_LOGIN  VARCHAR (20) NOT NULL,
    PES_SN_SENHA  VARCHAR (8),
    PES_SG_ESTADO VARCHAR (2),
    PES_NM_CIDADE VARCHAR (50),
    PES_NM_BAIRRO VARCHAR (50),
    PES_DS_ENDERE VARCHAR (100),
    PES_NR_TELEFO VARCHAR (20),
    PES_NR_CELULA VARCHAR (20),
    PES_CD_ADM    CHAR    (1) NOT NULL,
    PES_DT_BTDA01 TIMESTAMP,
    PES_DT_BTDA02 TIMESTAMP,
    PES_DT_BTDA03 TIMESTAMP,
    PES_DT_BTDA04 TIMESTAMP,
    PRIMARY KEY (PES_NR_PESSOA)
)