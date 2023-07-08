import { Routes, Route } from "react-router-dom";
import React from "react";
import Contenido from "./components/Contenido";
import { NavBar } from "./components/NavBar";
/*import {Tabla} from "./components/Tabla"; */
import './index.css'

export function App(){
    return(
        <div className="uno">

            <Routes>
                <Route path="/" element={ <Contenido/> }/>
            
            
            </Routes>
      /{/*<Contenido/> */}
        
        </div>
        
    )
}