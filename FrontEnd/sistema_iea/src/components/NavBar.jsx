import React, {useState} from 'react'
import './styles/navbar.css'
import logo from '../img/logoiea.png'

export const NavBar = () => {
    const [isOpen, setIsOpen] = useState(false)
return (
    <nav className='navbar'>
        <div className='nav_logo'> <img className='logo' src={logo} alt="logoIEA" /> 
        <div className='nav_title'>Instituto  de Educación de <p>Aguascalientes</p></div></div>
        <div className={`nav_items ${isOpen && "open"}`}>
        <a href="#seccion1"> INICIO<i className="bi bi-house-fill"></i></a>
        <a href="#seccion1"> ¿QUIÉNES SOMOS?</a>
            <a href="#" className='universidades'>UNIVERSIDAD  <i className="bi  bi-caret-down-fill"></i></a>

                <div className='listauniversidades'>
                    <ul>
                        <li>UTNA</li>
                        <li>UTA</li>
                        <li>UTR</li>
                        <li>UAA</li>
                    </ul>

                </div>
                
          
            <a href="#">LOGIN<i className="bi bi-person-circle i"></i></a>
        </div>
        <div className={`nav_toggle ${isOpen && "open"}`} onClick={ () => setIsOpen(!isOpen)}>
            <span></span>
            <span></span>
            <span></span>
        </div> 
    </nav>
)
}
