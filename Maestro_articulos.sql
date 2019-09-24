CREATE TABLE maestro_articulos (
    ma_idproducto           CHAR(50 CHAR) NOT NULL,
    ma_nombreprd            CHAR(50 CHAR) NOT NULL,
    ma_marca                CHAR(50 CHAR),
    ma_referencia           CHAR(50 CHAR),
    ma_idproveedor          CHAR(50 CHAR) NOT NULL,
    ma_unidadesexistencia   INTEGER NOT NULL,
    ma_preciocosto          NUMBER NOT NULL,
    ma_precioventa          NUMBER NOT NULL
);

COMMENT ON COLUMN maestro_articulos.ma_idproducto IS
    'IdentificaciÃ³n del producto';

COMMENT ON COLUMN maestro_articulos.ma_nombreprd IS
    'Nombre del producto';

COMMENT ON COLUMN maestro_articulos.ma_marca IS
    'Marca';

COMMENT ON COLUMN maestro_articulos.ma_referencia IS
    'Referencia';

COMMENT ON COLUMN maestro_articulos.ma_idproveedor IS
    'Id del proveedor';

COMMENT ON COLUMN maestro_articulos.ma_unidadesexistencia IS
    'Unidades en existencia del producto';

COMMENT ON COLUMN maestro_articulos.ma_preciocosto IS
    'Precio del costo';

COMMENT ON COLUMN maestro_articulos.ma_precioventa IS
    'Precio de venta';
    
    
ALTER TABLE maestro_articulos ADD CONSTRAINT maestro_articulos_pk PRIMARY KEY ( ma_idproducto );

ALTER TABLE maestro_articulos ADD CONSTRAINT maestro_articulos__un UNIQUE ( ma_idproducto );    