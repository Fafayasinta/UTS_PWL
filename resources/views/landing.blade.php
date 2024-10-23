<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Landing Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="{{ asset('style.css') }}">
</head>
<body>
    <header>
        <div class="header-container">
            <div class="logo">FayCake</div>
            <nav>
                <a href="#home">Home</a>
                <a href="#about">About</a>
                <a href="#menu">Menu</a>
                <a href="#review">Review</a>
                <a href="#contact">Contact</a>

                <!-- Tombol Login -->
                <a href="{{ route('login') }}" class="login-button">Login</a>
            </nav>
        </div>
    </header>


    {{-- home --}}
    <section class="home-section">
        <div class="content-container">
            <div class="text-content">
                <h1>Bring you Happiness through a piece of cake</h1>
                <p>Reach out to us to place an order or ask about our many menu options. We'd love to help you create a memorable dessert experience.</p>
                <div class="buttons">
                    <a href="#" class="btn-primary">Order Now</a>
                    <a href="#" class="btn-secondary">See all menus</a>
                </div>
            </div>
            <div class="image-content">
                <img src="assets/birthday-cake.png" alt="Delicious Cake">
            </div>
        </div>
    </section>

    {{-- about --}}
<section id="about">
    <h2>Tentang Kami</h2>
    <p>Kami adalah toko kue yang berdedikasi untuk memberikan pengalaman manis kepada pelanggan kami.</p>
</section>

{{-- menu --}}
<section id="menu">
    <h2>Menu</h2>
    <p>Temukan berbagai pilihan kue yang lezat dan menggugah selera.</p>
    <div class="menu-container">
        <div class="card">
            <img src="kue1.jpg" alt="Kue 1">
            <h3>Kue Coklat</h3>
            <p>Lezatnya kue coklat dengan lapisan krim yang lembut.</p>
            <span class="price">Rp 25.000</span>
        </div>
        <div class="card">
            <img src="kue2.jpg" alt="Kue 2">
            <h3>Kue Keju</h3>
            <p>Kue keju yang creamy dan nikmat, cocok untuk semua suasana.</p>
            <span class="price">Rp 30.000</span>
        </div>
        <div class="card">
            <img src="kue3.jpg" alt="Kue 3">
            <h3>Kue Strawberry</h3>
            <p>Kue segar dengan lapisan stroberi yang menggoda.</p>
            <span class="price">Rp 28.000</span>
        </div>
        <div class="card">
            <img src="kue4.jpg" alt="Kue 4">
            <h3>Kue Tiramisu</h3>
            <p>Rasa kopi yang khas dalam kue tiramisu yang lembut.</p>
            <span class="price">Rp 35.000</span>
        </div>
    </div>
</section>

{{-- review --}}
<section id="review">
    <h2>Ulasan Pelanggan</h2>
    <p>Berikut adalah beberapa ulasan dari pelanggan kami:</p>
    <div class="review-container">
        <div class="review-card">
            <i class="fas fa-user"></i>
            <p>“Kue terbaik yang pernah saya rasakan! Layanan pelanggan yang luar biasa!”</p>
            <span class="customer-name">- Pelanggan Bahagia</span>
        </div>
        <div class="review-card">
            <i class="fas fa-user"></i>
            <p>“Rasa kue ini sangat menggoda! Pasti akan kembali lagi.”</p>
            <span class="customer-name">- Pelanggan Setia</span>
        </div>
        <div class="review-card">
            <i class="fas fa-user"></i>
            <p>“Pengiriman cepat dan kue tiba dalam keadaan segar. Sangat puas!”</p>
            <span class="customer-name">- Pelanggan Puas</span>
        </div>
        <div class="review-card">
            <i class="fas fa-user"></i>
            <p>“Kue coklatnya luar biasa! Saya sangat merekomendasikannya.”</p>
            <span class="customer-name">- Cinta Kue</span>
        </div>
    </div>
</section>

{{-- contact --}}
<section id="contact">
    <h2>Kontak Kami</h2>
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


{{-- footer --}}
<footer>
    <div class="container">
        <p>&copy; 2024 Faycake. All Rights Reserved.</p>
    </div>
</footer>


</body>
</html>
