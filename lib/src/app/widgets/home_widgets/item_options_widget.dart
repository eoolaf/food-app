import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemOptions extends StatefulWidget {
  const ItemOptions({super.key});

  @override
  State<ItemOptions> createState() => _ItemOptionsState();
}

class _ItemOptionsState extends State<ItemOptions> {
  final List<Map<dynamic, dynamic>> listOptions = [
    {
      'title': 'Restaurantes',
      'icon': SvgPicture.asset('lib/src/assets/icons/pot-of-food.svg'),
    },
    {
      'title': 'Mercados',
      'icon': SvgPicture.asset(
        'lib/src/assets/icons/shopping-trolley.svg',
        color: Colors.red,
      ),
    },
    {
      'title': 'Farmácias',
      'icon': SvgPicture.asset(
        'lib/src/assets/icons/pharmacy.svg',
        color: Colors.orange,
      ),
    },
    {
      'title': 'Bebidas',
      'icon': SvgPicture.asset('lib/src/assets/icons/clinking-beer-mugs.svg'),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 80,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: listOptions.length,
        itemBuilder: (context, index) => Row(
          children: [
            Container(
              margin: EdgeInsets.only(
                left: index == 0 ? 10 : 7,
                right: index == (listOptions.length - 1) ? 10 : 7,
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            child: listOptions[index]['icon'],
                          ),
                          const SizedBox(height: 5),
                          Text(listOptions[index]['title'], style: const TextStyle(fontWeight: FontWeight.w500),),
                        ],
                      ),
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
