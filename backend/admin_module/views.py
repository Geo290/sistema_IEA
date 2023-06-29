from rest_framework import viewsets
from admin_module import models, serializer

# Create your views here.
class Universidades_views(viewsets.ModelViewSet):
    serializer_class= serializer.Universidades_serializer
    queryset = models.Universidades.objects.all()


class Usuarios_views(viewsets.ModelViewSet):
    serializer_class= serializer.Usuarios_serializer
    queryset = models.Usuarios.objects.all()