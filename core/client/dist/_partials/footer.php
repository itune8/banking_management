<?php
/* Persisit System Settings On Brand */
$ret = "SELECT * FROM `bm_SystemSettings` ";
$stmt = $mysqli->prepare($ret);
$stmt->execute(); //ok
$res = $stmt->get_result();
while ($sys = $res->fetch_object()) {
?>
  <footer class="main-footer">
    
  </footer>
<?php } ?>