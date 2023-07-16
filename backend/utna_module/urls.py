from django.urls import include, path
from rest_framework import routers
from rest_framework.documentation import include_docs_urls
from utna_module import views


router = routers.DefaultRouter()
router.register(r'carreras', views.UTNA_Carrera_views, 'UTNA_Carreras')
router.register(r'tasa_cobertura', views.UTNA_Tasa_Cobertura_views, 'UTNA_Tasa')
router.register(r'eficiencia_ire', views.UTNA_Eficiencia_IRE_views, 'UTNA_Eficiencia_IRE')
router.register(r'tasa_puntaje', views.UTNA_Tasa_Puntaje_EGETSU_views, 'UTNA_Tasa_Puntaje')
router.register(r'tasa_puntaje_egel', views.UTNA_Tasa_Puntaje_EGEL_views, 'UTNA_Tasa_Puntaje_EGEL')
router.register(r'tasa_docentes', views.UTNA_Tasa_Docentes_views, 'UTNA_Tasa_Docentes')
router.register(r'indice_ptc', views.UTNA_Indice_PTC_views, 'UTNA_Indice_PTC')
router.register(r'tasa_pe_asat', views.UTNA_Tasa_PE_ASAT_views, 'UTNA_Tasa_PE_ASAT')
router.register(r'iseg_tsu', views.UTNA_ISEg_TSU_views, 'UTNA_ISEg_TSU')
router.register(r'iseg_l', views.UTNA_ISEg_L_views, 'UTNA_ISEg_L')
router.register(r'isem_tsu', views.UTNA_ISEm_TSU_views, 'UTNA_ISEm_TSU')
router.register(r'isem_l', views.UTNA_ISEm_L_views, 'UTNA_ISEm_L')
router.register(r'indice_servicios', views.UTNA_Indice_Servicios_views, 'UTNA_Indice_Servicios') 
router.register(r'tasa_pe_eertinencia', views.UTNA_Tasa_PE_Pertinencia_views, 'UTNA_Tasa_PE_Pertinencia')
router.register(r'indice_colocacion', views.UTNA_Indice_Colocacion_views, 'UTNA_Indice_Colocacion')
router.register(r'tasa_mov_alumnos', views.UTNA_Tasa_Mov_Alumnos_views, 'UTNA_Tasa_Mov_Alumnos')
router.register(r'tasa_mov_docentes', views.UTNA_Tasa_Mov_Docentes_views, 'UTNA_Tasa_Mov_Docentes')
router.register(r'tasa_acreditacion', views.UTNA_Tasa_Acreditacion_views, 'UTNA_Tasa_Acreditacion')
router.register(r'tasa_puntaje_extsu', views.UTNA_Tasa_Puntaje_ExTSU_views, 'UTNA_Tasa_Puntaje_ExTSU')
router.register(r'tasa_puntaje_exl', views.UTNA_Tasa_Puntaje_ExL_views, 'UTNA_Tasa_Puntaje_ExL')


urlpatterns = [
  #http://127.0.0.1:8000/utna_module/api/utna_module/UTNA_Carreras/
  # path('', views.AuthViewSet.as_view, 'auth'),
  path('api/v1/', include(router.urls)),
  path('docs/', include_docs_urls(title='Documentacion del modulo UTNA')) # Documentation
]

