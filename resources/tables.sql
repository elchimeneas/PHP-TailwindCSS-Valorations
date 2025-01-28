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

insert into users (username, password, email, profile_pic) values ('admin', '123456', 'admin@gmail.com', '/UT6_SP1_RamírezLucesCésarMiguel/img/profile.png');

create table products (
    id int primary key auto_increment,
    name varchar(50) not null,
    image varchar(250) not null
);

insert into products (name, image) values ('CalvinKlein One', '/UT6_SP1_RamírezLucesCésarMiguel/img/product1.jpg');

create table votes(
    id int primary key auto_increment,
    userRate float default 0,
    totalRate int not null,
    productId int not null,
    userId int not null,
    foreign key (productId) references products(id),
    foreign key (userId) references users(id)
);

insert into votes (userRate, totalRate, productId, userId) values (1, 1, 1, 1);