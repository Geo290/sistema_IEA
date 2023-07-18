import axios from 'axios'

const utnaApi = axios.create({
    baseURL: 'http://127.0.0.1:8000/utna/api/v1/',
})

