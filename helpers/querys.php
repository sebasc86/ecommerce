<?php


$sql = "SELECT DISTINCT * FROM web.categorias INNER JOIN web.productos 
ON categorias.id_categoria = productos.id_categoria INNER JOIN web.marcas 
ON productos.id_marca = marcas.id_marca WHERE 1=1 ";

if(isset($_GET['idcatp'])){
$idcatp=$_GET['idcatp'];

if(isset($_GET['idcat'])){
$idcat=$_GET['idcat'];}

if($idcatp==0){


    $sql.=' AND categorias.id_padre='.$idcat;
}
else{
    
    $sql.=' AND categorias.id_padre='.$idcatp;

if(!empty($_GET['idcat'])){
    $sql .= ' AND categorias.id_categoria = '.$_GET['idcat'];
}

if(!empty($_GET['marca'])){
    $sql .= ' AND marcas.id_marca = '.$_GET['marca'];

}
}
}
/*if(empty($_GET['order'])){
        case 'D':
            $sql .= ' ORDER BY destacada ASC';
            break;
        case 'R':
            $sql .= ' ORDER BY ranking ASC';
            break;
        case 'Z':
            $sql .= ' ORDER BY nombre DESC';
            break;
        default:
            $sql .= ' ORDER BY nombre ASC';

    }
}  
*/
