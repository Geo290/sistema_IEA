import React from 'react'
import './styles/conten.css'
import iea from "../img/instituto.png"
import utna from "../img/utna.png"
import crena from "../img/crena.png"
import normalRaf from "../img/normalragael.png"
import normalSantos from "../img/normalsantos.png"
import upa from "../img/upa.png"
import uta from "../img/uta.jpg"
import ena from "../img/ena.png"
import cañada from "../img/cañada.jpg"
import utc from "../img/utc.jpg"
import utm from "../img/utm.png"
import utr from "../img/utr.jpg"
import car1 from "../img/carrucel1.jpg"
import { NavBar } from './NavBar'




const Contenido = () => {
  return (
  
<div className='container'>
<NavBar/>
<div className='barra' ></div>

    <div className='con'>

    <div className='tittle'> 
        Plan de trabajo para desarrollo de plataforma del plan estratégico del sistema de educación superior 2022-2027
        <img className='logoiea'  id='seccion1' src={iea}  alt="" />
    </div>

    <div className='quienessomos' >
    <div class="imagenprincipal">
        <img class="imagenes"  alt='gigantes de mexico' src={car1}/>
    </div> 
    <strong className='quientittle' >¿QUIÉNES SOMOS?</strong>
    
      <p className='textoquien'> Somos la asociación Internacional para la Evaluación del Rendimiento Educativo (IEA), que tiene como objetivo investigar la formación en valores cívicos y estudios comparados a gran escala que evalúan el rendimiento educativo, así como otros aspectos relevantes de la educación, con el objetivo de comprender el impacto que las políticas y las prácticas educativas tienen dentro y entre los diferentes sistemas educativos. </p> 
    </div>

<div className='misvis'>
    <div className='v'>
    <strong className='tittlemisvis'>Misión</strong> 
      <p className='texto'> Proporcionar servicios educativos con excelencia, equidad, inclusión y calidez para coadyuvar en la formación integral de las y los estudiantes adquiriendo las competencias necesarias para lograr una vida plena que contribuya al desarrollo de una sociedad plural, incluyente y humanista. </p> 
      
    </div>

    <div className='v m'>
    <strong className='tittlemisvis'>Visión</strong> 
          <p className='texto'> Lograr hacer del Sistema Educativo Estatal líder y ejemplo para la construcción de una sociedad evolutiva, humanista, vinculante y pilar fundamental en el desarrollo de los individuos, a través de la equidad, inclusión y compromiso.</p>

    </div>
</div>
       {/* Tarjetas de universidades */}   
         {/* #1 */}  
    
    <div className='allcards'> 
    <div className='seccionuniv'>
        <p className='tittlecards'>Universidades del Estado de Aguascalientes:</p>
      </div>

      <div className='card'>
          <div className=''><img  className='card-imagen' src={utna}  alt="" /></div>
          <div className='card-info'>Universidad Tecnológica del Norte de Aguascalientes</div>
          <button class="fancy" href="#">
          <span class="top-key"></span>
          <span class="text">Ingresar</span>
          <span class="bottom-key-1"></span>
          <span class="bottom-key-2"></span>
          </button>
      </div> 
      {/* #2 */}   
      <div className='card'>
          <div className=''><img  className='card-imagen dos' src={uta}  alt="" /></div>
          <div className='card-info'>Universidad Tecnológica de Aguascalientes</div>
          <button class="fancy" href="#">
          <span class="top-key"></span>
          <span class="text">Ingresar</span>
          <span class="bottom-key-1"></span>
          <span class="bottom-key-2"></span>
          </button>
      </div>  
      {/* #3 */}   
      <div className='card'>
          <div className=''><img  className='card-imagen dos' src={utc}  alt="" /></div>
          <div className='card-info'>Universidad Tecnológica de Calvillo</div>
          <button class="fancy" href="#">
          <span class="top-key"></span>
          <span class="text">Ingresar</span>
          <span class="bottom-key-1"></span>
          <span class="bottom-key-2"></span>
          </button>
      </div> 
        {/* #4 */}   
        <div className='card'>
          <div className=''><img  className='card-imagen dos' src={utr}  alt="" /></div>
          <div className='card-info'>Universidad Tecnológica El Retoño</div>
          <button class="fancy" href="#">
          <span class="top-key"></span>
          <span class="text">Ingresar</span>
          <span class="bottom-key-1"></span>
          <span class="bottom-key-2"></span>
          </button>
      </div> <br />
        {/* #5 */}   
        <div className='card'>
          <div className=''><img  className='card-imagen dos d' src={utm}  alt="" /></div>
          <div className='card-info'>Tecnológica Metropolitana de Aguascalientes</div>
          <button class="fancy" href="#">
          <span class="top-key"></span>
          <span class="text">Ingresar</span>
          <span class="bottom-key-1"></span>
          <span class="bottom-key-2"></span>
          </button>
      </div> 
        {/* #6 */}   
        <div className='card'>
          <div className=''><img  className='card-imagen dos' src={upa}  alt="" /></div>
          <div className='card-info'>Universidad Politécnica de Aguascalientes</div>
          <button class="fancy" href="#">
          <span class="top-key"></span>
          <span class="text">Ingresar</span>
          <span class="bottom-key-1"></span>
          <span class="bottom-key-2"></span>
          </button>
      </div> 
        {/* #7 */}   
        <div className='card'>
          <div className=''><img  className='card-imagen normal' src={normalRaf}  alt="" /></div>
          <div className='card-info'>Normal Rafael Aguilar Lomeli</div>
          <button class="fancy" href="#">
          <span class="top-key"></span>
          <span class="text">Ingresar</span>
          <span class="bottom-key-1"></span>
          <span class="bottom-key-2"></span>
          </button>
      </div> 
        {/* #8 */}   
        <div className='card'>
          <div className=''><img  className='card-imagen dos' src={normalSantos}  alt="" /></div>
          <div className='card-info'>Normal Superior Federal José Santos Valdéz</div>
          <button class="fancy" href="#">
          <span class="top-key"></span>
          <span class="text">Ingresar</span>
          <span class="bottom-key-1"></span>
          <span class="bottom-key-2"></span>
          </button>
      </div> 
        {/* #9 */}   
        <div className='card'>
          <div className=''><img  className='card-imagen dos' src={crena}  alt="" /></div>
          <div className='card-info'>Centro Regional de Educación Normal de Aguascalientes.</div>
          <button class="fancy" href="#">
          <span class="top-key"></span>
          <span class="text">Ingresar</span>
          <span class="bottom-key-1"></span>
          <span class="bottom-key-2"></span>
          </button>
      </div> 
        {/* #10 */}   
        <div className='card'>
          <div className=''><img  className='card-imagen dos' src={cañada}  alt="" /></div>
          <div className='card-info'>Normal Rural Justo Sierra Mendez Cañada Honda</div>
          <button class="fancy" href="#">
          <span class="top-key"></span>
          <span class="text">Ingresar</span>
          <span class="bottom-key-1"></span>
          <span class="bottom-key-2"></span>
          </button>
      </div> 
      {/* #11 */}   
      <div className='card'>
          <div className=''><img  className='card-imagen dos' src={ena}  alt="" /></div>
          <div className='card-info'>Escuela Normal de Aguascalientes</div>
          <button class="fancy" href="#">
          <span class="top-key"></span>
          <span class="text">Ingresar</span>
          <span class="bottom-key-1"></span>
          <span class="bottom-key-2"></span>
          </button>
      </div> 
    



    </div>  
    </div>
    <div className='pie'></div>
</div>


  )
}

export default Contenido