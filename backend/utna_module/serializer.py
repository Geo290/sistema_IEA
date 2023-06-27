from rest_framework import serializers
from utna_module import models

class UTNA_Carreras_serializer(serializers.ModelSerializer):

    class Meta:
        model = models.UTNA_Carreras
        fields = '__all__'

class UTNA_Tasa_cobertura_serializer(serializers.ModelSerializer):
    class Meta:
        model = models.UTNA_Tasa_cobertura
        fields = '__all__'

class UTNA_Eficiencia_IRE_serializer(serializers.ModelSerializer):
    class Meta:
        model =models.UTNA_Eficiencia_IRE
        fields = '__all__' 

class UTNA_Tasa_Puntaje_EGETSU_serializer(serializers.ModelSerializer):
    class Meta: 
        model = models.UTNA_Tasa_Puntaje_EGETSU
        fields = '__all__'

class UTNA_Tasa_Puntaje_EGEL_serializer(serializers.ModelSerializer):
    class Meta:
        model = models.UTNA_Tasa_Puntaje_EGEL
        fields = '__all__'

class UTNA_Tasa_Docentes_serializer(serializers.ModelSerializer):
    class Meta:
        model = models.UTNA_Tasa_Docentes
        fields = '__all__'

class UTNA_Indice_PTC_serializer(serializers.ModelSerializer):
    class Meta:
        model = models.UTNA_Indice_PTC
        fields = '__all__'

class UTNA_Tasa_PE_ASAT_serializer(serializers.ModelSerializer):
    class Meta:
        model = models.UTNA_Tasa_PE_ASAT
        fields = '__all__'

class UTNA_ISEg_TSU_serializer(serializers.ModelSerializer):
    class Meta:
        model = models.UTNA_ISEg_TSU
        fields = '__all__'

class UTNA_ISEg_L_serializer(serializers.ModelSerializer):
    class Meta:
        model = models.UTNA_ISEg_L
        fields = '__all__'

class UTNA_ISEm_TSU_serializer(serializers.ModelSerializer):
    class Meta:
        model = models.UTNA_ISEm_TSU
        fields = '__all__'

class UTNA_ISEm_L_serializer(serializers.ModelSerializer):
    class Meta:
        model = models.UTNA_ISEm_L
        fields = '__all__'

class UTNA_Indice_Servicios_serializer(serializers.ModelSerializer):
    class Meta:
        model = models.UTNA_Indice_Servicios
        fields = '__all__'

class UTNA_Tasa_PE_Pertinencia_serializer(serializers.ModelSerializer):
    class Meta:
        model = models.UTNA_Tasa_PE_Pertinencia
        fields = '__all__'

class UTNA_Indice_Colocacion_serializer(serializers.ModelSerializer):
    class Meta:
        model = models.UTNA_Indice_Colocacion
        fields = '__all__'

class UTNA_Tasa_Mov_Alumnos_serializer(serializers.ModelSerializer):
    class Meta:
        model = models.UTNA_Tasa_Mov_Alumnos
        fields = '__all__'

class UTNA_Tasa_Mov_Docentes_serializer(serializers.ModelSerializer):
    class Meta:
        model = models.UTNA_Tasa_Mov_Docentes
        fields = '__all__'

class UTNA_Tasa_Acreditacion_serializer(serializers.ModelSerializer):
    class Meta:
        model = models.UTNA_Tasa_Acreditacion
        fields = '__all__'