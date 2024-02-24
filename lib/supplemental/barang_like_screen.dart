import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mcd/models/like_barang.dart';
import 'package:mcd/widgets/like_card.dart';
import 'package:mcd/widgets/quick_screen_appbar.dart';
import 'package:mcd/supplemental/main_screen.dart';
import 'package:iconsax/iconsax.dart';

class QuicklikeScreen extends StatefulWidget {
  const QuicklikeScreen({super.key});

  @override
  State<QuicklikeScreen> createState() => _QuickFoodslikeScreenState();
}

class _QuickFoodslikeScreenState extends State<QuicklikeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const QuickScreenAppbar(),
                const SizedBox(height: 20),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) => FoodCard(
                    like: likes[index],
                  ),
                  itemCount: likes.length,
                  
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
