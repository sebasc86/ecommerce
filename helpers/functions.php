<?php

$sql=''; 

function printCat($con, $id_padre = 0){
    $sql = 'SELECT * FROM categorias WHERE id_padre = '.$id_padre;
    
    $resultado = $con->query($sql);
    
    if(!empty($resultado)){
        $salida = '' ;
        
        foreach($resultado as $row){
            
            
            $salida.= 	'<div class="input-checkbox">
                            <input type="checkbox" id="category-'. $row['id_categoria']  .'">
                                <label for="category-'. $row['id_categoria'] .'">
                                    <span></span>' . 
                                    $row['nombre']
                                    . printCat($con, $row['id_categoria']) .
                                '</label>
                        </div>';
            }
            $salida.= '';
        }
        return $salida;
}

function printCatHome($con,  $id_padre = 0){
    $sql = 'SELECT * FROM categorias WHERE id_padre = '.$id_padre;
    $resultado = $con->query($sql);
    
    if(!empty($resultado)){
        $salida = '' ;
        
        foreach($resultado as $row){
           
            $salida.= '<div class="col-md-3 col-xs-6">
                        <div class="shop">
                        <div class="shop-img">
                        <img src="./imagenes/'.$row['nombre'].'/'.$row['nombre'].'.jpg" alt="">
                        </div>
                            <div class="shop-body">
                            <h3>'.$row['nombre'].'<br>Collection</h3>
                        <a href="index.php?seccion=product&idcatp='.$row['id_categoria'].'" class="cta-btn">Shop now <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
            </div>';
        }
        $salida.= '';
}
                return $salida;}


function printMarca($con, $sql){

    if(empty($sql)){
    $sql = 'SELECT * FROM web.marcas';}
    else {$sql=$sql;}
    $resultado = $con->query($sql);
    
    if(!empty($resultado)){
        $salida = '' ;
        $cont = 1;
        foreach($resultado as $row){
            $cont++;
            
            $salida.= '<div class="checkbox-filter">
                            <div class="input-checkbox">
                                <input type="checkbox" id="brand-' . $row['nombre'] . '">
                                    <label for="brand-' . $row['nombre'] . '">
                                        <span></span>
                                        ' . $row['nombre'] . '
                                        <small>(578)</small>
                                    </label>
                            </div>                
                        </div>';
            }
            $salida.='';
        
    return $salida;
}}


function printProduct($con, $sql){


    $sql = 'SELECT * FROM web.productos';
    $resultado = $con->query($sql);
    
    if(!empty($resultado)){
        $salida = '' ;
        $cont = 1;
        foreach($resultado as $row){
            $cont++;
            
            $salida.='<div class="col-sm-12 col-md-6 col-lg-4 mb-5 mb-md-3">
                                    <div class="product">
                                        <div class="product-img">
                                            <img src="./imagenes/'. $row['img'] .'" alt="">
                                        </div>
                                        <div class="product-body">
                                            <p class="product-category">' . $row['nombre'] . '</p>
                                            <h3 class="product-name"><a href="index.php?seccion=items&id=' . $row['id_producto'] . '">' . $row['modelo'] . '</a></h3>
                                            <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
                                            <div class="product-rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </div>
                                            
                                        </div>
                                        <div class="add-to-cart">
                                        
                                            <a href="index.php?seccion=items&id=' . $row['id_producto'] . '" class="add-to-cart-btn"><i class="fa fa-hand-o-right"></i>Ver más</a>
                                        
                                        </div>
                                    </div>
                    </div>';
            }
                    
        
    return $salida;
}}

function printItem($con, $id){
    $sql = 'SELECT * FROM web.productos WHERE id='.$id;
    $resultado = $con->query($sql);

    return $resultado;

}


function printProductFiltered($con, $sql){
    
    $resultado = $con->query($sql);
    
    if(!empty($resultado)){
        $salida = '' ;
        $cont = 1;
        foreach($resultado as $row){
            $cont++;
            
            $salida.='<div class="col-sm-12 col-md-6 col-lg-4 mb-5 mb-md-3">
                                    <div class="product">
                                        <div class="product-img">
                                            <img src="./imagenes/'. $row['img'] .'" alt="">
                                        </div>
                                        <div class="product-body">
                                            <p class="product-category">' . $row['nombre'] . '</p>
                                            <h3 class="product-name"><a href="index.php?seccion=items&id=' . $row['id_producto'] . '">' . $row['modelo'] . '</a></h3>
                                            <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
                                            <div class="product-rating">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </div>
                                            
                                        </div>
                                        <div class="add-to-cart">
                                        
                                            <a href="index.php?seccion=items&id=' . $row['id_producto'] . '" class="add-to-cart-btn"><i class="fa fa-hand-o-right"></i>Ver más</a>
                                        
                                        </div>
                                    </div>
                    </div>';
            }
                    
        
    return $salida;
}}