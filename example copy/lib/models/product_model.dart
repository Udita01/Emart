import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  final List<String> image;
  final String review;
  final String seller;
  final double price;
  final List<Color> colors;
  final String category;
  final double rate;
  int quantity;

  Product(
      {required this.title,
      required this.review,
      required this.description,
      required this.image,
      required this.price,
      required this.colors,
      required this.seller,
      required this.category,
      required this.rate,
      required this.quantity});
}

final List<Product> all = [
  Product(
    title: "Earpods",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: [
      "images/all/wireless.png",
      "images/all/wirelessbl.jpg",
      "images/all/wirelessor.jpg",
    ],
    price: 1299,
    seller: "Tariqul isalm",
    colors: [
      Colors.black,
      Colors.blue,
      Colors.orange,
    ],
    category: "Electronics",
    review: "(320 Reviews)",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "iPhone",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: [
      "images/all/sweet.png",
      "images/all/sweetgr.jpg",
      "images/all/sweetgn.png"
    ],
    price: 70999,
    seller: "Joy Store",
    colors: [
      Colors.black,
      Colors.grey,
      Colors.green,
    ],
    category: "Woman Fashion",
    review: "(32 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Smart Watch",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: [
      "images/all/miband.jpg",
      "images/all/mibanda.png",
      "images/all/mibandp.png",
    ],
    price: 19999,
    seller: "Ram Das",
    colors: [
      Colors.black,
      Colors.amber,
      Colors.purple,
    ],
    category: "Electronics",
    review: "(20 Reviews)",
    rate: 4.0,
    quantity: 1,
  ),
  Product(
    title: "Flash Drive",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: [
      "images/all/jacket.jpg",
      "images/all/jacketbg.png",
      "images/all/jacketb.jpg"
    ],
    price: 1550,
    seller: "USB Store",
    colors: [
      Colors.red,
      Colors.blueGrey,
      Colors.blue,
    ],
    category: "Electronics",
    review: "(20 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Watch",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: [
      "images/men fashion/watch.png",
      "images/men fashion/watchbr.png",
      "images/men fashion/watchbl.png"
    ],
    price: 3000,
    seller: "Watch Store",
    colors: [
      Colors.green,
      Colors.brown,
      Colors.black,
    ],
    category: "MenFashion",
    review: "(100 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Air Jordan",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: [
      "images/shoes/Air Jordan.png",
      "images/shoes/Air Jordan or.png",
      "images/shoes/Air Jordan pr.png",
    ],
    price: 8255,
    seller: "The Seller",
    colors: [
      Colors.grey,
      Colors.amber,
      Colors.purple,
    ],
    category: "Shoes",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Laptop",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: [
      "images/electronics/laptop1.jpg",
      "images/electronics/laptop2.jpg",
      "images/electronics/laptop3.jpg",
    ],
    price: 105000,
    seller: "ABC Seller",
    colors: [
      Colors.grey,
      Colors.blueGrey,
      Colors.brown,
    ],
    category: "electronics",
    review: "(99 Reviews)",
    rate: 4.7,
    quantity: 1,
  ),
  Product(
    title: "Wedding Ring",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: [
      "images/jewelery/wedding ring.png",
      "images/jewelery/wedding ring g.png",
      "images/jewelery/wedding ring rg.png"
    ],
    price: 2500000,
    seller: "I Am Seller",
    colors: [
      Colors.grey,
      Colors.yellow,
      Colors.orange,
    ],
    category: "jewelery",
    review: "(80 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "  Pants",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: [
      "images/women fashion/pants.png",
      "images/women fashion/pants bg.png",
      "images/women fashion/pants p.png"
    ],
    price: 1550,
    seller: "PK Store",
    colors: [
      Colors.white,
      Colors.blueGrey,
      Colors.pinkAccent,
    ],
    category: "WomenFashion",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
];

final List<Product> shoes = [
  Product(
    title: "Air Jordan",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: [
      "images/shoes/Air Jordan.png",
      "images/shoes/Air Jordan or.png",
      "images/shoes/Air Jordan pr.png",
    ],
    price: 14000,
    seller: "The Seller",
    colors: [
      Colors.grey,
      Colors.amber,
      Colors.purple,
    ],
    category: "Shoes",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Vans Old Skool",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: [
      "images/shoes/vans old skool.png",
      "images/shoes/vans old skool g.png",
      "images/shoes/vans old skool gr.png",
    ],
    price: 8000,
    seller: "Mrs Store",
    colors: [
      Colors.blueAccent,
      Colors.blueGrey,
      Colors.green,
    ],
    category: "Shoes",
    review: "(200 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Pumps",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: [
      "images/shoes/women-shoes.png",
      "images/shoes/women-shoes b.png",
      "images/shoes/women-shoes y.png",
    ],
    price: 3000,
    seller: "Shoes Store",
    colors: [
      Colors.red,
      Colors.black,
      Colors.yellow,
    ],
    category: "Shoes",
    review: "(100 Reviews)",
    rate: 4.8,
    quantity: 1,
  ),
  Product(
    title: "Sports Shoes",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: [
      "images/shoes/sports shoes.png",
      "images/shoes/sports shoes.png",
      "images/shoes/sports shoes.png"
    ],
    price: 15500,
    seller: "Hari Store",
    colors: [
      Colors.blueAccent,
      Colors.greenAccent,
      Colors.yellowAccent,
    ],
    category: "Shoes",
    review: "(60 Reviews)",
    rate: 3.0,
    quantity: 1,
  ),
  Product(
    title: "High-knee Boots",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: [
      "images/shoes/womens-boots.png",
      "images/shoes/womens-boots br.png",
      "images/shoes/womens-boots pk.jpg",
    ],
    price: 22000,
    seller: "Shoe Store",
    colors: [
      Colors.black,
      Colors.brown,
      Colors.pinkAccent,
    ],
    category: "Shoes",
    review: "(00 Reviews)",
    rate: 0.0,
    quantity: 1,
  ),
];

final List<Product> electronics = [
  Product(
    title: "Hp Laptop",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: [
      "images/electronics/laptop1.jpg",
      "images/electronics/laptop2.jpg",
      "images/electronics/laptop3.jpg",
    ],
    price: 150000,
    seller: "XYZ",
    colors: [
      Colors.brown,
      Colors.amber,
      Colors.blueGrey,
    ],
    category: "Electronics",
    review: "(200 Reviews)",
    rate: 4.0,
    quantity: 1,
  ),
  Product(
    title: "Lenovo Laptop",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: [
      "images/electronics/laptop2.jpg",
      "images/electronics/laptop3.jpg",
      "images/electronics/laptop1.jpg",
    ],
    price: 105000,
    seller: "Love Seller",
    colors: [
      Colors.blue,
      Colors.black,
      Colors.grey,
    ],
    category: "Electronics",
    review: "(99 Reviews)",
    rate: 4.7,
    quantity: 1,
  ),
  Product(
    title: "Asus Laptop",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: [
      "images/electronics/laptop3.jpg",
      "images/electronics/laptop1.jpg",
      "images/electronics/laptop2.jpg",
    ],
    price: 99900,
    seller: "Mr Beast",
    colors: [
      Colors.black12,
      Colors.orange,
      Colors.white38,
    ],
    category: "Electronics",
    review: "(20 Reviews)",
    rate: 4.2,
    quantity: 1,
  ),
];

final List<Product> womenFashion = [
  Product(
    title: " Women Kurta",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: [
      "images/women fashion/kurta.png",
      "images/women fashion/kurtaw.png",
      "images/women fashion/kurtap.png",
    ],
    price: 2990,
    seller: "Sila Store",
    colors: [
      Colors.green,
      Colors.white,
      Colors.blue,
    ],
    category: "WomenFashion",
    review: "(25 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Dress",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: [
      "images/women fashion/lehenga.png",
      "images/women fashion/lehengab.png",
      "images/women fashion/lehengar.jpg",
    ],
    price: 6660,
    seller: "My Store",
    colors: [
      Colors.blue,
      Colors.black,
      Colors.red,
    ],
    category: "WomenFashion",
    review: "(100 Reviews)",
    rate: 4.0,
    quantity: 1,
  ),
  Product(
    title: "T-Shert",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: [
      "images/women fashion/t-shirts.png",
      "images/women fashion/t-shirtsp.png",
      "images/women fashion/t-shirtsw.png",
    ],
    price: 1550,
    seller: "Love Store",
    colors: [
      Colors.purpleAccent,
      Colors.pinkAccent,
      Colors.white,
    ],
    category: "WomenFashion",
    review: "(20 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "  Pants",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: [
      "images/women fashion/pants.png",
      "images/women fashion/pants bg.png",
      "images/women fashion/pants p.png",
    ],
    price: 1550,
    seller: "PK Store",
    colors: [
      Colors.white,
      Colors.blueGrey,
      Colors.deepPurple,
    ],
    category: "WomenFashion",
    review: "(55 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
];
final List<Product> jewelery = [
  Product(
    title: "Earrings",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: [
      "images/jewelery/earrings.png",
      "images/jewelery/earringsp.png",
      "images/jewelery/earringsd.png",
    ],
    price: 3000,
    seller: "Gold Store",
    colors: [
      Colors.amber,
      Colors.grey,
      Colors.white,
    ],
    category: "jewelery",
    review: "(320 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Jewelery-Box",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: [
      "images/jewelery/jewelry-box.png",
      "images/jewelery/jewelry-boxbr.png",
      "images/jewelery/jewelry-boxbl.png",
    ],
    price: 3000,
    seller: "Love Love",
    colors: [
      Colors.redAccent,
      Colors.brown,
      Colors.black,
    ],
    category: "Jewelery",
    review: "(100 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Wedding Ring",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: [
      "images/jewelery/wedding ring.png",
      "images/jewelery/wedding ring g.png",
      "images/jewelery/wedding ring rg.png",
    ],
    price: 250000,
    seller: "I Am Seller",
    colors: [
      Colors.orangeAccent,
      Colors.yellow,
      Colors.pinkAccent,
    ],
    category: "Jewelery",
    review: "(80 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Necklace-Jewellery",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: [
      "images/jewelery/necklace-jewelleryb.png",
      "images/jewelery/necklace-jewellery.png",
      "images/jewelery/necklace-jewelleryg.png",
    ],
    price: 350000,
    seller: "Jewelery Store",
    colors: [
      Colors.blueAccent,
      Colors.grey,
      Colors.green,
    ],
    category: "Jewellery",
    review: "(22 Reviews)",
    rate: 3.5,
    quantity: 1,
  ),
];
final List<Product> menFashion = [
  Product(
    title: "Man Jacket",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: [
      "images/men fashion/man jacket.png",
      "images/men fashion/man jacketg.png",
      "images/men fashion/man jacketb.png",
    ],
    price: 5000,
    seller: "Men Store",
    colors: [
      Colors.brown,
      Colors.green,
      Colors.black,
    ],
    category: "MenFashion",
    review: "(90 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Men Pants",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: [
      "images/men fashion/pants.png",
      "images/men fashion/pantso.png",
      "images/men fashion/pantsg.png",
    ],
    price: 4000,
    seller: "My Store",
    colors: [
      Colors.black54,
      Colors.orange,
      Colors.green,
    ],
    category: "MenFashion",
    review: "(500 Reviews)",
    rate: 4.5,
    quantity: 1,
  ),
  Product(
    title: "Men Shirt",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: [
      "images/men fashion/shirt.png",
      "images/men fashion/shirtb.png",
      "images/men fashion/shirtbl.png",
    ],
    price: 1300,
    seller: "Roman Store",
    colors: [
      Colors.red,
      Colors.black,
      Colors.blue,
    ],
    category: "menFashion",
    review: "(200 Reviews)",
    rate: 3.0,
    quantity: 1,
  ),
  Product(
    title: "T-Shirt",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: [
      "images/men fashion/t-shirt.png",
      "images/men fashion/t-shirtp.png",
      "images/men fashion/t-shirtbl.png",
    ],
    price: 1200,
    seller: "Hot Store",
    colors: [
      Colors.grey,
      Colors.purple,
      Colors.blue,
    ],
    category: "MenFashion",
    review: "(1k Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
  Product(
    title: "Watch",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Donec massa sapien faucibus et molestie ac feugiat. In massa tempor nec feugiat nisl. Libero id faucibus nisl tincidunt.",
    image: [
      "images/men fashion/watch.png",
      "images/men fashion/watchbl.png",
      "images/men fashion/watchbr.png",
    ],
    price: 4000,
    seller: "Jacket Store",
    colors: [
      Colors.green,
      Colors.black,
      Colors.brown,
    ],
    category: "MenFashion",
    review: "(100 Reviews)",
    rate: 5.0,
    quantity: 1,
  ),
];
