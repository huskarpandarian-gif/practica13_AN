CREATE SCHEMA IF NOT EXISTS PRACTICA;
USE PRACTICA;

DROP TABLE IF EXISTS cliente;
CREATE TABLE cliente (
  id                      VARCHAR(3)  NOT NULL,
  nombre                  VARCHAR(100) NOT NULL,
  telefono                VARCHAR(30) NOT NULL,
  direccion               VARCHAR(100),
  ciudad                  VARCHAR(50),
  provincia               VARCHAR(50),
  pais                    VARCHAR(50),
  codigo_postal           VARCHAR(20),
  historial_crediticio    VARCHAR(15),
  ventas_id               VARCHAR(3),
  region_id               VARCHAR(3),
  comentarios             VARCHAR(255),

  CONSTRAINT cliente_id_pk PRIMARY KEY (id),
  CONSTRAINT cliente_historial_crediticio_ck CHECK 
     (historial_crediticio IN ('EXCELENTE', 'BUENO', 'MALO'))
);

INSERT INTO cliente VALUES 
('301', 'Sports,Inc', '540-123-4567','72 High St','Harrisonburg', 'VA','US', '22809','EXCELENTE', '12', '1', NULL),
('302', 'Toms Sporting BUENOs', '540-987-6543','6741 Main St','Harrisonburg', 'VA','US', '22809','MALO', '14', '1', NULL),
('303', 'Athletic Attire', '540-123-6789','54 Market St','Harrisonburg', 'VA','US', '22808','BUENO', '14', '1', NULL),
('304', 'Athletics For All', '540-987-1234','286 Main St', 'Harrisonburg', 'VA','US', '22808','EXCELENTE', '12', '1', NULL),
('305', 'Shoes for Sports', '540-123-9876','538 High St','Harrisonburg', 'VA','US', '22809','EXCELENTE', '14', '1', NULL),
('306', 'BJ Athletics', '540-987-9999','632 Water St','Harrisonburg', 'VA','US', '22810','MALO', '12', '1', NULL),
('403', 'Athletics One', '717-234-6786','912 Columbia Rd','Lancaster', 'PA','US', '17601','BUENO', '14', '1', NULL),
('404', 'Great Athletes', '717-987-2341','121 Litiz Pike','Lancaster', 'PA','US', '17602','EXCELENTE', '12', '1', NULL),
('405', 'Athletics Two', '717-987-9875','435 High Rd','Lancaster', 'PA','US', '17602','EXCELENTE', '14', '1', NULL),
('406', 'Athletes Attic', '717-234-9888','101 Greenfield Rd','Lancaster', 'PA','US', '17601','MALO', '12', '1', NULL),
('201', 'One Sport', '55-112066222','82 Via Bahia', 'Sao Paolo', NULL, 'Brazil', NULL,'EXCELENTE', '12', '2', NULL),
('202', 'Deportivo Caracas', '58-28066222','31 Sabana Grande','Caracas', NULL, 'Venezuela', NULL,'EXCELENTE', '12', '2', NULL),
('203', 'New Delhi Sports', '91-11903338','11368 Chanakya','New Delhi', NULL, 'India', NULL,'BUENO', '11', '4', NULL),
('204', 'Ladysport', '1-206-104-0111','281 Queen Street','Seattle', 'Washington', 'US', NULL,'EXCELENTE', '11', '1', NULL),
('205', 'Kim''s Sporting BUENOs', '852-3693888','15 Henessey Road','Hong Kong', NULL, 'China', NULL,'EXCELENTE', '11', '4', NULL),
('206', 'Sportique', '33-93425722253','172 Rue de Place','Cannes', NULL, 'France', NULL,'EXCELENTE', '13', '5', NULL),
('207', 'Tall Rock Sports', '234-16036222','10 Saint Antoine','Lagos', NULL, 'Nigeria', NULL,'BUENO', NULL, '3', NULL),
('208', 'Muench Sports', '49-895274449','435 Gruenestrasse','Munich', NULL, 'Germany', NULL,'BUENO', '13', '5', NULL),
('209', 'Beisbol Si!', '809-352666','415 Playa Del Mar','San Pedro de Macoris', NULL, 'Dominican Republic', NULL,'EXCELENTE', '11', '6', NULL),
('210', 'Futbol Sonora', '52-404555','5 Via Saguaro', 'Nogales',NULL, 'Mexico', NULL,'EXCELENTE', '12', '2', NULL),
('211', 'Helmut''s Sports', '42-2111222','45 Modrany', 'Prague',NULL, 'Czech Republic', NULL,'EXCELENTE', '11', '5', NULL),
('212', 'Hamada Sport', '20-31209222','47A Corniche', 'Alexandria', NULL, 'Egypt', NULL,'EXCELENTE', '13', '3', NULL),
('213', 'Sports Emporium', '1-415-555-6281','4783 168th Street','San Francisco', 'CA', 'US', NULL,'EXCELENTE', '11', '1', NULL),
('214', 'Sports Retail', '1-716-555-7777','115 Main Street','Buffalo', 'NY', 'US', NULL, 'MALO', '11', '1', NULL),
('215', 'Sports Russia', '7-0953892444','7070 Yekatamina','Saint Petersburg', NULL, 'Russia', NULL,'MALO', '11', '5', NULL);

COMMIT;

