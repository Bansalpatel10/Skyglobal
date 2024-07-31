<?php require 'top.php'?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <div class="row">
        <div class="contact-form-wrap mt--60">
            <div class="col-xs-12">
                <div class="contact-title">
                    <h2 class="title__line--6">RETURN ORDER DETAIL</h2>
                </div>
            </div>
            <div class="col-xs-12">
                <?php
                // Check if the form has been submitted
                if ($_SERVER['REQUEST_METHOD'] == 'POST') {
                    $order_id = $_POST['order_id'];
                    $name = $_POST['name'];
                    $email = $_POST['email'];
                    $problem = $_POST['problem'];

                    // Connect to the database
                    $host = 'localhost';
                    $user = 'root';
                    $password = '';
                    $dbname = 'ecomm';

                    $conn = mysqli_connect($host, $user, $password, $dbname);

                    if (!$conn) {
                        die('Connection failed: ' . mysqli_connect_error());
                    }

                    // Insert the form data into the database
                    $sql = "INSERT INTO return_order (order_id, name, email, problem) VALUES ('$order_id', '$name', '$email', '$problem')";

                    if (mysqli_query($conn, $sql)) {
                        echo '<p class="form-messege">Message sent successfully!</p>';
                    } else {
                        echo '<p class="form-messege">Error: ' . mysqli_error($conn) . '</p>';
                    }

                    // Close the database connection
                    mysqli_close($conn);
                }
                ?>
                <form id="contact-form" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post">
                    <div class="single-contact-form">
                        <div class="contact-box name">
                            <input type="text" id="order_id" name="order_id" placeholder="Order Id" required>
                            <input type="text" id="name" name="name" placeholder="Your Name" required>
                            <input type="email" id="email" name="email" placeholder="Email" required>
                        </div>
                    </div>

                    <div class="single-contact-form">
                        <div class="contact-box message">
                            <textarea name="problem" id="problem" placeholder="Your Problem" required></textarea>
                        </div>
                    </div>
                    <div class="contact-btn">
                        <button type="submit" class="fv-btn">Send MESSAGE</button>
                    </div>
                </form>
                <div class="form-output">
                    <p class="form-messege"></p>
                </div>
            </div>
        </div>
    </div>
</body>

</html>

<?php require 'footer.php'?>