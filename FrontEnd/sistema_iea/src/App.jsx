import Contenido from "./components/Contenido";
import { NavBar } from "./components/NavBar";
import './index.css'

export function App(){
    return(
        <div className="uno">
        <NavBar />
        <Contenido/>
        </div>
        
    )
}