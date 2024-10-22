

<?php
session_start();


$uid = $_SESSION['user'];
echo $uid;

$dsn = 'mysql:host=localhost;dbname=ecomm';
$username = 'root';
$password = '';


try {
    // Create a new PDO instance
    $pdo = new PDO($dsn, $username, $password);
    
    // Set PDO to throw exceptions on error
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    // Prepare the SQL query
    $stmt = $pdo->prepare('SELECT SUM(products.price * cart.quantity) AS total_amount
                            FROM cart
                            INNER JOIN products ON cart.product_id = products.id
                            WHERE cart.user_id = :uid');
    
    // Bind the parameter
    $stmt->bindParam(':uid', $uid, PDO::PARAM_INT);
    
    // Execute the query
    $stmt->execute();
    
    // Fetch the result
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    
    // Total amount
    $totalAmount = $result['total_amount'];
    
    echo 'Total Product Amount: ' . $totalAmount;
    
} catch(PDOException $e) {
    // Handle any errors
    echo 'Error: ' . $e->getMessage();
}

$paisa = $totalAmount * 100;

$curl = curl_init();
curl_setopt_array($curl, array(
CURLOPT_URL => 'https://a.khalti.com/api/v2/epayment/initiate/',
CURLOPT_RETURNTRANSFER => true,
CURLOPT_ENCODING => '',
CURLOPT_MAXREDIRS => 10,
CURLOPT_TIMEOUT => 0,
CURLOPT_FOLLOWLOCATION => true,
CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
CURLOPT_CUSTOMREQUEST => 'POST',
CURLOPT_POSTFIELDS =>'{
"return_url": "http://localhost/ecommerce/success.php",
"website_url": "https://example.com/",
"amount": "' . $paisa . '",
"purchase_order_id": "Order01",
    "purchase_order_name": "test",

"customer_info": {
    "name": "Satish",
    "email": "satish@gmail.com",
    "phone": "9800000000"
}
}

',
CURLOPT_HTTPHEADER => array(
    'Authorization: key live_secret_key_68791341fdd94846a146f0457ff7b455',
    'Content-Type: application/json',
),
));

$response = curl_exec($curl);

curl_close($curl);
echo $response;

if(!empty($response)){
    $responseData = json_decode($response, true);

    if(isset($responseData['payment_url'])){
        $value = $responseData['payment_url'];
        echo $value;
        header("Location: $value");
    }else{
        echo "Payment url not found in response.";
    }
}else{
    echo "Empty response received.";
}
?>