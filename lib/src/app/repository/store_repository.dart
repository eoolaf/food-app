import 'package:doreats/src/app/models/store_model.dart';

class StoreRepository {
  static final List<StoreModel> items = [
    StoreModel(
      icon: 'lib/src/assets/images/mcdonald.png',
      name: "McDonald's",
      rating: '4.9',
      category: 'Lanches',
      quantKm: '3 km',
    ),
    StoreModel(
      icon: 'lib/src/assets/images/outbacksteakhouse.jpg',
      name: "Outback Steakhouse",
      rating: '4.5',
      category: 'Lanches',
      quantKm: '2,5 km',
    ),
    StoreModel(
      icon: 'lib/src/assets/images/chinainbox.png',
      name: "China in Box",
      rating: '4.6',
      category: 'Chinesa',
      quantKm: '2,6 km',
    ),
    StoreModel(
      icon: 'lib/src/assets/images/habibs.png',
      name: "Habib's",
      rating: '4.7',
      category: 'Lanches',
      quantKm: '5 km',
    ),
    StoreModel(
      icon: 'lib/src/assets/images/cocobambu.jpg',
      name: "Cocobambu",
      rating: '4.8',
      category: 'Frutos do Mar',
      quantKm: '7,5 km',
    ),
  ];
}
