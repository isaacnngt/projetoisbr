CREATE DEFINER=`root`@`localhost` TRIGGER `consultorio`.`tblaudo_AFTER_INSERT` AFTER INSERT ON `tblaudo` FOR EACH ROW
BEGIN
update tb_agenda set Estagio ='Triagem' where NomePaciente = new.NomePaciente;

delete from tb_classificacao where NomePaciente = new.NomePaciente;
 
END