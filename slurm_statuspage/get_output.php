<?php
$output = "";
$output .= shell_exec("date");
$output .= shell_exec("top -n 1");
$output .= shell_exec("uptime");
echo '<div id="output">' . nl2br(htmlspecialchars($output)) . '</div>';
?>

