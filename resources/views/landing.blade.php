<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Font Awesome -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
      integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />

    <!-- Font Poppins -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <!-- CSS -->
    <link rel="stylesheet" href="{{ asset('style.css') }}">

    <title>Landing Page</title>
</head>
<body>
    <!-- HEADER -->
    <header class="header">
        <div class="header-container">
            <div class="logo">FayCake</div>
            <nav class="nav">
                <ul class="nav-list">
                    <li><a href="#home">Home</a></li>
                    <li><a href="#about">About</a></li>
                    <li><a href="#menu">Menu</a></li>
                    <li><a href="#review">Review</a></li>
                    <li><a href="#contact">Contact</a></li>
                    <li><a href="{{ route('login') }}" class="login-button">Login</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <!-- HOME SECTION -->
    <section id="home" class="home">
        <div class="container">
            <div class="box-content">
                <div class="box">
                    <h1 class="heading-primary">The Cake Shop</h1>
                    <p>Sebagian besar pemasaran restoran ditargetkan untuk mendapatkan pelanggan baru melewatkan kesempatan untuk membangun loyalitas dengan pelanggan lama dan saat ini.</p>
                </div>
                <div class="box">
                    <img src="img/cake-image.jpg" alt="Cake Image" class="hero-img"/>
                </div>
            </div>
        </div>
    </section>

    <!-- ABOUT SECTION -->
    <section id="about">
        <h2 class="heading-secondary">Tentang Kami</h2>
        <p>Kami adalah toko kue yang berdedikasi untuk memberikan pengalaman manis kepada pelanggan kami.</p>
    </section>

    <!-- MENU SECTION -->
    <section id="menu">
        <h2 class="heading">Menu</h2>
        <p>Temukan berbagai pilihan kue yang lezat dan menggugah selera.</p>
        <div class="menu-container">
            <div class="card">
                <img src="img/kue1.jpg" alt="Kue 1">
                <h3>Kue Coklat</h3>
                <p>Lezatnya kue coklat dengan lapisan krim yang lembut.</p>
                <span class="price">Rp 25.000</span>
            </div>
            <div class="card">
                <img src="img/kue2.jpg" alt="Kue 2">
                <h3>Kue Keju</h3>
                <p>Kue keju yang creamy dan nikmat, cocok untuk semua suasana.</p>
                <span class="price">Rp 30.000</span>
            </div>
            <div class="card">
                <img src="img/kue3.jpg" alt="Kue 3">
                <h3>Kue Strawberry</h3>
                <p>Kue segar dengan lapisan stroberi yang menggoda.</p>
                <span class="price">Rp 28.000</span>
            </div>
            <div class="card">
                <img src="img/kue4.jpg" alt="Kue 4">
                <h3>Kue Tiramisu</h3>
                <p>Rasa kopi yang khas dalam kue tiramisu yang lembut.</p>
                <span class="price">Rp 35.000</span>
            </div>
            <div class="card">
                <img src="img/kue5.jpg" alt="Kue 5">
                <h3>Kue Matcha</h3>
                <p>Perpaduan rasa teh hijau matcha dan krim manis yang seimbang.</p>
                <span class="price">Rp 32.000</span>
            </div>
            <div class="card">
                <img src="img/kue6.jpg" alt="Kue 6">
                <h3>Kue Red Velvet</h3>
                <p>Lezatnya kue red velvet dengan lapisan krim keju yang lembut.</p>
                <span class="price">Rp 33.000</span>
            </div>
        </div>
    </section>

    <!-- REVIEW SECTION -->
    <section id="review">
        <h2 class="heading-pelanggan">Ulasan Pelanggan</h2>
        <p>Berikut adalah beberapa ulasan dari pelanggan kami:</p>
        <div class="review-container">
            <div class="review-card">
                <p>“Kue terbaik yang pernah saya rasakan! Layanan pelanggan yang luar biasa!”</p>
                <span class="customer-name">- Pelanggan Bahagia</span>
            </div>
            <div class="review-card">
                <p>“Rasa kue ini sangat menggoda! Pasti akan kembali lagi.”</p>
                <span class="customer-name">- Pelanggan Setia</span>
            </div>
            <div class="review-card">
                <p>“Pengiriman cepat dan kue tiba dalam keadaan segar. Sangat puas!”</p>
                <span class="customer-name">- Pelanggan Puas</span>
            </div>
            <div class="review-card">
                <p>“Kue coklatnya luar biasa! Saya sangat merekomendasikannya.”</p>
                <span class="customer-name">- Cinta Kue</span>
            </div>
        </div>
    </section>

    <!-- CONTACT SECTION -->
    <section id="contact">
        <h2 class="heading-contact">Kontak Kami</h2>
        <p>Jika Anda memiliki pertanyaan, jangan ragu untuk menghubungi kami di: <a href="mailto:info@faycake.com">info@faycake.com</a></p>
        <p><strong>Nomor Telepon:</strong> +62 812-3456-7890</p>
        <p><strong>Alamat:</strong> Jl. Contoh No.123, Kota, Negara</p>

        <div class="social-icons">
            <a href="https://www.facebook.com" target="_blank"><i class="fab fa-facebook"></i></a>
            <a href="https://www.instagram.com" target="_blank"><i class="fab fa-instagram"></i></a>
            <a href="https://www.twitter.com" target="_blank"><i class="fab fa-twitter"></i></a>
            <a href="https://www.linkedin.com" target="_blank"><i class="fab fa-linkedin"></i></a>
        </div>
    </section>

    <!-- FOOTER -->
    <footer>
        <div class="footer">
            <p>&copy; 2024 Faycake. All Rights Reserved.</p>
        </div>
    </footer>
</body>
</html>
