CREATE TABLE maestro_proveedores (
    mp_idproveedor       CHAR(50 CHAR) NOT NULL,
    mp_nombreproveedor   CHAR(100 CHAR),
    mp_ciudad            CHAR(50 CHAR),
    mp_departamento      CHAR(50),
    mp_codpostal         CHAR(30 CHAR),
    mp_provincia         CHAR(50 CHAR),
    mp_pais              CHAR(50 CHAR),
    mp_numtelefono       CHAR(20 CHAR),
    mp_numfax            CHAR(10 CHAR),
    mp_email             CHAR(30 CHAR)
);

COMMENT ON COLUMN maestro_proveedores.mp_idproveedor IS
    'Identificación del proveedor';

COMMENT ON COLUMN maestro_proveedores.mp_nombreproveedor IS
    'Nombre del proveedor';

COMMENT ON COLUMN maestro_proveedores.mp_ciudad IS
    'Ciudad del proveedor';

COMMENT ON COLUMN maestro_proveedores.mp_departamento IS
    'Departamento del proveedor';

COMMENT ON COLUMN maestro_proveedores.mp_codpostal IS
    'Código postal';

COMMENT ON COLUMN maestro_proveedores.mp_provincia IS
    'Provincia';

COMMENT ON COLUMN maestro_proveedores.mp_pais IS
    'País';

COMMENT ON COLUMN maestro_proveedores.mp_numtelefono IS
    'Número de teléfono';

COMMENT ON COLUMN maestro_proveedores.mp_numfax IS
    'Número de Fax';

COMMENT ON COLUMN maestro_proveedores.mp_email IS
    'Dirección de correo electrónico';
    
ALTER TABLE maestro_proveedores ADD CONSTRAINT maestro_proveedores_pk PRIMARY KEY ( mp_idproveedor );

ALTER TABLE maestro_proveedores ADD CONSTRAINT maestro_proveedores__un UNIQUE ( mp_idproveedor );