from django.urls import include, path
from rest_framework import routers
# from rest_framework.documentation import include_docs_urls
from .views import Login_view, Logout_view, Universidades_views, Usuarios_views


router = routers.DefaultRouter()
# router.register(r'Universidades', Universidades_views, 'Universidades')
# router.register(r'Usuarios', Usuarios_views, 'Usuarios')
#router.register(r'login',Login_view.as_view(),'login')

urlpatterns = [
    path('api/v1/', include(router.urls)),
    path('login/', Login_view.as_view(), name='login'),
    path('logout/', Logout_view.as_view(), name='logout'),
    #path('docs/', include_docs_urls(title='admin_module documentation')) # Documentation
]