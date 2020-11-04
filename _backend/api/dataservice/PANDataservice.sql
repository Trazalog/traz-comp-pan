
-- endpoint de Desarrollo
  http://10.142.0.7:8280/services/PANDataService

-- panolSet
  recurso: /panol
  metodo: set

  insert into pan.panol(descripcion, usuario_app, empr_id)
  values(:descripcion, :usuario_app, CAST(:empr_id AS INTEGER)) returning pano_id

  {
    "panol":{
      "descripcion": "Pañol 1  emp2",
      "usuario_app": "hugoDS",
      "empr_id": "2"
    }
  }

  {
    "respuesta":{
      "pano_id": "$pano_id"
    }
  }

-- panolGet
  recurso: /panol/empresa/{empr_id}
  metodo: get

  select pano_id, descripcion, loca_id, prov_id, pais_id, lat, lng
  from pan.panol
  where empr_id = CAST(:empr_id AS INTEGER)

  {
    "panoles":{
      "panol":[
        {
          "pano_id": "$pano_id",
          "descripcion": "$descripcion",
          "loca_id": "$loca_id",
          "prov_id": "$prov_id",
          "pais_id": "$pais_id",
          "lat": "$lat",
          "lng": "$lng"
        }
      ]
    }
  }

-- panolesGetEmpresa
  recurso: /panol/empresa/{empr_id}
  metodo:

  select pano_id, descripcion, direccion from pan.panol
  where empr_id = :empr_id

  {
    "panoles":{
      "panol":[
        {
          "pano_id": "$pano_id",
          "descripcion": "$descripcion",
          "direccion": "$direccion"
        }
      ]
    }
  }


-- panolUpdate
  recurso: /panol/{pano_id}
  metodo: put

  update pan.panol set  descripcion = :descripcion, loca_id = :loca_id, prov_id = :prov_id, pais_id = :pais_id, lat = :lat, lng = :lng
  where pano_id = CAST(:pano_id AS INTEGER)
  {
      "panol":
        {
          "descripcion": "1-Pañol-emp-2-eidtaoooooo",
          "loca_id": "1",
          "prov_id": "8",
          "pais_id": "1",
          "lat": "0.02022",
          "lng": "0.33330",
          "pano_id": "6"
        }
  }

-- panolDelete
  recurso: /panol/estado
  metodo: put

  update pan.panol set eliminado = CAST(:eliminado AS BOOLEAN)
  where pano_id = CAST(:pano_id as INTEGER)
  -- ej de json contrato
  {
    "_put_circuitos_delete":{
      "pano_id": "1",
      "eliminado": "1"  // esto es fijo en este metodo
    }
  }


-- herramientasSet
  recurso: /herramientas
  metodo: post

  insert into pan.herramientas(codigo, marca, modelo, tipo, descripcion, pano_id, usuario_app, empr_id)
  values(:codigo, :marca, :modelo, :tipo, :descripcion, :pano_id, :usuario_app, cast(:empr_id as INTEGER))
  returnig herr_id

  {
    "herramienta":{
      "codigo": "01 soldadora",
      "marca": "marcas_herramientasLusqtoff",
      "modelo": "Iron-250",
      "tipo": "Inverter",
      "descripcion": "Soldadora inverter portatil",
      "pano_id": "1",
      "usuario_app": "hugoDs",
      "empr_id": "1"
    }
  }


-- herramientasGet
  recurso: /herramientas/empresa/{empr_id}
  metodo: /get

  select H.herr_id, H.codigo, H.marca as marca_id, T.valor as marca, H.modelo, H.tipo, H.descripcion, H.pano_id, P.descripcion as pan_descrip
  from pan.herramientas H, core.tablas T, pan.panol P
  where H.empr_id = cast (:empr_id as INTEGER)
  and H.marca = T.tabl_id
  and H.pano_id = P.pano_id
  and H.eliminado = false

  {
    "herramientas":{
      "herramienta":[
        {
          "herr_id": "$herr_id",
          "codigo": "$codigo",
          "marca": "$marca",
          "marca_id": "$marca_id",
          "modelo": "$modelo",
          "tipo": "$tipo",
          "descripcion": "$descripcion",
          "pano_id": "$pano_id",
          "pan_descrip": "$pan_descrip"
        }
      ]
    }
  }

-- herramientasSetEstado (cambia estado para entrada y slaida de herramientas)
  recurso: /herramientas/estado
  metodo: put

  update pan.herramientas
  set estado = :estado
  where herr_id = CAST(:herr_id as INTEGER)

  {"herramientas":
    "herr_id": "1",
    "estado": "TRANSITO"        //  ACTIVO -  TRANSITO
  }

-- herramientasDelete
  recurso: /herramientas/borrar/{herr_id}
  metodo: put

  update pan.herramientas
  set eliminado = true
  where herr_id = CAST(:herr_id AS INTEGER)

  {"_put_herramientas_borrar":
    "herr_id": "1"
  }


-- herramientasporPanolGet
  recurso: /herramientas/panol/{pano_id}
  metodo: /get
  select H.herr_id, H.codigo, H.marca as marca_id, T.valor as marca, H.modelo, H.tipo, H.descripcion
  from pan.herramientas H, core.tablas T
  where H.marca = T.tabl_id
  and H.pano_id = cast(:pano_id as integer)
  and H.eliminado = false

  {
    "herramientas":{
      "herramienta":[
        {
          "herr_id": "$herr_id",
          "codigo": "$codigo",
          "marca": "$marca",
          "marca_id": "$marca_id",
          "modelo": "$modelo",
          "tipo": "$tipo",
          "descripcion": "$descripcion"
        }
      ]
    }
  }



-- herramientasDelete (cambio de estado, eliminado o no eliminado cambiando el contract)
  recurso: /herramientas/estado
  metodo: put

  update pan.herramientas set eliminado = true
  where herr_id = eliminado = CAST(:eliminado AS BOOLEAN)

  -- ej de json contrato
  {
    "_put_herramientas_estado":{
      "herr_id": "1",
      "eliminado": "true"
    }
  }

-- herramientasUpdate
  recurso: /herramientas
  metodo: put

  update pan.herramientas set codigo = :codigo, marca = :marca, modelo = :modelo, tipo = :tipo, descripcion = :descripcion
  where herr_id = CAST(:herr_id AS INTEGER)

  {
    "_put_herramientas":{
      "herr_id": "1",
      "codigo": "01 soldadora",
      "marca": "marcas_herramientasLusqtoff",
      "modelo": "Iron-250",
      "tipo": "Inverter",
      "descripcion": "Soldadora inverter naranja"
    }
  }


-------------------------------------------------------------------------
-------------------------------------------------------------------------
-------------------------------------------------------------------------

-- salidaHerramientasSet
  recurso: panol/salida/herramientas
  metodo: post

  insert into pan.salida_panol (usuario_app, destino, empr_id, pano_id, observaciones, comprobante, responsable)
  values(:usuario_app, :destino, cast(:empr_id as INTEGER), CAST(:pano_id as INTEGER), :observaciones, :comprobante, :responsable) returning sapa_id

  {
    "_postpanol_salida_herramientas":{
          "usuario_app": "hugoDS",
          "destino": "destino test1",
          "empr_id": "1",
          "pano_id": "3",
          "observaciones": "",
          "comprobante": "comprobante1",
          "responsable": "Lola Meraz"
    }
  }

  -- respuesta servicio
  {
    "respuesta":{
      "sapa_id": "$sapa_id"
    }
  }

-- salidaHerramientasDetaSet
  recurso: /panol/salida/herramientas/detalle (/_postpanol_salida_herramientas_detalle_batch_req)
  metodo: post

  insert into pan.deta_salida_panol (sapa_id, herr_id)
  values(CAST(:sapa_id AS INTEGER), CAST(:herr_id AS INTEGER))

  {
    "_postpanol_salida_herramientas_detalle_batch_req":{
      "post":[
        {
          "sapa_id": "1",
          "herr_id": "5"
        }
      ]
    }
  }

----------------------------------------------------------
----------------------------------------------------------
----------------------------------------------------------
-- salidasPanol

  recurso: /panol/salidas/empresa/{empr_id}
  metodo: get

  select SP.destino, SP.observaciones, SP.comprobante, SP.responsable
  , H.codigo, T.valor as marca
  from pan.salida_panol SP, pan.deta_salida_panol DSP, pan.herramientas H, core.tablas T
  where
  sp.sapa_id = DSP.sapa_id
  and DSP.herr_id = H.herr_id
  and T.tabl_id = H.marca
  and SP.empr_id = cast (:empr_id as integer)

  {
    "salidas":{
        "salida":{
          [
            {
              "destino": "$destino",
              "observaciones": "$observaciones",
              "comprobante": "$comprobante",
              "responsable": "$responsable",
              "codigo": "$codigo",
              "marca": "$marca"
            }
          ]
        }
    }
  }


-- entradasPanol

  recurso: /panol/entradas/empresa/{empr_id}
  metodo: get

  select EP.destino, EP.observaciones, EP.comprobante, EP.responsable
  , H.codigo, T.valor as marca
  from pan.entrada_panol EP, pan.deta_entrada_panol DEP, pan.herramientas H, core.tablas T
  where EP.enpa_id = DEP.enpa_id
  and DEP.herr_id = H.herr_id
  and T.tabl_id = H.marca
  and EP.empr_id = cast (:empr_id as integer)

  {
    "entradas":{
        "entrada":{
          [
            {
              "destino": "$destino",
              "observaciones": "$observaciones",
              "comprobante": "$comprobante",
              "responsable": "$responsable",
              "codigo": "$codigo",
              "marca": "$marca"
            }
          ]
        }
    }
  }


---------------------------------------------------------------------
---------------------------------------------------------------------
---------------------------------------------------------------------
-- entradaHerramientasSet
  recurso: panol/entrada/herramientas
  metodo: post

  insert into pan.entrada_panol (usuario_app, destino, empr_id, pano_id, observaciones, comprobante, responsable)
  values(:usuario_app, :destino, cast(:empr_id as INTEGER), CAST(:pano_id as INTEGER), :observaciones, :comprobante, :responsable) returning enpa_id

  {
    "_postpanol_entrada_herramientas":{
          "usuario_app": "hugoDS",
          "destino": "destino test1",
          "empr_id": "1",
          "pano_id": "3",
          "observaciones": "",
          "comprobante": "comprobante1",
          "responsable": "Lola Meraz"
    }
  }

  -- respuesta servicio
  {
    "respuesta":{
      "enpa_id": "$enpa_id"
    }
  }


-- entradaHerramientasDetaSet
  recurso: /panol/entrada/herramientas/detalle (/_post_panol_entrada_herramientas_detalle_batch_req)
  metodo: post

  insert into pan.deta_entrada_panol (sapa_id, herr_id)
  values(CAST(:sapa_id AS INTEGER), CAST(:herr_id AS INTEGER))

  {
    "_post_panol_entrada_herramientas_detalle_batch_req":{
      "_postpanol_entrada_herramientas":[
        {
          "sapa_id": "1",
          "herr_id": "5"
        }
      ]
    }
  }











-- getTablas()
  recurso: /tablas/{tabla}
  metodo: get

  select tabl_id, tabla, valor from core.tablas
  where tabla = :tabla

  {
    "tablas":{
      "tabla":[
          {
            "tabl_id": "$tabl_id",
            "tabla": "$tabla",
            "valor": "$valor"
          }
      ]
    }
  }

































.