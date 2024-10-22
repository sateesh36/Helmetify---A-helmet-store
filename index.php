<?php include 'includes/session.php'; ?>

<?php include 'includes/header.php'; ?>
<link href="https://fonts.googleapis.com/css2?family=Poppins&family=Varela+Round&display=swap" rel="stylesheet">
<body class="hold-transition skin-blue layout-top-nav">
	<style>
		.row{
    		display: flex;
    		align-items: center;
    		flex-wrap: wrap;
    		justify-content: space-between;
		}
		.header{
    		/* background: radial-gradient(#f3d4d4,#fff); */
		}
		.container p{
			/* font-family: 'Poppins', sans-serif; */
    		text-align: left;
    		font-weight: 500;
    		font-size: 16px;
			/* font-weight:400; */
		}
		.container{
			font-family: 'Poppins', sans-serif;

    		max-width: 1300px;
    		margin: auto;
    		padding-left: 25px;
    		padding-right: 25px;
		}
		.col-2{
    		flex-basis: 50%;
    		min-width: 300px;
		}
		.col-2 img{
    		max-width: 100%;
    		padding: 50px 0;
		}

		.col-2 h1{
			font-family: 'Poppins', sans-serif;
			font-weight:1000;
    		font-size: 50px;
    		line-height: 60px;
    		margin:25px 0 ;
		}
		p{
			color: #555;
    		margin-top: 3px;
		}

		.title{
			font-weight:600;
    		text-align: center;
   			margin: 25px auto ;
    		position: relative;
    		line-height: 60px;
    		color: #555;
		}
		.title::after{
    		content: '';
    		background:#ff523b;
    		width: 80px;
    		height: 5px;
    		border-radius: 5px;
    		position: absolute;
    		bottom: 0;
    		left: 50%;
    		transform: translateX(-50%);
		}
		.category-name{
			color: #ff523b;
    		font-weight: bold; 
		}

	</style>
<div class="wrapper">

	<?php include 'includes/navbar.php'; ?>
	 
	  <div class="content-wrapper">
	    
		<div class="header">
		<div class="container">
		<div class="row">
        <div class="col-2">
            <h1>Grab your helmet <br> Ride Safe!</h1>
            <p>  Life is better on two wheels. Always wear a helmet when you ride. 
            <br> Getting out on the bike this fall is about so much more than just snapping pictures. </p>
        </div>
        <div class="col-2">
                <img src="images/mai.png"  >
        </div>
    </div>
	</div>

	    </div>
		

		<h2 class="title">Recent Products</h2>

	  <?php
		       			
		       			$conn = $pdo->open();

		       			try{
		       			 	$inc = 3;	
						    $stmt = $conn->prepare("SELECT * FROM products ORDER BY id DESC LIMIT 3");
						    $stmt->execute();
						    foreach ($stmt as $row) {
						    	$image = (!empty($row['photo'])) ? 'images/'.$row['photo'] : 'images/noimage.jpg';
						    	$inc = ($inc == 3) ? 1 : $inc + 1;
	       						if($inc == 1) echo "<div class='row' style='background:#a0b5cb9e; margin:0 25px; border-radius:5px; padding:20px 0 20px 60px;'>";
	       						echo "
	       							<div class='col-sm-4'>
	       								<div class='box box-solid' style = ' width:290px;'>
		       								<div class='box-body prod-body'style=''>
		       									<img src='".$image."' width='100%' height='230px' class='thumbnail'>
		       									<h5><a href='product.php?product=".$row['slug']."'>".$row['name']."</a></h5>
		       								</div>
		       								<div class='box-footer'>
		       									<b>Rs. ".number_format($row['price'], 2)."</b>
		       								</div>
	       								</div>
	       							</div>
	       						";
	       						if($inc == 3) echo "</div>";
						    }
						    if($inc == 1) echo "<div class='col-sm-4'></div><div class='col-sm-4'></div></div>"; 
							if($inc == 2) echo "<div class='col-sm-4'></div></div>";
						}
						catch(PDOException $e){
							echo "There is some problem in connection: " . $e->getMessage();
						}

						$pdo->close();

		       		?> 
			
		
			<h2 class="title">Categories</h2>


 <div class="row" style="background:#a0b5cb9e; margin:0 25px; border-radius:5px; padding:20px 0 20px 60px;">
    <div class="col-sm-4">
        <div class="box box-solid" style="width: 290px; background: #a0b5cb9e; border-radius: 5px; padding: 20px; margin-bottom: 20px;">
            <div class="box-body prod-body">
                <a href="category.php?category=full-helmet">
                    <img src="/ecommerce/images/smk-twister-cartoon.jpg" alt="Full Helmet" class="img-responsive" style="max-width: 100%; height: auto;">
                </a>
            </div>
            <div class="box-footer">
                <h4 class="text-center category-name"><a href="category.php?category=full-helmet" style="color: #333;">Full Helmet</a></h4>
            </div>
        </div>
    </div>

    <div class="col-sm-4">
        <div class="box box-solid" style="width: 290px; background: #a0b5cb9e; border-radius: 5px; padding: 20px; margin-bottom: 20px;">
            <div class="box-body prod-body">
                <a href="category.php?category=half-helmet">
                    <img src="/ecommerce/images/axor-jet-gloss-black.jpg" alt="Half Helmet" class="img-responsive" style="max-width: 100%; height: auto;">
                </a>
            </div>
            <div class="box-footer">
                <h4 class="text-center category-name"><a href="category.php?category=half-helmet" style="color: #333;">Half Helmet</a></h4>
            </div>
        </div>
    </div>

    <div class="col-sm-4">
        <div class="box box-solid" style="width: 290px; background: #a0b5cb9e; border-radius: 5px; padding: 20px; margin-bottom: 20px;">
            <div class="box-body prod-body">
                <a href="category.php?category=dirt-helmet">
                    <img src="/ecommerce/images/soman-dirt-matt-orange-neon.jpg" alt="Dirt Helmet" class="img-responsive" style="max-width: 100%; height: auto;">
                </a>
            </div>
            <div class="box-footer">
                <h4 class="text-center category-name"><a href="category.php?category=dirt-helmet" style="color: #333;">Dirt Helmet</a></h4>
            </div>
        </div>
    </div>
 </div>

  	
</div>


<?php include 'includes/footer.php'; ?>


<?php include 'includes/scripts.php'; ?>
</body>
</html>