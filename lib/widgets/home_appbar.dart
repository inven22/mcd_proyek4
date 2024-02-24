import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mcd/pages/notif.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      Row(
  children: [
    // Image widget
    Image.network(
      'https://github.com/material-components/material-components-flutter-codelabs/blob/101-starter/mdc_100_series/assets/diamond.png?raw=true',
      width: 50, // adjust the width as needed
      height: 50, // adjust the height as needed
    ),
    const SizedBox(width: 10), // Add some space between image and text
    // Text widget
    const Text(
      "Shine app",
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        height: 1,
      ),
    ),
  ],
),

      const Spacer(),
InkWell(
  onTap: () {
     Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NotifPage()), // Replace YourLogoutScreen with your actual logout screen
    );
  },
  child: IconButton(
    onPressed: () {
     Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NotifPage()), // Replace YourLogoutScreen with your actual logout screen
    );
    },
    style: IconButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      backgroundColor: Colors.white,
      fixedSize: const Size(55, 55),
    ),
    icon: const Icon(Iconsax.notification),
  ),
),

      ],
    );
  }
}
