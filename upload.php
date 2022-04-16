<?php
// connect to the database
$conn = mysqli_connect('localhost', 'root', '', 'equaldb');

// Uploads files
if ($_SERVER['REQUEST_METHOD'] == 'POST')
{    // name of the uploaded file
    $filename = $_FILES['file-input']['name'];

    // destination of the file on the server
    $destination = 'uploads/' . $filename;

    // get the file extension
    $extension = pathinfo($filename, PATHINFO_EXTENSION);

    // the physical file on a temporary uploads directory on the server
    $file = $_FILES['file-input']['tmp_name'];

    
        // move the uploaded (temporary) file to the specified destination
        if (move_uploaded_file($file, $destination)) {
            $sql = "INSERT INTO files (name) VALUES ('$filename')";
            if (mysqli_query($conn, $sql)) {
                echo "Ngarkimi u krye me sukses. Faleminderit qe jeni bere pjese e jona me kontributin tuaj. Shtimi i tyre do te vije menjehere sapo te kontrollohet permbajtja e tyre.";
            }
        } else {
            echo "Ngarkimi deshtoi.Ju lutem provoni perseri.";
        }
    
}