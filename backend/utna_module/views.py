from rest_framework import viewsets
from utna_module import models, serializer

# Create your views here.
class utna_module_views(viewsets.ModelViewSet):
    serializer_class = serializer.UTNA_Carreras_serializer
    queryset = models.UTNA_Carreras.objects.all()



