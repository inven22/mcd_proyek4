import 'package:flutter/material.dart';
import 'package:mcd/models/barang.dart';
import 'package:mcd/widgets/barang_card.dart';
import 'package:iconsax/iconsax.dart';

class FoodCard extends StatelessWidget {
  final item barang;
  const FoodCard({super.key, required this.barang});

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
                      image: AssetImage(barang.image),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  barang.name,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Iconsax.flash_1,
                      size: 18,
                      color: Colors.grey,
                    ),
                   
                    const Text(
                      " · ",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const Icon(
                      Iconsax.clock,
                      size: 18,
                      color: Colors.grey,
                    ),
                   
                  ],
                ),
                Row(
                  children: [
                  
                    
                   
                    const SizedBox(width: 5),
                    Text(
                      "( ${barang.price} )",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade400,
                      ),
                    )
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
                icon: barang.isLiked!
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
