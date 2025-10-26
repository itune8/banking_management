<?php
include('conf/pdoconfig.php');
if (!empty($_POST["Banking ManagementAccountType"])) {
    //get bank account rate
    $id = $_POST['Banking ManagementAccountType'];
    $stmt = $DB_con->prepare("SELECT * FROM bm_Acc_types WHERE  name = :id");
    $stmt->execute(array(':id' => $id));
?>
<?php
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
?>
<?php echo htmlentities($row['rate']); ?>
<?php
    }
}

if (!empty($_POST["Banking ManagementAccNumber"])) {
    //get  back account transferables name
    $id = $_POST['Banking ManagementAccNumber'];
    $stmt = $DB_con->prepare("SELECT * FROM bm_bankAccounts WHERE  account_number= :id");
    $stmt->execute(array(':id' => $id));
?>
<?php
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
?>
<?php echo htmlentities($row['acc_name']); ?>
<?php
    }
}

if (!empty($_POST["Banking ManagementAccHolder"])) {
    //get  back account transferables name
    $id = $_POST['Banking ManagementAccHolder'];
    $stmt = $DB_con->prepare("SELECT * FROM bm_bankAccounts WHERE  account_number= :id");
    $stmt->execute(array(':id' => $id));
?>
<?php
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
?>
<?php echo htmlentities($row['client_name']); ?>
<?php
    }
}

?>


