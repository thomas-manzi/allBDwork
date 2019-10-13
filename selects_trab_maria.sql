#nome e cpf  de quem sao residentes
select cpf,nome from  pessoa P inner join  residente R on P.cpf=R.pessoa_cpf;
# nome dos subsindicos
select nome, cpf from pessoa P inner join subsindico S on P.cpf=S.subsindico_cpf;
#pessoas que tem pet 
select nome from pessoa P inner join residente R on p.cpf=R.pessoa_cpf where r.pet is not null;
# selecionar o subsindico que esta a mais tempo de cargo 
select MIN(mandato) as mandato, nome  from subsindico S inner join pessoa P  on P.cpf=subsindico_cpf ;  
#qnt de ap vendido 
select COUNT(apartamento_numero) from proprietario;
# pessoa q tem o cpf 930999538 
select nome  from pessoa where cpf=930999538;
#nome das pessoas que usaram a areas de lazer e quais areas
select P.nome, A.tipo from pessoa P inner join residente_has_tag R on p.cpf=R.residente_pessoa_cpf 
inner join log L on L.pintag=R.tag_pin 
inner join areas_de_lazer A on L.idlazer=A.idlazer;

#quantidade de proprietarios que residem 
select  COUNT(morador) as 'proprietarios que residem' from proprietario where morador=1;

# selecionar pessoas com u 
select * from pessoa
where nome like'u%';

#selecionar todas pessoas que tem cachorro 
select nome from pessoa P inner join residente R on p.cpf=R.pessoa_cpf where r.pet='cachorro';
 