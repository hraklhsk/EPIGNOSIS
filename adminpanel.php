<!DOCTYPE html>
<html>
    <head>
    <link rel="stylesheet" type="text/css" href="styled-table.css">
    </head>
        <body>
        <div class="header">
        <a href="adminpanel.php" class="logo"> Administator Panel </a>
            <div class="header-right">
                <a class="active" href="UserCreation.php">CREATE USER</a>
                <a href="logout.php">Logout</a></p> 
            </div>
        </div>
        <div style="text-align:center;">
        <table class="table">
        <tr class="active-row">
                <th>User First Name</th>
                <th>User Last Name</th>
                <th>User Email</th>
                <th>User Type</th>
            </tr>
            <?php
            $con = mysqli_connect("localhost", "root", '', "database"); 
            $sql = "SELECT * FROM login";
            $result = $con->query($sql);
            
            if ($result->num_rows > 0) {
                while ($row = $result-> fetch_assoc()) {
                    echo "<tr><td>" . $row["first_name"] . "</td><td>" . $row["last_name"] . "</td><td>" . $row["email"] ."</td><td>" . $row["type"] . "</td><td>";
                }
            }
            else {
                echo 'ERROR';
            }
            $con-> close();
            ?>
        </table>
        </body>
</html>