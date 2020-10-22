CREATE DEFINER=`root`@`localhost` TRIGGER `consultorio`.`tb_classificacao_AFTER_INSERT` AFTER INSERT ON `tb_classificacao` FOR EACH ROW
BEGIN
update tb_agenda SET Status = 'Inativo', Estagio ='Medico' where NomePaciente = new.NomePaciente;
END