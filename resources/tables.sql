drop database if exists valorations;
create database valorations;
use valorations;

create table users (
    id int primary key auto_increment,
    username varchar(50) not null,
    password varchar(50) not null,
    email varchar(250) not null,
    profile_pic varchar(250) not null
);

INSERT INTO users (username, password, email, profile_pic) 
VALUES 
('admin', '123456', 'admin@gmail.com', '/PHP-TailwindCSS-Valorations/img/profiles/admin.webp'),
('joe', '123456', 'john.doe@example.com', '/PHP-TailwindCSS-Valorations/img/profiles/joe.webp'),
('mike', '123456', 'jane.smith@example.com', '/PHP-TailwindCSS-Valorations/img/profiles/mike.webp');

create table products (
    id int primary key auto_increment,
    name varchar(50) not null,
    totalRate float default 0,
    totalVotes int default 0
);

<<<<<<< HEAD
INSERT INTO products (name, image, totalRate, totalVotes) 
VALUES 
('Chanel No. 5', '/PHP-TailwindCSS-Valorations/img/products/chanel.webp', 1, 1),
('Dior Sauvage', '/PHP-TailwindCSS-Valorations/img/products/sauvage.webp', 1, 1),
('Gucci Bloom', '/PHP-TailwindCSS-Valorations/img/products/gucci.webp', 1, 1),
('Yves Saint Laurent Black Opium', '/PHP-TailwindCSS-Valorations/img/products/yves.webp', 1, 1),
('Calvin Klein Eternity', '/PHP-TailwindCSS-Valorations/img/products/calvin.webp', 1, 1);
=======
insert into products (name, totalRate, totalVotes) values ('Calvin Klein One', 1, 1);
>>>>>>> 467da9face506698ca9a92231ce3e2e1c68defcd

create table votes(
    id int primary key auto_increment,
    rate float default 0,
    productId int not null,
    userId int not null,
    foreign key (productId) references products(id),
    foreign key (userId) references users(id),
    unique (productId, userId)
);
