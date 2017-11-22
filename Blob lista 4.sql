CREATE SCHEMA pratica05;

USE pratica05;

CREATE TABLE IF NOT EXISTS dados_multimidia(
codigo int auto_increment not null, 
nome varchar (30),
tipo varchar (20),
dados longblob,
primary key (codigo)
);


INSERT INTO dados_multimidia (nome, tipo, dados) values
('Eduardo 1', 'foto jpeg', load_file("C:\Users\Eduardo Mendes\Pictures\WhatsApp Image 2017-02-14 at 10.54.46.jpeg")),
('Eduardo 2', 'foto jpeg', load_file("C:\Users\Eduardo Mendes\Pictures\WhatsApp Image 2017-05-20 at 14.40.59.jpeg")),
('Eduardo 3', 'foto jpeg', load_file("C:\Users\Eduardo Mendes\Pictures\WhatsApp Image 2017-06-10 at 18.16.58.jpeg")),
('Eduardo 4', 'foto jpg', load_file("C:\Users\Eduardo Mendes\Pictures\imagem_export.jpg"));

Select * from dados_multimidia; 

SHOW VARIABLES LIKE "secure_file_priv";
'secure_file_priv', 'C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\'

SELECT dados INTO OUTFILE 'C:\\ProgramData\\MySQL\\MySQL Server 5.7\\Uploads\\imagem_export.jpg'
FROM dados_multimidia
 WHERE codigo = 4 ;


