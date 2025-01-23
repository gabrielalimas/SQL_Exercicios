SELECT * FROM tabelafornecedores; --Trazendo todas as informações da tabela de fornecedores--demo

SELECT * FROM tabelafornecedores WHERE país_de_origem = 'China'; --Trazendo todas as informações da tabela onde o país de origem seja a China. Sempre deixar textos dentro das aspas.demo

SELECT DISTINCT cliente FROM tabelapedidos; --Trazendo todos os clientes que compraram na empresa. Usamos o 'distinct' para que contabilize cada cliente somente uma vez, visto que o cliente pode fazer mais de uma compra no ano e queremos saber a quantidade de cliente diferentes que compraram.demo
---------------------------------------------------------------------------
--CRIANDO UMA TABELA DE CLIENTES--
CREATE TABLE clientestabela (   --NOME QUE A TABELA QUE VAMOS CRIAR VAI TER)--
  Id_Cliente INT PRIMARY KEY,   --COLOCANDO A PRIMEIRA COLUNA DA TABELA, QUE VAI SE CHAMAR ID_CLIENTE, AS INFORMAÇÕES QUE ENTRARÃO NELA SERÃO DO TIPO INTEIRO (INT) E INFORMANDO QUE SERÁ NOSSA CHAVE PRIMÁRIA (PRIMARY KEY).--
  Nome_Cliente VARCHAR (250),   --COLOCANDO A SEGUNDA COLUNA DA TABELA, QUE VAI SE CHAMAR NOME_CLIENTE, É DO TIPO VARCHAR (UM TIPO DE TEXTO) E PODE CONTER NO MÁXIMO 250 CARACTERES.--
  Informacoes_de_Contato VARCHAR (250) -- COLOCANDO A TERCEIRA COLUNA DA TABELA, QUE VAI SE CHAMAR INFORMACOES_DE_CONTATO, É DO TIPO VARCHAR E PODE CONTER NO MÁXIMO 250 CARACTERES.--
  );
  
--ALTERANDO UMA TABELA--
ALTER TABLE clientestabela ADD Endereco_Cliente VARCHAR (250); --ALTERANDO A TABELA ATUAL, INCLUINDO UMA COLUNA A MAIS, SENDO A COLUNA DE ENDEREÇO.--

--APAGANDO UMA TABELA--
-- A FUNÇÃO 'DROP TABLE' APAGA TODA A TABELA. CUIDADO!!!!!!--

--CRIANDO UMA TABELA DE CATEGORIA DE PRODUTOS--
CREATE TABLE tabelacategorias (
  ID_Categoria INT PRIMARY KEY,
  Nome_Categoria VARCHAR (250),
  Descricao_Categoria TEXT
  );
  
--CRIANDO UMA TABELA DE PRODUTOS--
CREATE TABLE tabelaprodutos (
  ID_Produto INT PRIMARY KEY,
  Nome_do_Produto VARCHAR (250),
  Descrição TEXT,
  Categoria INT,
  Preco_de_Compra DECIMAL (10,2), --DUAS CASAS DEPOIS DA VÍRGULA, QUE SERÃO OS CENTAVOS.--
  Unidade VARCHAR (50),
  Fornecedor INT,
  Data_de_Inclusao DATE,
  FOREIGN KEY (Categoria) REFERENCES tabelacategorias (id_categoria), --INFORMANDO QUAL SERÁ A CHAVE ESTRANGEIRA: A COLUNA 'CATEGORIA' SERÁ A COLUNA DESSA TABELA QUE VAI CRUZAR COM A COLUNA 'id_categoria' da tabela 'tabelacategorias'.--
  FOREIGN KEY (Fornecedor) REFERENCEs tabelafornecedores (id) -- INFORMANDO QUAL SERÁ A CHAVE ESTRANGEIRA: A COLUNA 'FORNECEDOR' SERÁ A COLUNA DESSA TABELA QUE VAI CRUZAR COM A COLUNA 'id' DA TABELA 'tabelaforncedores'.
  );
  
  --A CHAVE ESTRANGEIRA SEMPRE SE RELACIONA COM UMA CHAVE PRIMARIA--
  
  --INSERINDO INFORMAÇÕES NA TABELA--
  INSERT INTO clientestabela --INSERT INTO É UM COMANDO PARA INSERIR DADOS NA TABELA--
  (id_cliente,
   nome_cliente,
   informacoes_de_contato,
   Endereco_Cliente)
   VALUES
   ('1', 'Ana Silva', 'ana.silva@email.com', 'Rua Flores - Casa 1'); --DADOS QUE SERÃO INSERIDOS NA TABELA--
   
   SELECT * FROM clientestabela --VERIFICANDO SE AS INFORMAÇÕES FORAM CRIADAS NA TABELA--clientestabela
   
  -- INSERINDO DIVERSAS INFORMAÇÕES NA TABELA--
  INSERT INTO clientestabela 
  (id_cliente,
   nome_cliente,
   informacoes_de_contato,
   Endereco_Cliente)
   VALUES
   ('2', 'João Santos', 'joao.santos@provedor.com', 'Rua dos Pinheiros, 25'),
   ('3', 'Maria Fernandes', 'maria.fernandes@email.com', 'Rua Santo Antonio, 10'),
   ('4', 'Carlos Pereira', 'carlos.pereira@email.com', 'Avenida Rio, 67');
   
   SELECT * FROM clientestabela --VERIFICANDO SE AS INFORMAÇÕES FORAM CRIADAS NA TABELA
  
  -- INSERINDO DIVERSAS INFORMAÇÕES NA TABELA--
  INSERT INTO clientestabela 
  (id_cliente,
   nome_cliente,
   informacoes_de_contato,
   Endereco_Cliente)
   VALUES
('5', 'Patricia Lima', 'patricia.lima@email.com', 'Rua das Flores, 123'),
('6', 'Rodrigo Almeida', 'rodrigo.almeida@email.com', 'Avenida Central, 456'),
('7', 'AndrÃ© Oliveira', 'andre.oliveira@email.com', 'Travessa do Sol, 789'),
('8', 'Isabela Rodrigues', 'isabela.rodrigues@email.com', 'Rua da Paz, 321'),
('9', 'Ricardo Sousa', 'ricardo.sousa@email.com', 'Alameda dos Sonhos, 654'),
('10', 'Luana Gomes', 'luana.gomes@email.com', 'Praceta das Estrelas, 987'),
('11', 'Juliano Costa', 'juliano.costa@email.com', 'Av. Principal, 234'),
('12', 'Sandra Ferreira', 'sandra.ferreira@email.com', 'Rua da Liberdade, 567'),
('13', 'Roberto Barbosa', 'roberto.barbosa@email.com', 'Rua da Esquina, 432'),
('14', 'Alice Santos', 'alice.santos@email.com', 'Largo da Amizade, 765'),
('15', 'Gustavo Lima', 'gustavo.lima@email.com', 'Avenida das Árvores, 876'),
('16', 'Carla Silva', 'carla.silva@email.com', 'Travessa das Aves, 345'),
('17', 'Daniel Oliveira', 'daniel.oliveira@email.com', 'Alameda dos Bosques, 678'),
('18', 'Luciana Almeida', 'luciana.almeida@email.com', 'Rua das Colinas, 123'),
('19', 'Fernando Pereira', 'fernando.pereira@email.com', 'Avenida das Ondas, 987'),
('20', 'Marina Lima', 'marina.lima@email.com', 'Praceta dos Girassois, 456'),
('21', 'Lucas Rodrigues', 'lucas.rodrigues@email.com', 'Rua das Montanhas, 321'),
('22', 'Adriana Sousa', 'adriana.sousa@email.com', 'Travessa dos Rios, 654'),
('23', 'Eduardo Gomes', 'eduardo.gomes@email.com', 'Avenida das Pedras, 789'),
('24', 'Marcia Costa', 'marcia.costa@email.com', 'Largo das Praias, 234'),
('25', 'Jose Silva', 'jose.silva@email.com', 'Av. dos Ventos, 432'),
('26', 'Beatriz Alves', 'beatriz.alves@email.com', 'Rua dos Coqueiros, 765'),
('27', 'Andre Santos', 'andre.santos@email.com', 'Avenida dos Lagos, 876'),
('28', 'Carolina Lima', 'carolina.lima@email.com', 'Travessa das Neves, 345'),
('29', 'Fabio Rodrigues', 'fabio.rodrigues@email.com', 'Alameda dos Campos, 678'),
('30', 'Larissa Pereira', 'larissa.pereira@email.com', 'Rua dos Bosques, 123');

SELECT * FROM clientestabela --VERIFICANDO SE AS INFORMAÇÕES FORAM CRIADAS NA TABELA

 -- INSERINDO DIVERSAS INFORMAÇÕES NA TABELA--
  INSERT INTO tabelaprodutos
  (id_produto,
   nome_do_produto,
   descrição,
   categoria,
   preco_de_compra,
   unidade,
   fornecedor,
   data_de_inclusao)
   VALUES
('1','Smartphone X','Smartphone de última geração','1','699.99','Unidade','1','2023-08-01'),
('2','Notebook Pro','Notebook poderoso com tela HD','2','1199.99','Unidade','2','2023-08-02'),
('3','Tablet Lite','Tablet compacto e leve','3','299.99','Unidade','3','2023-08-03'),
('4','TV LED 55"','TV LED Full HD de 55 polegadas','4','599.99','Unidade','4','2023-08-04'),
('5','Câmera DSLR','Câmera digital DSLR com lente intercambiável','5','699.99','Unidade','5','2023-08-05'),
('6','Impressora Laser','Impressora laser de alta qualidade','6','349.99','Unidade','6','2023-08-06'),
('7','Mouse Óptico','Mouse óptico sem fio','7','19.99','Unidade','7','2023-08-07'),
('8','Teclado sem Fio','Teclado sem fio ergonômico','8','39.99','Unidade','8','2023-08-08'),
('9','Headphones Estéreo','Headphones estéreo com cancelamento de ruído','9','149.99','Unidade','9','2023-08-09'),
('10','Smartwatch','Smartwatch com monitor de frequência cardíaca','10','199.99','Unidade','10','2023-08-10'),
('11','Monitor 24"','Monitor LED Full HD de 24 polegadas','11','149.99','Unidade','11','2023-08-11'),
('12','HD Externo 1TB','HD Externo portátil de 1TB','12','79.99','Unidade','12','2023-08-12'),
('13','Drone DJI','Drone DJI com câmera 4K','13','799.99','Unidade','13','2023-08-13'),
('14','Console de Jogos','Console de jogos de última geração','14','299.99','Unidade','14','2023-08-14'),
('15','Fones de Ouvido Bluetooth','Fones de ouvido Bluetooth com estojo de carregamento','15','59.99','Unidade','15','2023-08-15'),
('16','Projetor HD','Projetor HD de alta definição','16','499.99','Unidade','16','2023-08-16'),
('17','Impressora Multifuncional','Impressora multifuncional com scanner','6','249.99','Unidade','6','2023-08-17'),
('18','Notebook Ultrafino','Notebook ultrafino com SSD rápido','2','999.99','Unidade','2','2023-08-18'),
('19','Mouse Gamer','Mouse gamer com iluminação RGB','7','49.99','Unidade','7','2023-08-19'),
('20','Câmera de Ação','Câmera de ação à prova d''água','5','129.99','Unidade','5','2023-08-20'),
('21','Tablet Profissional','Tablet profissional para designers','3','499.99','Unidade','3','2023-08-21'),
('22','Monitor Curvo','Monitor LED curvo de 32 polegadas','11','299.99','Unidade','11','2023-08-22'),
('23','Teclado Mecânico','Teclado mecânico para jogos','8','89.99','Unidade','8','2023-08-23'),
('24','Console Portátil','Console de jogos portátil','14','199.99','Unidade','14','2023-08-24'),
('25','HD Externo 2TB','HD Externo portátil de 2TB','12','109.99','Unidade','12','2023-08-25'),
('26','Kit de Caixas de Som','Kit de caixas de som estéreo','17','29.99','Unidade','17','2023-08-26'),
('27','Câmera de Segurança','Câmera de segurança com visão noturna','18','79.99','Unidade','18','2023-08-27'),
('28','Projetor Mini','Projetor mini portátil','16','199.99','Unidade','16','2023-08-28'),
('29','Impressora a Jato de Tinta','Impressora a jato de tinta colorida','6','89.99','Unidade','6','2023-08-29'),
('30','Servidor de Rede','Servidor de rede empresarial','19','799.99','Unidade','19','2023-08-30'),
('31','Smartphone Y','Smartphone de última geração','1','699.99','Unidade','1','2022-08-01'),
('32','Notebook Avançado','Notebook poderoso com tela Full HD','2','1299.99','Unidade','2','2022-08-02'),
('33','Tablet Pro','Tablet profissional com caneta stylus','3','399.99','Unidade','3','2022-08-03'),
('34','TV OLED 65"','TV OLED 4K de 65 polegadas','4','899.99','Unidade','4','2022-08-04'),
('35','Câmera Mirrorless','Câmera digital mirrorless de alta qualidade','5','799.99','Unidade','5','2022-08-05'),
('36','Impressora Jato de Tinta','Impressora jato de tinta colorida','6','299.99','Unidade','6','2022-08-06'),
('37','Mouse Bluetooth','Mouse Bluetooth ergonômico','7','29.99','Unidade','7','2022-08-07'),
('38','Teclado Mecânico RGB','Teclado mecânico RGB para gamers','8','59.99','Unidade','8','2022-08-08'),
('39','Fones de Ouvido Sem Fio','Fones de ouvido sem fio com cancelamento de ruído','9','169.99','Unidade','9','2022-08-09'),
('40','Smartwatch Pro','Smartwatch com GPS e monitor de saúde','10','249.99','Unidade','10','2022-08-10'),
('41','Monitor 27"','Monitor LED Quad HD de 27 polegadas','11','199.99','Unidade','11','2022-08-11'),
('42','HD Externo 4TB','HD Externo portátil de 4TB','12','129.99','Unidade','12','2022-08-12'),
('43','Drone DJI Pro','Drone DJI com câmera 8K','13','1199.99','Unidade','13','2022-08-13'),
('44','Console de Jogos Elite','Console de jogos de elite com VR','14','599.99','Unidade','14','2022-08-14'),
('45','Fones de Ouvido com Cancelamento de Ruído','Fones de ouvido com cancelamento de ruído ativo','15','89.99','Unidade','15','2022-08-15'),
('46','Projetor 4K','Projetor 4K de alta definição','16','799.99','Unidade','16','2022-08-16'),
('47','Impressora Laser Colorida','Impressora laser colorida de alta qualidade','6','349.99','Unidade','6','2022-08-17'),
('48','Notebook Ultrafino SSD','Notebook ultrafino com SSD rápido','2','1099.99','Unidade','2','2022-08-18'),
('49','Mouse Gamer RGB','Mouse gamer com iluminação RGB personalizável','7','69.99','Unidade','7','2022-08-19'),
('50','Câmera de Ação Pro','Câmera de ação 4K à prova dágua','5','149.99','Unidade','5','2022-08-20'),
('51','Tablet Profissional','Tablet profissional para designers e artistas','3','449.99','Unidade','3','2021-08-21'),
('52','Monitor Curvo 34"','Monitor LED curvo ultra-amplo de 34 polegadas','11','399.99','Unidade','11','2021-08-22'),
('53','Teclado Mecânico Retroiluminado','Teclado mecânico com retroiluminação','8','79.99','Unidade','8','2021-08-23'),
('54','Console Portátil Clássico','Console portátil com jogos clássicos','14','149.99','Unidade','14','2021-08-24'),
('55','HD Externo 5TB','HD Externo portátil de 5TB','12','149.99','Unidade','12','2021-08-25'),
('56','Kit de Caixas de Som Bluetooth','Kit de caixas de som Bluetooth estéreo','17','49.99','Unidade','17','2021-08-26'),
('57','Câmera de Segurança HD','Câmera de segurança HD com gravação em nuvem','18','99.99','Unidade','18','2021-08-27'),
('58','Projetor Portátil','Projetor portátil de alta qualidade','16','249.99','Unidade','16','2021-08-28'),
('59','Impressora a Laser Monocromática','Impressora a laser monocromática de alta velocidade','6','169.99','Unidade','6','2021-08-29'),
('60','Servidor de Rede Empresarial','Servidor de rede empresarial com suporte 24/7','19','1999.99','Unidade','19','2021-08-30');

SELECT * FROM tabelaprodutos ----VERIFICANDO SE AS INFORMAÇÕES FORAM CRIADAS NA TABELA
--------------------------------------------------------------------------------
--INSERINDO LINHAS COM SELECT. CRIANDO UMA NOVA TABELA, COM OS PEDIDOS ACIMA DE 400,00. OS CLIENTES QUE FAZEM ESSE TIPO DE COMPRA, SÃO CONSIDERADOS PADRÃO OURO E GANHAM UM BRINDE--
CREATE TABLE tabelapedidosgold( --NOME DA TABELA--
  ID_pedido_gold INT PRIMARY KEY,
  Data_do_Pedido_gold DATE,
  Status_gold VARCHAR(50),
  Total_do_Pedido_gold DECIMAL(10, 2),
  Cliente_gold INT,
  Data_de_Envio_Estimada_gold DATE,
  FOREIGN KEY (cliente_gold) REFERENCES tabelaclentes(id_cliente)
  );
--COMANDO PARA INSERIR OS DADOS NA NOVA TABELA. VAMOS RETIRAR AS INFORMAÇÕES DA TABELA ANTIGA PARA COLOCAR NA NOVA.
INSERT INTO tabelapedidosgold
(id_pedido_gold,
data_do_pedido_gold,
status_gold,
total_do_pedido_gold,
cliente_gold,
data_de_envio_estimada_gold)
SELECT
id,
data_do_pedido,
status,
total_do_pedido,
cliente,
data_de_envio_estimada
FROM tabelapedidos
WHERE total_do_pedido >= 400;

-- VERIFICANDO SE A TABELA DEU CERTO --
SELECT * FROM tabelapedidosgold

-- MÃO NA MASSA: REGISTRO DE NOVOS FUNCIONARIOS --
-- CRIANDO UMA NOVA TABELA CHAMADA tabelafuncionarios E INSERINDO DADOS NELA --
CREATE TABLE tabelafuncionarios( --NOME DA TABELA--
  ID INT PRIMARY KEY,
  NOME VARCHAR(200),
  CARGO VARCHAR(50),
  DEPARTAMENTO VARCHAR(50),
  DATA_DE_CONTRATACAO DATE,
  SALARIO DECIMAL(10,2)
  );
-- INSERINDO DADOS NA TABELA FUNCIONARIOS --
INSERT INTO tabelafuncionarios
  (id,
   nome,
   cargo,
   departamento,
   data_de_contratacao,
   salario)
   VALUES
('32D','João Silva','Desenvolvedor de Software','TI','2023-10-24','6000.00');
--VERIFICANDO O RESULTADO DA NOVA TABELA FUNCIONARIOS--
SELECT*FROM tabelafuncionarios;
-------------------------------------------------------------------
--ATUALIZANDO A TABELA DE PEDIDOS--
UPDATE tabelapedidos SET status = 'Enviado' WHERE status = 'Processando'; --Usando o termo SET para definir o que queremos alterar na tabela. Ou seja, na coluna STATUS queremos trocar para ENVIADO onde estiver PROCESSANDO.

SELECT * FROM tabelapedidos; -- Verificando se houve as alterações que pedimos.

--ALTERANDO O E-MAIL E ENDEREÇO DE UM CLIENTE--
UPDATE clientestabela SET informacoes_de_contato = 'j.santos@email.com',
endereco_cliente = 'Rua dos Paralelepipedos, 30'
WHERE id_cliente = 2;

SELECT * FROM clientestabela; --Verificando se a alteração deu certo e deu.

-- APAGANDO UMA LINHA DA TABELA --
DELETE FROM tabelafornecedores WHERE país_de_origem = 'Turquia';

SELECT * FROM tabelafornecedores; -- VERIFICANDO SE O DELETE DEU CERTO-- 

--APAGANDO TODOS OS FORNECEDORES COM O ID MAIOR QUE 35--
DELETE FROM tabelafornecedores WHERE ID > 35;

SELECT * FROM tabelafornecedores; -- VERIFICANDO SE O DELETE DEU CERTO-- 

-- EXERCICIOS -- 

-- 1) Crie uma tabela chamada funcionarios com as seguintes colunas: id (int, chave primária), nome (varchar(100)), departamento (varchar(100)) e salario (float). Em seguida, insira os seguintes registros de funcionários na tabela:
-- ID: 1, Nome: Heitor Vieira, Departamento: Financeiro, Salário: 4959.22
--ID: 2, Nome: Daniel Campos, Departamento: Vendas, Salário: 3884.44
--ID: 3, Nome: Luiza Dias, Departamento: TI, Salário: 8205.78
--ID: 4, Nome: Davi Lucas Moraes, Departamento: Financeiro, Salário: 8437.02
--ID: 5, Nome: Pietro Cavalcanti, Departamento: TI, Salário: 4946.88
--ID: 6, Nome: Evelyn da Mata, Departamento: Vendas, Salário: 5278.88
--ID: 7, Nome: Isabella Rocha, Departamento: Marketing, Salário: 4006.03
--ID: 8, Nome: Sra. Manuela Azevedo, Departamento: Vendas, Salário: 6101.88
--ID: 9, Nome: Brenda Cardoso, Departamento: TI, Salário: 8853.34
--ID: 10, Nome: Danilo Souza, Departamento: TI, Salário: 8242.14

CREATE TABLE funcionariostabela (   
  ID INT PRIMARY KEY,   
  Nome_Funcionario VARCHAR (100),   
  Departamento VARCHAR (100),
  Salario FLOAT
  );
  
  INSERT INTO funcionariostabela
  (id,
   nome_funcionario,
   departamento,
   salario)
   VALUES
   ('1', 'Heitor Vieira', 'Financeiro', '4959.22'),
   ('2', 'Daniel Campos', 'Vendas', '3884.44'),
   ('3', 'Luiza Dias', 'TI', '8205.78'),
   ('4', 'Davi Lucas Moraes', 'Financeiro', '8437.02'),
   ('5', 'Pietro Cavalcanti', 'TI', '4946.88'),
   ('6', 'Evelyn da Mata', 'Vendas', '5278.88'),
   ('7', 'Isabella Rocha', 'Marketing', '4006.03'),
   ('8', 'Sra. Manuela Azevedo', 'Vendas', '6101.88'),
   ('9', 'Brenda Cardoso', 'TI', '8853.34'),
   ('10', 'Danilo Souza', 'TI', '8242.14');

SELECT * FROM funcionariostabela;
--------------------------------------------------------------------------
-- 2) Selecione todos os campos de todos os registros na tabela funcionarios.
SELECT * FROM funcionariostabela;
--------------------------------------------------------------------------
-- 3) Na tabela funcionarios, selecione os nomes dos funcionários que trabalham no departamento de "Vendas".
SELECT nome_funcionario FROM funcionariostabela WHERE departamento = 'Vendas';
--------------------------------------------------------------------------
-- 4) Selecione os funcionários da tabela funcionarios cujo salário seja maior que 5000.
SELECT * FROM funcionariostabela WHERE salario > '5000.00';
--------------------------------------------------------------------------
-- 5) Na tabela funcionarios, selecione todos os departamentos distintos.
SELECT DISTINCT departamento FROM funcionariostabela;
--------------------------------------------------------------------------
-- 6) Atualize o salário dos funcionários do departamento de "TI" para 7500 na tabela funcionarios. 
UPDATE funcionariostabela SET salario = '7500.00' where departamento = 'TI';
SELECT * FROM funcionariostabela; -- VERIFICANDO SE ESTÁ OK -- 
--------------------------------------------------------------------------
-- 7) Delete da tabela funcionarios todos os registros de funcionários que ganham menos de 4000.
DELETE FROm funcionariostabela WHERE salario < '4000.00';
--------------------------------------------------------------------------
-- 8) Selecione os nomes e salários dos funcionários que trabalham no departamento de "Vendas" e cujo salário seja maior ou igual a 6000.
SELECT nome_funcionario, salario from funcionariostabela WHERE departamento = 'Vendas' AND salario >= '6000.00';
--------------------------------------------------------------------------
-- 9) Crie uma tabela chamada projetos com as colunas: id_projeto (int, chave primária), nome_projeto (varchar(100)), id_gerente (int, referência a id na tabela funcionarios). Insira 3 registros na tabela projetos e, em seguida, selecione todos os projetos cujo id_gerente seja igual a 2.
CREATE TABLE projetos (   
  ID_Projeto INT PRIMARY KEY,   
  Nome_Projeto VARCHAR (100),   
  ID_Gerente INT,
  FOREIGN KEY (ID_Gerente) REFERENCES funcionariostabela(id)
  );
  
  INSERT INTO projetos
  (id_projeto,
   nome_projeto,
   id_gerente)
   VALUES
  ('1', 'PROJETO RH','3');
  ('2', 'PROJETO VENDAS','8');  
  ('3', 'PROJETO TI','9');
   
  select * FROM projetos WHERE id_gerente = '2';
  ---------------------------------------------------------------------
  -- 10) Remova a tabela funcionarios do banco de dados.
  DROP TABLE funcionariostabela;
  ---------------------------------------------------------------------
  -- PROJETO FINAL --
  -- Imagine que você seja o responsável por criar e gerenciar um banco de dados para uma escola. Esse banco de dados ajudará a organizar informações importantes sobre alunos, professores, disciplinas, turmas e notas.
  -- Sua missão é dar os primeiros passos para configurar e usar esse banco de dados. 
  -- 1 - Criar tabelas: O primeiro passo é definir a estrutura do banco de dados, criando tabelas para armazenar informações específicas. Utilizaremos SQL (Structured Query Language) para criar as tabelas. Aqui estão os dados que você pode utilizar:
  -- * Tabela "Alunos" armazenará informações sobre os estudantes, como:
  -- ID do Aluno: Um identificador único para cada aluno, Nome do Aluno: O nome completo do aluno, Data de Nascimento: A data de nascimento do aluno, Gênero: O gênero do aluno (masculino, feminino, outros), Endereço: O endereço do aluno, Telefone de Contato: O número de telefone de contato do aluno, E-mail: O endereço de e-mail do aluno. 
  
  -- * Tabela "Professores" conterá detalhes sobre os professores da escola: ID do Professor: Um identificador único para cada professor, Nome do Professor: O nome completo do professor, Data de Nascimento: A data de nascimento do professor, Gênero: O gênero do professor, Telefone de Contato: O número de telefone de contato do professor, E-mail: O endereço de e-mail do professor.  
  
  -- * Tabela "Disciplinas" manterá registros das matérias oferecidas, incluindo: ID da Disciplina: Um identificador único para cada disciplina, Nome da Disciplina: O nome da disciplina, Descrição: Uma descrição da disciplina, Carga Horária: A carga horária da disciplina, ID do Professor: Uma chave estrangeira que faz referência ao professor que leciona a disciplina. 
  
  -- * Tabela "Turmas" será usada para registrar turmas específicas: ID da Turma: Um identificador único para cada turma, Nome da Turma: O nome ou código da turma, Ano Letivo: O ano letivo da turma, ID do Professor Orientador: Uma chave estrangeira que faz referência ao professor que orienta a turma. 
  
  -- * Tabela "Turma_Disciplinas" armazenara os dados das associações entre turmas e disciplinas: ID da Turma: Uma lista de chaves estrangeiras que fazem referência as turmas existentes, ID das Disciplinas: Uma lista de chaves estrangeiras que fazem referência às disciplinas ministradas na turma. OBS.: Os dois campos juntos formam a chave primaria da tabela

  -- * Tabela "Turma_Alunos" será usada para registrar os dados das associações entre turmas e alunos: ID da Turma: Uma lista de chaves estrangeiras que fazem referência as turmas existentes, ID dos Alunos: Uma lista de chaves estrangeiras que fazem referência aos alunos matriculados na turma. OBS.: Os dois campos juntos formam a chave primaria da tabela

  -- * Tabela "Notas" guardará as notas dos alunos em diferentes disciplinas: ID da Nota: Um identificador único para cada nota, ID do Aluno: Uma chave estrangeira que faz referência ao aluno, ID da Disciplina: Uma chave estrangeira que faz referência à disciplina, Valor da Nota: A nota atribuída ao aluno na disciplina, Data da Avaliação: A data em que a avaliação foi realizada.
  
  -- CRIACAO TABELA ALUNOS --
  CREATE TABLE alunos (   
  ID_Aluno INT PRIMARY KEY,   
  Nome_Aluno VARCHAR (200),   
  Data_Nascimento INT,
  Genero VARCHAR (15),
  Endereco VARCHAR (200),
  Telefone_Contato VARCHAR (20),
  Email VARCHAR (250)
  );
  
  -- CRIACAO TABELA PROFESSORES -- 
  CREATE TABLE professores (
  ID_Professor INT PRIMARY KEY,   
  Nome_Professor VARCHAR (200),   
  Data_Nascimento INT,
  Genero VARCHAR (15),
  Telefone_Contato VARCHAR (20),
  Email VARCHAR (250)
  );
  
  -- CRIACAO TABELA DISCIPLINAS -- 
  CREATE TABLE disciplinas (
  ID_Disciplina INT PRIMARY KEY,   
  Nome_Disciplina VARCHAR (200),   
  Descricao TEXT,
  Carga_Horaria INT,
  Id_Professor INT,
  FOREIGN KEY (ID_Professor) REFERENCES professores(id_professor)
  );
  
  -- CRIACAO TABELA TURMAS -- 
  CREATE TABLE turmas (
  ID_Turma INT PRIMARY KEY,   
  Nome_Turma VARCHAR (200),   
  Ano_Letivo INT,
  ID_Professor_Orientador INT,
  FOREIGN KEY (ID_Professor_Orientador) REFERENCES professores(id_professor)
  );

 -- CRIACAO  TABELA TURMA DISCIPLINAS -- 
 CREATE TABLE turma_disciplinas (
 ID_Turma INT,
 ID_Disciplina INT,
 PRIMARY KEY (id_turma, id_disciplina),
 FOREIGN KEY (id_turma) REFERENCES turmas(id_turma),
 FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id_disciplina)
);
  
 -- CRIACAO TABELA TURMA ALUNOS -- 
 CREATE TABLE Turma_Alunos (
 id_turma INT,
 id_aluno INT,
 PRIMARY KEY (id_turma, id_aluno),
 FOREIGN KEY (id_turma) REFERENCES turmas(id_turma),
 FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno)
);

-- CRIANDO A TABELA NOTAS -- 
CREATE TABLE Notas (
ID_Nota INT PRIMARY KEY,
ID_Aluno INT,
ID_Disciplina INT,
Nota DECIMAL(5, 2),
Data_Avaliacao DATE,
FOREIGN KEY (id_aluno) REFERENCES alunos(id_aluno),
FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id_disciplina)
);

-- INSERINDO DADOS DAS TABELAS -- 
INSERT INTO 'Alunos' ('ID_Aluno','Nome_Aluno','Data_Nascimento','Genero','Endereco','Telefone_Contato','Email') VALUES 
 ('1','João Silva','2005-03-15','Masculino','Rua das Flores, 123','(11) 9876-5432','joao@email.com'), 
 ('2','Maria Santos','2006-06-20','Feminino','Avenida Principal, 456','(11) 8765-4321','maria@email.com'), 
 ('3','Pedro Soares','2004-01-10','Masculino','Rua Central, 789','(11) 7654-3210','pedro@email.com'), 
 ('4','Ana Lima','2005-04-02','Feminino','Rua da Escola, 56','(11) 8765-4321','ana@email.com'), 
 ('5','Mariana Fernandes','2005-08-12','Feminino','Avenida da Paz, 789','(11) 5678-1234','mariana@email.com'), 
 ('6','Lucas Costa','2003-11-25','Masculino','Rua Principal, 456','(11) 1234-5678','lucas@email.com'), 
 ('7','Isabela Santos','2006-09-10','Feminino','Rua da Amizade, 789','(11) 9876-5432','isabela@email.com'), 
 ('8','Gustavo Pereira','2004-05-15','Masculino','Avenida dos Sonhos, 123','(11) 7654-3210','gustavo@email.com'), 
 ('9','Carolina Oliveira','2005-02-20','Feminino','Rua da Alegria, 456','(11) 8765-4321','carolina@email.com'), 
 ('10','Daniel Silva','2003-10-05','Masculino','Avenida Central, 789','(11) 1234-5678','daniel@email.com'), 
 ('11','Larissa Souza','2004-12-08','Feminino','Rua da Felicidade, 123','(11) 9876-5432','larissa@email.com'), 
 ('12','Bruno Costa','2005-07-30','Masculino','Avenida Principal, 456','(11) 7654-3210','bruno@email.com'), 
 ('13','Camila Rodrigues','2006-03-22','Feminino','Rua das Estrelas, 789','(11) 8765-4321','camila@email.com'), 
 ('14','Rafael Fernandes','2004-11-18','Masculino','Avenida dos Sonhos, 123','(11) 1234-5678','rafael@email.com'), 
 ('15','Letícia Oliveira','2005-01-05','Feminino','Rua da Alegria, 456','(11) 9876-5432','leticia@email.com'), 
 ('16','Fernanda Lima','2004-02-12','Feminino','Rua da Esperança, 789','(11) 4567-8901','fernanda@email.com'), 
 ('17','Vinícius Santos','2003-07-28','Masculino','Avenida da Amizade, 123','(11) 8901-2345','vinicius@email.com'), 
 ('18','Juliana Pereira','2006-09-01','Feminino','Rua das Rosas, 789','(11) 3456-7890','juliana@email.com');
 
 INSERT INTO 'Professores' ('ID_Professor','Nome_Professor','Data_Nascimento','Genero','Telefone_Contato','Email') VALUES 
 ('1','Ana Oliveira','1980-05-25','Feminino','(11) 1234-5678','ana@email.com'), 
 ('2','Carlos Ferreira','1975-09-12','Masculino','(11) 2345-6789','carlos@email.com'), 
 ('3','Mariana Santos','1982-03-15','Feminino','(11) 3456-7890','mariana@email.com'), 
 ('4','Ricardo Silva','1978-08-20','Masculino','(11) 7890-1234','ricardo@email.com'), 
 ('5','Fernanda Lima','1985-01-30','Feminino','(11) 4567-8901','fernanda@email.com');
 
 INSERT INTO 'Disciplinas' ('ID_Disciplina','Nome_Disciplina','Descricao','Carga_Horaria','ID_Professor') VALUES 
 ('1','Matemática','Estudo de conceitos matemáticos avançados','60','1'), 
 ('2','História','História mundial e local','45','2'), 
 ('3','Física','Princípios fundamentais da física','60','1'), 
 ('4','Química','Estudo da química e suas aplicações','45','3'), 
 ('5','Inglês','Aulas de inglês para iniciantes','45','4'), 
 ('6','Artes','Exploração da criatividade artística','30','5');
 
 INSERT INTO 'Turmas' ('ID_Turma','Nome_Turma','Ano_Letivo','ID_Professor_Orientador') VALUES 
 ('1','Turma A','2023','1'), 
 ('2','Turma B','2023','2'), 
 ('3','Turma C','2023','3'), 
 ('4','Turma D','2023','4'), 
 ('5','Turma E','2023','5');
 
 INSERT INTO 'Turma_Disciplinas' ('ID_Turma','ID_Disciplina') VALUES 
 ('1','1'), 
 ('2','2'), 
 ('3','3'), 
 ('4','4'), 
 ('5','5'), 
 ('1','3'), 
 ('2','1'), 
 ('3','2');
 
 INSERT INTO 'Turma_Alunos' ('ID_Turma','ID_Aluno') VALUES 
 ('1','1'), 
 ('2','2'), 
 ('3','3'), 
 ('4','4'), 
 ('5','5'), 
 ('1','6'), 
 ('2','7'), 
 ('3','8'), 
 ('4','9'), 
 ('5','10');
 
 INSERT INTO 'Notas' (id_nota,id_aluno,id_disciplina,nota,data_avaliacao) VALUES 
(2,1,1,6.19,'07/07/2023'),
(3,1,2,7.18,'07/07/2023'),
(4,1,3,7.47,'07/07/2023'),
(5,1,4,7.46,'07/07/2023'),
(6,1,5,4.35,'07/07/2023'),
(7,1,6,4.43,'07/07/2023'),
(8,1,7,0.76,'07/07/2023'),
(9,1,8,9.22,'07/07/2023'),
(10,1,9,9.04,'07/07/2023'),
(11,1,10,3.28,'07/07/2023'),
(12,2,1,1.34,'07/09/2023'),
(13,2,2,3.1,'07/09/2023'),
(14,2,3,1.66,'07/09/2023'),
(15,2,4,0.03,'07/09/2023'),
(16,2,5,4.34,'07/09/2023'),
(17,2,6,4.02,'07/09/2023'),
(18,2,7,8.79,'07/09/2023'),
(19,2,8,1.17,'07/09/2023'),
(20,2,9,8.26,'07/09/2023'),
(21,2,10,3.41,'07/09/2023'),
(22,3,1,6.82,'07/27/2023'),
(23,3,2,8.21,'07/27/2023'),
(24,3,3,1.3,'07/27/2023'),
(25,3,4,4.01,'07/27/2023'),
(26,3,5,0.25,'07/27/2023'),
(27,3,6,6.63,'07/27/2023'),
(28,3,7,9.74,'07/27/2023'),
(29,3,8,3.77,'07/27/2023'),
(30,3,9,0.58,'07/27/2023'),
(31,3,10,8.52,'07/27/2023'),
(32,4,1,8.37,'08/08/2023'),
(33,4,2,0.26,'08/08/2023'),
(34,4,3,5.95,'08/08/2023'),
(35,4,4,6.98,'08/08/2023'),
(36,4,5,6.18,'08/08/2023'),
(37,4,6,4.79,'08/08/2023'),
(38,4,7,7.96,'08/08/2023'),
(39,4,8,0.62,'08/08/2023'),
(40,4,9,7.77,'08/08/2023'),
(41,4,10,5.81,'08/08/2023'),
(42,5,1,2.25,'08/15/2023'),
(43,5,2,5.82,'08/15/2023'),
(44,5,3,4.11,'08/15/2023'),
(45,5,4,7.99,'08/15/2023'),
(46,5,5,3.23,'08/15/2023'),
(47,5,6,8.09,'08/15/2023'),
(48,5,7,8.24,'08/15/2023'),
(49,5,8,3.33,'08/15/2023'),
(50,5,9,4.24,'08/15/2023'),
(51,5,10,0.11,'08/15/2023');

-- CONSULTAS --
-- 1: Executar consultas para verificar se os dados foram importados corretamente em todas as tabelas.
SELECT * FROM alunos;
SELECT * FROM professores;
SELECT * FROM disciplinas;
SELECT * FROM turmas;
SELECT * FROM turma_disciplinas;
SELECT * FROM Turma_Alunos;
SELECT * FROM Notas;

-- 2: Retorne as informações de todos os alunos ordenados pelo nome.
SELECT * FROM alunos order by nome_aluno ASC;

-- 3: Retornar a disciplina que possui a carga horaria maior que 40. 
SELECT * FROM disciplinas WHERE carga_horaria > 40;

-- 4: Buscar as notas que são maiores que 6 e menores que 8.
SELECT id_aluno, nota FROM Notas WHERE nota > '6' AND nota < '8';
