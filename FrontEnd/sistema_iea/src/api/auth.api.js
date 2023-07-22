import axios from "axios";

const authApi = axios.create({
    baseURL : 'http://127.0.0.1:8000/auth/api/v1/'
})

export const login = (data) => authApi.post('/login/',data);

export const logout = (data) => authApi.post('/logout/',data);