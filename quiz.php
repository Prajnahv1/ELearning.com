<?php 
    if (isset($_GET['id']) && is_array($_GET['id'])) {
        $id1 = $_GET['id'][0];
        $id2 = $_GET['id'][1];
    }
    ?>
<?php
include 'connect.php';
if(isset($_POST['submit'])){
  $quizid=$_POST['quizid'];
  $quizgrade=$_POST['quizgrade'];
  $quizdate=$_POST['quizdate'];
  $quiztype=$_POST['quiztype'];
  $courseid=$_POST['courseid'];
  $sql="insert into quiz(quiz_id,quiz_grade,quiz_date,quiz_type,course_id)
  values('$quizid','$quizgrade','$quizdate','$quiztype','$courseid')";
  $result=mysqli_query($con,$sql);
  if($result){
    header("location:dquiz.php?id[]={$id1}&id[]={$id2}");
}
else{
  die(mysqli_error($con));
}
}
?>




<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>quiz</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="style.css">
  
</head>

<body>
<section>
  <div class="container">
    <h1 >Enter the details</h1><br><br>
    <form method="post">
      <div class="form-group">
        <label>Quiz id</label><br>
        <input type="number" class="form-control" placeholder="Enter Quiz id" name="quizid">
      </div><br>
      <div class="form-group">
        <label>Quiz grade</label><br>
        <input type="text" class="form-control"   placeholder="Enter Quiz grade" name="quizgrade">
      </div><br>
      <div class="form-group">
        <label>Quiz date</label><br>
        <input type="date" class="form-control" placeholder="Enter Quiz date" name="quizdate">
      </div><br>
      <div class="form-group">
        <label>Quiz type</label><br>
        <input type="text" class="form-control" placeholder="Enter Quiz type" name="quiztype">
      </div><br>
      <div class="form-group">
        <label>Course id</label><br>
        <input type="number" class="form-control" placeholder="Enter Course id" name="courseid">
      </div><br>
      
      <button type="submit" class="btn btn-primary" name="submit">Submit</button>
    </form>
    <br>
    <button class="btn btn-primary "><a href="entity.php?id[]=<?php echo $id1; ?>&id[]=<?php echo $id2; ?>" class="text-light">Entites</a></button>
      <button  class="btn btn-primary" ><a href="dquiz.php?id[]=<?php echo $id1; ?>&id[]=<?php echo $id2; ?>" class="text-light">Quiz Display </a></button>
  </div>
</section>
</body>

</html>
