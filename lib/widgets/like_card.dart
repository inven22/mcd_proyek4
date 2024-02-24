import 'package:flutter/material.dart';
import 'package:mcd/models/like_barang.dart';
import 'package:iconsax/iconsax.dart';

class FoodCard extends StatelessWidget {
  final baranglike like;
  const FoodCard({super.key, required this.like});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
     
      child: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(like.image),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  like.name,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                   
                   
                    const Text(
                      " · ",
                      style: TextStyle(color: Colors.grey),
                    ),
                  
                   
                  ],
                ),
                Row(
                  children: [
                  
                   Text(
  "(\$${likes.isNotEmpty ? likes[0].harga : 0})", 
  // Asumsi: `harga` adalah properti yang menyimpan harga untuk setiap barang dalam daftar `likes`
  style: const TextStyle(
    fontSize: 12,
    color: Colors.grey,
  ),
),

                  ],
                )
              ],
            ),
            Positioned(
              top: 1,
              right: 1,
              child: IconButton(
                onPressed: () {},
                style: IconButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: const Size(30, 30),
                ),
                iconSize: 20,
                icon: like.isLiked!
                    ? const Icon(
                        Iconsax.heart5,
                        color: Colors.red,
                      )
                    : const Icon(Iconsax.heart),
              ),
            )
          ],
        ),
      ),
    );
  }
}
