<?php
header('Content-Type: application/json');

$host = "localhost";
$user = "root"; // Change if using a different DB user
$pass = "";
$dbname = "startup_events";

$conn = new mysqli($host, $user, $pass, $dbname);

if ($conn->connect_error) {
    die(json_encode(["error" => "Database connection failed"]));
}

$sql = "SELECT * FROM events ORDER BY date ASC";
$result = $conn->query($sql);

$events = [];
while ($row = $result->fetch_assoc()) {
    $events[] = $row;
}

echo json_encode($events);

$conn->close();
?>
