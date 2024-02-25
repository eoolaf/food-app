import 'package:doreats/src/app/repository/slider_repository.dart';
import 'package:flutter/material.dart';

class SliderOptionsFood extends StatefulWidget {
  const SliderOptionsFood({super.key});

  @override
  State<SliderOptionsFood> createState() => _SliderOptionsFoodState();
}

class _SliderOptionsFoodState extends State<SliderOptionsFood> {
  final sliderItems = SliderRepository.items;

  int activeIndicator = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      height: 150,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: sliderItems.length,
        itemBuilder: (context, index) => Row(
          children: [
            Container(
              margin: EdgeInsets.only(
                left: index == 0 ? 10 : 7,
                right: index == (sliderItems.length - 1) ? 10 : 7,
              ),
              child: Column(
                children: [
                  Container(
                    width: 280,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(sliderItems[index].img,
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
