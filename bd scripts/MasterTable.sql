CREATE TABLE bd_carrito
(
    bd_idcarrito CHAR(20) NOT NULL
    COMMENT 'Identificación del carrito',
    bd_totalcarrito   DECIMAL
    (15, 2) NOT NULL COMMENT 'Total compra'
);

    /* Moved to CREATE TABLE
COMMENT ON COLUMN bd_carrito.bd_idcarrito IS
    'Identificación del carrito'; */

    /* Moved to CREATE TABLE
COMMENT ON COLUMN bd_carrito.bd_totalcarrito IS
    'Total compra'; */

    ALTER TABLE bd_carrito ADD CONSTRAINT bd_carrito_pk PRIMARY KEY ( bd_idcarrito );

    ALTER TABLE bd_carrito ADD CONSTRAINT bd_carrito__un UNIQUE ( bd_idcarrito );


    /**/

    CREATE TABLE dp_detalle_pedido
    (
        dp_id_pedido CHAR(50) NOT NULL
        COMMENT 'IdentificaciÃ³n del pedido',
    dp_fecha          CHAR
        (10) NOT NULL COMMENT 'Fecha de solicitud',
    dp_estado         CHAR
        (10) NOT NULL COMMENT 'Estado del pedido',
    dp_valor_venta    DECIMAL
        (15, 2) NOT NULL COMMENT 'Valor del pedido',
    dp_valor_compra   DECIMAL
        (15, 2) NOT NULL COMMENT 'Valor compra del pedido'
);

        /* Moved to CREATE TABLE
COMMENT ON COLUMN dp_detalle_pedido.dp_id_pedido IS
    'IdentificaciÃ³n del pedido'; */

        /* Moved to CREATE TABLE
COMMENT ON COLUMN dp_detalle_pedido.dp_fecha IS
    'Fecha de solicitud'; */

        /* Moved to CREATE TABLE
COMMENT ON COLUMN dp_detalle_pedido.dp_estado IS
    'Estado del pedido'; */

        /* Moved to CREATE TABLE
COMMENT ON COLUMN dp_detalle_pedido.dp_valor_venta IS
    'Valor del pedido'; */

        /* Moved to CREATE TABLE
COMMENT ON COLUMN dp_detalle_pedido.dp_valor_compra IS
    'Valor compra del pedido'; */

        ALTER TABLE dp_detalle_pedido ADD CONSTRAINT dp_detalle_pedido_pk PRIMARY KEY ( dp_id_pedido );

        ALTER TABLE dp_detalle_pedido ADD CONSTRAINT dp_detalle_pedido__un UNIQUE ( dp_id_pedido );

        /**/
        CREATE TABLE maestro_proveedores
        (
            mp_idproveedor CHAR(50) NOT NULL
            COMMENT 'Identificación del proveedor',
    mp_nombreproveedor   CHAR
            (100) COMMENT 'Nombre del proveedor',
    mp_ciudad            CHAR
            (50) COMMENT 'Ciudad del proveedor',
    mp_departamento      CHAR
            (50) COMMENT 'Departamento del proveedor',
    mp_codpostal         CHAR
            (30) COMMENT 'Código postal',
    mp_provincia         CHAR
            (50) COMMENT 'Provincia',
    mp_pais              CHAR
            (50) COMMENT 'País',
    mp_numtelefono       CHAR
            (20) COMMENT 'Número de teléfono',
    mp_numfax            CHAR
            (10) COMMENT 'Número de Fax',
    mp_email             CHAR
            (30) COMMENT 'Dirección de correo electrónico'
);

            /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_proveedores.mp_idproveedor IS
    'Identificación del proveedor'; */

            /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_proveedores.mp_nombreproveedor IS
    'Nombre del proveedor'; */

            /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_proveedores.mp_ciudad IS
    'Ciudad del proveedor'; */

            /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_proveedores.mp_departamento IS
    'Departamento del proveedor'; */

            /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_proveedores.mp_codpostal IS
    'Código postal'; */

            /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_proveedores.mp_provincia IS
    'Provincia'; */

            /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_proveedores.mp_pais IS
    'País'; */

            /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_proveedores.mp_numtelefono IS
    'Número de teléfono'; */

            /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_proveedores.mp_numfax IS
    'Número de Fax'; */

            /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_proveedores.mp_email IS
    'Dirección de correo electrónico'; */

            ALTER TABLE maestro_proveedores ADD CONSTRAINT maestro_proveedores_pk PRIMARY KEY ( mp_idproveedor );

            ALTER TABLE maestro_proveedores ADD CONSTRAINT maestro_proveedores__un UNIQUE ( mp_idproveedor );

            /**/

            CREATE TABLE maestro_inventario
            (
                ma_idproducto CHAR(50) NOT NULL
                COMMENT 'IdentificaciÃ³n del producto',
    ma_nombreprd            CHAR
                (50) NOT NULL COMMENT 'Nombre del producto',
    ma_marca                CHAR
                (50) COMMENT 'Marca',
    ma_referencia           CHAR
                (50) COMMENT 'Referencia',
    ma_idproveedor          CHAR
                (50) NOT NULL COMMENT 'Id del proveedor',
    ma_unidadesexistencia   INTEGER NOT NULL COMMENT 'Unidades en existencia del producto',
    ma_preciocosto          DOUBLE NOT NULL COMMENT 'Precio del costo',
    ma_precioventa          DOUBLE NOT NULL COMMENT 'Precio de venta'
);

                /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_inventario.ma_idproducto IS
    'IdentificaciÃ³n del producto'; */

                /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_inventario.ma_nombreprd IS
    'Nombre del producto'; */

                /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_inventario.ma_marca IS
    'Marca'; */

                /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_inventario.ma_referencia IS
    'Referencia'; */

                /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_inventario.ma_idproveedor IS
    'Id del proveedor'; */

                /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_inventario.ma_unidadesexistencia IS
    'Unidades en existencia del producto'; */

                /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_inventario.ma_preciocosto IS
    'Precio del costo'; */

                /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_inventario.ma_precioventa IS
    'Precio de venta'; */


                ALTER TABLE maestro_inventario ADD CONSTRAINT maestro_inventario_pk PRIMARY KEY ( ma_idproducto );

                ALTER TABLE maestro_inventario ADD CONSTRAINT maestro_inventario__un UNIQUE ( ma_idproducto );

                /**/

                CREATE TABLE maestro_clientes
                (
                    mc_idcl INTEGER NOT NULL
                    COMMENT 'Nro Interno de cliente',
    mc_nrodoc      INTEGER NOT NULL COMMENT 'Nro documento del cliente',
    mc_tpoid       CHAR
                    (5) NOT NULL COMMENT 'Tipo de documento',
    mc_nombre      CHAR
                    (60) COMMENT 'Nombres',
    mc_apellido    CHAR
                    (60) COMMENT 'Apellidos',
    mc_email       CHAR
                    (30) NOT NULL COMMENT 'Correo electrÃ³nico',
    mc_telefono    CHAR
                    (20) NOT NULL COMMENT 'TelÃ©fono de contacto',
    mc_direcc      CHAR
                    (50) NOT NULL COMMENT 'DirecciÃ³n de residencia',
    mc_codpostal   CHAR
                    (50) COMMENT 'CÃ³digo postal',
    mc_ciudad      CHAR
                    (50) COMMENT 'Ciudad de residencia',
    mc_depto       CHAR
                    (50) COMMENT 'Departamento de residencia',
    mc_pais        CHAR
                    (50) COMMENT 'PaÃ­s de redicencia',
    mc_pswd        CHAR
                    (50) NOT NULL COMMENT 'ContraseÃ±a',
    mc_foto        CHAR
                    (200) COMMENT 'Foto',
    mc_rol         CHAR
                    (200), 
    mc_descuento   CHAR
                    (20) COMMENT 'Descuento'
);

                    /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_clientes.mc_idcl IS
    'Nro Interno de cliente'; */

                    /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_clientes.mc_nrodoc IS
    'Nro documento del cliente'; */

                    /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_clientes.mc_tpoid IS
    'Tipo de documento'; */

                    /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_clientes.mc_nombre IS
    'Nombres'; */

                    /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_clientes.mc_apellido IS
    'Apellidos'; */

                    /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_clientes.mc_email IS
    'Correo electrÃ³nico'; */

                    /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_clientes.mc_telefono IS
    'TelÃ©fono de contacto'; */

                    /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_clientes.mc_direcc IS
    'DirecciÃ³n de residencia'; */

                    /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_clientes.mc_codpostal IS
    'CÃ³digo postal'; */

                    /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_clientes.mc_ciudad IS
    'Ciudad de residencia'; */

                    /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_clientes.mc_depto IS
    'Departamento de residencia'; */

                    /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_clientes.mc_pais IS
    'PaÃ­s de redicencia'; */

                    /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_clientes.mc_pswd IS
    'ContraseÃ±a'; */

                    /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_clientes.mc_foto IS
    'Foto'; */

                    /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_clientes.mc_descuento IS
    'Descuento'; */

                    ALTER TABLE maestro_clientes ADD CONSTRAINT maestro_clientes_pk PRIMARY KEY ( mc_nrodoc );

                    ALTER TABLE maestro_clientes ADD CONSTRAINT maestro_clientes__un UNIQUE ( mc_nrodoc );

                    /**/

                    CREATE TABLE maestro_productos
                    (
                        mp_idprod CHAR(50) NOT NULL
                        COMMENT 'Marca',
    mp_marca           CHAR
                        (50) COMMENT 'Id del producto',
    mp_nombreprd       CHAR
                        (50),
    mp_referencia      CHAR
                        (50) NOT NULL COMMENT 'Referencia',
    mp_anoinic         CHAR
                        (8) COMMENT 'Ano de lanzamiento',
    mp_fmlaolfat       CHAR
                        (30) COMMENT 'Familia olfativa',
    mp_nota_salida     CHAR
                        (50) COMMENT 'Nota de salida',
    mp_nota_corazon    CHAR
                        (50) COMMENT 'Nota de corazon',
    mp_nota_fondo      CHAR
                        (50) COMMENT 'Nota de fondo',
    mp_categoria     CHAR
                        (30),
    mp_tipo            INTEGER COMMENT 'Peso en MililÃ­tros',
    mp_onzas           INTEGER COMMENT 'Onzas',
    mp_genero          CHAR
                        (10) COMMENT 'GÃ©nero',
    mp_precio_compra   DECIMAL
                        (15, 2) NOT NULL COMMENT 'Precio de compra',
    mp_precio_venta    DECIMAL
                        (15, 2) NOT NULL COMMENT 'Precio de venta',
    mp_descuentro      DECIMAL
                        (3, 2) COMMENT 'Descuento',
    mp_precio_descto   DECIMAL
                        (15, 2) COMMENT 'Precio de venta con descuento',
    mp_oferta          CHAR
                        (20)
);

                        /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_productos.mp_idprod IS
    'Marca'; */

                        /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_productos.mp_marca IS
    'Id del producto'; */

                        /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_productos.mp_referencia IS
    'Referencia'; */

                        /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_productos.mp_anoinic IS
    'Ano de lanzamiento'; */

                        /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_productos.mp_fmlaolfat IS
    'Familia olfativa'; */

                        /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_productos.mp_nota_salida IS
    'Nota de salida'; */

                        /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_productos.mp_nota_corazon IS
    'Nota de corazon'; */

                        /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_productos.mp_nota_fondo IS
    'Nota de fondo'; */

                        /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_productos."MP_categoria " IS
    'CategorÃ­a'; */

                        /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_productos.mp_tipo IS
    'Peso en MililÃ­tros'; */

                        /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_productos.mp_onzas IS
    'Onzas'; */

                        /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_productos.mp_genero IS
    'GÃ©nero'; */

                        /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_productos.mp_precio_compra IS
    'Precio de compra'; */

                        /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_productos.mp_precio_venta IS
    'Precio de venta'; */

                        /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_productos.mp_descuentro IS
    'Descuento'; */

                        /* Moved to CREATE TABLE
COMMENT ON COLUMN maestro_productos.mp_precio_descto IS
    'Precio de venta con descuento'; */

                        ALTER TABLE maestro_productos ADD CONSTRAINT maestro_productos_pk PRIMARY KEY ( mp_idprod );

                        ALTER TABLE maestro_productos ADD CONSTRAINT maestro_productos__un UNIQUE ( mp_idprod );