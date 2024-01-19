<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Szkola</title>
</head>
<body>
    <h1>Uczniowie</h1>
    <section>
        <h2>Lista uczniów</h2>
        <table>
            <?php
               $link = new mysqli('localhost', 'root', '', '4e_2_szkola');

               $sql = " SELECT * FROM uczen";
               $result = $link -> query($sql);

               while ($row = $result->fetch_row()){
                  echo "<tr>";

                  foreach ($row as $field){
                    echo "<td>$field</td>";
                  }

                  echo "</tr>";
               }

               $uczniowie = $result->fetch_all();
               foreach($uczniowie as $uczen){
                echo "<tr>";

                foreach ($uczen as $field){
                  echo "<td>$field</td>";
                }

                echo "</tr>"; 
               }

               $link -> close(); 
            ?>
        </table>
    </section>
</body>
</html>