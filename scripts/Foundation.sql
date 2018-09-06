#Create datebase.
CREATE DATABASE gstore;

#Use datebase
USE gstore;

#Create table 'users'
CREATE TABLE users(
  id INT NOT NULL AUTO_INCREMENT,
  user_name VARCHAR(50) NOT NULL,
  pwd VARCHAR(50) NOT NULL,
  isAdmin INT NOT NULL DEFAULT 1,
  email VARCHAR(50) NOT NULL,
  gender INT NOT NULL DEFAULT 1,
  birth DATE NOT NULL,
  phone VARCHAR(50),
  regdate DATE NOT NULL,
  PRIMARY KEY (id),
  UNIQUE INDEX index_user_name(user_name),
  UNIQUE INDEX index_email(email)
) TYPE=InnoDB;

#Create table 'category'
CREATE TABLE categories(
    id INT NOT NULL AUTO_INCREMENT,
    category_name VARCHAR(50) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE INDEX index_category_name(category_name)
) TYPE=InnoDB;

#Create table 'glasses'
CREATE TABLE glasses(
  id INT NOT NULL AUTO_INCREMENT,
  glasses_name VARCHAR(50) NOT NULL,
  intro VARCHAR(20) NOT NULL,
  glasses_desc VARCHAR(200),
  category_id INT NOT NULL,
  picture VARCHAR(50) NOT NULL,
  price FLOAT NOT NULL,
  hot_number INT NOT NULL DEFAULT 0,
  anti_ultraviolet INT DEFAULT 1,
  add_date DATE NOT NULL,
  anti_uvb INT DEFAULT 1,
  material VARCHAR(50),
  face VARCHAR(50), 
  human INT DEFAULT 1,
  PRIMARY KEY (id),
  UNIQUE INDEX index_glasses_name(glasses_name),
  INDEX (category_id),
  CONSTRAINT fk_category_id FOREIGN KEY (category_id) REFERENCES categories (id)
) TYPE=InnoDB;

#Create table 'favorates'
CREATE TABLE favorates(
  id INT NOT NULL AUTO_INCREMENT,
  user_id INT NOT NULL,
  glasses_id INT NOT NULL,
  star_value INT NOT NULL DEFAULT 0,
  comments VARCHAR(500),
  add_date DATE NOT NULL,
  PRIMARY KEY(id),
  INDEX (user_id),
  INDEX (glasses_id),
  CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES users (id),
  CONSTRAINT fk_glasses_id FOREIGN KEY (glasses_id) REFERENCES glasses (id)
) TYPE=InnoDB;

#Create view 'v_glasses'
CREATE VIEW v_glasses AS SELECT g.id, 
                                g.glasses_name, 
                                g.glasses_desc, 
                                g.category_id,
                                c.category_name, 
                                g.picture, 
                                g.price, 
                                g.hot_number, 
                                g.anti_ultraviolet, 
                                g.add_date,
                                g.intro,
                                g.anti_uvb,
								g.material,
								g.face, 
								g.human
                           FROM glasses g, 
                                categories c 
                           WHERE g.category_id = c.id;
#Create view 'v_favorates'
CREATE VIEW v_favorates AS SELECT f.id,
                                 f.user_id,
                                 u.user_name,
                                 f.glasses_id,
                                 g.glasses_name,
                                 g.picture,
                                 f.comments,
                                 f.star_value,
                                 f.add_date
                            FROM favorates f,
                                 users u,
                                 glasses g
                           WHERE f.user_id = u.id
                                 AND f.glasses_id = g.id;