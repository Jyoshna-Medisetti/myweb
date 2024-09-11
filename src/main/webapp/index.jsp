<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jyoshna Fashion Store</title>
    <style>
        /* Global Styles */
        body {
            margin: 0;
            font-family: 'Roboto', sans-serif;
            background-color: #121212;
            color: #f1f1f1;
            overflow-x: hidden;
        }

        header {
            background-color: #1e1e1e;
            padding: 20px;
            text-align: center;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }

        header img {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            margin-bottom: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
        }

        header h1 {
            margin: 0;
            font-size: 2.5em;
            letter-spacing: 3px;
            animation: fadeInDown 1.5s ease-out;
            color: #ffcc00;
        }

        nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
            justify-content: center;
            margin-top: 10px;
        }

        nav ul li {
            margin: 0 20px;
            animation: slideIn 2s ease-out;
        }

        nav ul li a {
            color: #f1f1f1;
            text-decoration: none;
            font-size: 1.3em;
            transition: color 0.3s ease;
        }

        nav ul li a:hover {
            color: #ff4081;
        }

        /* Home Page */
        .home {
            padding-top: 120px;
            text-align: center;
            animation: fadeIn 2s ease-out;
            background: linear-gradient(to bottom, #ffcc00, #ff4081);
            padding: 100px 0;
        }

        .home h2 {
            font-size: 3.5em;
            margin-bottom: 20px;
            animation: bounceIn 2s ease-out;
            color: #1e1e1e;
        }

        .home p {
            font-size: 1.5em;
            animation: slideInUp 2s ease-out;
            color: #1e1e1e;
        }

        /* About Us Page */
        .about {
            padding: 100px 20px;
            text-align: center;
            background-color: #1e1e1e;
            color: #f1f1f1;
        }

        .about h2 {
            font-size: 3em;
            margin-bottom: 20px;
            animation: fadeInLeft 2s ease-out;
        }

        .about p {
            font-size: 1.2em;
            max-width: 800px;
            margin: 0 auto;
            line-height: 1.6;
            animation: fadeInUp 2s ease-out;
        }

        /* Products Page */
        .products {
            padding: 100px 20px;
            text-align: center;
            background-color: #121212;
        }

        .products h2 {
            font-size: 3.5em;
            margin-bottom: 20px;
            animation: fadeInLeft 2s ease-out;
            color: #ffcc00;
        }

        .products .product-grid {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            animation: zoomIn 2s ease-out;
        }

        .products .product-item {
            width: 30%;
            margin-bottom: 30px;
            animation: rotateIn 2s ease-out;
            background-color: #1e1e1e;
            padding: 15px;
            border-radius: 10px;
            transition: transform 0.3s ease;
        }

        .products .product-item:hover {
            transform: scale(1.05);
        }

        .products .product-item img {
            width: 100%;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
        }

        .products .product-item p {
            font-size: 1.5em;
            color: #ff4081;
        }

        /* Testimonials Section */
        .testimonials {
            padding: 100px 20px;
            text-align: center;
            background-color: #121212;
            color: #f1f1f1;
        }

        .testimonials h2 {
            font-size: 3em;
            margin-bottom: 20px;
            animation: fadeInRight 2s ease-out;
            color: #ffcc00;
        }

        .testimonial-item {
            background-color: #1e1e1e;
            padding: 20px;
            margin: 20px 0;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
            animation: fadeInUp 2s ease-out;
        }

        .testimonial-item p {
            font-size: 1.2em;
            line-height: 1.6;
        }

        .testimonial-item h3 {
            margin-top: 10px;
            font-size: 1.5em;
            color: #ff4081;
        }

        /* Contact Page */
        .contact {
            padding: 100px 20px;
            text-align: center;
            background-color: #1e1e1e;
            color: #f1f1f1;
        }

        .contact h2 {
            font-size: 3em;
            margin-bottom: 20px;
            animation: fadeInRight 2s ease-out;
        }

        .contact form {
            width: 50%;
            margin: 0 auto;
            animation: fadeInUp 2s ease-out;
        }

        .contact form input,
        .contact form textarea {
            width: 100%;
            padding: 15px;
            margin-bottom: 20px;
            border: none;
            border-radius: 5px;
            font-size: 1.2em;
            background-color: #333;
            color: #f1f1f1;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5);
        }

        .contact form button {
            padding: 15px 30px;
            font-size: 1.2em;
            background-color: #ff4081;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .contact form button:hover {
            background-color: #ff1a75;
        }

        footer {
            background-color: #1e1e1e;
            text-align: center;
            padding: 20px;
            position: fixed;
            width: 100%;
            bottom: 0;
            box-shadow: 0 -4px 8px rgba(0, 0, 0, 0.3);
        }

        footer p {
            margin: 0;
            font-size: 1em;
        }

        footer p a {
            color: #ff4081;
            text-decoration: none;
        }

        /* Animations */
        @keyframes fadeInDown {
            0% {
                opacity: 0;
                transform: translateY(-50px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes slideIn {
            0% {
                opacity: 0;
                transform: translateX(-50px);
            }
            100% {
                opacity: 1;
                transform: translateX(0);
            }
        }

        @keyframes fadeIn {
            0% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }

        @keyframes bounceIn {
            0% {
                opacity: 0;
                transform: scale(0.5);
            }
            100% {
                opacity: 1;
                transform: scale(1);
            }
        }

        @keyframes slideInUp {
            0% {
                opacity: 0;
                transform: translateY(50px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes fadeInLeft {
            0% {
                opacity: 0;
                transform: translateX(-50px);
            }
            100% {
                opacity: 1;
                transform: translateX(0);
            }
        }

        @keyframes zoomIn {
            0% {
                opacity: 0;
                transform: scale(0.5);
            }
            100% {
                opacity: 1;
                transform: scale(1);
            }
        }

        @keyframes rotateIn {
            0% {
                opacity: 0;
                transform: rotate(-180deg);
            }
            100% {
                opacity: 1;
                transform: rotate(0);
            }
        }

        @keyframes fadeInUp {
            0% {
                opacity: 0;
                transform: translateY(50px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes fadeInRight {
            0% {
                opacity: 0;
                transform: translateX(50px);
            }
            100% {
                opacity: 1;
                transform: translateX(0);
            }
        }
    </style>
</head>
<body>

<header>
    <img src="https://via.placeholder.com/80" alt="Jyoshna">
    <h1>Jyoshna Fashion Store</h1>
    <nav>
        <ul>
            <li><a href="#home">Home</a></li>
            <li><a href="#about">About Us</a></li>
            <li><a href="#products">Products</a></li>
            <li><a href="#testimonials">Testimonials</a></li>
            <li><a href="#contact">Contact</a></li>
        </ul>
    </nav>
</header>

<section id="home" class="home">
    <h2>Welcome to Jyoshna Fashion Store</h2>
    <p>Discover the latest trends in fashion</p>
</section>

<section id="about" class="about">
    <h2>About Us</h2>
    <p>Jyoshna Fashion Store is your one-stop destination for stylish and affordable clothing. We pride ourselves on offering a wide range of fashion choices that cater to every taste and occasion. Our mission is to make fashion accessible to everyone, while maintaining the highest quality standards. Join us on a journey of style and elegance.</p>
</section>

<section id="products" class="products">
    <h2>Our Products</h2>
    <div class="product-grid">
        <div class="product-item">
            <img src="https://via.placeholder.com/300x400" alt="Product 1">
            <p>Women Dress</p>
        </div>
        <div class="product-item">
            <img src="https://via.placeholder.com/300x400" alt="Product 2">
            <p>Women Jacket</p>
        </div>
        <div class="product-item">
            <img src="https://via.placeholder.com/300x400" alt="Product 3">
            <p>Women Gown</p>
        </div>
        <div class="product-item">
            <img src="https://via.placeholder.com/300x400" alt="Product 1">
            <p>Kid Dress</p>
        </div>
        <div class="product-item">
            <img src="https://via.placeholder.com/300x400" alt="Product 2">
            <p>Kid Jacket</p>
        </div>
        <div class="product-item">
            <img src="https://via.placeholder.com/300x400" alt="Product 3">
            <p>Kid Gown</p>
        </div>
        <div class="product-item">
            <img src="https://via.placeholder.com/300x400" alt="Product 1">
            <p>Men Dress</p>
        </div>
        <div class="product-item">
            <img src="https://via.placeholder.com/300x400" alt="Product 2">
            <p>Men Jacket</p>
        </div>
        <div class="product-item">
            <img src="https://via.placeholder.com/300x400" alt="Product 3">
            <p>Men Pant</p>
        </div>
        <div class="product-item">
            <img src="https://via.placeholder.com/300x400" alt="Product 1">
            <p>Lipstic</p>
        </div>
        <div class="product-item">
            <img src="https://via.placeholder.com/300x400" alt="Product 2">
            <p>Lipstic</p>
        </div>
        <div class="product-item">
            <img src="https://via.placeholder.com/300x400" alt="Product 3">
            <p>Lipstic</p>
        </div>
    </div>
</section>

<section id="testimonials" class="testimonials">
    <h2>What Our Customers Say</h2>
    <div class="testimonial-item">
        <p>"I absolutely love the quality and style of the clothes I purchased from Jyoshna Fashion Store. The service was top-notch, and I received my order quickly. I'll definitely be shopping here again!"</p>
        <h3>- Cherry</h3>
    </div>
    <div class="testimonial-item">
        <p>"Amazing Quality and Design!"
I recently purchased a dress from Jyoshna Fashion Store, and I'm absolutely in love with it! The fabric is of excellent quality, and the design is so unique. I've received so many compliments. Highly recommend!"</p>
        <h3>- Anu</h3>
    </div>
        <div class="testimonial-item">
        <p>"Exceptional Customer Service"
The team at Jyoshna Fashion Store went above and beyond to help me find the perfect outfit. They were patient, attentive, and really understood what I was looking for. The whole shopping experience was fantastic!"</p>
        <h3>- Harshi</h3>
    </div>
    <div class="testimonial-item">
        <p>"Trendy and Affordable"
Jyoshna Fashion Store offers a great selection of trendy clothing at very reasonable prices. I found exactly what I was looking for without breaking the bank. Will definitely shop here again!"</p>
        <h3>- Tripura</h3>
    </div>
        <div class="testimonial-item">
        <p>"Fast Shipping and Perfect Fit"
I was impressed with how quickly my order arrived from Jyoshna Fashion Store. The clothes fit perfectly, and the sizing guide was spot on. I'm thrilled with my purchase!!"</p>
        <h3>- Shreya</h3>
    </div>
    <div class="testimonial-item">
        <p>"Beautiful Collection"
Jyoshna Fashion Store has such a beautiful collection of clothing! The variety is amazing, and there’s something for every occasion. I’ve already added a few more items to my wishlist."</p>
        <h3>- Pavan</h3>
    </div>
</section>

<section id="contact" class="contact">
    <h2>Contact Us</h2>
    <form>
        <input type="text" placeholder="Your Name" required>
        <input type="email" placeholder="Your Email" required>
        <textarea placeholder="Your Message" rows="5" required></textarea>
        <button type="submit">Send Message</button>
    </form>
</section>

<footer>
    <p>&copy; 2024 Jyoshna Fashion Store. All rights reserved. <a href="mailto:pavan.aningi1998@gmail.com">Contact Us</a></p>
</footer>

</body>
</html>
