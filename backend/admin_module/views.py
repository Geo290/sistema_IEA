from django.contrib.auth import authenticate
from django.contrib.auth.hashers import check_password
from rest_framework import viewsets, status
from admin_module import models, serializer
from rest_framework.authentication import TokenAuthentication
from rest_framework.permissions import IsAuthenticated
from rest_framework.decorators import action
from rest_framework.response import Response
from rest_framework.authtoken.models import Token

# Create your views here.
class Universidades_views(viewsets.ModelViewSet):
    serializer_class= serializer.Universidades_serializer
    queryset = models.Universidades.objects.all()


class Usuarios_views(viewsets.ModelViewSet):
    serializer_class= serializer.Usuarios_serializer
    queryset = models.Usuarios.objects.all()
    # authentication_classes = [TokenAuthentication]
    # permission_classes = [IsAuthenticated]
    
class AuthViewSet(viewsets.ViewSet):
    """authentication for users"""
    @action(detail=False,methods=['post'])

    def login(self, request):
        """
            request to this url http://127.0.0.1:8000/administration/api/v1/auth/login/
            send username and password in json
        """
        username=request.data.get('username')
        password=request.data.get('password')

        user = authenticate(request,username=username, password=password)
        if user:
            token, created = Token.objects.get_or_create(user=user)
            return Response({'token':token.key, "message":"loged"})
        else:
            return Response({'error': 'Invalid credentials'}, status=status.HTTP_401_UNAUTHORIZED)
    
    @action(detail=False, methods=['post'])
    def logout(self, request):
        """
            request to this url http://127.0.0.1:8000/administration/api/v1/auth/logout/
            send username and password in json
        """
        request.user.auth_token.delete()
        return Response({"message":"loged out"},status=status.HTTP_200_OK)