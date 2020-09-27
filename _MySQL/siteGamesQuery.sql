use siteGamesTeste;

alter table jogos
add column desenvolvedora varchar(20) after publisher;

alter table jogos
modify descricao text;

insert into jogos VALUES
(default, 'Super Mario Maker 2', 'Plataforma', '2019-06-28', 'Nintendo', 'Nintendo', 'Descricao do super mario maker 2', 'Triple A');

insert into jogos VALUES
(default, 'Monster Hunter World', 'Action RPG', '2018-01-26', 'Capcom', 'Capcom', 'Descricao do Monster Hunter World', 'Triple A');

alter table jogos
modify nomeJogo varchar(60);

alter table jogos
modify genero varchar (60);

alter table jogos
modify publisher varchar(60);

alter table jogos
modify desenvolvedora varchar (60);

create table dlcJogos (
    idDlc int not null AUTO_INCREMENT,
    nomeDlc varchar(60) UNIQUE,
    lacamentoDlc date,
    primary key(idDlc)
);

insert into dlcJogos values
(DEFAULT, 'Royal', '2019-10-31');

alter table jogos
add column codigoDlc int;

alter table jogos
add foreign key(codigoDlc)
references dlcJogos(idDlc);

update jogos set codigoDlc = '1'
where idJogo = '1';

select j.nomeJogo, d.nomeDlc from jogos as j
inner join dlcjogos as d
where j.codigoDlc = d.idDlc;

select * from jogos;

alter table jogos
drop codigoDlc;

alter table dlcjogos
add codigoJogo int;

alter table dlcjogos
add foreign key(codigoJogo)
references jogos(idJogo);

update dlcjogos set codigoJogo = '1'
where idDlc = '1';

select j.nomeJogo, d.nomeDlc from jogos as j
inner join dlcJogos as d
on d.codigoJogo = j.idJogo;

select idJogo, nomeJogo from jogos
order by nomeJogo;

select j.nomeJogo, d.nomeDlc from jogos as j
inner join dlcJogos as d
on d.codigoJogo = j.idJogo
order by j.nomeJogo, d.nomeDlc;

select j.nomeJogo, d.nomeDlc from jogos as j
inner join dlcJogos as d 
on d.codigoJogo = j.idJogo
where j.publisher like '%From Software%';
