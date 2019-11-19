/* Delimitador cambiado a ; */
/* Conectando a 127.0.0.1 por MariaDB (TCP/IP), usuario root, usando contraseña: No ... */
SELECT CONNECTION_ID();
/* Conectado. ID de Hilo: 8 */
/* Juego de caracteres: utf8mb4 */
SHOW STATUS;
SELECT NOW();
SHOW VARIABLES;
SHOW DATABASES;
SHOW OPEN TABLES FROM bd_tienda WHERE `in_use`!=0;
USE `bd_tienda`;
/* Entrando a la sesión "MariaDB" */
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='bd_tienda';
SHOW TABLE STATUS FROM `bd_tienda`;
SHOW FUNCTION STATUS WHERE `Db`='bd_tienda';
SHOW PROCEDURE STATUS WHERE `Db`='bd_tienda';
SHOW TRIGGERS FROM `bd_tienda`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='information_schema';
SHOW TABLE STATUS FROM `information_schema`;
SHOW FUNCTION STATUS WHERE `Db`='information_schema';
SHOW PROCEDURE STATUS WHERE `Db`='information_schema';
SHOW TRIGGERS FROM `information_schema`;
SHOW EVENTS FROM `information_schema`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='bd_tienda';
/* Loading file "C:\Users\canop\Documents\WorkSpace\TiendaColonias\bd scripts\bd_tienda.sql" (10,9 KiB) into query tab #1 ... */
/* Conexión a 127.0.0.1 cerrada en 2019-11-17 12:40:11 */
/* Conectando a 127.0.0.1 por MariaDB (TCP/IP), usuario root, usando contraseña: No ... */
SELECT CONNECTION_ID();
/* Conectado. ID de Hilo: 9 */
/* Juego de caracteres: utf8mb4 */
SHOW STATUS;
SELECT NOW();
SHOW VARIABLES;
USE `bd_tienda`;
SHOW CREATE TABLE `bd_tienda`.`maestro_inventario`;
SHOW COLLATION;
SHOW ENGINES;
SHOW CREATE TABLE `bd_tienda`.`maestro_inventario`;
SHOW CREATE TABLE `bd_tienda`.`maestro_productos`;
SHOW CREATE TABLE `bd_tienda`.`maestro_proveedores`;
SHOW CREATE TABLE `bd_tienda`.`maestro_productos`;
SHOW CREATE TABLE `bd_tienda`.`maestro_inventario`;
SHOW CREATE TABLE `bd_tienda`.`maestro_clientes`;
SHOW CREATE TABLE `bd_tienda`.`dp_detalle_pedido`;
SHOW CREATE TABLE `bd_tienda`.`bd_carrito`;
SHOW CREATE TABLE `bd_tienda`.`maestro_clientes`;
SHOW CREATE TABLE `bd_tienda`.`dp_detalle_pedido`;
SHOW CREATE TABLE `bd_tienda`.`maestro_proveedores`;
ALTER TABLE `maestro_proveedores`
	ALTER `mp_nombreproveedor` DROP DEFAULT,
	ALTER `mp_numtelefono` DROP DEFAULT;
ALTER TABLE `maestro_proveedores`
	CHANGE COLUMN `mp_idproveedor` `mp_idproveedor` INT NOT NULL AUTO_INCREMENT COMMENT 'Identificación del proveedor' FIRST,
	CHANGE COLUMN `mp_nombreproveedor` `mp_nombreproveedor` CHAR(100) NOT NULL COMMENT 'Nombre del proveedor' AFTER `mp_idproveedor`,
	CHANGE COLUMN `mp_numtelefono` `mp_numtelefono` CHAR(20) NOT NULL COMMENT 'Número de teléfono' AFTER `mp_pais`;
SELECT `DEFAULT_COLLATION_NAME` FROM `information_schema`.`SCHEMATA` WHERE `SCHEMA_NAME`='bd_tienda';
SHOW TABLE STATUS FROM `bd_tienda`;
SHOW FUNCTION STATUS WHERE `Db`='bd_tienda';
SHOW PROCEDURE STATUS WHERE `Db`='bd_tienda';
SHOW TRIGGERS FROM `bd_tienda`;
SELECT *, EVENT_SCHEMA AS `Db`, EVENT_NAME AS `Name` FROM information_schema.`EVENTS` WHERE `EVENT_SCHEMA`='bd_tienda';
SHOW CREATE TABLE `bd_tienda`.`maestro_proveedores`;
/* Entrando a la sesión "MariaDB" */
SHOW CREATE TABLE `bd_tienda`.`maestro_proveedores`;
