<?php
session_start();
$con=mysqli_connect("localhost","root","","ecomm");

// Define the base directory path for the server
define('SERVER_PATH', 'C:/xampp/htdocs/Projects/skygloba/');

// Define the base URL for the website
define('SITE_PATH', 'http://localhost/Projects/skyglobal/');

// Define paths for product images
define('PRODUCT_IMAGE_SERVER_PATH', SERVER_PATH . 'media/product/');
define('PRODUCT_IMAGE_SITE_PATH', SITE_PATH . 'media/product/');

// Define paths for multiple product images
define('PRODUCT_MULTIPLE_IMAGE_SERVER_PATH', SERVER_PATH . 'media/product_images/');
define('PRODUCT_MULTIPLE_IMAGE_SITE_PATH', SITE_PATH . 'media/product_images/');

// Define paths for banner images
define('BANNER_SERVER_PATH', SERVER_PATH . 'media/banner/');
define('BANNER_SITE_PATH', SITE_PATH . 'media/banner/');
?>
