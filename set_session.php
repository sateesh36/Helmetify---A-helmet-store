<?php
session_start();

if (isset($_POST['total'])) {
    // Set the received total value into a PHP session variable
    $_SESSION['total'] = $_POST['total'];
    echo "Total value set in session: " . $_SESSION['total'];
} else {
    echo "Total value not received.";
}
?>