<?php

$db=mysqli_connect("localhost",'root',"",'prac_db');
if(isset($_POST['insert']))
{
    $sql="insert into php_tbl values('".$_POST['nm']."','".$_POST['dept']."','".$_POST['mob']."')";
    echo $sql;

    $run= mysqli_query($db, $sql);

    if($run)
    {
        echo "Data Inserted";
    }
     else {
         echo "Error to insert Data";
    }
}
else if(isset($_POST['delete']))
{
    $sql="delete from php_tbl where name='".$_POST['nm']."'";
    echo $sql;

    $run= mysqli_query($db, $sql);

    if($run)
    {
        echo "Data DELETED";
    }
     else {
         echo "Error to DELETE Data";
    }  
}
else if(isset($_POST['update']))
{
    $sql="update php_tbl set dept='".$_POST['dept']."',name='".$_POST['nm']."',mob='".$_POST['mob']."' where name='".$_POST['nm']."'";
    echo $sql;

    $run= mysqli_query($db, $sql);

    if($run)
    {
        echo "Data UPDATED";
    }
     else {
         echo "Error to UPDATE Data";
    }  
}
else if(isset($_POST['display']))
{
    $sql="select * from php_tbl";
    echo $sql."<br>";

    $run= mysqli_query($db, $sql);

    while($row=mysqli_fetch_assoc($run))
    {
        echo $row['name']."   ".$row['dept']."    ".$row['mob']."<br>";
    }  
}


