<?php

@include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>About</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom admin css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php @include 'header.php'; ?>

<section class="heading">
    <h3>About us</h3>
    <p> <a href="home.php">Home</a> / About </p>
</section>

<section class="about">

    <div class="flex">

        <div class="image">
            <img src="images/about-img-1.png" alt="">
        </div>

        <div class="content">
            <h3>Why choose us?</h3>
            <p>At FloraLink, we believe every flower tells a story. From hand-picked blooms to carefully curated arrangements, our passion is to bring beauty and joy into your life. 
                Experience unmatched quality, eco-friendly practices, and personalized service. 
                Let us help you celebrate life's moments with elegance and charm.</p>
            <a href="shop.php" class="btn">Shop now</a>
        </div>

    </div>

    <div class="flex">

        <div class="content">
            <h3>What we provide?</h3>
            <p>Where flowers meet creativity, we deliver freshness and inspiration in every bouquet. 
                Each arrangement is crafted to bring nature’s beauty into your life, helping you celebrate love, joy, and connection. 
                From elegant classics to contemporary designs, we make every moment blossom.</p>
            <a href="contact.php" class="btn">Contact us</a>
        </div>

        <div class="image">
            <img src="images/about-img-2.jpg" alt="">
        </div>

    </div>

    <div class="flex">

        <div class="image">
            <img src="images/about-img-3.jpg" alt="">
        </div>

        <div class="content">
            <h3>Who we are?</h3>
            <p>Every flower holds a story, a touch of nature's beauty crafted to brighten your day. 
                Our shop brings you the freshest blooms, thoughtfully arranged to inspire joy and connection. 
                Discover the magic of flowers and let them bring happiness to your life today.</p>
            <a href="#reviews" class="btn">clients reviews</a>
        </div>

    </div>

</section>

<section class="reviews" id="reviews">

    <h1 class="title">Client's reviews</h1>

    <div class="box-container">

        <div class="box">
            <img src="images/pic-1.png" alt="">
            <p>Yung bouquet ko, parang Instagram feed—sobrang aesthetic! Pwede nang pang-proposal kahit wala pa akong jowa.</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            <h3>Neneng Lameg</h3>
        </div>

        <div class="box">
            <img src="images/pic-2.png" alt="">
            <p>Bro, ang solid ng flowers, pati si girlfriend napa-‘wow’! Amoy luxury pero presyo pang-tambay lang.</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>Boss Joel</h3>
        </div>

        <div class="box">
            <img src="images/pic-3.png" alt="">
            <p>Akala ko scam, pero bes, ang ganda talaga ng flowers! Sobrang affordable, parang promo sa Shopee!</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            <h3>Kween Yasmin</h3>
        </div>

        <div class="box">
            <img src="images/pic-4.png" alt="">
            <p>Buti naman dumating nang maaga, akala ko pa-cancel na. Pero sige na nga, ang ganda ng flowers, fine!</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            <h3>Dina Lego</h3>
        </div>

        <div class="box">
            <img src="images/pic-5.png" alt="">
            <p>Ang bilis mag-deliver, parang express love life ko. Pero unlike my love life, walang sablay ang quality.</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            <h3>Sanctus Espiritu</h3>
        </div>

        <div class="box">
            <img src="images/pic-6.png" alt="">
            <p>Okay naman yung flowers, sakto lang. Hindi amazing, pero hindi rin disappointing—pwede na.</p>
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            <h3>Ima G. Nation</h3>
        </div>

    </div>

</section>











<?php @include 'footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>