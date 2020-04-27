<?php



function printCat($con, $id_padre = 0){
    $sql = 'SELECT * FROM categorias WHERE id_padre = '.$id_padre;
    $resultado = $con->query($sql);
    
    if(!empty($resultado)){
        $salida = '' ;
        
        foreach($resultado as $row){
            
            if (empty($_GET['marca'])) {
                $link = 'index.php?seccion=product&idcatp='.$id_padre.'&idcat=' . $row['id_categoria']; 
            }else{    
                $link = 'index.php?seccion=product&idcatp='.$id_padre.'&idcat=' . $row['id_categoria'] . '&marca=' . $_GET['marca'];              
            }
        

            $salida.= 	'<div class="">
                            <a href="' . $link . '" .  
                            id="category-'. $row['id_categoria']  .'">
                                <label for="category-'. $row['id_categoria'] .'">
                                    <span></span>' . 
                                    $row['nombre'] .
                                    '<div class="input-checkbox">'
                                       . printCat($con, $row['id_categoria']) .
                                    '</div>
                                </label></a>
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
                return $salida;
}


function printMarca($con, $sql){
    
    $sql = $sql . ' GROUP BY productos.id_marca';    

    $resultado = $con->query($sql);
    
    if(!empty($resultado)){
        $salida = '' ;

            $cont = 0; 
            
            foreach($resultado as $row){

            
            if (empty($_GET['idcat'])) {
                    $link = 'index.php?seccion=product&marca=' . $row['id_marca']; 
            }else{    
                $link = 'index.php?seccion=product&idcatp=0&idcat=' . $_GET['idcat'] . '&marca=' . $row['id_marca'];              
            }

            $salida.= '<div class="input-checkbox">
                            <a href="' . $link . '" id="brand-' . $row['nombre'] . '">                               
                                <label for="brand-' . $row['nombre'] . '">
                                    <span></span>
                                    ' . $row['nombre'] . '
                                    <small></small>
                                </label></a>
                                </div>';    
                     
            }  
           
            $salida.='';

    return $salida;
    
    }
}


function printProduct($con, $sql){

if(!isset($sql)){
    $sql = 'SELECT * FROM web.productos';
    $resultado = $con->query($sql);}
    else{
        $resultado = $con->query($sql);}
    
    if(!empty($resultado)){
        $salida = '' ;
        $cont = 1;
        foreach($resultado as $row){
            $cont++;
            
            $salida.='<div class="col-12 col-md-6 col-lg-4 mb-5 mb-md-3">
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
            
            $salida.='<div class="col-12 col-md-6 col-lg-4 mb-5 mb-md-3">
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