<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index()
    {
        return view('welcome_message');
    }


public function test1($cedula){
$this->db=\Config\Database::connect();
$query=$this->db->query("select * from  datos d where d.cedula='$cedula'");
$variable=$query->getResult();

return $this->response->setJson($variable);
}



public function insert($cedula, $nombre, $apellido, $genero){
    $this->db=\Config\Database::connect();
    $query=$this->db->query("INSERT INTO datos
    (cedula, nombre, apellido, genero) VALUES('$cedula', '$nombre', '$apellido', '$genero')");
    if ($query) {
        $variable = 'Registro añadido con éxito';
    } else {
        $variable = 'El registro falló';
    }
    
    return $this->response->setJson($variable);
}



public function update($cedula, $nombre, $apellido, $genero){
    $this->db = \Config\Database::connect();
    $query = $this->db->query(" UPDATE datos SET nombre = '$nombre', apellido = '$apellido', genero = '$genero' 
    WHERE cedula = '$cedula'");
    
    if ($query) {
        $variable = 'Registro actualizado con éxito';
    } else {
        $variable = 'La actualización falló';
    }
    
    return $this->response->setJson($variable);
}



public function delete($cedula, $nombre, $apellido, $genero) {
    $this->db = \Config\Database::connect();
    $query = $this->db->query(" DELETE FROM datos WHERE cedula = '$cedula' AND nombre = '$nombre' AND apellido = '$apellido'
        AND genero = '$genero'");
    
    if ($query) {
        $variable = 'Registro eliminado exitosamente';
    } else {
        $variable = 'La eliminación falló';
    }

    return $this->response->setJSON($variable);
}    

}