<!-- put in ./www directory -->

<html>
    <head>
    <title>OH wow isnt this craze. i DIdnt lie about it tho chatgpt is so bad lmao i cant even alk about it yet

    </title>
    <style>
        
    </style>
    <meta charset="utf-8"> 


    </head>
<body>
    <div class="container">

    <?php

    $conn = mysqli_connect('db', 'user', 'test', "my_database");


    $query = '
                SELECT  
                    students.student_id, students.full_name, majors.major_name
                FROM 
                    majors
                JOIN 
                    students ON students.major_id = majors.major_id
                ORDER BY 
                    students.student_id asc;
    
    ' ;
    $result = mysqli_query($conn, $query);

    echo '<table border=1>';
    echo '<thead></th><th>Student_id</th><th>full_name</th><th>major_name</th></tr></thead>';
    while($value = $result->fetch_array(MYSQLI_ASSOC)){
        echo '<tr>';
        
        foreach($value as $element){
            echo '<td>' . $element . '</td>';
        }

        echo '</tr>';
    }
    echo '</table>';

    $result->close();

    mysqli_close($conn);

    ?>
    </div>
</body>
</html>