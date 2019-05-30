CREATE TABLE user (
   id_user int auto_increment,
   st_name varchar(250),
   st_email varchar(250) unique,
   st_password varchar(250),
   CONSTRAINT PRIMARY KEY(id_user)
);

CREATE TABLE post (
   id_post int auto_increment,
   st_title varchar(250),
   st_url_photo varchar(250),
   fk_user int,
   CONSTRAINT PRIMARY KEY(id_post),
   CONSTRAINT FOREIGN KEY(id_user) REFERENCES user(id_user)
);

CREATE TABLE post_comment (
   id_post_comment int auto_increment,
   st_comment varchar(250),
   fk_post int,
   fk_user int,
   CONSTRAINT PRIMARY KEY(id_post_comment),
   CONSTRAINT FOREIGN KEY(id_user) REFERENCES user(id_user),
   CONSTRAINT FOREIGN KEY(id_post) REFERENCES post(id_user)
);