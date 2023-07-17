from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('auth/', include('admin_module.urls')),
    path('utna/', include('utna_module.urls')),
]