CREATE TABLE user_table(
  user_id VARCHAR(100) PRIMARY KEY,
  email_id VARCHAR(100) UNIQUE,
  user_password VARCHAR(200) ,
  user_name VARCHAR(200)
);
SELECT * FROM user_table;
DELETE FROM user_table;
CREATE TABLE entity_table(
  entity_id VARCHAR(100) PRIMARY KEY,
  entity_name VARCHAR(100) UNIQUE,
  user_id VARCHAR(100),
  status VARCHAR(100)
);

SELECT * FROM entity_table;
DELETE FROM entity_table;
CREATE TABLE important_email_table(
important_email_id VARCHAR(100) PRIMARY KEY,
 entity_id VARCHAR(100) ,
 from_mail_id VARCHAR(100),
 to_mail_id VARCHAR(100),
 cc_mail_id VARCHAR(100),
 mail_sub VARCHAR(100),
 mail_body VARCHAR(100),
 received_date  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 email_type VARCHAR(100),
 due_date VARCHAR(100),
 status VARCHAR(100),
 remarks VARCHAR(100),
 thread_id INTEGER,
 message_id INTEGER
);
DROP TABLE important_email_table;
SELECT * FROM important_email_table;
DELETE FROM important_email_table;

CREATE TABLE user_entity_table(
   user_entity_id VARCHAR(100) PRIMARY KEY,
   entity_id VARCHAR(100),
   user_id VARCHAR(100),
   CONSTRAINT fk_entity
   FOREIGN KEY (entity_id)
   REFERENCES entity_table(entity_id)
   ON DELETE CASCADE
);
DROP TABLE user_entity_table;
SELECT * FROM user_entity_table;
DELETE FROM user_entity_table;