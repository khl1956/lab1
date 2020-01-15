create table plain(
aeroport aeroport_t,
number int primary key
)

create type aeroport_t (
adress str primary key,
n_v int
)


create table drinks 
(
drink str primary key
)

create table drinks_on_plain(
number int
drink str
primary key (number,drink)
)