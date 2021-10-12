CREATE DATABASE adlister_db;

CREATE TABLE roles (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE users (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    ad VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);











# Specifications
#
# Users sign up for the site with an email and password
# Users create ads with a title and description and category.
# Each ad is associated with the user that created it.
# An ad can be in one or more categories (for example, "help wanted", "giveaway", or "furniture")
# Queries
#
# Write SQL queries to answer the following questions:
#
# For a given ad, what is the email address of the user that created it?
# For a given ad, what category, or categories, does it belong to?
# For a given category, show all the ads that are in that category.
#     For a given user, show all the ads they have posted.
