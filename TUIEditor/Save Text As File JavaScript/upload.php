<?php
echo move_uploaded_file(
  $_FILES["upfile"]["tmp_name"], 
  "demosssssssssssssss.txt"
) ? "OK" : "ERROR UPLOADING";