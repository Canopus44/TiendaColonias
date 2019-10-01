CREATE TABLE maestro_clientes (
    mc_idcl        INTEGER NOT NULL,
    mc_nrodoc      INTEGER NOT NULL,
    mc_tpoid       CHAR(5 CHAR) NOT NULL,
    mc_nombre      CHAR(60 CHAR),
    mc_apellido    CHAR(60 CHAR),
    mc_email       CHAR(30 CHAR) NOT NULL,
    mc_telefono    CHAR(20 CHAR) NOT NULL,
    mc_direcc      CHAR(50 CHAR) NOT NULL,
    mc_codpostal   CHAR(50 CHAR),
    mc_ciudad      CHAR(50 CHAR),
    mc_depto       CHAR(50 CHAR),
    mc_pais        CHAR(50 CHAR),
    mc_pswd        CHAR(50 CHAR) NOT NULL,
    mc_foto        CHAR(200 CHAR),
    mc_descuento   CHAR(20)
);

COMMENT ON COLUMN maestro_clientes.mc_idcl IS
    'Nro Interno de cliente';

COMMENT ON COLUMN maestro_clientes.mc_nrodoc IS
    'Nro documento del cliente';

COMMENT ON COLUMN maestro_clientes.mc_tpoid IS
    'Tipo de documento';

COMMENT ON COLUMN maestro_clientes.mc_nombre IS
    'Nombres';

COMMENT ON COLUMN maestro_clientes.mc_apellido IS
    'Apellidos';

COMMENT ON COLUMN maestro_clientes.mc_email IS
    'Correo electrÃ³nico';

COMMENT ON COLUMN maestro_clientes.mc_telefono IS
    'TelÃ©fono de contacto';

COMMENT ON COLUMN maestro_clientes.mc_direcc IS
    'DirecciÃ³n de residencia';

COMMENT ON COLUMN maestro_clientes.mc_codpostal IS
    'CÃ³digo postal';

COMMENT ON COLUMN maestro_clientes.mc_ciudad IS
    'Ciudad de residencia';

COMMENT ON COLUMN maestro_clientes.mc_depto IS
    'Departamento de residencia';

COMMENT ON COLUMN maestro_clientes.mc_pais IS
    'PaÃ­s de redicencia';

COMMENT ON COLUMN maestro_clientes.mc_pswd IS
    'ContraseÃ±a';

COMMENT ON COLUMN maestro_clientes.mc_foto IS
    'Foto';

COMMENT ON COLUMN maestro_clientes.mc_descuento IS
    'Descuento';
    
ALTER TABLE maestro_clientes ADD CONSTRAINT maestro_clientes_pk PRIMARY KEY ( mc_nrodoc );

ALTER TABLE maestro_clientes ADD CONSTRAINT maestro_clientes__un UNIQUE ( mc_nrodoc );