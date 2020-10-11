-- -----------------------------------------------------------------
-- Servidor:                     127.0.0.1
-- OS do Servidor:               Win64
-- Autor:              			 Isaac Nunes
-- Descrição:                    Script Básico de iniciação do isBR
-- -----------------------------------------------------------------


-- Copiando estrutura do banco de dados para consultorio
CREATE DATABASE IF NOT EXISTS `consultorio`
USE `consultorio`;

-- Copiando estrutura para tabela consultorio.senha
CREATE TABLE IF NOT EXISTS `senha` (
  `idSenha` int(11) NOT NULL AUTO_INCREMENT,
  `senha` varchar(50) DEFAULT '0',
  `tipo` varchar(2) NOT NULL DEFAULT '0',
  `data` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `prioridade` int(11) NOT NULL DEFAULT '0',
  `podeChamar` int(11) NOT NULL DEFAULT '0',
  `passouRecepcao` int(11) NOT NULL DEFAULT '0',
  `passouEnfermagem` int(11) NOT NULL DEFAULT '0',
  `passouMedico` int(11) NOT NULL DEFAULT '0',
  `local` varchar(100) DEFAULT NULL,
  `nomePaciente` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idSenha`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela consultorio.senha: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `senha` DISABLE KEYS */;
INSERT INTO `senha` (`idSenha`, `senha`, `tipo`, `data`, `status`, `prioridade`, `podeChamar`, `passouRecepcao`, `passouEnfermagem`, `passouMedico`, `local`, `nomePaciente`) VALUES
	(1, '0', '0', '2020-06-07 17:55:28', 1, 0, 1, 0, 0, 0, 'SALA TRIAGEM 1', 'ISAAC NUNES');

-- Copiando estrutura para tabela consultorio.tb_agenda
CREATE TABLE IF NOT EXISTS `tb_agenda` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `DataCadastro` date DEFAULT NULL,
  `NomePaciente` varchar(100) DEFAULT NULL,
  `dataNascimento` varchar(50) DEFAULT NULL,
  `Idade` varchar(50) DEFAULT NULL,
  `Sexo` varchar(50) DEFAULT NULL,
  `documentoPaciente` varchar(50) DEFAULT NULL,
  `Altura` varchar(50) DEFAULT NULL,
  `Peso` varchar(50) DEFAULT NULL,
  `CepPaciente` varchar(50) DEFAULT NULL,
  `CartaoSus` varchar(50) DEFAULT NULL,
  `EnderecoPaciente` varchar(100) DEFAULT NULL,
  `Bairro` varchar(30) DEFAULT NULL,
  `CidadePaciente` varchar(30) DEFAULT NULL,
  `UfPaciente` varchar(30) DEFAULT NULL,
  `TelefoneCelular` varchar(50) DEFAULT NULL,
  `TipoAtendimento` varchar(100) DEFAULT NULL,
  `TipoConvenio` varchar(50) DEFAULT NULL,
  `Status` varchar(50) DEFAULT '',
  `foto` longblob,
  `Prontuario` varchar(50) DEFAULT NULL,
  `tipoSanguineo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela consultorio.tb_agenda: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_agenda` DISABLE KEYS */;
INSERT INTO `tb_agenda` (`codigo`, `DataCadastro`, `NomePaciente`, `dataNascimento`, `Idade`, `Sexo`, `documentoPaciente`, `Altura`, `Peso`, `CepPaciente`, `CartaoSus`, `EnderecoPaciente`, `Bairro`, `CidadePaciente`, `UfPaciente`, `TelefoneCelular`, `TipoAtendimento`, `TipoConvenio`, `Status`, `foto`, `Prontuario`, `tipoSanguineo`) VALUES
	(1, '2020-06-07', 'ISAAC NUNES', '03/06/1993', '27', 'MASCULINO', '813.773.773-73', '1.75', '87', '74665-510', '', 'AVENIDA PERIMETRAL NORTE', 'CABO', 'PERNAMBUCO', 'PE', '(81)97400-1547', 'CONSULTA', 'UNIMED', 'Ativo', _binary 0xFFD8FFDB004300080606070605080707070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F27393D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232FFC00014080096009604012200021101031101042200FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000E040100021103110400003F00F9FE8A28A00F9FE8A28A28A28A0028A28A28A28A0028A28A28A2B4B46F0FEADE20B936FA558CB74EBF78A8C2A7048DCC70173838C919C500145157F49D1354D7AF459E936171797079D90A16C0F53E83DCD66D15EA763F03F5592671A86AF65044132AD6E8F312D91C10C130319E727A0E39C8BDFF000A2BFEA63FFC91FF00ED94EC2BA28515EA7A5FC00F1B5FAEEBA4B1D3867A5C5C6E6FCA30DFCEB51BF66EF126DF9759D28B7A13201F9EDAF1EA2BD1F52F831E22B51712595C595EC68F88915CC72C8B9C02430DAA71C91BBD704F7F3EBAB4B9B1B97B6BBB796DE74C6E8A6428CB919190791C10690EE78C515E89ABFC10F1D6921DD74C8EFE24192F65307FC94E18FE02BCFE7826B69DE09E278A643B5E3914AB29F420F4A868A28A008E8A28A28A28A0028A28A28A28A0028A28A28A28A0028A28A28A28A0028A28A28A28A0028A28A28A2B67C29A20F11F8A34FD299F6473C9FBC60D83B14166C1C1F9B6A9C718CE33400514568685A44FAFEBD61A4DB1559AF2758559BA2E4E327E9D6BABF057C2CBFD78C77DAC2CD63A5C9109222A4096707EE95073B57A1C91C823190723DE2D2D61B1B282CED93641046B14699276AA8C0193C9E077A5B5B68ACECE0B4814AC16F12C312962DB514055193CF000152D55893AAF877F0C754F1DEA4A4AC969A4A0DD35E3270C3246D8F3C336411E83073E87EA9F0BF84747F07E9ED65A35BBC31390D217919CBB00064E4F078ED8153F877C3DA7F86344B5D2B4D85638608C26EC7CCE7A9663DC9249FC6B568A28A298828A28A2B1FC4DE19B0F15E93FD9DA819563120951E26DAC8C32323208E848E41EBEB835B1450015C278F7E16689E398A5B897CCB6D58A058AED1D881B7380C99C11CF6C1F7AEEE8AF98BC59E07D5FC253B35DC265B0697CB86F107C8FC640233956C6783FDD6C640CD7355F52F8C3C390F8A7C3771A6CBBBCC199AD8890A05982B04278391F310783C138C1C11F2D54B4523E18F12785F56F09EAD2E9DAB5AB45223955930764A060E51BB8C107F1E7158F5F5D7C61F03DB78ABC1D757714489A9E9E8D730CB800B803E7427DD47E6057C8B4514514861451451451450014514514514500145145145145001451451451450014514515EBDF05BC391C925C788DE4476899ED2385A204A3611B786CF0704AF4E84F3DABC86BDE7E09FF00C89979FF006107FF00D171D342615EB5FB3EE8CB7DE3F3A84D1931D95ACB246D8E3CCCA27FE8321AF25AFA17F67131FD8F501C79BE649FF7CE22AF49A28A2A893DEA8A28A28A28A0028A28A28A28A0028A28A2BE6AF88FE1C8FC37E2C961865468AED4DDA2244235855A47010004F036F5E3E95F4AD7837C6CFF0091CECFFEC1E9FF00A324A4C684650CA55802A46083D0D7C37E2DD23FB0BC59AAE9CA8CB0C17732439EE8B232A9FC857DCB5F227C6B311F8873F958E11B77FBDE6C99AF36A28A2A4A3CEE8A28A28A28A0028A28A28A28A0028A28A28A28A0028A28A28A28A0028A28A2BD7FE0B789218BCFF0D490A2492BBDDC73B4D82E708BE584C72700B673D01E3BD79055FD13549744D72CB538B796B699642A8E50BA83F32E7B02320FB1A69D84D5C2BD5BE006B2BA7FC435B19A52B1DF5ACB146A4F1E67CAFF00CA322BCA6ADE95A8CDA46AF67A95BFFAEB599264E48C952081C73DABEB3A2AB69FA85A6AB610DF58CE93DB4CBBA3913A11FD08E841E41183566A893EF4A2B17C2FE28D37C5BA25BEA7A6CE8CB2C619E2DC0BC24E41561D8E411EF8E2B6A8A28A2800A28A28A28A2800A28A28AF9BBE26789ADBC4FE2C335ADAA43159C5F630E93F9AB71B2473E6838180DB87033F535ECDF10BC490F873C2976DE7ECBDBA8DA1B54590AB962305D48E46D07767D4019048AF9A2A59486BBAC68CEEC151412CC4E001EB5F0CF8A756FEDCF14EA9A907668EE2EE5962DDD4233B301FAD7D31F1A7C7367E1FF07DDE9304E926A9A8A9B61123FCD121037336391F2918F5DC3A8CD7CA14514514861451451451450014514514514500145145145145001451451451450014514514515DAF873E1EDD6AD6B05FDE4E20B3950BAA283E6B73C7518008E41E78C71CD655ABC28C79A6EC8D68D19D6972C1051457A17C3DF84FAA78E248AEA490D8E95B8EEB8789897031909C6D39CE3AF63E98A5F871E2ABFF000E6A57115A694FA85BDC946BA5823679911370CA60E3ABF391CE00C8CE6BE8586F6DA77D91CC8CDE99E6BCCF46B4B0D16E01B4B2861520A3155F9CA93920B1F98F38EA7B57522DCA3092DE5646EC41A8C262E1894DC7A178DC254C2C929F533BE1B78CF54F06789927D36CCDF2DD010CD68A99799739C290090DE9FCABEBFD1F551AC5825D0B2BDB3240CC3790189D4900E307EB8E3B835CD787FE167843C2C239EC74849AEE200FDA2E7F7D23119E467853CFF081DABB30410082083D08AEAA8AE686A5A941C16128F75CD3BFB6EFFF00E78C7FF7C1FF001AEB38EE85A28A2BA3AC7D6BC410E95A5DCDD4104B7F3C4BF25B5B8DCF231200031DB9E4F3819383D2A8B5DEA3703E698C60F6036D579563B385A7725997D4E326A652508B94B6438A73928C56AC2B92F1CF8CA7F09E913DC59E89A86A572A99410DBB189339F99DC0E00C738F51D3391D6D43751C535BB433C492C720D86391432B67B107A8AF01F12EAF79AEF886EF50D42DE3B6BC90AA4B1468CA159142630C4907E5E727AE7A74AC9AF61BFF000D69BAFCAC26B648AE246663710A8560C4E4938E1BF1CF53D3AD79F7897C237DE1AF2E49E48E6B795D95248C3718E9BB230091CE327A1F4AE0C3E614ABBE55A3F33D2C4E5D570EB99EABC8F85358D5AEF5DD62EF54BF757BABA90C921550A327D00AA35F58F8A3E06784B5CB695B4FB73A4DF9E566B6CF964E31868FEEE3FDDDB5F3778B7C1BAB783352167AA45C36EF2E644711C80123E52C067A67E84573F45145771C073F4514514514500145145145145001451451451450014514514515E81F0EBC3105FF009FA9EA365E6C2B84B612806373C863B4F5C70076C93DC718E22BC685375246D428CAB54508851457AB7C12F87F078B35AB9D4757B2F3F47B3429B598859262381EF80493C8C1DB5ABE0FF025947A6C57DAC5A196EE43BD61987CB12F3805738248E4E7A70300839EFA8A2BE4ABD79D69F34DFF00C03EAA8D1851872411B3F08BE0F5AEBDA7C5E21F11C5702DCCA1ADAD180549D00FBCDDCA93D0719C7706BE8D8A28E0852186348E2450A88830140E8001D052A22C68A88A151400AAA3000F414EAA17B66194CB1A9DF9C903BD57B3D425B56C677C7DD49E9F4AD7A826B48A71F32E1BD4706A69D59D397341D99A4E30A90E4A8AE8299E5ED25A30013C91D8FF00F5FDE9F455B86FEDA61C4AA0FA138FE752F9F081932A63FDE1581269B303F26D61F5E6A3FB05CFFCF3FF00C7857AB1CE6A25EF4533CA964745BBC66D223497E5CC8BE5B632413C0FC7A5027849C0963CFF00BC2A4A2B66E7548210446CB23FA03C7E75892CF3DECDF312C4F451D05598B4C627329007A29ABF1431C2B84503F9D716271D5711A4B45D8EEC2E0E8617E0577DD91B3B960B1A64720B1E36FE1DE9CB1A862D8CB9E371EB8F4A75151DB5AA5BAE472E4724D2DE59DBEA1672DA5DC4B2C12AED746E87FC0FBF6A9E8AE44DA7746F2F7B70ACDD7B40D33C4BA4CBA66AD689736B28E55BAA9ECCA7A823D4569515E47E3AF0747A294BFD3219058B7CB2A64B085B800E49CE0FBF43DF902B88AFA3AE2DA0BB81A0B98639A16C6E8E450CA7072320FBD788F8C741FEC1D7A58A18248ECA5F9EDD98EE04606E00FB12473CE319EB93F4596E35D55ECA7F12EBDFFE09E06638354DFB586CFF0003E41F8B1F0EDBC0BAF2B5924EFA35D7CD6F2C83211BBC64E79C7519C647AE09AF3EAFBC359D174EF1069B269DAADA4775692105A37E990720FB57C65E39F0B5C783BC5D7DA44D1B2C48E5ED998E77C249D873819E383EE0D73F451457AC7947394514514514500145145145145001451455ED1F4C9759D5ED74F84E1A77C16E3E55EACD8246700138EF8AF79D2AC134BD2AD6C63DA5608950B2AED0C40E5B1EA4E4FE35E69F0B6C3CED6AEEF596365B78420DC32CACE7823F0561F8FBD7ABD7CEE6D59CAAFB2E8BF33E832AA2A34FDA757F917348D32E75AD62CF4CB35DD717732C318ED9638C9F6EF5F68F813C383C29E0BD3348288B3450869CA0E1A56E58FBF2719F6AF9E7F67ED14EA3F10CEA0C3F75A6DB3C99C67E77F9147E4CC7F0AFAA28A28A2BC83D40A28A28A28A2800A28A28A28A2800A28A28A28A2800A28A28A28A2800A28A28AE73C67E1D6F1168E2384AADCDBB196225012FF29F901246D04EDE7D85747455D3A92A73538EE88A94E3522E12D9857947C73F04DC789BC396FA969F0A35DE99E649271F3343B0B301EBCA8C0F7FCFD5E91943295600823041EF5F36515AFE28B1FECDF146A36C163551317458C61555BE650076C02062B22BED212538A92EA7C84E2E12717D0F8068AD7F14E8EFE1FF00156A9A4BE7FD12E5E352475507E53F88C1FC6B228A28A2A890A28A28A28A2800A28A2BD5FE15DBC4BA15EDC85FDF4973E5B364F2AAAA40C7D59BF3AEF2B82F85B36344B984F4372C47D76A577B5F238F77C4CEFDCFABC12B61E1E87D11FB34D8AAE9BAFEA0402F24D1400FA050CC7FF421F957BBD7897ECD9FF22CEB5F37FCBE2FCBE9F20E7FCFA57B6D145145721D2145145145145001451451451450014514514514500145145145145001451451451450014514578F7C4DB78A1F152C91AE1A6B64924393CB65973F9281F8571B5D8FC4A9BCEF1344C3A0B6551F4DCF5C757D7E09DF0F0BF63E571AAD889AF33E48F8E960B65F152FDD0002EA28A7C0F5D814FEAA4FE35E6F5EA3F1FC7FC5CF93E6CFFA1C3C7A75E3FCFAD7975145145751CA14514514514500145145761E05D656D2EA4D3E690224C43C249C7EF3A63A75231DFB7A9AF4A8F509E35C6437FBC2BC16B4ECFC45ABD8C7E5C17D284C050AF870A074037671F857938CCB5D69FB4A6ECD9EC60B335469AA7555D23D53E05F8D21F0CF8AA5D3AFEE22834ED4D42B492B6D58E55CEC39E8339239C751CF15F5443345710A4D04892C5228647460CAC0F4208EA2BE03AD9D2BC5BE22D0E130E97ADDFDA43D7CA86E19533EBB738AF6AFED49FF00BB1FE47FC68FED49FF00BB1FE47FC6BC7BFE130D7BFE7FBFF20A7FF1347FC261AF7FCFF7FE414FFE26B8BFB1EBF75F8FF91DBFDB186FE57F87F99F73515F157FC2CBF1B7FD0D1A9FFDFF00347FC2CBF1B7FD0D1A9FFDFF0035EC3FDA93FF00763FC8FF008D1FDA93FF00763FC8FF008D78F7FC261AF7FCFF007FE414FF00E268FF0084C35EFF009FEFFC829FFC4D1FD8F5FBAFC7FC83FB630DFCAFF0FF0033ED5A2BE2AFF8597E36FF00A1A353FF00BFE68FF8597E36FF00A1A353FF00BFE6BD87FB527FEEC7F91FF1A3FB527FEEC7F91FF1AF1EFF0084C35EFF009FEFFC829FFC4D1FF0986BDFF3FDFF009053FF0089A3FB1EBF75F8FF00907F6C61BF95FE1FE67DAB457C55FF000B2FC6DFF4346A7FF7FCD1FF000B2FC6DFF4346A7FF7FCD7B0FF006A4FFDD8FF0023FE347F6A4FFDD8FF0023FE35E3DFF0986BDFF3FDFF009053FF0089A3FE130D7BFE7FBFF20A7FF1347F63D7EEBF1FF20FED8C37F2BFC3FCCFB568AF8ABFE165F8DBFE868D4FFEFF009A3FE165F8DBFE868D4FFEFF009AF61FED49FF00BB1FE47FC68FED49FF00BB1FE47FC6BC7BFE130D7BFE7FBFF20A7FF1347FC261AF7FCFF7FE414FFE268FEC7AFDD7E3FE41FDB186FE57F87F99F6AD15F157FC2CBF1B7FD0D1A9FF00DFF347FC2CBF1B7FD0D1A9FF00DFF35EC3FDA93FF763FC8FF8D4173A848636796558E3504B1CED007724FA5792FF00C261AF7FCFF7FE414FFE26B3EFB56BFD4989BCBB965190761385040C6428E07E5550C9EADFDE92B7F5E84CB39A297B9177F3B7FC13ED5AA5AA6AFA768964D79A9DEC1696EA0FCF338507009C0F5380781CD7C6FF00F0B2FC6DFF004346A7FF007FCD61EA9AD6A9ADCE27D5751BABD940C2B5C4CD2151E83278AB3E22D53FB5F599AE14E615FDDC5FEE0EFD01E4E4F3EB8ACAA28AF7A9C1538A847647CFD4A92A937396ECBFE32F11CDE2CF16EA3AD4C00FB449FBB407858D46D51F901585451451451564051451451451400514514514514005145145145140051451451451400514514514514005145145145140051451451451400514514514514005145145145140051451451451400514515FFFD9, '001', 'A+');


-- Copiando estrutura para tabela consultorio.tb_anamnese
CREATE TABLE IF NOT EXISTS `tb_anamnese` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `NomePaciente` varchar(50) DEFAULT NULL,
  `Data` date DEFAULT NULL,
  `HistoricoClinico` text,
  `CondutaMedica` text,
  `FrequenciaCardiaca` varchar(50) DEFAULT NULL,
  `FrequenciaRespiratoria` varchar(50) DEFAULT NULL,
  `Hgt` varchar(50) DEFAULT NULL,
  `PressaoArterial` varchar(50) DEFAULT NULL,
  `Temperatura` varchar(50) DEFAULT NULL,
  `Saturacao` varchar(50) DEFAULT NULL,
  `Prontuario` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Copiando estrutura para tabela consultorio.tb_classificacao
CREATE TABLE IF NOT EXISTS `tb_classificacao` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Data` date DEFAULT NULL,
  `HorarioClassificacao` text,
  `NomePaciente` varchar(50) DEFAULT NULL,
  `QueixaPrincipal` text,
  `Observacao` text,
  `ClassificacaoClinica` text,
  `FrequenciaCardiaca` varchar(50) DEFAULT NULL,
  `FrequenciaRespiratoria` varchar(50) DEFAULT NULL,
  `Hgt` varchar(50) DEFAULT NULL,
  `PressaoArterial` varchar(50) DEFAULT NULL,
  `Temperatura` varchar(50) DEFAULT NULL,
  `Saturacao` varchar(50) DEFAULT NULL,
  `Prontuario` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;


-- Copiando estrutura para tabela consultorio.tb_consultorios
CREATE TABLE IF NOT EXISTS `tb_consultorios` (
  `codigo` int(20) NOT NULL AUTO_INCREMENT,
  `DataCadastro` date NOT NULL DEFAULT '0000-00-00',
  `tipoConsultorio` varchar(100) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Copiando estrutura para tabela consultorio.tb_convenios
CREATE TABLE IF NOT EXISTS `tb_convenios` (
  `codigo` int(20) NOT NULL AUTO_INCREMENT,
  `DataCadastro` date NOT NULL DEFAULT '0000-00-00',
  `tipoConvenio` varchar(100) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela consultorio.tb_convenios: ~7 rows (aproximadamente)
INSERT INTO `tb_convenios` (`codigo`, `DataCadastro`, `tipoConvenio`) VALUES
	(1, '2020-02-12', 'UNIMED'),
	(2, '2020-02-08', 'IPASGO'),
	(3, '2020-02-09', 'AMERICA'),
	(4, '2020-02-14', 'SUS'),
	(5, '2020-02-14', 'AMEX'),
	(6, '2020-02-16', 'FEDEX'),
	(7, '2020-05-27', 'CASSI');


-- Copiando estrutura para tabela consultorio.tb_especialidades
CREATE TABLE IF NOT EXISTS `tb_especialidades` (
  `codigo` int(20) NOT NULL AUTO_INCREMENT,
  `DataCadastro` date NOT NULL DEFAULT '0000-00-00',
  `tipoEspecialidades` varchar(100) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Copiando dados para a tabela consultorio.tb_especialidades: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `tb_especialidades` DISABLE KEYS */;
INSERT INTO `tb_especialidades` (`codigo`, `DataCadastro`, `tipoEspecialidades`) VALUES
	(1, '2020-02-12', 'ANGIOLOGIA'),
	(2, '2020-02-08', 'NEUROLOGIA'),
	(3, '2020-02-09', 'ORTOPEDIA'),
	(4, '2020-02-14', 'PEDIATRIA'),
	(5, '2020-02-14', 'CARDIOLOGIA'),
	(7, '2020-02-14', 'FISIOTERAPIA'),
	(8, '2020-02-14', 'MASTOLOGISTA'),
	(9, '2020-02-16', 'OTORRINO'),
	(10, '2020-05-10', 'ANESTESISTA'),
	(11, '2020-05-27', 'FISIATRA');
/*!40000 ALTER TABLE `tb_especialidades` ENABLE KEYS */;

-- Copiando estrutura para tabela consultorio.tb_exames
CREATE TABLE IF NOT EXISTS `tb_exames` (
  `Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `DataPedido` date DEFAULT NULL,
  `NomePaciente` varchar(50) DEFAULT NULL,
  `DescricaoExame` text,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Copiando estrutura para tabela consultorio.tb_horario
CREATE TABLE IF NOT EXISTS `tb_horario` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Horario` varchar(30) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela consultorio.tb_horario: ~9 rows (aproximadamente)
INSERT INTO `tb_horario` (`codigo`, `Horario`) VALUES
	(6, '08:00'),
	(7, '08:30'),
	(8, '09:00'),
	(9, '09:30'),
	(10, '10:00'),
	(11, '10:30'),
	(12, '11:00'),
	(13, '11:30'),
	(14, '12:00');

-- Copiando estrutura para tabela consultorio.tb_intervalo_medicamentos
CREATE TABLE IF NOT EXISTS `tb_intervalo_medicamentos` (
  `codigo` int(20) NOT NULL AUTO_INCREMENT,
  `DataCadastro` date NOT NULL DEFAULT '0000-00-00',
  `Intervalo` varchar(100) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Copiando dados para a tabela consultorio.tb_intervalo_medicamentos: ~3 rows (aproximadamente)
INSERT INTO `tb_intervalo_medicamentos` (`codigo`, `DataCadastro`, `Intervalo`) VALUES
	(1, '2020-05-25', '6 / 6hs'),
	(2, '2020-05-25', '12 / 12hs'),
	(3, '2020-05-25', '8 / 8hs');


-- Copiando estrutura para tabela consultorio.tb_medicacao
CREATE TABLE IF NOT EXISTS `tb_medicacao` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `NomeMedicacao` varchar(100) NOT NULL DEFAULT '0',
  `ViaAcesso` varchar(50) NOT NULL DEFAULT '0',
  `Intervalo` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela consultorio.tb_medicacao: ~3 rows (aproximadamente)
INSERT INTO `tb_medicacao` (`codigo`, `NomeMedicacao`, `ViaAcesso`, `Intervalo`) VALUES
	(1, 'CAPTOPRIL 25 mg cx, 60 comp', 'SUBLINGUAL', '12 / 12hs'),
	(2, 'DOMPERIDONA 10mg cx, 60 comp', 'ORAL', '12 / 12hs'),
	(3, 'FERNEGAN 100mg cx, 60 comp', 'ORAL', '8 / 8hs');


-- Copiando estrutura para tabela consultorio.tb_sala_triagem
CREATE TABLE IF NOT EXISTS `tb_sala_triagem` (
  `codigo` int(20) NOT NULL AUTO_INCREMENT,
  `DataCadastro` date NOT NULL DEFAULT '0000-00-00',
  `tipoSala` varchar(100) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Copiando dados para a tabela consultorio.tb_sala_triagem: ~4 rows (aproximadamente)
INSERT INTO `tb_sala_triagem` (`codigo`, `DataCadastro`, `tipoSala`) VALUES
	(1, '2020-05-17', 'SALA TRIAGEM 1'),
	(2, '2020-05-17', 'SALA TRIAGEM 2'),
	(3, '2020-05-17', 'SALA TRIAGEM 3'),
	(4, '2020-05-27', 'SALA TRIAGEM 4');

-- Copiando estrutura para tabela consultorio.tb_servidor
CREATE TABLE IF NOT EXISTS `tb_servidor` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `NomeServidor` varchar(50) DEFAULT NULL,
  `EspecialidadeServidor` varchar(15) DEFAULT NULL,
  `Registro` varchar(100) DEFAULT NULL,
  `Uf` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Copiando dados para a tabela consultorio.tb_servidor: ~1 rows (aproximadamente)
INSERT INTO `tb_servidor` (`codigo`, `NomeServidor`, `EspecialidadeServidor`, `Registro`, `Uf`) VALUES
	(1, 'LIDIANE SOUZA OLIVEIRA', 'Enfermeiro', '12232', 'GO');


-- Copiando estrutura para tabela consultorio.tb_tipo_exame
CREATE TABLE IF NOT EXISTS `tb_tipo_exame` (
  `codigo` int(20) NOT NULL AUTO_INCREMENT,
  `DataCadastro` date NOT NULL DEFAULT '0000-00-00',
  `tipoExame` varchar(100) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- Copiando dados para a tabela consultorio.tb_tipo_exame: ~6 rows (aproximadamente)
INSERT INTO `tb_tipo_exame` (`codigo`, `DataCadastro`, `tipoExame`) VALUES
	(1, '2020-05-23', 'HEMOGRAMA COMPLETO'),
	(2, '2020-05-23', 'URÉIA COMPLETO'),
	(3, '2020-05-23', 'ENZIMAS'),
	(4, '2020-05-23', 'TC - TOMOGRAFIA COMPUTADORIZADA'),
	(5, '2020-05-27', 'RS - RESSONANCIA MAGNETICA'),
	(6, '2020-05-31', 'ELETROCARDIOGRAMA');


-- Copiando estrutura para tabela consultorio.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `DataCadastro` varchar(50) DEFAULT NULL,
  `Usuario` varchar(50) DEFAULT NULL,
  `Login` varchar(50) DEFAULT NULL,
  `Senha` varchar(50) DEFAULT NULL,
  `Perfil` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela consultorio.usuarios: ~1 rows (aproximadamente)
INSERT INTO `usuarios` (`iduser`, `DataCadastro`, `Usuario`, `Login`, `Senha`, `Perfil`) VALUES
	(1, '2020/05/31', 'Master', 'admin', 'admin', 'Admin');


