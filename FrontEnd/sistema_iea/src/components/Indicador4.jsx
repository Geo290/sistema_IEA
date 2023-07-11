import React from 'react'
import { NavBar } from './NavBar'
import Container from 'react-bootstrap/Container';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';
import Button from 'react-bootstrap/Button';
import { useState } from 'react';
import Form from 'react-bootstrap/Form';
import Modal from 'react-bootstrap/Modal';


import './styles/indicador.css'


import Table from 'react-bootstrap/Table';

const Indicador4 = () => {
  const [show, setShow] = useState(false);

  const handleClose = () => setShow(false);
  const handleShow = () => setShow(true);

  return (
    <div>
      <NavBar/>

      <Container className='c'>
        <h1 className='titulo'>4) Indice de Satisfacción de los servicios de apoyo </h1>
      <hr />
        <Row className='filas'>

        <Button variant="primary" className='boton-modal' onClick={handleShow}>
        Añadir Registro <i class="bi bi-file-plus"></i>
      </Button>

      <Modal className='modal' show={show} onHide={handleClose}>
        <Modal.Header className='modal-header'  closeButton>
          <Modal.Title className='modal-tittle anadir'>Añadir nuevo registro</Modal.Title>
        </Modal.Header>
        <Modal.Body className='modal-body mb'>
          <Form className='form'>
            <Form.Group className="mb-3 form-group" controlId="exampleForm.ControlInput1">
            <Form.Label>Universidades:</Form.Label>
              <Form.Select aria-label="Default select example">
                  <option>Selecciona la Universidad</option>
                  <option value="1">Universidad Tecnológica del Norte de Aguascalientes</option>
                  <option value="2">Universidad Tecnológica de Aguascalientes</option>
                  <option value="3">Universidad Tecnológica de Calvillo</option>
                  <option value="4">Universidad Tecnológica El Retoño</option>
                  <option value="5">Tecnológica Metropolitana de Aguascalientes</option>
                  <option value="6">Universidad Politécnica de Aguascalientes</option>
                  <option value="7">Normal Rafael Aguilar Lomeli</option>
                  <option value="8">Normal Superior Federal José Santos Valdéz</option>
                  <option value="9">Centro Regional de Educación Normal de Aguascalientes.</option>
                  <option value="10">Normal Rural Justo Sierra Mendez Cañada Honda</option>
                  <option value="11">Escuela Normal de Aguascalientess</option>
                </Form.Select>
              
            </Form.Group>
            <Form.Group className="mb-3 dd" >
              <Form.Label>Servicio de Apoyo:</Form.Label>
              <Form.Select aria-label="Default select example">
                  <option>Selecciona el servicio</option>
                  <option value="1">Índice de satisfacción de los alumnos en relacion a los serviciosde apoyo a los estudiantes</option>
                  <option value="2">Atención y preservación de la salud (Externa)</option>
                  <option value="3">Bolsa de Trabajo</option>
                  <option value="4">Atención y preservación de la salud (Interna)</option>
                  <option value="5">Actividades sistematicas de orientación y apoyo en el desempeño personal y académico de alumnos</option>
                  <option value="6">Actividades que favorecen el crecimiento personal, a través de pláticas, talleres, conferencias, etc.</option>
                  <option value="7">Actividades sistematicas de orientación y apoyo en el desempeño personal y académico </option>
                  <option value="8">Orientación a los estudiantes en su desarrollo personal y pedagógico</option>
                  <option value="9">Espacios de expresión con los alumnos, tales como facebook, redes sociales, radio, revista, etc.</option>
                  <option value="10">Estimulos al desempeño académico de los alumnos</option>
                  <option value="11">Servicios de seguridad</option>
                  <option value="12">Instalaciones adecuadas para las diferentes actividades curriculares</option>
                  <option value="13">Actividades que promueven y facilitan el conocimiento de las artes, tales como danzza, música, teatro.</option>
                  <option value="14">Apoyo bibliográfico para complemento o refuerzo del aprendizaje.</option>
                  <option value="15">Traslado de los estudiantes a la universidad</option>
                  <option value="16">Fomento de la salud por medio de actividades deportivas</option>
                  <option value="17">Servicio de alimentos</option>
                  <option value="18">Servicio de becass</option>
                </Form.Select>
            
            
            </Form.Group>
          </Form>
        </Modal.Body>
        <Modal.Footer>
          <Button variant="secondary button" onClick={handleClose}>
          Cerrar
          </Button>
          <Button variant="primary button" onClick={handleClose}>
          Guardar
          </Button>
        </Modal.Footer>
      </Modal>
    
  



      </Row>
      <Row>
        <Col>
        <Table  className='tabla' >
      <thead >
        <tr>
          <th>Descripción</th>
          <th>2021</th>
          <th>2022</th>
          <th>2023</th>
          <th>Opciones</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td className='titulos'>Índice de satisfacción de los alumnos en relacion a los serviciosde apoyo a los estudiantes</td>
          <td className='titulos'>%</td>
          <td className='titulos'>%</td>
          <td className='titulos'>%</td>
          <td className='titulos'></td> 
        </tr>
        <tr>
          <td>Atención y preservación de la salud (Externa)</td>
          <td> </td>
          <td> </td>
          <td> </td>
          <td>
              <button className='btn btn-danger me-1'><i class="bi bi-trash3"></i></button>
              <Button className='editar' variant="warning"><i class="bi bi-pencil-square"></i></Button>
      
          </td>
        </tr>
        <tr>
          <td>Bolsa de Trabajo</td>
          <td> </td>
          <td> </td>
          <td> </td>
          <td>
              <button className='btn btn-danger me-1'><i class="bi bi-trash3"></i></button>
              <Button className='editar' variant="warning"><i class="bi bi-pencil-square"></i></Button>
          </td>
        </tr>
        <tr>
          <td>Atención y preservación de la salud (Interna)</td>
          <td></td>
          <td> </td>
          <td> </td>
          <td>
              <button className='btn btn-danger me-1'><i class="bi bi-trash3"></i></button>
              <Button className='editar' variant="warning"><i class="bi bi-pencil-square"></i></Button>
      
          </td>
        </tr>
        <tr>
          <td>Actividades sistematicas de orientación y apoyo en el desempeño personal y académico de alumnos</td>
          <td> </td>
          <td> </td>
          <td> </td>
          <td>
              <button className='btn btn-danger me-1'><i class="bi bi-trash3"></i></button>
              <Button className='editar' variant="warning"><i class="bi bi-pencil-square"></i></Button>
      
          </td>
        </tr>
        <tr>
          <td>Actividades que favorecen el crecimiento personal, a través de pláticas, talleres, conferencias, etc.</td>
          <td></td>
          <td> </td>
          <td> </td>
          <td>
              <button className='btn btn-danger me-1'><i class="bi bi-trash3"></i></button>
              <Button className='editar' variant="warning"><i class="bi bi-pencil-square"></i></Button>
      
          </td>
        </tr>
        <tr>
          <td>Actividades sistematicas de orientación y apoyo en el desempeño personal y académico </td>
          <td> </td>
          <td> </td>
          <td> </td>
          <td>
              <button className='btn btn-danger me-1'><i class="bi bi-trash3"></i></button>
              <Button className='editar' variant="warning"><i class="bi bi-pencil-square"></i></Button>
      
          </td>
        </tr>
        <tr>
          <td>Orientación a los estudiantes en su desarrollo personal y pedagógico</td>
          <td></td>
          <td> </td>
          <td> </td>
          <td>
              <button className='btn btn-danger me-1'><i class="bi bi-trash3"></i></button>
              <Button className='editar' variant="warning"><i class="bi bi-pencil-square"></i></Button>
      
          </td>
        </tr>
        <tr>
          <td>Espacios de expresión con los alumnos, tales como facebook, redes sociales, radio, revista, etc.</td>
          <td> </td>
          <td> </td>
          <td> </td>
          <td>
              <button className='btn btn-danger me-1'><i class="bi bi-trash3"></i></button>
              <Button className='editar' variant="warning"><i class="bi bi-pencil-square"></i></Button>
      
          </td>
        </tr>
        <tr>
          <td>Estimulos al desempeño académico de los alumnos</td>
          <td></td>
          <td> </td>
          <td> </td>
          <td>
              <button className='btn btn-danger me-1'><i class="bi bi-trash3"></i></button>
              <Button className='editar' variant="warning"><i class="bi bi-pencil-square"></i></Button>
      
          </td>
        </tr>
        <tr>
          <td>Servicios de seguridad</td>
          <td> </td>
          <td> </td>
          <td> </td>
          <td>
              <button className='btn btn-danger me-1'><i class="bi bi-trash3"></i></button>
              <Button className='editar' variant="warning"><i class="bi bi-pencil-square"></i></Button>
      
          </td>
        </tr>
        <tr>
          <td>Instalaciones adecuadas para las diferentes actividades curriculares</td>
          <td></td>
          <td> </td>
          <td> </td>
          <td>
              <button className='btn btn-danger me-1'><i class="bi bi-trash3"></i></button>
              <Button className='editar' variant="warning"><i class="bi bi-pencil-square"></i></Button>
      
          </td>
        </tr>
        <tr>
          <td>Actividades que promueven y facilitan el conocimiento de las artes, tales como danzza, música, teatro.</td>
          <td> </td>
          <td> </td>
          <td> </td>
          <td>
              <button className='btn btn-danger me-1'><i class="bi bi-trash3"></i></button>
              <Button className='editar' variant="warning"><i class="bi bi-pencil-square"></i></Button>
      
          </td>
        </tr>
        <tr>
          <td>Apoyo bibliográfico para complemento o refuerzo del aprendizaje.</td>
          <td></td>
          <td> </td>
          <td> </td>
          <td>
              <button className='btn btn-danger me-1'><i class="bi bi-trash3"></i></button>
              <Button className='editar' variant="warning"><i class="bi bi-pencil-square"></i></Button>
      
          </td>
        </tr>
        <tr>
          <td>Traslado de los estudiantes a la universidad </td>
          <td> </td>
          <td> </td>
          <td> </td>
          <td>
              <button className='btn btn-danger me-1'><i class="bi bi-trash3"></i></button>
              <Button className='editar' variant="warning"><i class="bi bi-pencil-square"></i></Button>
      
          </td>
        </tr>
        <tr>
          <td>Fomento de la salud por medio de actividades deportivas</td>
          <td></td>
          <td> </td>
          <td> </td>
          <td>
              <button className='btn btn-danger me-1'><i class="bi bi-trash3"></i></button>
              <Button className='editar' variant="warning"><i class="bi bi-pencil-square"></i></Button>
      
          </td>
        </tr>
        <tr>
          <td>Servicio de alimentos</td>
          <td> </td>
          <td> </td>
          <td> </td>
          <td>
              <button className='btn btn-danger me-1'><i class="bi bi-trash3"></i></button>
              <Button className='editar' variant="warning"><i class="bi bi-pencil-square"></i></Button>
      
          </td>
        </tr>
        <tr>
          <td>Servicio de becas</td>
          <td></td>
          <td> </td>
          <td> </td>
          <td>
              <button className='btn btn-danger me-1'><i class="bi bi-trash3"></i></button>
              <Button className='editar' variant="warning"><i class="bi bi-pencil-square"></i></Button>
      
          </td>
        </tr>

      </tbody>
    </Table>
        
        
        </Col>
      
      </Row>
      
    </Container>

    </div>
    
  )
}

export default Indicador4