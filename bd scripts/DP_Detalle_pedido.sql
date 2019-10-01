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