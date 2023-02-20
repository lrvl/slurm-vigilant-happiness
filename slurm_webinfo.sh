#!/bin/bash
echo -n > index.html
{
cat <<EOF
<!DOCTYPE html>
<head><meta http-equiv="Refresh" content="5"></head>
<html>
<style media="screen">
#wrapper {
   width: 70%;
   margin: 20px auto;
   max-width: 900px;
   border-radius: 20px;
   background: #ddd;
   padding: 10px;
}
.col {
   padding: 10px;
   }
html { height: 100%; }
body {
  height: 100%;
  margin: 0;
  background-repeat: no-repeat;
  background-image: linear-gradient(#FFFFFF, #080c80);
}
pre  { color: #080c80; }
</style>
<body>
<div id="wrapper">
<div class="col">
EOF
  echo '<h1>Deltares HPC 2023</h1>'
  echo "<pre>"
  ~/slurm_showq/showq -q debug
  figlet squeue
  squeue
  figlet sinfo
  sinfo -l
  echo "</pre>"
  echo "</body></html>"
} >> index.html
