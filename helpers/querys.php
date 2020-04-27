<?php


$sql = "SELECT DISTINCT * FROM web.categorias INNER JOIN web.productos 
ON categorias.id_categoria = productos.id_categoria INNER JOIN web.marcas 
ON productos.id_marca = marcas.id_marca WHERE 1=1 ";


if(isset($_GET['idcatp'])&&isset($_GET['idcat']) && $_GET['idcatp']==0 ){

$idcatp=$_GET['idcatp'];

$idcat=$_GET['idcat'];


    $sql.=' AND categorias.id_padre='.$idcat;
    
    
    if(!empty($_GET['marca'])){
        $sql .= ' AND marcas.id_marca = '.$_GET['marca'];
    }
}else{


if(!empty($_GET['marca'])){
    $sql .= ' AND marcas.id_marca = '.$_GET['marca'];
}
if(isset($_GET['idcat'])){
    $idcat=$_GET['idcat'];
    $sql .= ' AND categorias.id_categoria = '.$_GET['idcat'];}
}

if(isset($_GET['idcatp'])&&$_GET['idcatp']>0){
    $sql.=' AND categorias.id_padre='.$_GET['idcatp'];
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
