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