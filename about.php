<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<link href="https://fonts.googleapis.com/css2?family=Poppins&family=Varela+Round&display=swap" rel="stylesheet">
<style>
    .container{
    font-family: 'Poppins', sans-serif;
    max-width: 1300px;
    margin: auto;
    padding-left: 25px;
    padding-right: 25px;
}
.row{
    display: flex;
    align-items: center;
    flex-wrap: wrap;
    justify-content: space-between;
}
.container .col-1{
    margin: 10px;
    padding: 10px;
    display: flex;
    justify-content: center;
} 
p{

    color: #555;
    margin-top: 3px;
}

.container p{
    text-align: left;
    font-weight: 500;
    font-size: 16px;
}
.title{
    padding:4px;
    text-align: center;
    margin: 0 auto 40px;
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

</style>
<body class="hold-transition skin-blue layout-top-nav">
    <div class="wrapper">
        <?php include 'includes/navbar.php'; ?>
        <div class="content-wrapper">
        <div class="header">
        <div class="container">
        <div class="title" >
            <h2>About Us</h2>
        </div>
        <div class="row">
        <div class="col-1">
            <img src="images/Group.jpg" width="500px" >
            <div class="col-1">
                <p>HelmetStore is our project which is an online Ecommerce Website. We sell fashion with protection ensuring quality and with the promise of reliability. But above all, one thing we prioritize in selling is “Road Safety”.
                    <br>
                    <br>
                    We don’t just sell Helmets; we do it by advocating ROAD SAFETY.
                    Our team, comprised of motorcycle enthusiasts make sure that they cater to our customers with our company’s values of Thinking ahead, Building Solidarity, and Ensuring Road Safety in mind. And those values are reflected in helping you choose the right gear that protects you throughout all your rides and saves your life in an accident.</p>
            </div>
        </div>
        </div>
        </div>
        </div>
    </div>
        <?php include 'includes/footer.php'; ?>
    </div>
<?php include 'includes/scripts.php'; ?>
</body>
</html>