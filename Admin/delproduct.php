<?php 
require"config.php";
require"model/db.php";
require"model/product.php";

$products=new Product();
if(isset($_GET['id'])){
    $products->delProduct($_GET['id']);
}
header('location:products.php');