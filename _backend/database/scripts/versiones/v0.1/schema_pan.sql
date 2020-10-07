-- DROP SCHEMA pan;

CREATE SCHEMA pan AUTHORIZATION postgres;

-- pan.deta_entrada_panol definition

-- Drop table

-- DROP TABLE deta_entrada_panol;

CREATE TABLE deta_entrada_panol (
	enpa_id int4 NOT NULL,
	herr_id int4 NOT NULL
);


-- pan.deta_entrada_panol foreign keys

ALTER TABLE pan.deta_entrada_panol ADD CONSTRAINT deta_entrada_pano_herr_idl_fk FOREIGN KEY (herr_id) REFERENCES pan.herramientas(herr_id);
ALTER TABLE pan.deta_entrada_panol ADD CONSTRAINT deta_entrada_panol_entr_panol_fk FOREIGN KEY (enpa_id) REFERENCES pan.entrada_panol(enpa_id);

-- pan.entrada_panol definition

-- Drop table

-- DROP TABLE entrada_panol;

CREATE TABLE entrada_panol (
	enpa_id serial NOT NULL,
	usuario_app varchar NOT NULL,
	destino varchar NOT NULL,
	empr_id int4 NOT NULL,
	fec_alta date NOT NULL DEFAULT now(),
	usuario varchar NOT NULL DEFAULT CURRENT_USER,
	pano_id int4 NOT NULL,
	observaciones varchar NULL,
	eliminado bool NOT NULL DEFAULT false,
	CONSTRAINT entrada_panol_pk PRIMARY KEY (enpa_id)
);


-- pan.entrada_panol foreign keys

ALTER TABLE pan.entrada_panol ADD CONSTRAINT entrada_panol_pano_id_fk FOREIGN KEY (pano_id) REFERENCES pan.panol(pano_id);

-- pan.herramientas definition

-- Drop table

-- DROP TABLE herramientas;

CREATE TABLE herramientas (
	herr_id serial NOT NULL,
	codigo varchar NOT NULL,
	marca varchar NOT NULL,
	modelo varchar NULL,
	tipo varchar NULL,
	descripcion varchar NULL,
	pano_id varchar NOT NULL,
	usuario_app varchar NOT NULL,
	usuario varchar NOT NULL DEFAULT CURRENT_USER,
	fec_alta date NOT NULL DEFAULT now(),
	empr_id int4 NOT NULL,
	eliminado bool NOT NULL DEFAULT false,
	CONSTRAINT herramientas_pk PRIMARY KEY (herr_id)
);

-- pan.panol definition

-- Drop table

-- DROP TABLE panol;

CREATE TABLE panol (
	pano_id serial NOT NULL,
	descripcion varchar NOT NULL,
	direccion varchar NULL,
	loca_id varchar NULL,
	prov_id varchar NULL,
	pais_id varchar NULL,
	lat varchar NULL,
	lng varchar NULL,
	empr_id int4 NOT NULL,
	usuario varchar NOT NULL DEFAULT CURRENT_USER,
	usuario_app varchar NOT NULL,
	eliminado bool NOT NULL DEFAULT false,
	fec_alta date NOT NULL DEFAULT now(),
	CONSTRAINT panol_pk PRIMARY KEY (pano_id)
);

-- pan.salida_panol definition

-- Drop table

-- DROP TABLE salida_panol;

CREATE TABLE salida_panol (
	sapa_id serial NOT NULL,
	usuario_app varchar NOT NULL,
	destino varchar NOT NULL,
	empr_id int4 NOT NULL,
	fec_alta date NOT NULL,
	usuario varchar NOT NULL,
	pano_id int4 NOT NULL,
	observaciones varchar NULL,
	eliminado bool NOT NULL DEFAULT false,
	CONSTRAINT salida_panol_pk PRIMARY KEY (sapa_id)
);


-- pan.salida_panol foreign keys

ALTER TABLE pan.salida_panol ADD CONSTRAINT salida_panol_pano_id_fk FOREIGN KEY (pano_id) REFERENCES pan.panol(pano_id);

-- pan.salida_panol definition

-- Drop table

-- DROP TABLE salida_panol;

CREATE TABLE salida_panol (
	sapa_id serial NOT NULL,
	usuario_app varchar NOT NULL,
	destino varchar NOT NULL,
	empr_id int4 NOT NULL,
	fec_alta date NOT NULL,
	usuario varchar NOT NULL,
	pano_id int4 NOT NULL,
	observaciones varchar NULL,
	eliminado bool NOT NULL DEFAULT false,
	CONSTRAINT salida_panol_pk PRIMARY KEY (sapa_id)
);


-- pan.salida_panol foreign keys

ALTER TABLE pan.salida_panol ADD CONSTRAINT salida_panol_pano_id_fk FOREIGN KEY (pano_id) REFERENCES pan.panol(pano_id);



