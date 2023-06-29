
from django.urls import include, path
from rest_framework import routers
from rest_framework.documentation import include_docs_urls
from .views import UTNA_Carrera_views, UTNA_Tasa_Cobertura_views, UTNA_Eficiencia_IRE_views, UTNA_Tasa_Puntaje_EGETSU_views, UTNA_Tasa_Puntaje_EGEL_views, UTNA_Tasa_Docentes_views, UTNA_Indice_PTC_views, UTNA_Tasa_PE_ASAT_views, UTNA_ISEg_TSU_views, UTNA_ISEg_L_views, UTNA_ISEm_TSU_views, UTNA_ISEm_L_views, UTNA_Indice_Servicios_views, UTNA_Tasa_PE_Pertinencia_views, UTNA_Indice_Colocacion_views, UTNA_Tasa_Mov_Alumnos_views, UTNA_Tasa_Mov_Docentes_views, UTNA_Tasa_Acreditacion_views
from utna_module import views


router = routers.DefaultRouter()
router.register(r'UTNA_Carreras', views.UTNA_Carrera_views, 'utna_modules')
router.register(r'UTNA_Tasa', views.UTNA_Tasa_Cobertura_views, 'utna_modules')
router.register(r'UTNA_Eficiencia_IRE', views.UTNA_Eficiencia_IRE_views, 'utna_modules')
router.register(r'UTNA_Tasa_Puntaje', views.UTNA_Tasa_Puntaje_EGETSU_views, 'utna_modules')
router.register(r'UTNA_Tasa_Puntaje_EGEL', views.UTNA_Tasa_Puntaje_EGEL_views, 'utna_modules')
router.register(r'UTNA_Tasa_Docentes', views.UTNA_Tasa_Docentes_views, 'utna_modules')
router.register(r'UTNA_Indice_PTC', views.UTNA_Indice_PTC_views, 'utna_modules')
router.register(r'UTNA_Tasa_PE_ASAT', views.UTNA_Tasa_PE_ASAT_views, 'utna_modules')
router.register(r'UTNA_ISEg_TSU', views.UTNA_ISEg_TSU_views, 'utna_modules')
router.register(r'UTNA_ISEg_L', views.UTNA_ISEg_L_views, 'utna_modules')
router.register(r'UTNA_ISEm_TSU', views.UTNA_ISEm_TSU_views, 'utna_modules')
router.register(r'UTNA_ISEm_L', views.UTNA_ISEm_L_views, 'utna_modules')
router.register(r'UTNA_Indice_Servicios', views.UTNA_Indice_Servicios_views, 'utna_modules') 
router.register(r'UTNA_Tasa_PE_Pertinencia', views.UTNA_Tasa_PE_Pertinencia_views, 'utna_modules')
router.register(r'UTNA_Indice_Colocacion', views.UTNA_Indice_Colocacion_views, 'utna_modules')
router.register(r'UTNA_Tasa_Mov_Alumnos', views.UTNA_Tasa_Mov_Alumnos_views, 'utna_modules')
router.register(r'UTNA_Tasa_Mov_Docentes', views.UTNA_Tasa_Mov_Docentes_views, 'utna_modules')
router.register(r'UTNA_Tasa_Acreditacion', views.UTNA_Tasa_Acreditacion_views, 'utna_modules')






urlpatterns = [
#http://127.0.0.1:8000/utna_module/api/utna_module/(name route))/
  path('api/utna_module/', include(router.urls)),
  
  #Documentation
  path('docs/', include_docs_urls (title='Documentacion del modulo UTNA') )
  

]

