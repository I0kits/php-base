<?php
  $servername = "db";
  $username = "root";
  $password = "rootpwd";

  $conn = new mysqli($servername, $username, $password);
  if ($conn->connect_error) {
    die("连接失败: " . $conn->connect_error);
  }
  echo "连接成功!";

