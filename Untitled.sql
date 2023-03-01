CREATE TABLE `Professor` (
  `ID_Prof` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Nome` varchar(255) NOT NULL,
  `Telefone` varchar(255) NOT NULL,
  `CPF` varchar(255) NOT NULL,
  `ID_Turma` INT(255) NOT NULL,
  `Materia` INT NOT NULL
);

CREATE TABLE `Curso` (
  `ID_Curso` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Materia` varchar(255) NOT NULL AUTO_INCREMENT
);

CREATE TABLE `Aluno` (
  `ID_aluno` INT(255) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Nome` varchar(255) NOT NULL AUTO_INCREMENT,
  `Telefone` varchar(255) NOT NULL AUTO_INCREMENT,
  `CPF` varchar(255) NOT NULL AUTO_INCREMENT,
  `Endereco` varchar(255) NOT NULL,
  `ID_Turma` INT(255) NOT NULL,
  `ID_Curso` INT(255) NOT NULL
);

CREATE TABLE `Turno` (
  `ID_Turno` INT(255) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Nome` varchar(255) NOT NULL
);

CREATE TABLE `Turma` (
  `ID_turma` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Numero` varchar(255) NOT NULL
);

CREATE TABLE `Instituicao` (
  `ID_Senac` BINARY PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `ID_Bonsucesso` varchar(255) NOT NULL
);

CREATE TABLE `Senac` (
  `ID_Bonsucesso` INT PRIMARY KEY NOT NULL,
  `ID_Curso` varchar(255) NOT NULL
);

ALTER TABLE `Professor` ADD FOREIGN KEY (`ID_Turma`) REFERENCES `Turma` (`ID_turma`);

ALTER TABLE `Professor` ADD FOREIGN KEY (`Materia`) REFERENCES `Turma` (`ID_turma`);

ALTER TABLE `Curso` ADD FOREIGN KEY (`Materia`) REFERENCES `Turma` (`ID_turma`);

ALTER TABLE `Aluno` ADD FOREIGN KEY (`ID_Turma`) REFERENCES `Turma` (`ID_turma`);

ALTER TABLE `Turma` ADD FOREIGN KEY (`Numero`) REFERENCES `Turno` (`ID_Turno`);

ALTER TABLE `Instituicao` ADD FOREIGN KEY (`ID_Bonsucesso`) REFERENCES `Senac` (`ID_Bonsucesso`);

ALTER TABLE `Senac` ADD FOREIGN KEY (`ID_Curso`) REFERENCES `Curso` (`ID_Curso`);

ALTER TABLE `Curso` ADD FOREIGN KEY (`ID_Curso`) REFERENCES `Aluno` (`ID_Curso`);
