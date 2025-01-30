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
    totalRate float default 0,
    totalVotes int default 0
);

insert into products (name, totalRate, totalVotes) values ('Calvin Klein One', 1, 1);

create table votes(
    id int primary key auto_increment,
    rate int default 0,
    productId int not null,
    userId int not null,
    foreign key (productId) references products(id),
    foreign key (userId) references users(id),
    unique (productId, userId)
);
