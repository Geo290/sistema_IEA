import React from 'react'
import './styles/conten.css'
import iea from "../img/instituto.png"


const Contenido = () => {
  return (
<div className='container'>
<div className='barra' ></div>

    <div className='con'>

    <div className='tittle'>
        Plan de trabajo para desarrollo de plataforma del plan estratégico del sistema de educación superior 2022-2027
        <img className='logoiea' src={iea}  alt="" />
    </div>
    
    <div className='quienessomos' id='seccion1'>
    <strong className='tittlequienessomos'>Misión</strong> 
      <p className='textomision'> Proporcionar servicios educativos con excelencia, equidad, inclusión y calidez para coadyuvar en la formación integral de las y los estudiantes adquiriendo las competencias necesarias para lograr una vida plena que contribuya al desarrollo de una sociedad plural, incluyente y humanista. </p> 
          </div>

          <div className='vision' id='seccion2'>
          <strong className='tittlequienessomos'>Visión</strong> 
          <p className='textomision'> Lograr hacer del Sistema Educativo Estatal líder y ejemplo para la construcción de una sociedad evolutiva, humanista, vinculante y pilar fundamental en el desarrollo de los individuos, a través de la equidad, inclusión y compromiso.</p>

          </div>
      <div className='card'>
          <div className=''><img  className='card-imagen' src={iea}  alt="" /></div>
        <div className='card-info'>Universidad Tecnologica del Norte de Aguascalientes</div>
          <button class="fancy" href="#">
          <span class="top-key"></span>
          <span class="text">Ingresar</span>
          <span class="bottom-key-1"></span>
          <span class="bottom-key-2"></span>
          </button>


      
      </div>  
        
    
    </div>
  
  
</div>
 

  )
}

export default Contenido