import React from "react";
import { useForm } from "react-hook-form";
import "../components/styles/bootstrap.min.css"
import { login } from "../api/auth.api";

function LoginPage() {
    const { register, handleSubmit, formState: { errors }, setValue } = useForm();

    return (
            <div className="container-fluid">
                <form onSubmit={handleSubmit(async(values) => {
                    console.log(values)
                    const res = await login(values)
                    console.log(res)
                })} className="form">
                    <div className="w-25 card card-body text-center position-absolute top-50 start-50 translate-middle">
                        <label htmlFor="username" className="form-label">Nombre de usuario</label>
                        <input type="text"
                            {...register('username', { required: true })}
                            className="form-control" name="username" />

                        <label htmlFor="password" className="form-label">Contraseña</label>
                        <input type="password"
                            {...register('password', { required: true })}
                            className="form-control" name="password" />
                        <button className="btn btn-info w-100">Ingresar</button>
                    </div>
                </form>
            </div>
    )
}

export default LoginPage