    <?php 



if(isset($_GET['idcat'])){
    $id_padre = $_GET['idcat'];

$padre = $con->prepare("SELECT * FROM web.categorias WHERE id_categoria = $id_padre");
$padre->execute();
$result2 = $padre->fetch(PDO::FETCH_ASSOC);
}





?>

<!-- BREADCRUMB -->
			   
<div id="breadcrumb" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<ul class="breadcrumb-tree">
                            <li><a href="index.php">Home</a></li>
                            
                            <li><a href="index.php?seccion=product">Productos</a></li>
                        

                            <?php                             
                                if(isset($_GET['idcatp'] )){
                                if($_GET['idcatp']=0){
                            ?>                                		
							<li><a href="index.php?seccion=product&idcatp=0&idcat=<?php echo $result2["id_categoria"] ?>">
                            <?php echo $result2["nombre"] ?></a></li>
                            
                            
                            <?php } else {?> <li><a href="index.php?seccion=product&idcatp=0&idcat=<?php echo $result2["id_categoria"] ?>">
                            <?php echo $result2["nombre"] ?></a></li>
                        
                        
                            <?php    }}?>

                            <?php if(isset($_GET['idcat']) && isset($_GET['idcatp']) && $_GET['idcatp']>0){
                              
                            ?> 
							<li class="active"><a href="index.php?seccion=product&idcatp=<?php echo $sql["id_padre"] ?>&idcat=<?php echo $result2["id_categoria"] ?>">
								<?php echo $result2["nombre"]; ?></a></li><?php } ?>
						</ul>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
	</div>
		<!-- /BREADCRUMB -->


<!-- SECTION -->
<div class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <!-- ASIDE -->
            <div id="aside" class="col-md-3">
                <!-- aside Widget -->
                <div class="aside">
                    <h3 class="aside-title">Categorias</h3>

                    <?php echo printCat($con)?>

                </div>
                <!-- /aside Widget -->

                <!-- aside Widget -->
                <div class="aside">
                    <h3 class="aside-title">Marca</h3>

                    <?php echo printMarca($con, $sql)?>

                </div>

                <!-- /aside Widget -->

                <!-- aside Widget -->

                <div class="aside">
                    <h3 class="aside-title">Precio</h3>
                    <div class="price-filter">
                        <div id="price-slider"></div>
                        <div class="input-number price-min">
                            <input id="price-min" type="number">
                            <span class="qty-up">+</span>
                            <span class="qty-down">-</span>
                        </div>
                        <span>-</span>
                        <div class="input-number price-max">
                            <input id="price-max" type="number">
                            <span class="qty-up">+</span>
                            <span class="qty-down">-</span>
                        </div>
                    </div>
                </div>

                <br>
                <button onclick="window.location.href='index.php?seccion=product'" type="button" class="btn btn-primary btn-block">Borrar
                    Filtro(s)</button>
                <br>
                <!-- /aside Widget -->



                <!-- aside Widget -->
                <div class="aside">
                    <h3 class="aside-title">Top selling</h3>
                    <div class="product-widget">
                        <div class="product-img">
                            <img src="./img/product01.png" alt="">
                        </div>
                        <div class="product-body">
                            <p class="product-category">Category</p>
                            <h3 class="product-name"><a href="#">product name goes here</a></h3>
                            <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
                        </div>
                    </div>

                    <div class="product-widget">
                        <div class="product-img">
                            <img src="./img/product02.png" alt="">
                        </div>
                        <div class="product-body">
                            <p class="product-category">Category</p>
                            <h3 class="product-name"><a href="#">product name goes here</a></h3>
                            <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
                        </div>
                    </div>

                    <div class="product-widget">
                        <div class="product-img">
                            <img src="./img/product03.png" alt="">
                        </div>
                        <div class="product-body">
                            <p class="product-category">Category</p>
                            <h3 class="product-name"><a href="#">product name goes here</a></h3>
                            <h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
                        </div>
                    </div>
                </div>
                <!-- /aside Widget -->
            </div>
            <!-- /ASIDE -->

            <!-- STORE -->
            <div id="store" class="col-md-9">
                <!-- store top filter -->
                <div class="store-filter clearfix">
                    <div class="store-sort">
                        <label>
                            Sort By:
                            <select class="input-select">
                                <option value="0">Popular</option>
                                <option value="1">Position</option>
                            </select>
                        </label>

                        <label>
                            Show:
                            <select class="input-select">
                                <option value="0">20</option>
                                <option value="1">50</option>
                            </select>
                        </label>
                    </div>

                </div>
                <!-- /store top filter -->

                <!-- store products -->
                <div class="row">
                    <div class="checkbox-filter">
                        <div class="">

                            <!-- product -->
                            <?php 
                        
                                    echo printProduct($con, $sql);
                                
							?>
                            <!-- /product -->

                        </div>
                    </div>
                </div>
                <!-- /store products -->

                <!-- store bottom filter -->
                <div class="store-filter clearfix">
                    <span class="store-qty">Showing 20-100 products</span>
                    <ul class="store-pagination">
                        <li class="active">1</li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                    </ul>
                </div>
                <!-- /store bottom filter -->
            </div>
            <!-- /STORE -->
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</div>
<!-- /SECTION -->
</div>