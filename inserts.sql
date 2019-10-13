insert into condominio (nome,cvco,cep,numero)
values("Recreio dos bandeirantes",69420,89163035,90);


insert into areas_de_lazer(nome,regras,horarios,idlazer,tipo)
values("Recreio dos bandeirantes","nao pode pular na psicina pelado, tomar duchar antes de entar na piscina, silencio entre as 23 horas até as 7, crianças menores de 10 só entraram na psicina acompanhada de algum adulto, urina se destacaram na agua.", " piscina aberta 24 horas",0,"piscina" ), 
	  ("Recreio dos bandeirantes","Proibido a circulação de animais, proibido comer dentro da quadra, para jogar volei chamar a kelly para pegar a rede, futebol só com chuteira apropriada com sola de borracha","horario de funcionamento é das 6 as 20 horas",1,"quadra" ) ;
      

      
insert into pessoa(cpf,nome)
values(930999533,"Marcos"),
(935999533,"Rayanny"),
(930999534,"Lucas"),
(930999535,"Geysa"),
(930999536,"Thiago"),
(930999537,"Xheila"),
(930999538,"Julio"),
(930999539,"Maria"),
(930999540,"Mayara"),
(930999541,"Daiany"),
(930999542,"Jessica"),
(930999543,"dyorrani"),
(930999546,"Thomas"),
(930999544,"Cristian"),
(930999545,"Ricardo"),
(930999547,"Ualac");

insert into telefone (DDD,numero,operadora,Pessoa_cpf)
values("11","977520937","VIVO",930999546);

insert into visitante(horario_entrada,horario_saida,Pessoa_cpf,endereço)
values('2019-05-29 20:07:30','2019-05-29 23:07:30',930999545,"Outro local" );




insert into bloco(senha,letra,nome)
values(6969,'a',"Recreio dos bandeirantes"),
(4200,'b',"Recreio dos bandeirantes"),
(1577,'c',"Recreio dos bandeirantes");

#select * from bloco;
insert into andar(numero,idbloco)
values(1,1),
(2,1),
(3,1),
(1,2),
(2,2),
(3,2),
(1,3),
(2,3),
(3,3);
#select * from andar;

insert into apartamento(numero,idandar)
values(1,1),
(2,1),
(1,2),
(2,2),
(1,3),
(2,3),
(1,4),
(2,4),
(1,5),
(2,5),
(1,6),
(2,6),
(1,7),
(2,7),
(1,8),
(2,8),
(1,9),
(2,9);
#select * from apartamento;

insert into residente(pet,apartamento_numero,pessoa_cpf)
values("cachorro ",5,930999544),
("gato ",8,930999540),
(null,11,930999539),
(null,1,930999547),
(null,15,930999546),
(null,9,930999538);

insert into subsindico(mandato,subsindico_cpf,bloco)
values('2019-05-29 20:07:30',930999547,1),
('2019-04-29 20:07:30',930999546,3),
('2019-05-22 20:07:30',930999538,2);

insert into proprietario(morador,apartamento_numero,pessoa_cpf,endereço)
values(0,11,930999536,"mora lo0nge"),
(1,3,930999535,"89163035");


insert into vaga(local_num,dono)
values(1,1),
(2,2),
(3,3),
(4,1),
(5,1),
(6,1);




insert into tag(pin,idbloco)
values(123,1),
(1234,2),
(12345,3);

insert into residente_has_tag(residente_pessoa_cpf,tag_pin)
values
(930999540,1234),
(930999539,12345);

insert into log(descricao,pintag,idlazer)
values("entrou na quadra as 19hrs",12345,1),
("entrou na piscina as 23hrs",1234,0);



