CREATE DATABASE candy_bd;

    CREATE TABLE candies (
        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
        name VARCHAR(100) NOT NULL,
        price_in_cents INT NOT NULL,
        description VARCHAR(100) NOT NULL,
        types_id INT UNSIGNED DEFAULT NULL,
        PRIMARY KEY (id),
        FOREIGN KEY (types_id) REFERENCES candy_types(id)
        );

CREATE TABLE candy_types (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        name VARCHAR(20) NOT NULL,
                        description VARCHAR(100) NOT NULL,
                        PRIMARY KEY (id)

  );
#run types table first to seed it so candies has something to reference
INSERT INTO candy_types (name, description) VALUES
('Chewing Gum', 'Great for chewing!'),
('Chocolate', 'Great for chocolate goodness!'),
('Hard Candy', 'Don''t bite too hard!'),
('Gummy Candy', 'Not too hard; not too soft.');
INSERT INTO candies (name, price_in_cents, description, types_id) VALUES
('Doublemint Gum', 159, 'Standard chewing gum', 1),
('Orbit Gum', 110, 'Another standard chewing gum', 1),
('Hershey Bar', 210, 'Standard chocolate bar', 2),
('Gushers', 312, 'Nice and sour!', 4),
('Sour Patch Kids', 206, 'Quite sour!', 4),
('M&Ms', 199, 'Crunchy and chocolatey', 2);

SELECT t.name AS 'Candy Type', c.name FROM candies c
JOIN candy_types t
ON c.types_id = t.id
WHERE price_in_cents > 200;

SHOW DATABASES;