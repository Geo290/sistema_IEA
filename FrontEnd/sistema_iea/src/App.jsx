import { Routes, Route } from "react-router-dom";
import React from "react";
import Contenido from "./components/Contenido";
/*import {Tabla} from "./components/Tabla"; */
import './index.css'
import Tabla from "./components/Tabla";
import Indicador4 from "./components/Indicador4";
import { Login } from "./components/Login";

export function App(){
    return(
        <div className="uno">

            <Routes>
                <Route path="/" element={ <Contenido/> }/>

                <Route path="Indicador4" element={ <Indicador4/> }/>
                <Route path="Login" element={ <Login/> }/>
            
            
            </Routes>
      {/*<Contenido/> */}
        
        </div>
        
    )
}