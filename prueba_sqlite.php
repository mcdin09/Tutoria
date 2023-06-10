<?php
$db = new SQLite3('tutoria.db');
print("Hecho!");
$results = $db->query('SELECT * FROM profesor');
while ($row = $results->fetchArray()) {
    var_dump($row);
    print("\n");
}
?>