CREATE TABLE maestro_productos (
    mp_idprod          CHAR(50 CHAR) NOT NULL,
    mp_marca           CHAR(50 CHAR),
    mp_nombreprd       CHAR(50 CHAR),
    mp_referencia      CHAR(50 CHAR) NOT NULL,
    mp_anoinic         CHAR(8 CHAR),
    mp_fmlaolfat       CHAR(30 CHAR),
    mp_nota_salida     CHAR(50 CHAR),
    mp_nota_corazon    CHAR(50 CHAR),
    mp_nota_fondo      CHAR(50 CHAR),
    "MP_categoria "    CHAR(30 CHAR),
    mp_tipo            INTEGER,
    mp_onzas           INTEGER,
    mp_genero          CHAR(10 CHAR),
    mp_precio_compra   NUMBER(15, 2) NOT NULL,
    mp_precio_venta    NUMBER(15, 2) NOT NULL,
    mp_descuentro      NUMBER(3, 2),
    mp_precio_descto   NUMBER(15, 2),
    mp_oferta          CHAR(20 CHAR)
);

COMMENT ON COLUMN maestro_productos.mp_idprod IS
    'Marca';

COMMENT ON COLUMN maestro_productos.mp_marca IS
    'Id del producto';

COMMENT ON COLUMN maestro_productos.mp_referencia IS
    'Referencia';

COMMENT ON COLUMN maestro_productos.mp_anoinic IS
    'Ano de lanzamiento';

COMMENT ON COLUMN maestro_productos.mp_fmlaolfat IS
    'Familia olfativa';

COMMENT ON COLUMN maestro_productos.mp_nota_salida IS
    'Nota de salida';

COMMENT ON COLUMN maestro_productos.mp_nota_corazon IS
    'Nota de corazon';

COMMENT ON COLUMN maestro_productos.mp_nota_fondo IS
    'Nota de fondo';

COMMENT ON COLUMN maestro_productos."MP_categoria " IS
    'CategorÃ­a';

COMMENT ON COLUMN maestro_productos.mp_tipo IS
    'Peso en MililÃ­tros';

COMMENT ON COLUMN maestro_productos.mp_onzas IS
    'Onzas';

COMMENT ON COLUMN maestro_productos.mp_genero IS
    'GÃ©nero';

COMMENT ON COLUMN maestro_productos.mp_precio_compra IS
    'Precio de compra';

COMMENT ON COLUMN maestro_productos.mp_precio_venta IS
    'Precio de venta';

COMMENT ON COLUMN maestro_productos.mp_descuentro IS
    'Descuento';

COMMENT ON COLUMN maestro_productos.mp_precio_descto IS
    'Precio de venta con descuento';
    
ALTER TABLE maestro_productos ADD CONSTRAINT maestro_productos_pk PRIMARY KEY ( mp_idprod );

ALTER TABLE maestro_productos ADD CONSTRAINT maestro_productos__un UNIQUE ( mp_idprod );