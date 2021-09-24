import 'package:shoes_shop/models/product.dart';
import 'package:flutter/material.dart';
import 'package:shoes_shop/models/review.dart';
import 'package:shoes_shop/models/shoes_brend.dart';

List<Color> _dummyColors = [
  Colors.black,
  Colors.white,
  Colors.green,
  Colors.orange,
  Colors.yellow,
  Colors.lightBlue,
];
String _nikeLogo = 'assets/svg/nike.svg';
String _addidasLogo = 'assets/svg/adidas.svg';
String _reebokLogo = 'assets/svg/adidas.svg';
String _pumaLogo = 'assets/svg/puma.svg';

String _userImageUrl =
    'https://img.freepik.com/free-photo/portrait-young-bearded-hipster-man-looking-camera-taking-selfie-against-yellow_58466-11455.jpg?size=626&ext=jpg';
String _reviewContent =
    'I am quite happy with this product and would recommend it to everyone. I am quite happy with this product and would recommend it to everyone. I am quite happy with this product and would recommend it to everyone.';

List<Product> dummyData = [
  Product(
    name: 'NMD_R1 SHOES',
    price: 140.00,
    totalRating: 5.0,
    avaliableColors: _dummyColors,
    images: [
      'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/414a0af449a94f17b0eead8f00ebaea2_9366/NMD_R1_Shoes_Beige_GZ8025_01_standard.jpg',
      'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/aaa48ab17a614954990ead8f00ebc345_9366/NMD_R1_Shoes_Beige_GZ8025_02_standard_hover.jpg',
      'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/ada2de65b7fa474a9b13ad8f00ebcc82_9366/NMD_R1_Shoes_Beige_GZ8025_03_standard.jpg',
      'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/b9905fb1a9bb43ee9c6ead8f00ebd481_9366/NMD_R1_Shoes_Beige_GZ8025_04_standard.jpg',
    ],
    logoUrl: _addidasLogo,
    reviews: [
      Review(
        userName: 'User Name',
        userImageUrl: _userImageUrl,
        rate: 4.5,
        date: DateTime.now(),
        reviewContent: _reviewContent,
      ),
      Review(
        userName: 'User Name',
        userImageUrl: _userImageUrl,
        rate: 5.0,
        date: DateTime.now(),
        reviewContent: _reviewContent,
      ),
      Review(
        userName: 'User Name',
        userImageUrl: _userImageUrl,
        rate: 3.2,
        date: DateTime.now(),
        reviewContent: _reviewContent,
      ),
    ],
    isFavorite: false,
    brand: ShoesBrand.addidas,
  ),
  Product(
    name: 'Nike Air Zoom Pegasus 38',
    price: 124.99,
    totalRating: 4.5,
    avaliableColors: _dummyColors,
    images: [
      'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/5fb21dbb-f841-46fb-b248-8ac8b3aede40/air-zoom-pegasus-38-running-shoe-snS7wr.png',
      'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/26216dff-489b-4404-be0a-f8a6759d5bd9/air-zoom-pegasus-38-running-shoe-snS7wr.png',
      'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/ce26c2d0-71e2-404c-a5bf-bb9023ec473a/air-zoom-pegasus-38-running-shoe-snS7wr.png',
      'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/6f270d08-c4ff-4fce-9d7d-7b89ad700626/air-zoom-pegasus-38-running-shoe-snS7wr.png',
    ],
    logoUrl: _nikeLogo,
    reviews: [
      Review(
        userName: 'User Name',
        userImageUrl: _userImageUrl,
        rate: 3.5,
        date: DateTime.now(),
        reviewContent: _reviewContent,
      )
    ],
    isFavorite: true,
    brand: ShoesBrand.nike,
  ),
  Product(
    name: 'Nike Air Max Plus',
    price: 169.99,
    totalRating: 3.9,
    avaliableColors: _dummyColors,
    images: [
      'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/f26f86b0-0bfa-4eb0-af1d-8627b6ab2476/air-max-plus-shoes-wvqd1x.png',
      'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/52b87a90-6c0c-43b7-bbd6-571480e0fd1d/air-max-plus-shoes-wvqd1x.png',
      'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/74b13024-745e-4478-99f9-dddf47d9e6c5/air-max-plus-shoes-wvqd1x.png',
      'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/c7e3bf2b-fce3-4a6a-8584-4e24ca330a16/air-max-plus-shoes-wvqd1x.png',
    ],
    logoUrl: _nikeLogo,
    reviews: [
      Review(
        userName: 'User Name',
        userImageUrl: _userImageUrl,
        rate: 4.5,
        date: DateTime.now(),
        reviewContent: _reviewContent,
      ),
      Review(
        userName: 'User Name',
        userImageUrl: _userImageUrl,
        rate: 5.0,
        date: DateTime.now(),
        reviewContent: _reviewContent,
      ),
    ],
    isFavorite: false,
    brand: ShoesBrand.nike,
  ),
  Product(
    name: 'NMD_R1 SHOES',
    price: 140.00,
    totalRating: 2.9,
    avaliableColors: _dummyColors,
    images: [
      'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/bfc5f9819f4d4db091fead5600928c2f_9366/NMD_R1_Shoes_Black_GZ8024_01_standard.jpg',
      'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/3540c7be061941c3a265ad5600929a2b_9366/NMD_R1_Shoes_Black_GZ8024_02_standard_hover.jpg',
      'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/e2c676364fb14c6db26fad560092a116_9366/NMD_R1_Shoes_Black_GZ8024_03_standard.jpg',
      'https://assets.adidas.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/4b1d544f81d249208fb0ad560092a8b6_9366/NMD_R1_Shoes_Black_GZ8024_04_standard.jpg',
    ],
    logoUrl: _addidasLogo,
    reviews: [
      Review(
        userName: 'User Name',
        userImageUrl: _userImageUrl,
        rate: 4.5,
        date: DateTime.now(),
        reviewContent: _reviewContent,
      ),
      Review(
        userName: 'User Name',
        userImageUrl: _userImageUrl,
        rate: 5.0,
        date: DateTime.now(),
        reviewContent: _reviewContent,
      ),
      Review(
        userName: 'User Name',
        userImageUrl: _userImageUrl,
        rate: 3.2,
        date: DateTime.now(),
        reviewContent: _reviewContent,
      ),
    ],
    isFavorite: false,
    brand: ShoesBrand.addidas,
  ),
  Product(
    name: 'National Geographic Floatride Energy 3 Adventure Men\'s Shoes',
    price: 120.00,
    totalRating: 4.8,
    avaliableColors: _dummyColors,
    images: [
      'https://assets.reebok.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/22c742e09fd641f2bf84ad6a010e6494_9366/National_Geographic_Floatride_Energy_3_Adventure_Men\'s_Shoes_Blue_GW8521_01_standard.jpg',
      'https://assets.reebok.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/4fd6d87b9dea48e4a336ad6a010c516b_9366/National_Geographic_Floatride_Energy_3_Adventure_Men\'s_Shoes_Blue_GW8521_03_standard.jpg',
      'https://assets.reebok.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/1f124659dadf4b3eae00ad6a00fd7277_9366/National_Geographic_Floatride_Energy_3_Adventure_Men\'s_Shoes_Blue_GW8521_04_standard.jpg',
      'https://assets.reebok.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/c20a06e705aa4cd7b555ad6a010bcc74_9366/National_Geographic_Floatride_Energy_3_Adventure_Men\'s_Shoes_Blue_GW8521_05_standard.jpg',
    ],
    logoUrl: _reebokLogo,
    reviews: [
      Review(
        userName: 'User Name',
        userImageUrl: _userImageUrl,
        rate: 5.0,
        date: DateTime.now(),
        reviewContent: _reviewContent,
      ),
      Review(
        userName: 'User Name',
        userImageUrl: _userImageUrl,
        rate: 4.0,
        date: DateTime.now(),
        reviewContent: _reviewContent,
      ),
    ],
    isFavorite: true,
    brand: ShoesBrand.reebok,
  ),
  Product(
    name: 'National Geographic Nano X1 Adventure Shoes',
    price: 140.00,
    totalRating: 4.1,
    avaliableColors: _dummyColors,
    images: [
      'https://assets.reebok.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/f5b6cc850afd49c8bba5ad8200763e8d_9366/National_Geographic_Nano_X1_Adventure_Shoes_Beige_GX3698_01_standard.jpg',
      'https://assets.reebok.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/63472ca1be0e419d8aa8ad8200760ecd_9366/National_Geographic_Nano_X1_Adventure_Shoes_Beige_GX3698_03_standard.jpg',
      'https://assets.reebok.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/b6c3ce884e144cec96a9ad820076256f_9366/National_Geographic_Nano_X1_Adventure_Shoes_Beige_GX3698_04_standard.jpg',
      'https://assets.reebok.com/images/h_840,f_auto,q_auto:sensitive,fl_lossy,c_fill,g_auto/0e1ced16c30545688986ad8200762d5d_9366/National_Geographic_Nano_X1_Adventure_Shoes_Beige_GX3698_05_standard.jpg',
    ],
    logoUrl: _reebokLogo,
    reviews: [
      Review(
        userName: 'User Name',
        userImageUrl: _userImageUrl,
        rate: 2.8,
        date: DateTime.now(),
        reviewContent: _reviewContent,
      ),
    ],
    isFavorite: false,
    brand: ShoesBrand.reebok,
  ),
  Product(
    name: 'Super Liga OG Retro Men\'s Sneakers',
    price: 70.00,
    totalRating: 3.0,
    avaliableColors: _dummyColors,
    images: [
      'https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_1750,h_1750/global/356999/01/sv01/fnd/PNA/fmt/png/Super-Liga-OG-Retro-Men\'s-Sneakers',
      'https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_1750,h_1750/global/356999/09/sv01/fnd/PNA/fmt/png/Super-Liga-OG-Retro-Men\'s-Sneakers',
      'https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_1750,h_1750/global/356999/19/sv01/fnd/PNA/fmt/png/Super-Liga-OG-Retro-Men\'s-Sneakers',
    ],
    logoUrl: _pumaLogo,
    reviews: [
      Review(
        userName: 'User Name',
        userImageUrl: _userImageUrl,
        rate: 4.2,
        date: DateTime.now(),
        reviewContent: _reviewContent,
      ),
      Review(
        userName: 'User Name',
        userImageUrl: _userImageUrl,
        rate: 4.0,
        date: DateTime.now(),
        reviewContent: _reviewContent,
      ),
      Review(
        userName: 'User Name',
        userImageUrl: _userImageUrl,
        rate: 3.5,
        date: DateTime.now(),
        reviewContent: _reviewContent,
      ),
    ],
    isFavorite: false,
    brand: ShoesBrand.puma,
  ),
  Product(
    name: 'Mercedes F1 RS Connect Motorsport Shoes',
    price: 120.00,
    totalRating: 4.0,
    avaliableColors: _dummyColors,
    images: [
      'https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_1750,h_1750/global/306842/02/sv01/fnd/PNA/fmt/png/Mercedes-F1-RS-Connect-Motorsport-Shoes',
      'https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_1750,h_1750/global/306842/02/fnd/PNA/fmt/png/Mercedes-F1-RS-Connect-Motorsport-Shoes',
      'https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_1750,h_1750/global/306842/02/bv/fnd/PNA/fmt/png/Mercedes-F1-RS-Connect-Motorsport-Shoes',
      'https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_1750,h_1750/global/306842/02/sv03/fnd/PNA/fmt/png/Mercedes-F1-RS-Connect-Motorsport-Shoes',
    ],
    logoUrl: _pumaLogo,
    reviews: [
      Review(
        userName: 'User Name',
        userImageUrl: _userImageUrl,
        rate: 4.0,
        date: DateTime.now(),
        reviewContent: _reviewContent,
      ),
      Review(
        userName: 'User Name',
        userImageUrl: _userImageUrl,
        rate: 3.5,
        date: DateTime.now(),
        reviewContent: _reviewContent,
      ),
    ],
    isFavorite: false,
    brand: ShoesBrand.puma,
  ),
];
