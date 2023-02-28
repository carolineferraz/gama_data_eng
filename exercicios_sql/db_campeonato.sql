create database campeonato;

use campeonato;

create table times (
	id int primary key not null auto_increment,
    nome varchar(50) not null
);

create table jogadoras (
	id int primary key not null auto_increment,
    nome varchar(255) not null,
    idade smallint not null,
    times_id int,
    foreign key (times_id) references times (id)
);

alter table times add column cidade varchar(255);

select * from campeonato;

create table campeonato (
	id int primary key not null auto_increment,
    nome varchar(50) not null,
    dataInicio date
);

create table campeonato_times (
	campeonato_id int,
    times_id int,
    foreign key (campeonato_id) references campeonato (id),
    foreign key (times_id) references times (id)
);

insert into times (nome) values ("Corinthians");
insert into times (nome) values ("São Paulo");
insert into times (nome) values ("Náutico");

select * FROM campeonato_times;
select * FROM jogadoras;

insert into jogadoras (nome, idade, times_id) values ("Vivian", 31, 1);
insert into jogadoras (nome, idade, times_id) values ("Bruna", 19, 2);
insert into jogadoras (nome, idade, times_id) values ("Carol", 27, 3);
insert into jogadoras (nome, idade, times_id) values ("Pricila", 33, 2);

insert into campeonato (nome, dataInicio) values ("Campeonato Brasileiro", null);
insert into campeonato (nome, dataInicio) values ("Libertadores", null);

insert into campeonato_times (campeonato_id, times_id) values (1, 1); 
insert into campeonato_times (campeonato_id, times_id) values (1, 3);
insert into campeonato_times (campeonato_id, times_id) values (1, 2);
insert into campeonato_times (campeonato_id, times_id) values (2, 1);
insert into campeonato_times (campeonato_id, times_id) values (2, 3);
insert into campeonato_times (campeonato_id, times_id) values (2, 2);

delete from times where id = 2;

delete from campeonato_times where times_id = 2;

delete from jogadoras where times_id = 2;




