

INSERT INTO seg.menues (modulo, opcion, texto, url, javascript, orden, url_icono, texto_onmouseover, eliminado, fec_alta, usuario, usuario_app, opcion_padre) VALUES('PAN', 'panol', 'Pañol', '', NULL, 100, '/img/icono.gif', 'Pañol', 0, '2020-11-04 13:15:13.036498-03', 'HugoDS', 'postgres', NULL);

INSERT INTO seg.menues (modulo, opcion, texto, url, javascript, orden, url_icono, texto_onmouseover, eliminado, fec_alta, usuario, usuario_app, opcion_padre) VALUES('PAN', 'herramientas_abm', 'Herramientas', 'traz-comp-pan/Herramienta', NULL, 201, '/img/icono.gif', 'Herramientas', 0, '2020-11-04 13:15:13.036498-03', 'postgres', 'HugoDS', 'panol');

INSERT INTO seg.menues (modulo, opcion, texto, url, javascript, orden, url_icono, texto_onmouseover, eliminado, fec_alta, usuario, usuario_app, opcion_padre) VALUES('PAN', 'herramientas_salida', 'Salida Herramientas', 'traz-comp-pan/Order', NULL, 201, '/img/icono.gif', 'Salida Herramientas', 0, '2020-11-04 13:15:13.036498-03', 'postgres', 'HugoDS', 'panol');

INSERT INTO seg.menues (modulo, opcion, texto, url, javascript, orden, url_icono, texto_onmouseover, eliminado, fec_alta, usuario, usuario_app, opcion_padre) VALUES('PAN', 'herramientas_entrada', 'Entrada Herramientas', 'traz-comp-pan/Unload', NULL, 201, '/img/icono.gif', 'Entrada Herramientas', 0, '2020-11-04 13:15:13.036498-03', 'postgres', 'HugoDS', 'panol');

INSERT INTO seg.menues (modulo, opcion, texto, url, javascript, orden, url_icono, texto_onmouseover, eliminado, fec_alta, usuario, usuario_app, opcion_padre) VALUES('PAN', 'trazab_compo', 'Trazabilidad Componentes', 'traz-comp-pan/Trazacomp', NULL, 201, '/img/icono.gif', 'Trazabilidad Componentes', 0, '2020-11-04 13:15:13.036498-03', 'postgres', 'HugoDS', 'panol');

INSERT INTO seg.memberships_menues (modulo, opcion, "group", "role", fec_alta, usuario, usuario_app) VALUES('PAN', 'panol', 'Empresa_Test', 'Solicitante', '2020-10-02', 'postgres', 'HugoDS');