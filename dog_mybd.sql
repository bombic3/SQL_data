create table  component_stock (
    component_code VARCHAR2(30),
    classify varchar2(20),
    com_count NUMBER(20),
    com_place varchar2(20),
    CONSTRAINT pk_component PRIMARY KEY (component_code)
);

INSERT INTO component_stock(component_code,classify,com_count,com_place) VALUES ('BT-01','¸»Æ¼Áî',5,'Yongin');
INSERT INTO component_stock(component_code,classify,com_count,com_place) VALUES ('BT-02','¸»Æ¼Áî',4,'Suwon');
INSERT INTO component_stock(component_code,classify,com_count,com_place) VALUES ('BT-03','¸»Æ¼Áî',4,'Siheung');

INSERT INTO component_stock(component_code,classify,com_count,com_place) VALUES ('CS-01','Æ÷¸Þ¶ó´Ï¾È',6,'Busan');
INSERT INTO component_stock(component_code,classify,com_count,com_place) VALUES ('CS-02','Æ÷¸Þ¶ó´Ï¾È',3,'Daegu');
INSERT INTO component_stock(component_code,classify,com_count,com_place) VALUES ('CS-03','Æ÷¸Þ¶ó´Ï¾È',7,'°ÅÁ¦µµ');
INSERT INTO component_stock(component_code,classify,com_count,com_place) VALUES ('CS-04','Æ÷¸Þ¶ó´Ï¾È',7,'°ÅÁ¦µµ');

INSERT INTO component_stock(component_code,classify,com_count,com_place) VALUES ('EP-01','Çªµé',5,'Ansan');
INSERT INTO component_stock(component_code,classify,com_count,com_place) VALUES ('EP-02','Çªµé',4,'Ansan');
INSERT INTO component_stock(component_code,classify,com_count,com_place) VALUES ('EP-03','Çªµé',4,'Ansan');

INSERT INTO component_stock(component_code,classify,com_count,com_place) VALUES ('NS-01','½ÃÃò',85,'Yongin');
INSERT INTO component_stock(component_code,classify,com_count,com_place) VALUES ('NS-02','½ÃÃò',1100,'Yongin');
INSERT INTO component_stock(component_code,classify,com_count,com_place) VALUES ('NS-03','½ÃÃò',135,'Suwon');
INSERT INTO component_stock(component_code,classify,com_count,com_place) VALUES ('NS-04','½ÃÃò',273,'Suwon');
INSERT INTO component_stock(component_code,classify,com_count,com_place) VALUES ('NS-05','½ÃÃò',285,'Suwon');

INSERT INTO component_stock(component_code,classify,com_count,com_place) VALUES ('SW-01','Ä¡¿Í¿Í',6,'S11');
INSERT INTO component_stock(component_code,classify,com_count,com_place) VALUES ('SW-02','Ä¡¿Í¿Í',7,'S11');
INSERT INTO component_stock(component_code,classify,com_count,com_place) VALUES ('SW-03','Ä¡¿Í¿Í',5,'S11');

INSERT INTO component_stock(component_code,classify,com_count,com_place) VALUES ('TI-01','Áøµ¾°³',7,'T7');
INSERT INTO component_stock(component_code,classify,com_count,com_place) VALUES ('TI-02','Áøµ¾°³',8,'T7');
INSERT INTO component_stock(component_code,classify,com_count,com_place) VALUES ('TI-03','Áøµ¾°³',12,'T8');
INSERT INTO component_stock(component_code,classify,com_count,com_place) VALUES ('TI-04','Áøµ¾°³',10,'T8');

INSERT INTO component_stock(component_code,classify,com_count,com_place) VALUES ('WH-01','¹Í½º°ß',3,'W13');
INSERT INTO component_stock(component_code,classify,com_count,com_place) VALUES ('WH-02','¹Í½º°ß',7,'W13');
INSERT INTO component_stock(component_code,classify,com_count,com_place) VALUES ('WH-03','¹Í½º°ß',2,'W14');
INSERT INTO component_stock(component_code,classify,com_count,com_place) VALUES ('WH-04','¹Í½º°ß',5,'W14');
INSERT INTO component_stock(component_code,classify,com_count,com_place) VALUES ('WH-05','¹Í½º°ß',6,'W15');

INSERT INTO component_stock(component_code,classify,com_count,com_place) VALUES ('WP-01','ºñ¼õ',35,'W19');
INSERT INTO component_stock(component_code,classify,com_count,com_place) VALUES ('WP-02','ºñ¼õ',8,'W19');
INSERT INTO component_stock(component_code,classify,com_count,com_place) VALUES ('WP-03','ºñ¼õ',15,'W19');
INSERT INTO component_stock(component_code,classify,com_count,com_place) VALUES ('WP-04','ºñ¼õ',20,'W19');

commit;

select * from component_stock;