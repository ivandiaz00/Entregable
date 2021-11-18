CREATE TABLE `Users` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `name` TEXT NOT NULL,
   `email` VARCHAR(255) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `notes` (
   `id` INT NOT NULL,
   `users_id` INT NOT NULL,
   `title` VARCHAR(255) NOT NULL,
   `date_creation` DATE NOT NULL,
   `date_update` DATE NOT NULL,
   `description` CHAR NOT NULL,
   `date_delete` TINYINT NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `category` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `name` TEXT NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `note_category` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `notes_id` INT NOT NULL AUTO_INCREMENT,
   `category_id` INT NOT NULL AUTO_INCREMENT,
   PRIMARY KEY (`id`)
);


ALTER TABLE `notes` ADD CONSTRAINT `FK_8f69f7b7-2b58-41c3-b426-44a6a9304508` FOREIGN KEY (`users_id`) REFERENCES `Users`(`id`)  ;

ALTER TABLE `note_category` ADD CONSTRAINT `FK_c0648076-d845-46a7-87cd-ff9000efc904` FOREIGN KEY (`notes_id`) REFERENCES `notes`(`id`)  ;

ALTER TABLE `note_category` ADD CONSTRAINT `FK_d6c326a8-c013-4762-9722-89b54e1d5821` FOREIGN KEY (`category_id`) REFERENCES `category`(`id`)  ;


insert into Users (id, name, email) values (1, 'Erminia', 'etrolley0@discuz.net');
insert into Users (id, name, email) values (2, 'Jessika', 'jbigby1@elpais.com');
insert into Users (id, name, email) values (3, 'Gordie', 'gmatusov2@rambler.ru');
insert into Users (id, name, email) values (4, 'Monte', 'mstait3@hud.gov');
insert into Users (id, name, email) values (5, 'Haze', 'hyoell4@ca.gov');
insert into Users (id, name, email) values (6, 'Hayyim', 'hdornan5@lycos.com');
insert into Users (id, name, email) values (7, 'Keelia', 'kklosa6@hostgator.com');
insert into Users (id, name, email) values (8, 'Paco', 'pphilipsen7@epa.gov');
insert into Users (id, name, email) values (9, 'Shaine', 'ssyratt8@ibm.com');
insert into Users (id, name, email) values (10, 'Rheba', 'rcobleigh9@apple.com');


insert into notes (id, users_id, title, date_creation, date_update, description, date_delte) values (1, 1, 'Lanny', '10/23/2021', '2/15/2021', 'Male', '4/25/2021');
insert into notes (id, users_id, title, date_creation, date_update, description, date_delte) values (2, 2, 'Ruben', '9/7/2021', '5/7/2021', 'Male', '8/2/2021');
insert into notes (id, users_id, title, date_creation, date_update, description, date_delte) values (3, 3, 'Luciano', '1/10/2021', '1/1/2021', 'Genderfluid', '10/15/2021');
insert into notes (id, users_id, title, date_creation, date_update, description, date_delte) values (4, 4, 'Cal', '1/11/2021', '9/7/2021', 'Agender', '7/5/2021');
insert into notes (id, users_id, title, date_creation, date_update, description, date_delte) values (5, 5, 'Foster', '7/24/2021', '9/2/2021', 'Genderfluid', '6/18/2021');
insert into notes (id, users_id, title, date_creation, date_update, description, date_delte) values (6, 6, 'Juliann', '9/14/2021', '1/14/2021', 'Genderqueer', '6/30/2021');
insert into notes (id, users_id, title, date_creation, date_update, description, date_delte) values (7, 7, 'Daisy', '11/4/2021', '12/29/2020', 'Bigender', '9/7/2021');
insert into notes (id, users_id, title, date_creation, date_update, description, date_delte) values (8, 8, 'Spencer', '6/16/2021', '8/23/2021', 'Bigender', '10/19/2021');
insert into notes (id, users_id, title, date_creation, date_update, description, date_delte) values (9, 9, 'Dennie', '4/6/2021', '3/15/2021', 'Genderqueer', '8/27/2021');
insert into notes (id, users_id, title, date_creation, date_update, description, date_delte) values (10, 10, 'Ula', '6/27/2021', '3/12/2021', 'Non-binary', '3/18/2021');

insert into category (id, name) values (1, 'Aymara');
insert into category (id, name) values (2, 'Bosnian');
insert into category (id, name) values (3, 'Irish Gaelic');
insert into category (id, name) values (4, 'Burmese');
insert into category (id, name) values (5, 'Italian');
insert into category (id, name) values (6, 'Ndebele');
insert into category (id, name) values (7, 'Icelandic');
insert into category (id, name) values (8, 'German');
insert into category (id, name) values (9, 'New Zealand Sign Language');
insert into category (id, name) values (10, 'Spanish');

insert into note_category (id, notes_id, category_id) values (1, 1, 1);
insert into note_category (id, notes_id, category_id) values (2, 2, 2);
insert into note_category (id, notes_id, category_id) values (3, 3, 3);
insert into note_category (id, notes_id, category_id) values (4, 4, 4);
insert into note_category (id, notes_id, category_id) values (5, 5, 5);
insert into note_category (id, notes_id, category_id) values (6, 6, 6);
insert into note_category (id, notes_id, category_id) values (7, 7, 7);
insert into note_category (id, notes_id, category_id) values (8, 8, 8);
insert into note_category (id, notes_id, category_id) values (9, 9, 9);
insert into note_category (id, notes_id, category_id) values (10, 10, 10);