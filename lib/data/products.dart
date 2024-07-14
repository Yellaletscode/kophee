import 'package:kophee/core/constants/constants.dart';

final List products = [
  {
    "id": "0",
    "company": "Nike",
    "companyLogoUrl": "assets/images/brands/brand6.png",
    "data": [
      {
        "id": 1,
        "title": "Nike Air Max 90",
        "model": "Air Max",
        "color": [16711680, 65280, 255],
        "price": 120.0,
        "imageUrl": "assets/images/nike/nike1.png",
        "sizes": [8, 9, 10, 11],
        "isFavourite": true,
        "isNewarrival": false,
        "description":
            "The Nike Air Max 90 stays true to its OG roots with the iconic Waffle sole, stitched overlays and classic TPU accents."
      },
      {
        "id": 2,
        "title": "Nike Air Force 1",
        "model": "Air Force",
        "color": [16776960, 16711935, 65535],
        "price": 90.0,
        "imageUrl": "assets/images/nike/nike2.png",
        "sizes": [8, 9, 10, 11],
        "isFavourite": false,
        "isNewarrival": true,
        "description":
            "The Nike Air Force 1 features durable materials and the same responsive cushioning that made the original famous."
      },
      {
        "id": 3,
        "title": "Nike Dunk Low",
        "model": "Dunk",
        "color": [8388736, 16753920, 16737792],
        "price": 100.0,
        "imageUrl": "assets/images/nike/nike3.png",
        "sizes": [8, 9, 10, 11],
        "isFavourite": true,
        "isNewarrival": false,
        "description":
            "The Nike Dunk Low offers iconic style with a classic look and premium comfort."
      },
      {
        "id": 4,
        "title": "Nike Blazer Mid 77",
        "model": "Blazer",
        "color": [16761035, 32896, 8421376],
        "price": 85.0,
        "imageUrl": "assets/images/nike/nike4.png",
        "sizes": [8, 9, 10, 11],
        "isFavourite": false,
        "isNewarrival": true,
        "description":
            "The Nike Blazer Mid 77 Vintage features a clean white leather upper and a vulcanized sole for a comfortable and stylish look."
      },
      {
        "id": 5,
        "title": "Nike React Infinity Run Flyknit",
        "model": "React Infinity",
        "color": [255, 16776960, 16711935],
        "price": 160.0,
        "imageUrl": "assets/images/nike/nike5.png",
        "sizes": [8, 9, 10, 11],
        "isFavourite": true,
        "isNewarrival": false,
        "description":
            "The Nike React Infinity Run Flyknit is designed to help reduce injury and keep you on the run."
      },
      {
        "id": 6,
        "title": "Nike Pegasus 37",
        "model": "Pegasus",
        "color": [16777215, 0, 8421504],
        "price": 120.0,
        "imageUrl": "assets/images/nike/nike6.png",
        "sizes": [8, 9, 10, 11],
        "isFavourite": false,
        "isNewarrival": true,
        "description":
            "The Nike Pegasus 37 is built for runners at every level, whether you're a veteran marathoner or just starting out."
      },
      {
        "id": 7,
        "title": "Nike Air Zoom Alphafly NEXT% 2",
        "model": "Air Zoom Alphafly",
        "color": [16729344, 16753920, 16776960],
        "price": 275.0,
        "imageUrl": "assets/images/nike/nike7.png",
        "sizes": [9, 10, 11, 12],
        "isFavourite": true,
        "isNewarrival": true,
        "description":
            "The Nike Air Zoom Alphafly NEXT% 2 is engineered for record-breaking speed and performance."
      },
      {
        "id": 8,
        "title": "Nike ZoomX Invincible Run Flyknit 2",
        "model": "ZoomX Invincible",
        "color": [16711680, 16761035, 16737792],
        "price": 180.0,
        "imageUrl": "assets/images/nike/nike8.png",
        "sizes": [9, 10, 11, 12],
        "isFavourite": false,
        "isNewarrival": true,
        "description":
            "The Nike ZoomX Invincible Run Flyknit 2 offers soft, responsive cushioning for long runs."
      },
      {
        "id": 9,
        "title": "Nike Air Zoom Structure 24",
        "model": "Air Zoom Structure",
        "color": [8421504, 16711935, 32896],
        "price": 130.0,
        "imageUrl": "assets/images/nike/nike9.png",
        "sizes": [9, 10, 11, 12],
        "isFavourite": true,
        "isNewarrival": false,
        "description":
            "The Nike Air Zoom Structure 24 is a reliable stability shoe for everyday training."
      },
      {
        "id": 10,
        "title": "Nike React Infinity Run Flyknit 3",
        "model": "React Infinity",
        "color": [16753920, 16737792, 41215],
        "price": 170.0,
        "imageUrl": "assets/images/nike/nike10.png",
        "sizes": [9, 10, 11, 12],
        "isFavourite": false,
        "isNewarrival": true,
        "description":
            "The Nike React Infinity Run Flyknit 3 is designed to keep you running with a smooth, responsive ride."
      },
      {
        "id": 11,
        "title": "Nike Air Zoom Pegasus 38",
        "model": "Air Zoom Pegasus",
        "color": [16761024, 32896, 16776960],
        "price": 120.0,
        "imageUrl": "assets/images/nike/nike11.png",
        "sizes": [9, 10, 11, 12],
        "isFavourite": true,
        "isNewarrival": false,
        "description":
            "The Nike Air Zoom Pegasus 38 continues to put a spring in your step with its responsive cushioning and secure fit."
      },
      {
        "id": 12,
        "title": "Nike React Miler 2",
        "model": "React Miler",
        "color": [16777215, 16711680, 65280],
        "price": 140.0,
        "imageUrl": "assets/images/nike/nike12.png",
        "sizes": [9, 10, 11, 12],
        "isFavourite": false,
        "isNewarrival": true,
        "description":
            "The Nike React Miler 2 delivers trusted stability and durability for long runs."
      },
      {
        "id": 13,
        "title": "Nike Air Zoom Winflo 8",
        "model": "Air Zoom Winflo",
        "color": [255, 16761035, 16711935],
        "price": 90.0,
        "imageUrl": "assets/images/nike/nike13.png",
        "sizes": [9, 10, 11, 12],
        "isFavourite": true,
        "isNewarrival": false,
        "description":
            "The Nike Air Zoom Winflo 8 offers everyday performance with versatile support and cushioning."
      },
      {
        "id": 14,
        "title": "Nike ZoomX Vaporfly NEXT% 2",
        "model": "ZoomX Vaporfly",
        "color": [16753920, 16711935, 16729344],
        "price": 250.0,
        "imageUrl": "assets/images/nike/nike14.png",
        "sizes": [9, 10, 11, 12],
        "isFavourite": false,
        "isNewarrival": true,
        "description":
            "The Nike ZoomX Vaporfly NEXT% 2 is built for ultimate speed and efficiency in races."
      },
      {
        "id": 15,
        "title": "Nike Air Zoom Tempo NEXT%",
        "model": "Air Zoom Tempo",
        "color": [16761035, 65280, 16711935],
        "price": 200.0,
        "imageUrl": "assets/images/nike/nike15.png",
        "sizes": [9, 10, 11, 12],
        "isFavourite": true,
        "isNewarrival": false,
        "description":
            "The Nike Air Zoom Tempo NEXT% combines durability with a design that helps push you toward your personal best."
      }
    ]
  },
  {
    "id": "1",
    "company": "Jordan",
    "companyLogoUrl": "assets/images/brands/brand5.png",
    "data": [
      {
        "id": 16,
        "title": "Air Jordan 4 Retro 'Bred'",
        "model": "Air Jordan 4",
        "color": [0, 16711680, 12303291],
        "price": 200.0,
        "imageUrl": "assets/images/jordan/jordan1.png",
        "sizes": [8, 9, 10, 11],
        "isFavourite": true,
        "isNewarrival": false,
        "description":
            "The Air Jordan 4 Retro 'Bred' features a mix of black, red, and Cement Grey with Nike Air branding on the heel."
      },
      {
        "id": 17,
        "title": "Air Jordan 1 Retro High OG 'Shadow'",
        "model": "Air Jordan 1",
        "color": [0, 9868950, 16777215],
        "price": 160.0,
        "imageUrl": "assets/images/jordan/jordan2.png",
        "sizes": [8, 9, 10, 11],
        "isFavourite": false,
        "isNewarrival": true,
        "description":
            "The Air Jordan 1 Retro High OG 'Shadow' returns with its classic color scheme and premium leather construction."
      },
      {
        "id": 18,
        "title": "Air Jordan 11 Retro 'Concord'",
        "model": "Air Jordan 11",
        "color": [16777215, 0, 6815743],
        "price": 220.0,
        "imageUrl": "assets/images/jordan/jordan3.png",
        "sizes": [8, 9, 10, 11],
        "isFavourite": true,
        "isNewarrival": false,
        "description":
            "The Air Jordan 11 Retro 'Concord' features a white mesh upper with black patent leather and Dark Concord accents."
      },
      {
        "id": 19,
        "title": "Air Jordan 6 Retro 'Infrared'",
        "model": "Air Jordan 6",
        "color": [0, 16740352, 16777215],
        "price": 190.0,
        "imageUrl": "assets/images/jordan/jordan4.png",
        "sizes": [8, 9, 10, 11],
        "isFavourite": false,
        "isNewarrival": true,
        "description":
            "The Air Jordan 6 Retro 'Infrared' comes back with its iconic black nubuck upper, Infrared accents, and clear outsole."
      },
      {
        "id": 20,
        "title": "Air Jordan 3 Retro 'Black Cement'",
        "model": "Air Jordan 3",
        "color": [0, 12303291, 16729344],
        "price": 190.0,
        "imageUrl": "assets/images/jordan/jordan5.png",
        "sizes": [8, 9, 10, 11],
        "isFavourite": true,
        "isNewarrival": false,
        "description":
            "The Air Jordan 3 Retro 'Black Cement' brings back the iconic colorway with premium materials and classic Air Jordan 3 details."
      },
      {
        "id": 21,
        "title": "Air Jordan 5 Retro 'Fire Red'",
        "model": "Air Jordan 5",
        "color": [16777215, 16731163, 0],
        "price": 200.0,
        "imageUrl": "assets/images/jordan/jordan6.png",
        "sizes": [8, 9, 10, 11],
        "isFavourite": false,
        "isNewarrival": true,
        "description":
            "The Air Jordan 5 Retro 'Fire Red' features a white leather upper, Fire Red accents, and a reflective silver tongue."
      },
      {
        "id": 22,
        "title": "Air Jordan 13 Retro 'He Got Game'",
        "model": "Air Jordan 13",
        "color": [16777215, 0, 16711680],
        "price": 190.0,
        "imageUrl": "assets/images/jordan/jordan7.png",
        "sizes": [8, 9, 10, 11],
        "isFavourite": true,
        "isNewarrival": false,
        "description":
            "The Air Jordan 13 Retro 'He Got Game' is dressed in a White, Black, and True Red color scheme."
      },
      {
        "id": 23,
        "title": "Air Jordan 12 Retro 'Flu Game'",
        "model": "Air Jordan 12",
        "color": [0, 16711680],
        "price": 190.0,
        "imageUrl": "assets/images/jordan/jordan8.png",
        "sizes": [8, 9, 10, 11],
        "isFavourite": false,
        "isNewarrival": true,
        "description":
            "The Air Jordan 12 Retro 'Flu Game' features a Black and Varsity Red color scheme, premium leather upper, and carbon fiber shank plate."
      },
      {
        "id": 24,
        "title": "Air Jordan 7 Retro 'Bordeaux'",
        "model": "Air Jordan 7",
        "color": [0, 6737204, 15790320],
        "price": 190.0,
        "imageUrl": "assets/images/jordan/jordan9.png",
        "sizes": [8, 9, 10, 11],
        "isFavourite": true,
        "isNewarrival": false,
        "description":
            "The Air Jordan 7 Retro 'Bordeaux' features a Black and Bordeaux color scheme with Light Graphite accents."
      },
      {
        "id": 25,
        "title": "Air Jordan 1 Retro High OG 'Chicago'",
        "model": "Air Jordan 1",
        "color": [16711680, 16777215, 0],
        "price": 160.0,
        "imageUrl": "assets/images/jordan/jordan10.png",
        "sizes": [8, 9, 10, 11],
        "isFavourite": false,
        "isNewarrival": true,
        "description":
            "The iconic Air Jordan 1 returns in the original 'Chicago' colorway. Featuring a premium leather upper and classic design lines, this shoe is a must-have for any Jordan fan."
      }
    ]
  },
  {
    "id": "2",
    "company": "Puma",
    "companyLogoUrl": "assets/images/brands/brand1.png",
    "data": [
      {
        "id": 26,
        "title": "Puma RS-X3",
        "model": "RS-X",
        "color": [16711680, 65280, 255],
        "price": 110.0,
        "imageUrl": "assets/images/puma/puma1.png",
        "sizes": [7, 8, 9, 10],
        "isFavourite": true,
        "isNewarrival": false,
        "description":
            "The Puma RS-X3 features bold colors and a chunky design for a statement look."
      },
      {
        "id": 27,
        "title": "Puma Suede Classic",
        "model": "Suede",
        "color": [16776960, 16711935, 65535],
        "price": 65.0,
        "imageUrl": "assets/images/puma/puma2.png",
        "sizes": [7, 8, 9, 10],
        "isFavourite": false,
        "isNewarrival": true,
        "description":
            "The Puma Suede Classic is a timeless sneaker with a sleek suede upper."
      },
      {
        "id": 28,
        "title": "Puma Future Rider",
        "model": "Future Rider",
        "color": [8388736, 16753920, 16737792],
        "price": 80.0,
        "imageUrl": "assets/images/puma/puma3.png",
        "sizes": [7, 8, 9, 10],
        "isFavourite": true,
        "isNewarrival": false,
        "description":
            "The Puma Future Rider combines retro style with modern comfort."
      },
      {
        "id": 29,
        "title": "Puma Cali",
        "model": "Cali",
        "color": [16761035, 32896, 8421376],
        "price": 75.0,
        "imageUrl": "assets/images/puma/puma4.png",
        "sizes": [7, 8, 9, 10],
        "isFavourite": false,
        "isNewarrival": true,
        "description":
            "The Puma Cali features a laid-back, West Coast-inspired design."
      },
      {
        "id": 30,
        "title": "Puma Cell Alien",
        "model": "Cell Alien",
        "color": [255, 16776960, 16711935],
        "price": 100.0,
        "imageUrl": "assets/images/puma/puma5.png",
        "sizes": [7, 8, 9, 10],
        "isFavourite": true,
        "isNewarrival": false,
        "description":
            "The Puma Cell Alien offers bold aesthetics with innovative CELL cushioning technology."
      },
      {
        "id": 31,
        "title": "Puma Basket Classic",
        "model": "Basket",
        "color": [16777215, 0, 8421504],
        "price": 70.0,
        "imageUrl": "assets/images/puma/puma6.png",
        "sizes": [7, 8, 9, 10],
        "isFavourite": false,
        "isNewarrival": true,
        "description":
            "The Puma Basket Classic is an iconic style known for its clean lines and versatile look."
      },
      {
        "id": 32,
        "title": "Puma Ralph Sampson",
        "model": "Ralph Sampson",
        "color": [16581375, 41215, 16733525],
        "price": 90.0,
        "imageUrl": "assets/images/puma/puma7.png",
        "sizes": [7, 8, 9, 10],
        "isFavourite": true,
        "isNewarrival": false,
        "description":
            "The Puma Ralph Sampson features retro basketball style and premium materials."
      },
      {
        "id": 33,
        "title": "Puma LQD Cell",
        "model": "LQD Cell",
        "color": [16744272, 33817088, 16756787],
        "price": 120.0,
        "imageUrl": "assets/images/puma/puma8.png",
        "sizes": [7, 8, 9, 10],
        "isFavourite": false,
        "isNewarrival": true,
        "description":
            "The Puma LQD Cell provides stable cushioning and a modern aesthetic."
      },
      {
        "id": 34,
        "title": "Puma Roma",
        "model": "Roma",
        "color": [8421504, 16777215, 0],
        "price": 60.0,
        "imageUrl": "assets/images/puma/puma9.png",
        "sizes": [7, 8, 9, 10],
        "isFavourite": true,
        "isNewarrival": false,
        "description":
            "The Puma Roma is a classic trainer with vintage vibes and comfortable cushioning."
      },
      {
        "id": 35,
        "title": "Puma Thunder Spectra",
        "model": "Thunder Spectra",
        "color": [16711850, 65485, 255],
        "price": 120.0,
        "imageUrl": "assets/images/puma/puma10.png",
        "sizes": [7, 8, 9, 10],
        "isFavourite": false,
        "isNewarrival": true,
        "description":
            "The Puma Thunder Spectra boasts a bold, chunky design with vibrant color blocking."
      }
    ]
  },
  {
    "id": "3",
    "company": "Converse",
    "companyLogoUrl": "assets/images/brands/brand4.png",
    "data": [
      {
        "id": 36,
        "title": "Converse Chuck Taylor All Star Classic",
        "model": "Chuck Taylor",
        "color": [16711680, 65280, 255],
        "price": 50.0,
        "imageUrl": "assets/images/converse/converse1.png",
        "sizes": [7, 8, 9, 10],
        "isFavourite": true,
        "isNewarrival": false,
        "description":
            "The classic Converse Chuck Taylor All Star with its timeless design and durable canvas upper."
      },
      {
        "id": 37,
        "title": "Converse Chuck 70 High Top",
        "model": "Chuck 70",
        "color": [16776960, 16711935, 65535],
        "price": 85.0,
        "imageUrl": "assets/images/converse/converse2.png",
        "sizes": [7, 8, 9, 10],
        "isFavourite": false,
        "isNewarrival": true,
        "description":
            "A modernized version of the classic Chuck Taylor with premium materials and cushioning."
      },
      {
        "id": 38,
        "title": "Converse One Star Pro",
        "model": "One Star",
        "color": [8388736, 16753920, 16737792],
        "price": 75.0,
        "imageUrl": "assets/images/converse/converse3.png",
        "sizes": [7, 8, 9, 10],
        "isFavourite": true,
        "isNewarrival": false,
        "description":
            "The One Star Pro features a suede upper and durable rubber sole, perfect for skating."
      },
      {
        "id": 39,
        "title": "Converse Jack Purcell",
        "model": "Jack Purcell",
        "color": [16761035, 32896, 8421376],
        "price": 70.0,
        "imageUrl": "assets/images/converse/converse4.png",
        "sizes": [7, 8, 9, 10],
        "isFavourite": false,
        "isNewarrival": true,
        "description":
            "Named after the legendary badminton champion, the Jack Purcell is a stylish and comfortable sneaker."
      },
      {
        "id": 40,
        "title": "Converse Run Star Hike",
        "model": "Run Star Hike",
        "color": [255, 16776960, 16711935],
        "price": 110.0,
        "imageUrl": "assets/images/converse/converse5.png",
        "sizes": [7, 8, 9, 10],
        "isFavourite": true,
        "isNewarrival": false,
        "description":
            "The Run Star Hike features a chunky sole and modern design for a bold look."
      },
      {
        "id": 41,
        "title": "Converse Chuck Taylor All Star Lift",
        "model": "Chuck Taylor Lift",
        "color": [16777215, 0, 8421504],
        "price": 75.0,
        "imageUrl": "assets/images/converse/converse6.png",
        "sizes": [7, 8, 9, 10],
        "isFavourite": false,
        "isNewarrival": true,
        "description":
            "The Chuck Taylor All Star Lift adds a platform sole for a trendy twist on the classic design."
      }
    ]
  },
  {
    "id": "4",
    "company": "Adidas",
    "companyLogoUrl": "assets/images/brands/brand3.png",
    "data": [
      {
        "id": 42,
        "title": "Adidas Ultraboost 21",
        "model": "Ultraboost",
        "color": [16711680, 65280, 255],
        "price": 180.0,
        "imageUrl": "assets/images/adidas/adidas1.png",
        "sizes": [7, 8, 9, 10],
        "isFavourite": true,
        "isNewarrival": false,
        "description":
            "Experience the ultimate comfort and energy return with the Adidas Ultraboost 21."
      },
      {
        "id": 43,
        "title": "Adidas NMD_R1",
        "model": "NMD",
        "color": [16776960, 16711935, 65535],
        "price": 140.0,
        "imageUrl": "assets/images/adidas/adidas2.png",
        "sizes": [7, 8, 9, 10],
        "isFavourite": false,
        "isNewarrival": true,
        "description":
            "The Adidas NMD_R1 offers a sleek, modern design with innovative technology for everyday wear."
      },
      {
        "id": 44,
        "title": "Adidas Yeezy Boost 350 V2",
        "model": "Yeezy",
        "color": [8388736, 16753920, 16737792],
        "price": 220.0,
        "imageUrl": "assets/images/adidas/adidas3.png",
        "sizes": [7, 8, 9, 10],
        "isFavourite": true,
        "isNewarrival": false,
        "description":
            "A collaboration with Kanye West, the Yeezy Boost 350 V2 features a distinctive design and Boost cushioning."
      },
      {
        "id": 45,
        "title": "Adidas Superstar",
        "model": "Superstar",
        "color": [16761035, 32896, 8421376],
        "price": 85.0,
        "imageUrl": "assets/images/adidas/adidas4.png",
        "sizes": [7, 8, 9, 10],
        "isFavourite": false,
        "isNewarrival": true,
        "description":
            "The iconic Adidas Superstar with its signature shell toe and classic design."
      },
      {
        "id": 46,
        "title": "Adidas Stan Smith",
        "model": "Stan Smith",
        "color": [255, 16776960, 16711935],
        "price": 75.0,
        "imageUrl": "assets/images/adidas/adidas5.png",
        "sizes": [7, 8, 9, 10],
        "isFavourite": true,
        "isNewarrival": false,
        "description":
            "A timeless classic, the Adidas Stan Smith is known for its clean and simple style."
      },
      {
        "id": 47,
        "title": "Adidas Gazelle",
        "model": "Gazelle",
        "color": [16777215, 0, 8421504],
        "price": 90.0,
        "imageUrl": "assets/images/adidas/adidas6.png",
        "sizes": [7, 8, 9, 10],
        "isFavourite": false,
        "isNewarrival": true,
        "description":
            "The Adidas Gazelle features a suede upper and classic three-stripe design."
      },
      {
        "id": 48,
        "title": "Adidas Samba",
        "model": "Samba",
        "color": [16581375, 41215, 16733525],
        "price": 70.0,
        "imageUrl": "assets/images/adidas/adidas7.png",
        "sizes": [7, 8, 9, 10],
        "isFavourite": true,
        "isNewarrival": false,
        "description":
            "Originally designed for indoor soccer, the Adidas Samba has become a streetwear staple."
      },
      {
        "id": 49,
        "title": "Adidas Continental 80",
        "model": "Continental",
        "color": [16744272, 33817088, 16756787],
        "price": 80.0,
        "imageUrl": "assets/images/adidas/adidas8.png",
        "sizes": [7, 8, 9, 10],
        "isFavourite": false,
        "isNewarrival": true,
        "description":
            "The Adidas Continental 80 offers a retro look with its split rubber cupsole and nostalgic design."
      }
    ]
  },
  {
    "id": "5",
    "company": "Under Armor",
    "companyLogoUrl": "assets/images/brands/brand2.png",
    "data": [
      {
        "id": 50,
        "title": "Under Armour HOVR Phantom 2",
        "model": "HOVR Phantom",
        "color": [16711680, 65280, 255],
        "price": 150.0,
        "imageUrl": "assets/images/underarmour/underarmour1.png",
        "sizes": [7, 8, 9, 10],
        "isFavourite": true,
        "isNewarrival": false,
        "description":
            "The Under Armour HOVR Phantom 2 provides excellent cushioning and energy return for a smooth ride."
      },
      {
        "id": 51,
        "title": "Under Armour Charged Assert 9",
        "model": "Charged Assert",
        "color": [16776960, 16711935, 65535],
        "price": 70.0,
        "imageUrl": "assets/images/underarmour/underarmour2.png",
        "sizes": [7, 8, 9, 10],
        "isFavourite": false,
        "isNewarrival": true,
        "description":
            "A lightweight and breathable running shoe with Charged Cushioning for enhanced comfort."
      },
      {
        "id": 52,
        "title": "Under Armour Curry 8",
        "model": "Curry",
        "color": [8388736, 16753920, 16737792],
        "price": 160.0,
        "imageUrl": "assets/images/underarmour/underarmour3.png",
        "sizes": [7, 8, 9, 10],
        "isFavourite": true,
        "isNewarrival": false,
        "description":
            "Designed for performance on the basketball court, the Curry 8 offers superior grip and support."
      },
      {
        "id": 53,
        "title": "Under Armour Project Rock 3",
        "model": "Project Rock",
        "color": [16761035, 32896, 8421376],
        "price": 140.0,
        "imageUrl": "assets/images/underarmour/underarmour4.png",
        "sizes": [7, 8, 9, 10],
        "isFavourite": false,
        "isNewarrival": true,
        "description":
            "A collaboration with Dwayne 'The Rock' Johnson, this training shoe is built for durability and power."
      },
      {
        "id": 54,
        "title": "Under Armour HOVR Sonic 4",
        "model": "HOVR Sonic",
        "color": [255, 16776960, 16711935],
        "price": 110.0,
        "imageUrl": "assets/images/underarmour/underarmour5.png",
        "sizes": [7, 8, 9, 10],
        "isFavourite": true,
        "isNewarrival": false,
        "description":
            "The HOVR Sonic 4 offers a connected running experience with real-time coaching and feedback."
      },
      {
        "id": 55,
        "title": "Under Armour Micro G Pursuit",
        "model": "Micro G",
        "color": [16777215, 0, 8421504],
        "price": 65.0,
        "imageUrl": "assets/images/underarmour/underarmour6.png",
        "sizes": [7, 8, 9, 10],
        "isFavourite": false,
        "isNewarrival": true,
        "description":
            "A versatile training shoe with Micro G foam for responsive cushioning and support."
      },
      {
        "id": 56,
        "title": "Under Armour Spine Disrupt",
        "model": "Spine",
        "color": [16581375, 41215, 16733525],
        "price": 90.0,
        "imageUrl": "assets/images/underarmour/underarmour7.png",
        "sizes": [7, 8, 9, 10],
        "isFavourite": true,
        "isNewarrival": false,
        "description":
            "The Spine Disrupt offers a unique design with a flexible sole for natural movement and comfort."
      },
      {
        "id": 57,
        "title": "Under Armour Charged Bandit 6",
        "model": "Charged Bandit",
        "color": [16744272, 33817088, 16756787],
        "price": 100.0,
        "imageUrl": "assets/images/underarmour/underarmour8.png",
        "sizes": [7, 8, 9, 10],
        "isFavourite": false,
        "isNewarrival": true,
        "description":
            "A reliable running shoe with Charged Cushioning and a durable outsole for long-lasting performance."
      }
    ]
  }
];
