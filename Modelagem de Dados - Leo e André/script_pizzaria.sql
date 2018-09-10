-- Database diff generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler  version: 0.9.0
-- PostgreSQL version: 9.5

-- [ Diff summary ]
-- Dropped objects: 0
-- Created objects: 8
-- Changed objects: 0
-- Truncated tables: 0

SET search_path=public,pg_catalog,administrativo,cozinha;
-- ddl-end --


-- [ Created objects ] --
-- object: administrativo | type: SCHEMA --
-- DROP SCHEMA IF EXISTS administrativo CASCADE;
CREATE SCHEMA administrativo;
-- ddl-end --
ALTER SCHEMA administrativo OWNER TO postgres;
-- ddl-end --
COMMENT ON SCHEMA administrativo IS 'Esquema admiistrativo da pizzaria';
-- ddl-end --

-- object: administrativo.pizzaria | type: TABLE --
-- DROP TABLE IF EXISTS administrativo.pizzaria CASCADE;
CREATE TABLE administrativo.pizzaria(
	id serial NOT NULL,
	endereco varchar(100) NOT NULL,
	razao_social varchar(100) NOT NULL,
	nome_fantasia varchar(100) NOT NULL,
	telefone varchar(14) NOT NULL,
	CONSTRAINT pizzaria_pk PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON TABLE administrativo.pizzaria IS 'Tabela de pizzaria do sistema';
-- ddl-end --
COMMENT ON COLUMN administrativo.pizzaria.id IS 'Chave Primária da Tabela';
-- ddl-end --
COMMENT ON COLUMN administrativo.pizzaria.endereco IS 'Endereo da Pizzaria';
-- ddl-end --
COMMENT ON COLUMN administrativo.pizzaria.razao_social IS 'Razão Social da Pizzaria';
-- ddl-end --
COMMENT ON COLUMN administrativo.pizzaria.nome_fantasia IS 'Nome Fantasia da Pizzaria';
-- ddl-end --
COMMENT ON COLUMN administrativo.pizzaria.telefone IS 'Telefone da Empresa';
-- ddl-end --
ALTER TABLE administrativo.pizzaria OWNER TO postgres;
-- ddl-end --

-- object: cozinha | type: SCHEMA --
-- DROP SCHEMA IF EXISTS cozinha CASCADE;
CREATE SCHEMA cozinha;
-- ddl-end --
ALTER SCHEMA cozinha OWNER TO postgres;
-- ddl-end --
COMMENT ON SCHEMA cozinha IS 'Esquema da Cozinha';
-- ddl-end --

-- object: cozinha.ingrediente | type: TABLE --
-- DROP TABLE IF EXISTS cozinha.ingrediente CASCADE;
CREATE TABLE cozinha.ingrediente(
	id serial NOT NULL,
	nome varchar(100) NOT NULL,
	CONSTRAINT ingrediente_pk PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON TABLE cozinha.ingrediente IS 'Tabela de Ingredientes da Pizza';
-- ddl-end --
COMMENT ON COLUMN cozinha.ingrediente.id IS 'Chave Primária da Tabela';
-- ddl-end --
COMMENT ON COLUMN cozinha.ingrediente.nome IS 'Nome do Ingrediente';
-- ddl-end --
ALTER TABLE cozinha.ingrediente OWNER TO postgres;
-- ddl-end --

-- object: cozinha.pizza | type: TABLE --
-- DROP TABLE IF EXISTS cozinha.pizza CASCADE;
CREATE TABLE cozinha.pizza(
	id serial NOT NULL,
	nome varchar(100) NOT NULL,
	preco numeric(10,2) NOT NULL,
	CONSTRAINT pizza_pk PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON TABLE cozinha.pizza IS 'Tabela Pizza';
-- ddl-end --
COMMENT ON COLUMN cozinha.pizza.id IS 'Chave Primária';
-- ddl-end --
COMMENT ON COLUMN cozinha.pizza.nome IS 'Nome da Pizza';
-- ddl-end --
COMMENT ON COLUMN cozinha.pizza.preco IS 'Preço da Pizza';
-- ddl-end --
ALTER TABLE cozinha.pizza OWNER TO postgres;
-- ddl-end --

-- object: cozinha.pizza_ingrediente | type: TABLE --
-- DROP TABLE IF EXISTS cozinha.pizza_ingrediente CASCADE;
CREATE TABLE cozinha.pizza_ingrediente(
	id_pizza integer NOT NULL,
	id_ingrediente integer NOT NULL,
	CONSTRAINT pk_pizzaingrediente_pizza_ingrediente PRIMARY KEY (id_pizza,id_ingrediente)

);
-- ddl-end --
COMMENT ON TABLE cozinha.pizza_ingrediente IS 'Tabela de ingredientes da pizza';
-- ddl-end --
COMMENT ON COLUMN cozinha.pizza_ingrediente.id_pizza IS 'Chave por pizza';
-- ddl-end --
COMMENT ON COLUMN cozinha.pizza_ingrediente.id_ingrediente IS 'Chave por ingrediente';
-- ddl-end --
COMMENT ON CONSTRAINT pk_pizzaingrediente_pizza_ingrediente ON cozinha.pizza_ingrediente  IS 'Chave composta da tabela';
-- ddl-end --
ALTER TABLE cozinha.pizza_ingrediente OWNER TO postgres;
-- ddl-end --



-- [ Created foreign keys ] --
-- object: fk_pizzaingrediente_pizza | type: CONSTRAINT --
-- ALTER TABLE cozinha.pizza_ingrediente DROP CONSTRAINT IF EXISTS fk_pizzaingrediente_pizza CASCADE;
ALTER TABLE cozinha.pizza_ingrediente ADD CONSTRAINT fk_pizzaingrediente_pizza FOREIGN KEY (id_pizza)
REFERENCES cozinha.pizza (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

-- object: fk_pizzaingrediente_ingrediente | type: CONSTRAINT --
-- ALTER TABLE cozinha.pizza_ingrediente DROP CONSTRAINT IF EXISTS fk_pizzaingrediente_ingrediente CASCADE;
ALTER TABLE cozinha.pizza_ingrediente ADD CONSTRAINT fk_pizzaingrediente_ingrediente FOREIGN KEY (id_ingrediente)
REFERENCES cozinha.ingrediente (id) MATCH FULL
ON DELETE NO ACTION ON UPDATE NO ACTION;
-- ddl-end --

