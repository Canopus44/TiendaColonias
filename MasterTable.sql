CREATE TABLE bd_carrito (
    bd_idcarrito      CHAR(20 CHAR) NOT NULL,
    bd_totalcarrito   NUMBER(15, 2) NOT NULL
);

COMMENT ON COLUMN bd_carrito.bd_idcarrito IS
    'Identificación del carrito';

COMMENT ON COLUMN bd_carrito.bd_totalcarrito IS
    'Total compra';
    
 ALTER TABLE bd_carrito ADD CONSTRAINT bd_carrito_pk PRIMARY KEY ( bd_idcarrito );

ALTER TABLE bd_carrito ADD CONSTRAINT bd_carrito__un UNIQUE ( bd_idcarrito );


/**/

CREATE TABLE dp_detalle_pedido (
    dp_id_pedido      CHAR(50) NOT NULL,
    dp_fecha          CHAR(10 CHAR) NOT NULL,
    dp_estado         CHAR(10 CHAR) NOT NULL,
    dp_valor_venta    NUMBER(15, 2) NOT NULL,
    dp_valor_compra   NUMBER(15, 2) NOT NULL
);

COMMENT ON COLUMN dp_detalle_pedido.dp_id_pedido IS
    'IdentificaciÃ³n del pedido';

COMMENT ON COLUMN dp_detalle_pedido.dp_fecha IS
    'Fecha de solicitud';

COMMENT ON COLUMN dp_detalle_pedido.dp_estado IS
    'Estado del pedido';

COMMENT ON COLUMN dp_detalle_pedido.dp_valor_venta IS
    'Valor del pedido';

COMMENT ON COLUMN dp_detalle_pedido.dp_valor_compra IS
    'Valor compra del pedido';
    
ALTER TABLE dp_detalle_pedido ADD CONSTRAINT dp_detalle_pedido_pk PRIMARY KEY ( dp_id_pedido );

ALTER TABLE dp_detalle_pedido ADD CONSTRAINT dp_detalle_pedido__un UNIQUE ( dp_id_pedido );

/**/
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

/**/

CREATE TABLE maestro_inventario (
    ma_idproducto           CHAR(50 CHAR) NOT NULL,
    ma_nombreprd            CHAR(50 CHAR) NOT NULL,
    ma_marca                CHAR(50 CHAR),
    ma_referencia           CHAR(50 CHAR),
    ma_idproveedor          CHAR(50 CHAR) NOT NULL,
    ma_unidadesexistencia   INTEGER NOT NULL,
    ma_preciocosto          NUMBER NOT NULL,
    ma_precioventa          NUMBER NOT NULL
);

COMMENT ON COLUMN maestro_inventario.ma_idproducto IS
    'IdentificaciÃ³n del producto';

COMMENT ON COLUMN maestro_inventario.ma_nombreprd IS
    'Nombre del producto';

COMMENT ON COLUMN maestro_inventario.ma_marca IS
    'Marca';

COMMENT ON COLUMN maestro_inventario.ma_referencia IS
    'Referencia';

COMMENT ON COLUMN maestro_inventario.ma_idproveedor IS
    'Id del proveedor';

COMMENT ON COLUMN maestro_inventario.ma_unidadesexistencia IS
    'Unidades en existencia del producto';

COMMENT ON COLUMN maestro_inventario.ma_preciocosto IS
    'Precio del costo';

COMMENT ON COLUMN maestro_inventario.ma_precioventa IS
    'Precio de venta';
    
    
ALTER TABLE maestro_inventario ADD CONSTRAINT maestro_inventario_pk PRIMARY KEY ( ma_idproducto );

ALTER TABLE maestro_inventario ADD CONSTRAINT maestro_inventario__un UNIQUE ( ma_idproducto ); 

/**/

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
    mc_rol         CHAR(200 CHAR), 
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

/**/

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
    mp_categoria     CHAR(30 CHAR),
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