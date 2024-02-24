class item {
  String name;
  String image;
  String  price;
  bool isLiked;

  item({
    required this.name,
    required this.image,
    required this.price,
    required this.isLiked,
  });
}

final List<item> items = [
item(
    name: "Tshirt Cristian Dior Flower",
    image: "assets/images/dior.jpg",
    price: "450",
    isLiked: true,
  ),
  item(
    name: "Tas Eiger",
    image: "assets/images/iger.jpg",
    price: "4.00",
    isLiked: false,
  ),
  item(
    name: "Kacamata stylish",
    image: "assets/images/kacamata.jpg",
    price: "1.00",
    isLiked: false,
  ),
  item(
    name: "Jas Hujan",
    image: "assets/images/jashujan.jpg",
    price: "2.00",
    isLiked: true,
  ),
  item(
    name: "Jaket Gucci pria/wanita",
    image: "assets/images/gucci.jpeg",
    price: "100",
    isLiked: false,
  ),
  item(
    name: "Celana jeans Cardinal",
    image: "assets/images/jeans.jpg",
    price: "5.00",
    isLiked: false,
  ),
  
];
