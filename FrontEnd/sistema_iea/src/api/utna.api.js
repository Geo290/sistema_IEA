import axios from 'axios'

const utnaApi = axios.create({
    baseURL: 'http://127.0.0.1:8000/utna/api/v1/',
})

// ========== Meotodos para las carreras ============
export const listarCarreras = () => utnaApi.get('/carreras/');

export const obtenerCarreraId = (id) => utnaApi.get(`/carreras/${id}/`);

export const crearCarrera = (data) => utnaApi.post('/carreras/', data);

export const borrarCarrera = (id) => utnaApi.delete(`/carreras/${id}`);

export const editarCarrera = (id, data) => utnaApi.put(`/carreras/${id}/`,data);

// ========== METODOS PARA LA TASA DE COBERTURA ============

export const listarTasaCobertura = () => utnaApi.get('/tasa_cobertura/');

export const obtenerTasaCoberturaId = (id) => utnaApi.get(`/tasa_cobertura/${id}`);

export const crearTasaCobertura = (data) => utnaApi.post('/tasa_cobertura/', data);

export const borrarTasaCobertura = (id) => utnaApi.delete(`/tasa_cobertura/${id}`);

export const editarTasaCobertura = (id, data) => utnaApi.put(`/tasa_cobertura/${id}/`,data);

// ========== METODOS PARA EFICIENCIA IRE ===========

export const listarEficienciaIre = () => utnaApi.get('/eficiencia_ire/');

export const obtenerEficienciaIreId = (id) => utnaApi.get(`/eficiencia_ire/${id}`);

export const crearEficienciaIre = (data) => utnaApi.post('/eficiencia_ire/',data);

export const borrarEficienciaIre = (id) => utnaApi.delete(`/eficiencia_ire/${id}`);

export const editarEficienciaIre = (id, data) => utnaApi.put(`/eficiencia_ire/${id}`,data);

// ========== METODOS PARA TASA PUNTAJE ===========

export const listarTasaPuntaje = () => utnaApi.get('/tasa_puntaje/');

export const obtenerTasaPuntajeId = (id) => utnaApi.get(`/tasa_puntaje/${id}`);

export const crearTasaPuntaje = (data) => utnaApi.post(`/tasa_puntaje/`,data);

export const borrarTasaPuntaje = (id) => utnaApi.delete(`/tasa_puntaje/${id}`);

export const editarTasaPuntaje = (id, data) => utnaApi.put(`/tasa_puntaje/${id}`,data);

// ========== METODOS PARA TASA PUNTAJE EGEL ===========

export const listarTasaPuntajeEgel = () => utnaApi.get('/tasa_puntaje_egel/');

export const obtenerTasaPuntajeEgelId = (id) => utnaApi.get(`/tasa_puntaje_egel/${id}`);

export const crearTasaPuntajeEgel = (data) => utnaApi.post(`/tasa_puntaje_egel/`,data);

export const borrarTasaPuntajeEgel = (id) => utnaApi.delete(`/tasa_puntaje_egel/${id}`);

export const editarTasaPuntajeEgel = (id, data) => utnaApi.put(`/tasa_puntaje_egel/${id}`,data);

// ========== METODOS PARA TASA DOCENTES ===========

export const listarTasaDocentes = () => utnaApi.get('/tasa_docentes/');

export const obtenerTasaDocentes = (id) => utnaApi.get(`/tasa_docentes/${id}`);

export const crearTasaDocentes = (data) => utnaApi.post('/tasa_docentes/',data);

export const borrarTasaDocentes = (id) => utnaApi.delete(`/tasa_docentes/${id}`);

export const editarTasaDocentes = (id,data) => utnaApi.put(`/tasa_docentes/${id}`,data);

// ========= METODOS PARA INDICE PTC =========

export const listarIndicePtc = () => utnaApi.get('/indice_ptc/');

export const obtenerIndicePtcId = (id) => utnaApi.get(`/indice_ptc/${id}`);

export const crearIndicePtc = (data) => utnaApi.post('/indice_ptc/',data);

export const borrarIndicePtc = (id) => utnaApi.delete(`/indice_ptc/${id}`);

export const editarIndicePtc = (id,data) => utnaApi.put(`/indice_ptc/${id}`,data);

// =========  METODOS PARA TASA ASAT Y PERTINENCIA=========

export const listarTasaAsatPertinencia = () => utnaApi.get('/tasa_pe_asat/');

export const obtenerTasaAsatPertinenciaId = (id) => utnaApi.get(`/tasa_pe_asat/${id}`);

export const crearTasaAsatPertinencia = (data) => utnaApi.post('/tasa_pe_asat/',data);

export const borrarTasaAsatPertinencia = (id) => utnaApi.delete(`/tasa_pe_asat/${id}`);

export const editarTasaAsatPertinencia = (id,data) => utnaApi.put(`/tasa_pe_asat/${id}`,data);

// ========= METODOS PARA ISEG TSU =========

export const listarIsegTsu = () => utnaApi.get('/iseg_tsu/');

export const obtenerIsegTsuId = (id) => utnaApi.get(`/iseg_tsu/${id}`);

export const crearIsegTsu = (data) => utnaApi.post('/iseg_tsu/',data);

export const borrarIsegTsu = (id) => utnaApi.delete(`/iseg_tsu/${id}`);

export const editarIsegTsu = (id,data) => utnaApi.put(`/iseg_tsu/${id}`,data);

// ========= METODOS PARA ISEG LIC =========

export const listarIsegLic = () => utnaApi.get('/iseg_l/');

export const obtenerIsegLicId = (id) => utnaApi.get(`/iseg_l/${id}`);

export const crearIsegLic = (data) => utnaApi.post('/iseg_l/',data);

export const borrarIsegLic = (id) => utnaApi.delete(`/iseg_l/${id}`);

export const editarIsegLic = (id,data) => utnaApi.put(`/iseg_l/${id}`,data);

// ========= METODOS PARA ISEM TSU =========

export const listarIsemTsu = () => utnaApi.get('/isem_tsu/');

export const obtenerIsemTsuId = (id) => utnaApi.get(`/isem_tsu/${id}`);

export const crearIsemTsu = (data) => utnaApi.post('/isem_tsu/',data);

export const borrarIsemTsu = (id) => utnaApi.delete(`/isem_tsu/${id}`);

export const editarIsemTsu = (id,data) => utnaApi.put(`/isem_tsu/${id}`,data);

// ========= METODOS PARA ISEM LIC =========

export const listarIsemLic = () => utnaApi.get('/isem_l/');

export const obtenerIsemLicId = (id) => utnaApi.get(`/isem_l/${id}`);

export const crearIsemLic = (data) => utnaApi.post('/isem_l/',data);

export const borrarIsemLic = (id) => utnaApi.delete(`/isem_l/${id}`);

export const editarIsemLic = (id,data) => utnaApi.put(`/isem_l/${id}`,data);

// ========= METODOS PARA INDICE DE SERVICIOS =========

export const listar

export const obtener

export const crear

export const borrar

export const editar

// ========= METODOS PARA TASA PE PERTINENCIA =========

export const listar

export const obtener

export const crear

export const borrar

export const editar

// ========= METODOS PARA INDICE DE COLOCACION =========

export const listar

export const obtener

export const crear

export const borrar

export const editar

// ========= METODOS PARA TASA DE MOVILIDAD DE ALUMNOS =========

export const listar

export const obtener

export const crear

export const borrar

export const editar

// ========= METODOS PARA TASA DE MOVILIDAD DE DOCENTES =========

export const listar

export const obtener

export const crear

export const borrar

export const editar

// ========= METODOS PARA TASA DE ACREDITACION =========

export const listar

export const obtener

export const crear

export const borrar

export const editar

// ========= METODOS PARA TASA PUNTAJE EXTSU =========

export const listar

export const obtener

export const crear

export const borrar

export const editar

// ========= METODOS PARA TASA PUNTAJE EXl =========

export const listar

export const obtener

export const crear

export const borrar

export const editar