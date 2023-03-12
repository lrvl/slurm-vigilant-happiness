<?php
$output = "";
$output .= shell_exec("date");
$output .= shell_exec("top -bn 1 | head -50");
$output .= shell_exec("uptime");
echo '<div id="output">' . nl2br(htmlspecialchars($output)) . '</div>';
?>

