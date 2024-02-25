import 'package:doreats/src/app/repository/store_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Store extends StatefulWidget {
  const Store({super.key});

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  final store = StoreRepository.items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 12, bottom: 5),
            height: 40,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 1,
              itemBuilder: (context, index) => Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: GestureDetector(
                                    child: Row(
                                      children: [
                                        const Text(
                                          'Filtrar',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SvgPicture.asset(
                                          'lib/src/assets/icons/arrow-down.svg',
                                          height: 20,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: GestureDetector(
                                    child: const Row(
                                      children: [Text('Entrega Grátis', style: TextStyle(fontWeight: FontWeight.w400),)],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: GestureDetector(
                                    child: const Row(
                                      children: [Text('Distância', style: TextStyle(fontWeight: FontWeight.w400),)],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child: GestureDetector(
                                    child: const Row(
                                      children: [Text('Super Restaurantes', style: TextStyle(fontWeight: FontWeight.w400),)],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Lojas Parceiras',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Ver mais',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                height: 75,
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: const BorderRadius.all(Radius.circular(12))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 23,
                            backgroundImage: AssetImage(store[index].icon),
                          ),
                          const SizedBox(width: 7),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 5),
                              Text(
                                store[index].name,
                                style: const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    size: 20,
                                    color: Colors.yellow,
                                  ),
                                  Text(
                                    store[index].rating,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  const Text(' • '),
                                  Text(
                                    store[index].category,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const Text(' • '),
                                  Text(
                                    store[index].quantKm,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(
                          'lib/src/assets/icons/heart.svg',
                          height: 22,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
