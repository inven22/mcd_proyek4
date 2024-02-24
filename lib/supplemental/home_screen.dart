import 'package:flutter/material.dart';
import 'package:mcd/constants.dart';
import 'package:mcd/models/category.dart';
import 'package:mcd/models/barang.dart';
import 'package:mcd/widgets/categories.dart';
import 'package:mcd/widgets/home_appbar.dart';
import 'package:mcd/widgets/home_search_bar.dart';
import 'package:mcd/widgets/quick_and_fast_list.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String currentCat = "Semua";

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
                const HomeAppbar(),
                const SizedBox(height: 20),
                const HomeSearchBar(),
                const SizedBox(height: 20),
              

              
                const Text(
                  "Kategori",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Categories(currentCat: currentCat),
                const SizedBox(height: 20),
                 const QuickAndFastList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
