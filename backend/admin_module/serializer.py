from rest_framework import serializers
from admin_module import models

class Universidades_serializer(serializers.ModelSerializer):
    class Meta:
        model = models.Universidades
        fields = '__all__'

class Usuarios_serializer(serializers.ModelSerializer):
    class Meta:
        model = models.Usuarios
        fields = '__all__'
