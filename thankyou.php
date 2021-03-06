<?php  
    $contactName = filter_input(INPUT_POST, 'name');
    $contactPhone = filter_input(INPUT_POST, 'number');
    $contactMail = filter_input(INPUT_POST, 'mail');
    $contactMessage = filter_input(INPUT_POST, 'contactMessage');
    $employeeID = rand(1, 20);
    
    // Validate inputs
    if ($contactName == null || $contactMail == null ||
        $contactMessage === null) {
        $error = "Invalid input data. Check all fields and try again.";
        echo "Form Data Error: " . $error; 
        exit();
        } else {
            $dsn = 'mysql:host=localhost;dbname=larryTables';
            $username = 'root';
            $password = 'Pa$$w0rd';

            try {
                $db = new PDO($dsn, $username, $password);
                insertIntoDatabase($contactName, $contactPhone, $contactMail, $contactMessage, $employeeID, $db);

            } catch (PDOException $e) {
                $error_message = $e->getMessage();
                echo "DB Error: " . $error_message; 
                exit();
            }
        }
            //inserts information into database
            function insertIntoDatabase($contactName, $contactPhone, $contactMail, $contactMessage, $employeeID, $db){
            // Add the product to the database  
            $query = 'INSERT INTO contact
                         (employeeID, contactName, contactPhone, contactMail, contactMessage)
                      VALUES
                         (:employeeID, :contactName, :contactPhone, :contactMail, :contactMessage)';
            $statement = $db->prepare($query);
            $statement->bindValue(':employeeID', $employeeID);
            $statement->bindValue(':contactName', $contactName);
            $statement->bindValue(':contactPhone', $contactPhone);
            $statement->bindValue(':contactMail', $contactMail);
            $statement->bindValue(':contactMessage', $contactMessage);
            $statement->execute();
            $statement->closeCursor();
            }

?>
<!DOCTYPE html>
<html>
<head>
<title>Larry's American Burgers Thank You</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="Family run restaurant that focuses mainly on hamburgers." />
    <meta name="keywords" content="food,hamburgers,rastaurant,family" />
    <link href="../css/Style.css" rel="stylesheet">
    <link href="../css/Print.css" rel="stylesheet" media="print">
    <link rel="apple-touch-icon" sizes="180x180" href="../images/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="../images/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x`6" href="../images/favicon-16x16.png">
    <link rel="manifest" href="../images/site.webmanifest">
</head>

<body>
<header>
     <!-- Header -->
    <h1>Larry's American Burgers</h1>
<nav>
    <!-- Navigation -->
    <a id ="navicon" href="#"><img src="images/iconfinder_menu-alt_134216.png" alt=""/></a>
<ul>
    <li><a href="index.html">Home</a></li>
    <li><a href="about.html">About Us</a></li>
    <li><a href="menu.html">Menu</a></li>
    <li><a href="times.html">Business Hours</a></li>
    <li><a href="contact.html">Contact Us</a></li>
</ul>
</nav>
</header>
<!-- Thank you message -->
<main>
<h1>Thank you, <?php echo $contactName; ?> for leaving your comment</h1>
<p>If needed we will get back to you in order to improve our customer service</p>
</main>
    <!-- Footer -->
    <footer>
    <h3>Check out our social media!</h3>
    <a href="https://www.facebook.com/" target="_blank"><img src="../images/facebook.png" alt="facebook logo" /></a>
    <a href="https://twitter.com/" target="_blank"><img src="../images/twitter.png" alt="twitter logo" /></a>
    <h3>Contact Us:</h3>
    <p> 11532 W Place Rd. <br/> <br/>
    <a href="">Larrysburgers@gmail.com</a><br/><br/>
    <a href="">(208)546-7324</a></p>
</footer>
</body>

</html>
