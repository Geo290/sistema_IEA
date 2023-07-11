import React from 'react'
import gigante  from '../img/gigante.jpg'; 
import barra from '../img/barraa.png'

export const barraima = () => {
    return(
        <div className="container" style={{}}>
<div className='imagen'>

<img src={barra}/>
        </div>
        </div>

    )
    
}

export const Login  = () => {
    
    return (

        <div  className="container" style={{background:"midnightblue ", marginTop:20, padding:20}}>
        <div className='imagen'>

<img src={gigante}/>
        </div>
        <form id="form_login">
            <div>
        
            </div>
            <div>
                
                <h1 style={{color:"#FCE9F1", textalign :"center"}}></h1>
                <label   htmlFor="txtusu"><strong >Username</strong></label>
                <input type="text" id="txtusu" style={{textAlign:"center"}} className="form-control"  required/>
            </div>
            <div>
                <label htmlFor="txtpas"><strong>Password</strong></label>
                <input type="password" id="txtpas" style={{textAlign:"center"}} className="form-control"  required/>
            </div><br/>
            <input type="submit" className="btn btn-primary" value="Login"/>
        </form>

    </div>
    )
}

