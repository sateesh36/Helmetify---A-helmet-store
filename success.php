<!DOCTYPE html>
<html>
<head>
    <title>Payment Successful</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
        }
        .container {
            margin-top: 100px;
            padding: 20px;
            border-radius: 10px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 50%;
            margin: 0 auto;
        }
        h1 {
            color: green;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Payment Successful</h1>
        <p>Thank you for your purchase!</p>
        <p>You will be redirected to the home page in <span id="countdown">4</span> seconds.</p>
    </div>

    <script>
        var countdown = 4;
        var timer = setInterval(function() {
            countdown--;
            document.getElementById('countdown').textContent = countdown;
            if (countdown <= 0) {
                clearInterval(timer);
                window.location.href = 'http://localhost/ecommerce/index.php';
            }
        }, 1000);
    </script>
</body>
</html>
