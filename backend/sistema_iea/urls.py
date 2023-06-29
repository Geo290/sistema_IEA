from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('administration/', include('admin_module.urls')),
    path('utna_module/', include('utna_module.urls'))
]

