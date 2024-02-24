class baranglike {
  String name;
  String image;
  String harga;
  bool isLiked;

  baranglike({
    required this.name,
    required this.image,
    required this.harga,
    required this.isLiked,
  });
}

final List<baranglike> likes = [
  
  baranglike(
    name: "Tshirt Cristian Dior Flower",
    image: "assets/images/dior.jpg",
    harga: "450",
    isLiked: true,
  ),
 
  baranglike(
    name: "Jaket Gucci pria/wanita",
    image: "assets/images/gucci.jpeg",
    harga: "100",
    isLiked: true,
  ),
  
];
