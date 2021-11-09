Create database Veterinaria_proyecto
go

use Veterinaria_proyecto
go

create table info_usuario(
Nombre varchar(50) not null,
Telefono int,
DUI int,
Contraseña char(15),
Nombre_mascota char(15),
Mascota char(15),
Raza char(15),
Edad_mascota int
)

ALTER TABLE info_usuario ADD CONSTRAINT PK_nombre PRIMARY KEY (Nombre)

create table vacunas(
Nombre varchar(50),
Vacuna varchar(35)
)

ALTER TABLE vacunas ADD CONSTRAINT FK_vacunas FOREIGN KEY
(Nombre) REFERENCES info_usuario(Nombre)


create table citas 
(
Nombre varchar(50),
Cita char(10)
)

ALTER TABLE citas ADD CONSTRAINT FK_citas FOREIGN KEY
(Nombre) REFERENCES info_usuario(Nombre)




insert into info_usuario values
('Soraya Jurado','48657796','456745689','dWpy9j8T','pikachu','Conejo','Belier holandes','2'),
('Jesus Varela','56898679','435656776','RKjCy9pz','Leah','Perro','yorkshire','5'),
('Nina Almagro','35778899','345875697','Sn9f6ue6QN','mishi','Gato','Bengala','4'),
('Amina Alvaro','35779865','147564789','m57sXxbnua','Bunny','Conejo','Belier holandes','3'),
('Imanol Torres','56867965','115678435','KF3ydW8PsL','footy','Perro','yorkshire ','1'),
('Ayman Otero','56867965','465768763','ECMh5upUmy','pelusa','Gato','Siberiano','3'),
('Obdulia Segovia','22577898','234545757','44Mfhysz5Z','Loba','Gato','Bengala','5'),
('Graciela Torres','96779354','234646364','xCJpwGr9ma','Hulk','Perro','Pastor Aleman','3'),
('Augusto Andujar','35767854','345465678','b8Efp57Rtq','adelle','Gato','Siberiano','1'),
('Jonatan Pizarro','23545674','456456564','GHRM7kqhLu','Taco','Perro','Akita','2'),
('Alejandro Tellez','67964573','456456784','JCmCecjU67','Bonbon','Conejo','Belier holandes','2'),
('Dani da Silva','34668799','567546456','tVuFzsf5zx','Chain','Perro','Bulldog','3'),
('Benjamin Cobo','56789908','456467467','UC9hCTRMtR','Kiara','Perro','Bulldog','1'),
('Baltasar Pozo','46776796','456856746','wuzRrsr6Dd','Lemon','Gato','Bengala','2'),
('Fatima Vivas','57868907','678564577','u5MugDgkdJ','Cotton','Conejo','Belier holandes','6'),
('Álvaro Raya','67867567','068456789','Hb5bnC3kb8','Dana','Perro','pastor alemán','3'),
('Camilo Rincon','56876898','047264674','BS54Qw7Pck','bella','Gato','Siberiano','6'),
('Marina Barros','78956743','174856779','Y94aQ8ZkSn','Mia','Perro','pastor alemán','2'),
('Anas Castellano','34645756','247569754','V85CWsBfSM','ines','Gato','Bengala','2'),
('Aya Villegas','56346865','479635789','rVcS9ue95u','Bimba','Perro','Akita','3'),
('Nancy Medina','47657869','284569407','h82yKnHuRv','candy','Gato','Ruso Azul','2'),
('Maria-Victoria Pinto','34565785','468424646','9sN8WsFxTL','caiser','Perro','Pastor Aleman','1'),
('Fco Llanos','84565876','345745646','pMzE5zjRVv','Lola','Perro','Akita','1'),
('Júlia Rial','56786543','234684576','QtT5CC83ff','Bolita','Conejo','Belier holandes','6'),
('Aleix Albert','34545675','678456843','GU5j7Cfmej','Kira','Perro','Akita','3'),
('Bonifacio Borrego','45634547','365479657','ARLqSus9EJ','Cosmo','Gato','Bengala','1'),
('Maria-Ines Valero','56867845','336345664','cdBC6QsSJM','Gamora','Conejo','Belier holandes','3'),
('Bianca Peñalver','57463467','467467445','euMRkA6MZS','Lucas','Perro','pastor alemán','2'),
('Patricia Teruel','45646345','678567456','C7z9PtBFtS','Drax','Perro','Akita','1'),
('Jesús Guisado','34534526','345647567','m4qN3eFAbr','Charlie','Gato','Bengala','3'),
('Pepe Saavedra','23554645','345345634','hAVZ5kE44G','Carrot','Conejo','Belier holandes','6'),
('Evangelina Quintero','67856364','342345697','88KjrkQZbx','Thanos','Perro','yorkshire ','2'),
('Margarita Haro','34656899','012345678','bSLbcJyL9u','Feliz','Gato','Ruso Azul','2'),
('Vega Gamero','67856745','345456342','pu2meTtYMv','Lechuga','Conejo','Belier holandes','2'),
('Axel Sanz','23443535','234585367','yEn98bVjYu','Mordiscos','Perro','aguacatero','1'),
('Gustavo Barrio','23423424','348537524','v4P7aMVbR9','Triturar','Perro','aguacatero','3'),
('Fermina Rodriguez','23423423','275867954','Uz2R645BbW','Poseidon','Perro','yorkshire ','4'),
('Rogelio Diallo','23423442','357975345','d2ruXWp6Hh','Figaro','Gato','Bengala','2'),
('Myriam Losada','23423423','34573456','zHpSke3pqK','Lucas','Perro','Yorshike ','1'),
('Faustina Escribano','12346683','345735345','kP9MxeRQA2','Leo','Perro','pastor alemán','5'),
('Unax Jerez','84634346','345637008','g9z2czGbNz','Bruno','Perro','aguacatero','2'),
('Aday Muñiz','35745674','046825112','vbPKda3YK6','Luna','Conejo','Belier holandes','5'),
('Fermina Perdomo','35757843','231237501','vq6gE98Md3','Mufasa','Perro','yorkshire ','2'),
('Leopoldo Amores','26857557','596938293','t3vTRcE5fD','Simba','Perro','Bulldog','1'),
('Armando Farre','45657855','434535637','7Mqe7K6phs','Gatsby','Gato','Bengala','2'),
('Maria-Josefa Arnau','45795674','348632256','rVs56jc78h','Rocky','Perro','yorkshire','4'),
('Raimundo Palomares','45757907','234235735','PwV4nKbSbj','bolita','Conejo','Belier holandes','2'),
('Josu Berrocal','67900875','235789567','yLTnmNeC4Z','chicheñol','Conejo','Belier holandes','4'),
('Mark Ubeda','45632556','135786577','RTgpv6xA7c','Thor','Perro','Bulldog','4'),
('Paco Prada','23435646','478579632','CyySN52jQN','Coco','Perro','yorkshire','2')

select * from info_usuario

insert into citas values
('Soraya Jurado','10-11-2021'),
('Jesus Varela','10-12-2021'),
('Nina Almagro','11-12-2021'),
('Amina Alvaro','20-11-2021'),
('Imanol Torres','10-11-2021'),
('Ayman Otero','02-02-2022'),
('Obdulia Segovia','10-11-2021'),
('Graciela Torres','10-04-2022'),
('Augusto Andujar','10-12-2021'),
('Jonatan Pizarro','10-11-2021'),
('Alejandro Tellez','30-11-2021'),
('Dani da Silva','10-11-2021'),
('Benjamin Cobo','30-11-2021'),
('Baltasar Pozo','10-11-2021'),
('Fatima Vivas','10-11-2022'),
('Álvaro Raya','10-11-2021'),
('Camilo Rincon','10-01-2022'),
('Marina Barros','11-02-2022'),
('Anas Castellano','10-11-2021'),
('Aya Villegas','10-11-2022'),
('Nancy Medina','10-11-2021'),
('Maria-Victoria Pinto','10-11-2022'),
('Fco Llanos','10-11-2021'),
('Júlia Rial','10-11-2022'),
('Aleix Albert','10-11-2021'),
('Bonifacio Borrego','10-11-2022'),
('Maria-Ines Valero','10-11-2021'),
('Bianca Peñalver','10-11-2021'),
('Patricia Teruel','10-11-2022'),
('Jesús Guisado','14-11-2021'),
('Pepe Saavedra','15-11-2021'),
('Evangelina Quintero','10-11-2021'),
('Margarita Haro','10-11-2021'),
('Vega Gamero','11-11-2021'),
('Axel Sanz','17-11-2021'),
('Gustavo Barrio','10-11-2021'),
('Fermina Rodriguez','10-11-2021'),
('Rogelio Diallo','14-01-2022'),
('Myriam Losada','18-11-2021'),
('Faustina Escribano','12-11-2021'),
('Unax Jerez','12-11-2021'),
('Aday Muñiz','16-02-2022'),
('Fermina Perdomo','16-01-2022'),
('Leopoldo Amores','10-01-2022'),
('Armando Farre','11-11-2021'),
('Maria-Josefa Arnau','10-03-2022'),
('Raimundo Palomares','15-11-2021'),
('Josu Berrocal','21-11-2021'),
('Mark Ubeda','22-11-2021'),
('Paco Prada','25-11-2021')

insert into vacunas values
('Soraya Jurado','parvovirus'),
('Jesus Varela','Microsporum canis'),
('Nina Almagro','Leptospira '),
('Amina Alvaro','distemper '),
('Imanol Torres','parvovirus'),
('Ayman Otero','distemper '),
('Obdulia Segovia','distemper '),
('Graciela Torres','parvovirus'),
('Augusto Andujar','parvovirus'),
('Jonatan Pizarro','Leptospira '),
('Alejandro Tellez','Microsporum canis'),
('Dani da Silva','parvovirus'),
('Benjamin Cobo','parvovirus'),
('Baltasar Pozo','distemper '),
('Fatima Vivas','Leptospira '),
('Álvaro Raya','Microsporum canis'),
('Camilo Rincon','parvovirus'),
('Marina Barros','Leptospira '),
('Anas Castellano','Microsporum canis'),
('Aya Villegas','distemper '),
('Nancy Medina','distemper '),
('Maria-Victoria Pinto','parvovirus'),
('Fco Llanos','Leptospira '),
('Júlia Rial','Leptospira '),
('Aleix Albert','Microsporum canis'),
('Bonifacio Borrego','parvovirus'),
('Maria-Ines Valero','hepatitis'),
('Bianca Peñalver','hepatitis'),
('Patricia Teruel','Leptospira '),
('Jesús Guisado','distemper '),
('Pepe Saavedra','distemper '),
('Evangelina Quintero','parvovirus'),
('Margarita Haro','parvovirus'),
('Vega Gamero','Microsporum canis'),
('Axel Sanz','Microsporum canis'),
('Gustavo Barrio','Microsporum canis'),
('Fermina Rodriguez','hepatitis'),
('Rogelio Diallo','hepatitis'),
('Myriam Losada','parvovirus'),
('Faustina Escribano','parvovirus'),
('Unax Jerez','parvovirus'),
('Aday Muñiz','hepatitis'),
('Fermina Perdomo','parvovirus'),
('Leopoldo Amores','parvovirus'),
('Armando Farre','hepatitis'),
('Maria-Josefa Arnau','distemper'),
('Raimundo Palomares','parvovirus'),
('Josu Berrocal','parvovirus'),
('Mark Ubeda','parvovirus'),
('Paco Prada','distemper ')