
<?php 
    if (isset($_GET['id']) && is_array($_GET['id'])) {
        $id1 = $_GET['id'][0];
        $id2 = $_GET['id'][1];
    }
    ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Page with Header and Sidebar</title>
    <style>
     body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url(img.jpg);
        }

        header {
            background-color: #1a444b;
            backdrop-filter: blur(150px);
            color: white;
            padding: 54px;
            text-align: center;
        }
        .icon{
          position: absolute;
            top: 34px; 
            right: 5px;
        }
        

        a{
            text-decoration: none;
            color: black;
        }

        section{
            min-height: 100vh;
            background-image: url(img3.webp);
  background-repeat: no-repeat;
  background-position: center;
  background-size: cover;
        }
        button{
            width: 10%;
            height:50px;
        }
        button {
    width: 10%;
    height: 52px;
    border-radius: 40px;
    background-color: rgb(255, 255,255, 1);
    border: none;
    outline: none;
    cursor: pointer;
    font-size: 1rem;
    font-weight: 600;
    transition: all 0.4s ease;
}

button:hover {
  background-color: rgb(255, 255,255, 0.5);
}
.x0{
    background-color: transparent;
            border-radius: 20px;
            
    backdrop-filter: blur(800px);
            position: absolute;
            top: 260px; 
            left: 10px;
            
            color: Black;
            padding: 9px;
           
}
    </style>
</head>
<body>

<header>
    <h1>About Project</h1><br>
    <div class="icon"><ion-icon name="person" style="font-size: 5em;"></ion-icon><br>


    <?php 
    if (isset($_GET['id']) && is_array($_GET['id'])) {
        $id1 = $_GET['id'][0];
        $id2 = $_GET['id'][1];
        echo "Username: <strong>$id1</strong><br>";
        echo "Email id: <strong>$id2</strong><br>";
    } else {
        echo '<button style="width: 100px;" onclick="window.location.href=\'index.php\'">Login Here</button>'; 
    }
?></div>
    
    <button><a href="content.php?id[]=<?php echo $id1; ?>&id[]=<?php echo $id2; ?>" >Home</a></button>
    <button><a href="entity.php?id[]=<?php echo $id1; ?>&id[]=<?php echo $id2; ?>" >Your Details</a></button>
    <button><a href="queries.php?id[]=<?php echo $id1; ?>&id[]=<?php echo $id2; ?>" >Search</a></button>
    <button>History</button>
    
    <button>About</button>
    <button><a href="index.php" >Sign Out</a></button>
</header>


<section>
   <div class="x0"><h3><br><br><br><br>E-learning platforms have become indispensable tools with diverse applications across education and professional development. In academic settings, schools and universities leverage these platforms to deliver courses, share resources, and foster communication between students and educators. They also play a crucial role in online degree programs, enabling remote learning opportunities. In the realm of professional development, e-learning platforms are widely utilized for corporate training, covering topics like compliance, safety, and job-specific skills. They cater to individual skill development as well, offering courses in areas ranging from programming and design to languages and project management.<br><br>

Certification and courses find a natural home on e-learning platforms, providing individuals with pathways to professional certifications and specialized knowledge. Language learning is facilitated through interactive courses, employing multimedia resources and practice exercises. Technical and IT training are prominent applications, with coding bootcamps and certification courses equipping learners with essential skills for the rapidly evolving tech industry. Soft skills development is another facet, offering courses on leadership, communication, teamwork, and time management.<br><br>

The healthcare sector benefits from e-learning for Continuing Medical Education (CME) credits, ensuring medical professionals stay abreast of the latest advancements. Governments and nonprofit organizations utilize e-learning for employee training, compliance, public education, and volunteer management. Additionally, these platforms serve as conduits for personal development, offering courses on hobbies, arts, philosophy, and supporting lifelong learning endeavors. E-learning platforms thus stand as versatile tools, democratizing education and training across various industries and fields while promoting continuous learning throughout individuals' lives.

</h3>



</div>
    
</section>
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>


</body>
</html>
