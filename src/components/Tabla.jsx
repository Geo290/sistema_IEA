import React, { useState } from 'react';
import { Button, Modal, Form, Table } from 'react-bootstrap';
import NavBar from "./NavBar"

const Tabla = () => {
  const [showModal, setShowModal] = useState(false);
  const [programas, setProgramas] = useState([]);
  const [nuevoPrograma, setNuevoPrograma] = useState('');
  const [nuevoPuntajeM, setNuevoPuntajeM] = useState('');
  const [nuevoPuntaje, setNuevoPuntaje] = useState('');
  const [programaSeleccionado, setProgramaSeleccionado] = useState(null);

  const agregarPrograma = () => {
    const programa = {
      nombre: nuevoPrograma,
      mujer: nuevoPuntajeM,
      puntaje: nuevoPuntaje
    };

    setProgramas([...programas, programa]);
    resetForm();
    handleCloseModal();
  };

  const actualizarPrograma = () => {
    const programasActualizados = programas.map((programa) => {
      if (programa === programaSeleccionado) {
        return {
          ...programa,
          nombre: nuevoPrograma,
          mujer: nuevoPuntajeM,
          puntaje: nuevoPuntaje
        };
      }
      return programa;
    });

    setProgramas(programasActualizados);
    resetForm();
    handleCloseModal();
  };

  const eliminarPrograma = () => {
    const programasActualizados = programas.filter(
      (programa) => programa !== programaSeleccionado
    );

    setProgramas(programasActualizados);
    resetForm();
    handleCloseModal();
  };

  const resetForm = () => {
    setNuevoPrograma('');
    setNuevoPuntajeM('');
    setNuevoPuntaje('');
    setProgramaSeleccionado(null);
  };

  const handleCloseModal = () => {
    setShowModal(false);
  };

  const handleShowModal = () => {
    setShowModal(true);
  };

  const handleEditPrograma = (programa) => {
    setNuevoPrograma(programa.nombre);
    setNuevoPuntajeM (programa.mujer);
    setNuevoPuntaje(programa.puntaje);
    setProgramaSeleccionado(programa);
    handleShowModal();
  };
  return (
    <div>
      <NavBar />
      <br/>
      <br/>
      <h2>Tasa de cobertura: Incremento de matrícula</h2>
      <hr></hr>
      <Button variant="outline-success" onClick={handleShowModal}>
        Añadir Registro
      </Button>
      <br/>
      <br/>
      <table class="table">
        <thead>
          <tr>
            <th>Programa</th>
            <th>Matrucula Mujeres</th>
            <th>Matrucula Hombres</th>
            <th>Acciones</th>
          </tr>
        </thead>
        <tbody>
          {programas.map((programa, index) => (
            <tr key={index}>
              <td>{programa.nombre}</td>
              <td>{programa.mujer}</td>
              <td>{programa.puntaje}</td>
              <td>
                <Button
                  variant="info"
                  onClick={() => handleEditPrograma(programa)}
                  className="mr-"
                >
                  Actualizar
                </Button>{' '}
                <Button
                  variant="danger"
                  onClick={() => eliminarPrograma(programa)}
                >
                  Eliminar
                </Button>{' '}
              </td>
            </tr>
          ))}
        </tbody>
      </table>

      <Modal show={showModal} onHide={handleCloseModal}>
        <Modal.Header closeButton>
          <Modal.Title>
            {programaSeleccionado ? 'Actualizar Registro' : 'Añadir Registro'}
          </Modal.Title>
        </Modal.Header>
        <Modal.Body>
          <Form>
            <Form.Group controlId="formPrograma">
              <Form.Label>Programa Educativo</Form.Label>
              <Form.Control
                type="text"
                placeholder="Ingrese el nombre del programa"
                value={nuevoPrograma}
                onChange={(e) => setNuevoPrograma(e.target.value)}
              />
            </Form.Group>

            <Form.Group controlId="formPuntaje">
              <Form.Label>Total Matricula Mujeres</Form.Label>
              <Form.Control
                type="text"
                placeholder="Ingrese el total"
                value={nuevoPuntajeM}
                onChange={(e) => setNuevoPuntajeM(e.target.value)}
              />
            </Form.Group>

            <Form.Group controlId="formPuntaje">
              <Form.Label>Total Matricula Hombres</Form.Label>
              <Form.Control
                type="text"
                placeholder="Ingrese el total"
                value={nuevoPuntaje}
                onChange={(e) => setNuevoPuntaje(e.target.value)}
              />
            </Form.Group>
          </Form>
        </Modal.Body>
        <Modal.Footer>
          <Button variant="secondary" onClick={handleCloseModal}>
            Cancelar
          </Button>
          {programaSeleccionado ? (
            <Button variant="primary" onClick={actualizarPrograma}>
              Actualizar
            </Button>
          ) : (
            <Button variant="primary" onClick={agregarPrograma}>
              Guardar
            </Button>
          )}
        </Modal.Footer>
      </Modal>
    </div>
  );
}

export default Tabla