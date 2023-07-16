from rest_framework import viewsets, status
from rest_framework.decorators import api_view
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.authtoken.models import Token
from rest_framework.request import Request
from rest_framework.permissions import IsAuthenticated
from rest_framework.authentication import TokenAuthentication

from .serializer import  Universidades_serializer, Usuarios_serializer
from .models import Universidades, Usuarios

from django.contrib.auth import authenticate, login, logout # authenticate user via username and password
from django.contrib.auth.hashers import check_password

# Create your views here.

class Universidades_views(viewsets.ModelViewSet):
    serializer_class= Universidades_serializer
    queryset = Universidades.objects.all()
    permission_classes = [IsAuthenticated] # allows only authenticated users


class Usuarios_views(viewsets.ModelViewSet):
    serializer_class= Usuarios_serializer
    queryset = Usuarios.objects.all()
    permission_classes = [IsAuthenticated] # allows only authenticated users

# @api_view(['POST'])
# def login(request):
#     username = request.POST.get('username')
#     password = request.POST.get('password')
#     try:
#         user = Usuarios.objects.get(username=username)
#         pwd_valid = check_password(password, user.password)

#         if not pwd_valid:
#             return Response("Password is invalid!!!")
        
#         token, _ = Token.objects.get_or_create(user=user)

#         print(token.key)
#         return Response({'token':token.key})
        
#     except Usuarios.DoesNotExist:
#         return Response("User is invalid!!!")


class Login_view(APIView):
    def post(self, request:Request):
        #get credentials and authenticate user
        username = request.data.get('username')
        password = request.data.get('password')
        
        try:
            user = Usuarios.objects.get(username=username)
            pwd_valid = check_password(password, user.password)

            if pwd_valid:
                login(request,user)
                return Response({'message':'Logged in successfully'})
            
            #    token, _ = Token.objects.get_or_create(user=user)
            # print(token.key)
            # return Response({'token':token.key})
        
        except Usuarios.DoesNotExist:
            return Response("User or password invalid!!!")
    
class Logout_view(APIView):
    permission_classes = [IsAuthenticated]

    def post(slef, request:Request):
        # request.user.auth_token.delete()
        logout(request)
        print("logged out")
        return Response({"message":"logged out successfully"})
