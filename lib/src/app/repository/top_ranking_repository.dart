import 'package:doreats/src/app/models/top_ranking_model.dart';

class TopRankingRepository {
  static final List<TopRankingModel> items = [
    TopRankingModel(
      img: 'lib/src/assets/images/mcdonald.png',
      title: "McDonald's",
      category: 'Lanches',
    ),
    TopRankingModel(
      img: 'lib/src/assets/images/cocobambu.jpg',
      title: 'Coco Bambu',
      category: 'Frutos do Mar',
    ),
    TopRankingModel(
      img: 'lib/src/assets/images/habibs.png',
      title: "Habib's",
      category: 'Lanches',
    ),
    TopRankingModel(
      img: 'lib/src/assets/images/chinainbox.png',
      title: 'China in Box',
      category: 'Chinesa',
    ),
  ];
}
