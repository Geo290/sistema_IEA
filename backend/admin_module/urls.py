from django.urls import include, path
from rest_framework import routers
from rest_framework.documentation import include_docs_urls
from admin_module import views

router = routers.DefaultRouter()
router.register(r'Universidades', views.Universidades_views, 'Universidades')
router.register(r'Usuarios', views.Usuarios_views, 'Usuarios')

urlpatterns = [
    path('api/v1/admin_module', include(router.urls)),
    path('docs/', include_docs_urls(title='admin_module documentation')) # Documentation
]