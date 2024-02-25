import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderBar extends StatefulWidget {
  const HeaderBar({super.key});

  @override
  State<HeaderBar> createState() => _HeaderBarState();
}

class _HeaderBarState extends State<HeaderBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: const BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                GestureDetector(
                  child: SvgPicture.asset(
                    'lib/src/assets/icons/location-indicator-red.svg',
                    color: Colors.blue,
                    height: 35,
                  ),
                ),
                const Text(
                  'R. Tijuca, 1232',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 3),
                SvgPicture.asset(
                  'lib/src/assets/icons/arrow-down.svg',
                  height: 20,
                  color: Colors.blue,
                ),
              ],
            ),
            GestureDetector(
              child: SvgPicture.asset(
                'lib/src/assets/icons/notification.svg',
                height: 25,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
