import 'package:doreats/src/app/repository/top_ranking_repository.dart';
import 'package:flutter/material.dart';

class TopRanking extends StatefulWidget {
  const TopRanking({super.key});

  @override
  State<TopRanking> createState() => _TopRankingState();
}

class _TopRankingState extends State<TopRanking> {
  final itemsTopRanking = TopRankingRepository.items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Ranking',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 160,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: itemsTopRanking.length,
              itemBuilder: (context, index) => GestureDetector(
                child: Container(
                  width: 100,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(30)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(itemsTopRanking[index].img),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              itemsTopRanking[index].title,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              itemsTopRanking[index].category,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
