boo<?php


session_start(); //allow for session variables in the app.

// include "include/top.inc.php";
// include "class/Utils.class.php";

// Utils::prettyPrint("SELECT * FROM Seemus.tbTable;")

// ini_set('display_errors', 1);
// ini_set('display_startup_errors', 1);
// error_reporting(E_ALL);

if(isset($_REQUEST["activity"])) {
    $activity = $_REQUEST["activity"];
} else {
    $activity = "DEFAULT";
}

?>
<html>
    <head>
        <title><?php echo $activity ?></title>
    </head>
    <body>
        <a href="index.php?activity=USER">LOGON</a> | <a href="index.php?activity=LOGOUT">LOGOUT</a> | 

        <?php
        switch($activity) {
            case "USER":
                // User Login
                if(!isset($_REQUEST["username"])) {
                    ?>
                    <form action="index.php" method=get>
                        <input type="hidden" name="activity" value="USER" />
                        <input type="text" name="username" placeholder="Username / Email" />
                        <input type="text" name="password" placeholder="Password" />
                        <input type="submit" value="Logon" />
                    </form>
                    <?php
                } else {
                    echo "<br>" . $_REQUEST["username"] . " is logged on!";
                    $_SESSION["username"] = $_REQUEST["username"];
                }
            break;

            case "LOGOUT":
                // User Logout

                // remove all session variables
                session_unset();

                // destroy the session
                session_destroy(); 
            break;

            case "VIEW":
                // View List of Content

            break;
            

            case "EDIT":
                // User Edit
                
            break;

            case "DELETE":
                // User Delete
                
            break;
            
            case "CREATE":
                // Create Content
                
            break;
            


            default:
                //default viewing of content
                ?>
                <BR>
                I'm in default
 
                <?php
            break;
        }

        ?>
    </body>
</html>

<?php
include "include/bottom.inc.php";

echo "<BR><BR>[". $_SESSION["username"] . "] is current user<br>";

?>
