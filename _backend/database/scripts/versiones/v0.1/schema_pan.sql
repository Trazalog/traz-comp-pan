-- DROP SCHEMA pan;

CREATE SCHEMA pan AUTHORIZATION postgres;

-- pan.deta_entrada_panol definition

-- pan.newtable definition

-- Drop table

-- DROP TABLE newtable;

CREATE TABLE pan.newtable (
	traco_id serial NOT NULL DEFAULT nextval('pan.newtable_traco_id_seq'::regclass),
	coeq_id int4 NOT NULL,
	estan_id int4 NOT NULL,
	fila int4 NOT NULL,
	fecha timestamp(0) NOT NULL DEFAULT now(),
	fecha_entrega timestamp(0) NULL,
	ultimo_recibe varchar NULL,
	estado varchar NOT NULL,
	observaciones varchar NULL,
	usuario_app varchar NOT NULL,
	usuario varchar NOT NULL DEFAULT CURRENT_USER,
	eliminado bool NOT NULL DEFAULT false
);


-- pan.deta_entrada_panol definition

-- Drop table

-- DROP TABLE deta_entrada_panol;

CREATE TABLE pan.deta_entrada_panol (
	enpa_id int4 NOT NULL,
	herr_id int4 NOT NULL
);


-- pan.deta_salida_panol definition

-- Drop table

-- DROP TABLE deta_salida_panol;

CREATE TABLE pan.deta_salida_panol (
	sapa_id int4 NOT NULL,
	herr_id int4 NOT NULL
);


-- pan.entrada_panol definition

-- Drop table

-- DROP TABLE entrada_panol;

CREATE TABLE pan.entrada_panol (
	enpa_id serial NOT NULL DEFAULT nextval('pan.entrada_panol_enpa_id_seq'::regclass),
	usuario_app varchar NOT NULL,
	destino varchar NOT NULL,
	empr_id int4 NOT NULL,
	fec_alta date NOT NULL DEFAULT now(),
	usuario varchar NOT NULL DEFAULT CURRENT_USER,
	pano_id int4 NOT NULL,
	observaciones varchar NULL,
	eliminado bool NOT NULL DEFAULT false,
	comprobante varchar NOT NULL,
	responsable varchar NOT NULL,
	CONSTRAINT entrada_panol_pk PRIMARY KEY (enpa_id)
);


-- pan.estanteria definition

-- Drop table

-- DROP TABLE estanteria;

CREATE TABLE pan.estanteria (
	estan_id serial NOT NULL DEFAULT nextval('pan.estanteria_estan_id_seq'::regclass),
	descripcion varchar NULL,
	codigo varchar NOT NULL,
	filas int4 NOT NULL,
	fec_alta timestamp(0) NOT NULL DEFAULT now(),
	usuario_app varchar NOT NULL,
	usuario varchar NULL DEFAULT CURRENT_USER,
	empr_id int4 NOT NULL,
	pano_id int4 NOT NULL,
	CONSTRAINT estanteria_pk PRIMARY KEY (estan_id)
);


-- pan.herramientas definition

-- Drop table

-- DROP TABLE herramientas;

CREATE TABLE pan.herramientas (
	herr_id serial NOT NULL DEFAULT nextval('pan.herramientas_herr_id_seq'::regclass),
	codigo varchar NOT NULL,
	marca varchar NOT NULL,
	modelo varchar NULL,
	tipo varchar NULL,
	descripcion varchar NULL,
	pano_id int4 NOT NULL,
	usuario_app varchar NOT NULL,
	usuario varchar NOT NULL DEFAULT CURRENT_USER,
	fec_alta date NOT NULL DEFAULT now(),
	empr_id int4 NOT NULL,
	eliminado bool NOT NULL DEFAULT false,
	estado varchar NULL DEFAULT 'ACTIVO'::character varying,
	CONSTRAINT herramientas_pk PRIMARY KEY (herr_id)
);


-- pan.panol definition

-- Drop table

-- DROP TABLE panol;

CREATE TABLE pan.panol (
	pano_id serial NOT NULL DEFAULT nextval('pan.panol_pano_id_seq'::regclass),
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
	esta_id int4 NULL,
	CONSTRAINT panol_pk PRIMARY KEY (pano_id)
);


-- pan.salida_panol definition

-- Drop table

-- DROP TABLE salida_panol;

CREATE TABLE pan.salida_panol (
	sapa_id serial NOT NULL DEFAULT nextval('pan.salida_panol_sapa_id_seq'::regclass),
	usuario_app varchar NOT NULL,
	destino varchar NOT NULL,
	empr_id int4 NOT NULL,
	fec_alta date NOT NULL DEFAULT now(),
	usuario varchar NOT NULL DEFAULT CURRENT_USER,
	pano_id int4 NOT NULL,
	observaciones varchar NULL,
	eliminado bool NOT NULL DEFAULT false,
	comprobante varchar NOT NULL,
	responsable varchar NOT NULL,
	CONSTRAINT salida_panol_pk PRIMARY KEY (sapa_id)
);


-- pan.trazacomponente definition

-- Drop table

-- DROP TABLE trazacomponente;

CREATE TABLE pan.trazacomponente (
	traz_id serial NOT NULL DEFAULT nextval('pan.trazacomponente_traz_id_seq'::regclass),
	coeq_id int4 NOT NULL,
	estan_id int4 NULL,
	fila int4 NULL,
	fecha timestamp(0) NULL DEFAULT now(),
	fecha_entrega timestamp(0) NULL,
	ultimo_recibe varchar NOT NULL,
	ultimo_entrega varchar NOT NULL,
	estado varchar NOT NULL,
	observaciones varchar NULL,
	usuario_app varchar NOT NULL,
	usuario varchar NOT NULL DEFAULT CURRENT_USER,
	empr_id int4 NOT NULL,
	eliminado bool NOT NULL DEFAULT false,
	pano_id int4 NOT NULL
);


-- pan.deta_entrada_panol foreign keys

ALTER TABLE pan.deta_entrada_panol ADD CONSTRAINT deta_entrada_pano_herr_idl_fk FOREIGN KEY (herr_id) REFERENCES pan.herramientas(herr_id);
ALTER TABLE pan.deta_entrada_panol ADD CONSTRAINT deta_entrada_panol_entr_panol_fk FOREIGN KEY (enpa_id) REFERENCES pan.entrada_panol(enpa_id);


-- pan.deta_salida_panol foreign keys

ALTER TABLE pan.deta_salida_panol ADD CONSTRAINT deta_salida_panol_herr_id_fk FOREIGN KEY (herr_id) REFERENCES pan.herramientas(herr_id);
ALTER TABLE pan.deta_salida_panol ADD CONSTRAINT deta_salida_panol_sapa_id_fk FOREIGN KEY (sapa_id) REFERENCES pan.salida_panol(sapa_id);


-- pan.entrada_panol foreign keys

ALTER TABLE pan.entrada_panol ADD CONSTRAINT entrada_panol_pano_id_fk FOREIGN KEY (pano_id) REFERENCES pan.panol(pano_id);


-- pan.estanteria foreign keys

ALTER TABLE pan.estanteria ADD CONSTRAINT estanteria_fk FOREIGN KEY (pano_id) REFERENCES pan.panol(pano_id);


-- pan.herramientas foreign keys

ALTER TABLE pan.herramientas ADD CONSTRAINT herramientas_pano_id_fk FOREIGN KEY (pano_id) REFERENCES pan.panol(pano_id);


-- pan.panol foreign keys

ALTER TABLE pan.panol ADD CONSTRAINT panol_esta_id_fk FOREIGN KEY (esta_id) REFERENCES prd.establecimientos(esta_id);


-- pan.salida_panol foreign keys

ALTER TABLE pan.salida_panol ADD CONSTRAINT salida_panol_pano_id_fk FOREIGN KEY (pano_id) REFERENCES pan.panol(pano_id);


-- pan.trazacomponente foreign keys

ALTER TABLE pan.trazacomponente ADD CONSTRAINT trazacomponente_coeq_id_fk FOREIGN KEY (coeq_id) REFERENCES core.componente_equipo(coeq_id);
ALTER TABLE pan.trazacomponente ADD CONSTRAINT trazacomponente_estan_id_fk FOREIGN KEY (estan_id) REFERENCES pan.estanteria(estan_id);
ALTER TABLE pan.trazacomponente ADD CONSTRAINT trazacomponente_pano_id_fk FOREIGN KEY (pano_id) REFERENCES pan.panol(pano_id);