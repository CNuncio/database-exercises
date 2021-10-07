USE codeup_test_db;

CREATE TABLE persons (
                         id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                         first_name VARCHAR(25) NOT NULL,
                         album_id INT UNSIGNED NOT NULL,
                         PRIMARY KEY (id),
                         FOREIGN KEY (album_id) REFERENCES albums (id)
);

