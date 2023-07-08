from rest_framework import viewsets
from rest_framework.authentication import TokenAuthentication
from rest_framework.permissions import IsAuthenticated
from utna_module import models, serializer

# Create your views here.
class UTNA_Carrera_views(viewsets.ModelViewSet):
    serializer_class = serializer.UTNA_Carreras_serializer
    queryset = models.UTNA_Carreras.objects.all()
    authentication_classes = [TokenAuthentication]
    permission_classes = [IsAuthenticated]


class UTNA_Tasa_Cobertura_views(viewsets.ModelViewSet):
    serializer_class = serializer.UTNA_Tasa_cobertura_serializer
    queryset = models.UTNA_Tasa_cobertura.objects.all()
    authentication_classes = [TokenAuthentication]
    permission_classes = [IsAuthenticated]

class UTNA_Eficiencia_IRE_views(viewsets.ModelViewSet):
    serializer_class = serializer.UTNA_Eficiencia_IRE_serializer
    queryset = models.UTNA_Eficiencia_IRE.objects.all()
    authentication_classes = [TokenAuthentication]
    permission_classes = [IsAuthenticated]

class UTNA_Tasa_Puntaje_EGETSU_views(viewsets.ModelViewSet):
    serializer_class = serializer.UTNA_Tasa_Puntaje_EGETSU_serializer
    queryset = models.UTNA_Tasa_Puntaje_EGETSU.objects.all()
    authentication_classes = [TokenAuthentication]
    permission_classes = [IsAuthenticated]

class UTNA_Tasa_Puntaje_EGEL_views(viewsets.ModelViewSet):
    serializer_class = serializer.UTNA_Tasa_Puntaje_EGEL_serializer
    queryset = models.UTNA_Tasa_Puntaje_EGEL.objects.all()
    authentication_classes = [TokenAuthentication]
    permission_classes = [IsAuthenticated]

class UTNA_Tasa_Docentes_views(viewsets.ModelViewSet):
    serializer_class = serializer.UTNA_Tasa_Docentes_serializer
    queryset = models.UTNA_Tasa_Docentes.objects.all()
    authentication_classes = [TokenAuthentication]
    permission_classes = [IsAuthenticated]    
    
class UTNA_Indice_PTC_views(viewsets.ModelViewSet):
    serializer_class = serializer.UTNA_Indice_PTC_serializer
    queryset = models.UTNA_Indice_PTC.objects.all()
    authentication_classes = [TokenAuthentication]
    permission_classes = [IsAuthenticated]
    
class UTNA_Tasa_PE_ASAT_views(viewsets.ModelViewSet):
    serializer_class = serializer.UTNA_Tasa_PE_ASAT_serializer
    queryset = models.UTNA_Tasa_PE_ASAT.objects.all()
    authentication_classes = [TokenAuthentication]
    permission_classes = [IsAuthenticated]

class UTNA_ISEg_TSU_views(viewsets.ModelViewSet):
    serializer_class = serializer.UTNA_ISEg_TSU_serializer
    queryset = models.UTNA_ISEg_TSU.objects.all()
    authentication_classes = [TokenAuthentication]
    permission_classes = [IsAuthenticated]

class UTNA_ISEg_L_views(viewsets.ModelViewSet):
    serializer_class = serializer.UTNA_ISEg_L_serializer
    queryset = models.UTNA_ISEg_L.objects.all()
    authentication_classes = [TokenAuthentication]
    permission_classes = [IsAuthenticated] 

class UTNA_ISEm_TSU_views(viewsets.ModelViewSet):
    serializer_class = serializer.UTNA_ISEm_TSU_serializer
    queryset = models.UTNA_ISEm_TSU.objects.all()
    authentication_classes = [TokenAuthentication]
    permission_classes = [IsAuthenticated]
  
class UTNA_ISEm_L_views(viewsets.ModelViewSet):
    serializer_class = serializer.UTNA_ISEm_L_serializer
    queryset = models.UTNA_ISEm_L.objects.all()
    authentication_classes = [TokenAuthentication]
    permission_classes = [IsAuthenticated]
    
class UTNA_Indice_Servicios_views(viewsets.ModelViewSet):
    serializer_class = serializer.UTNA_Indice_Servicios_serializer
    queryset = models.UTNA_Indice_Servicios.objects.all()
    authentication_classes = [TokenAuthentication]
    permission_classes = [IsAuthenticated]
    
class UTNA_Tasa_PE_Pertinencia_views(viewsets.ModelViewSet):
    serializer_class = serializer.UTNA_Tasa_PE_Pertinencia_serializer
    queryset = models.UTNA_Tasa_PE_Pertinencia.objects.all()
    authentication_classes = [TokenAuthentication]
    permission_classes = [IsAuthenticated]
 
class UTNA_Tasa_PE_Pertinencia_views(viewsets.ModelViewSet):
    serializer_class = serializer.UTNA_Tasa_PE_Pertinencia_serializer
    queryset = models.UTNA_Tasa_PE_Pertinencia.objects.all()
    authentication_classes = [TokenAuthentication]
    permission_classes = [IsAuthenticated]
 
class UTNA_Indice_Colocacion_views(viewsets.ModelViewSet):
    serializer_class = serializer.UTNA_Indice_Colocacion_serializer
    queryset = models.UTNA_Indice_Colocacion.objects.all()
    authentication_classes = [TokenAuthentication]
    permission_classes = [IsAuthenticated]

class UTNA_Tasa_Mov_Alumnos_views(viewsets.ModelViewSet):
    serializer_class = serializer.UTNA_Tasa_Mov_Alumnos_serializer
    queryset = models.UTNA_Tasa_Mov_Alumnos.objects.all()
    authentication_classes = [TokenAuthentication]
    permission_classes = [IsAuthenticated]

class UTNA_Tasa_Mov_Docentes_views(viewsets.ModelViewSet):
    serializer_class = serializer.UTNA_Tasa_Mov_Docentes_serializer
    queryset = models.UTNA_Tasa_Mov_Docentes.objects.all()
    authentication_classes = [TokenAuthentication]
    permission_classes = [IsAuthenticated]
    
class UTNA_Tasa_Acreditacion_views(viewsets.ModelViewSet):
    serializer_class = serializer.UTNA_Tasa_Acreditacion_serializer
    queryset = models.UTNA_Tasa_Acreditacion.objects.all()
    authentication_classes = [TokenAuthentication]
    permission_classes = [IsAuthenticated]
 