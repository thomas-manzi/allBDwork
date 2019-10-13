create user thomas identified by 'thomas1';
create user maria identified by 'thomas1';
create user vito identified by 'sooo';
create user mateus identified by 'thomas1';
create user leandro identified by 'thomas1';
create user cris identified by 'thomas1';
create user carioca identified by 'thomas1';
create user anne identified by 'thomas1';
create user alberto identified by 'thomas1';
create user jair identified by 'thomas1';

create user thomasroot@localhost identified by 'thomaswm123';

grant all 
on *.*
to thomasroot@localhost;

create role 'adm', 'dev_condo', 'dev_livro', 'estagiario_livro', 'estagiario_condo';
SELECT User, Host FROM mysql.user;

grant all
on *.*
to adm
with grant option;

# funcao dev condo
grant alter,insert,delete
on recreiodosbandeirantes.* 
to dev_condo;

#funcoes estagiario condominio

grant update,select
on recreiodosbandeirantes.residente 
to estagiario_condo;

grant update,select
on recreiodosbandeirantes.areas_de_lazer 
to estagiario_condo;

grant update,select
on recreiodosbandeirantes.proprietario 
to estagiario_condo;

grant update,select
on recreiodosbandeirantes.pessoa 
to estagiario_condo;


#funcoes dev livraria
grant alter,insert,delete
on livraria.* 
to dev_livro;

#funcoes estagiario livraria
grant update,select
on livraria.assuntos 
to estagiario_livro;

grant update,select
on livraria.editoras 
to estagiario_livro;

grant update,select
on livraria.livros 
to estagiario_livro;

grant update,select
on livraria.autores 
to estagiario_livro;


grant 'adm'
to thomas,carioca;

grant 'dev_condo'
to cris,jair;

grant 'estagiario_condo'
to alberto,vito;

grant 'dev_livro'
to leandro,anne;

grant 'estagiario_livro'
to maria,mateus;