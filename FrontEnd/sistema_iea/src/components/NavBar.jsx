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
            <a href="#">INICIO</a>
            <a href="#">¿QUIÉN SOMOS?</a>
            <a href="#">LOGIN</a>
        </div>
        <div className={`nav_toggle ${isOpen && "open"}`} onClick={ () => setIsOpen(!isOpen)}>
            <span></span>
            <span></span>
            <span></span>
        </div> 
    
    </nav>
)
}
