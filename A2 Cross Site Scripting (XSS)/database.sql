CREATE TABLE guestbook
(
    id int unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    author varchar(64) NOT NULL,
    text longtext NOT NULL,
    created_at timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL
)