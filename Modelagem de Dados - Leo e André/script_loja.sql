-- Database diff generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler  version: 0.9.0
-- PostgreSQL version: 9.5

-- [ Diff summary ]
-- Dropped objects: 0
-- Created objects: 10
-- Changed objects: 0
-- Truncated tables: 0

SET search_path=public,pg_catalog,administrativo,veiculos,estoque;
-- ddl-end --


-- [ Created objects ] --
-- object: administrativo | type: SCHEMA --
-- DROP SCHEMA IF EXISTS administrativo CASCADE;
CREATE SCHEMA administrativo;
-- ddl-end --
ALTER SCHEMA administrativo OWNER TO postgres;
-- ddl-end --

-- object: administrativo.loja_veiculos | type: TABLE --
-- DROP TABLE IF EXISTS administrativo.loja_veiculos CASCADE;
CREATE TABLE administrativo.loja_veiculos(
	id serial NOT NULL,
	nome_fantasia varchar(50) NOT NULL,
	razao_social varchar(50) NOT NULL,
	endereco varchar(50),
	telefone varchar(14),
	CONSTRAINT loja_veiculos_pk PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON COLUMN administrativo.loja_veiculos.id IS 'Chave Primária';
-- ddl-end --
COMMENT ON COLUMN administrativo.loja_veiculos.razao_social IS 'Razão Social da Empresa';
-- ddl-end --
COMMENT ON COLUMN administrativo.loja_veiculos.endereco IS 'Endereço da Loja';
-- ddl-end --
ALTER TABLE administrativo.loja_veiculos OWNER TO postgres;
-- ddl-end --

-- object: veiculos | type: SCHEMA --
-- DROP SCHEMA IF EXISTS veiculos CASCADE;
CREATE SCHEMA veiculos;
-- ddl-end --
ALTER SCHEMA veiculos OWNER TO postgres;
-- ddl-end --

-- object: veiculos.marca | type: TABLE --
-- DROP TABLE IF EXISTS veiculos.marca CASCADE;
CREATE TABLE veiculos.marca(
	id serial NOT NULL,
	nome varchar(50) NOT NULL,
	descricao varchar(50),
	id_marca integer NOT NULL,
	CONSTRAINT marca_pk PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON COLUMN veiculos.marca.id IS 'Chave Primária da tabela';
-- ddl-end --
COMMENT ON COLUMN veiculos.marca.nome IS 'Nome da Marca';
-- ddl-end --
COMMENT ON COLUMN veiculos.marca.descricao IS 'Descrição da Marca';
-- ddl-end --
COMMENT ON COLUMN veiculos.marca.id_marca IS 'Chave Estrangeira';
-- ddl-end --
ALTER TABLE veiculos.marca OWNER TO postgres;
-- ddl-end --

-- object: veiculos.modelo | type: TABLE --
-- DROP TABLE IF EXISTS veiculos.modelo CASCADE;
CREATE TABLE veiculos.modelo(
	id serial NOT NULL,
	nome varchar(50) NOT NULL,
	descricao varchar(100),
	id_modelo integer NOT NULL,
	CONSTRAINT modelo_pk PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON COLUMN veiculos.modelo.id IS 'Chave Primária';
-- ddl-end --
COMMENT ON COLUMN veiculos.modelo.nome IS 'Nome do Modelo';
-- ddl-end --
COMMENT ON COLUMN veiculos.modelo.descricao IS 'Descrição do Modelo';
-- ddl-end --
COMMENT ON COLUMN veiculos.modelo.id_modelo IS 'Chave Estrangeira';
-- ddl-end --
ALTER TABLE veiculos.modelo OWNER TO postgres;
-- ddl-end --

-- object: estoque | type: SCHEMA --
-- DROP SCHEMA IF EXISTS estoque CASCADE;
CREATE SCHEMA estoque;
-- ddl-end --
ALTER SCHEMA estoque OWNER TO postgres;
-- ddl-end --

-- object: estoque.veiculo | type: TABLE --
-- DROP TABLE IF EXISTS estoque.veiculo CASCADE;
CREATE TABLE estoque.veiculo(
	id serial NOT NULL,
	nome varchar(50) NOT NULL,
	cor varchar(50) NOT NULL,
	combustivel varchar(50) NOT NULL,
	id_modelo integer NOT NULL,
	id_loja integer NOT NULL,
	CONSTRAINT veiculo_pk PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON COLUMN estoque.veiculo.id IS 'Chave Primaria';
-- ddl-end --
COMMENT ON COLUMN estoque.veiculo.nome IS 'Nome do Veiculo';
-- ddl-end --
COMMENT ON COLUMN estoque.veiculo.cor IS 'Cor do Veiculo';
-- ddl-end --
COMMENT ON COLUMN estoque.veiculo.combustivel IS 'Tipo de Combustível';
-- ddl-end --
COMMENT ON COLUMN estoque.veiculo.id_modelo IS 'Chave Estrangeira';
-- ddl-end --
ALTER TABLE estoque.veiculo OWNER TO postgres;
-- ddl-end --



-- [ Created foreign keys ] --
-- object: fk_modelo_marca | type: CONSTRAINT --
-- ALTER TABLE veiculos.modelo DROP CONSTRAINT IF EXISTS fk_modelo_marca CASCADE;
ALTER TABLE veiculos.modelo ADD CONSTRAINT fk_modelo_marca FOREIGN KEY (id_modelo)
REFERENCES veiculos.marca (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: fk_veiculo_modelo | type: CONSTRAINT --
-- ALTER TABLE estoque.veiculo DROP CONSTRAINT IF EXISTS fk_veiculo_modelo CASCADE;
ALTER TABLE estoque.veiculo ADD CONSTRAINT fk_veiculo_modelo FOREIGN KEY (id_modelo)
REFERENCES veiculos.modelo (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: fk_veiculo_loja | type: CONSTRAINT --
-- ALTER TABLE estoque.veiculo DROP CONSTRAINT IF EXISTS fk_veiculo_loja CASCADE;
ALTER TABLE estoque.veiculo ADD CONSTRAINT fk_veiculo_loja FOREIGN KEY (id_loja)
REFERENCES administrativo.loja_veiculos (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

