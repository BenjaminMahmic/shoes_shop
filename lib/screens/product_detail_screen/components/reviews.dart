import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:shoes_shop/models/review.dart';

class Reviews extends StatefulWidget {
  final double totalRating;
  final List<Review> reviews;

  const Reviews({
    Key? key,
    required this.totalRating,
    required this.reviews,
  }) : super(key: key);

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  PageController pageController = PageController(
    viewportFraction: 0.9,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/svg/star.svg',
                height: 18,
                width: 18,
              ),
              const SizedBox(width: 10),
              Text(
                widget.totalRating.toString(),
                style: const TextStyle(fontWeight: FontWeight.w900),
              ),
              const SizedBox(width: 20),
              const Text(
                'Ratings and reviews',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: const Text('See all'),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 200,
          child: PageView.builder(
            controller: pageController,
            pageSnapping: true,
            scrollDirection: Axis.horizontal,
            itemCount: widget.reviews.length,
            itemBuilder: (ctx, i) {
              return Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 15),
                padding: const EdgeInsets.all(5),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.5),
                      blurRadius: 10,
                    )
                  ],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          widget.reviews[i].userImageUrl,
                        ),
                      ),
                      title: Text(
                        widget.reviews[i].userName,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        DateFormat('dd, MMMM yyyy')
                            .format(widget.reviews[i].date),
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          widget.reviews[i].reviewContent,
                          overflow: TextOverflow.fade,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.reviews[i].rate.toString(),
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          RatingBarIndicator(
                            rating: widget.reviews[i].rate,
                            itemCount: 5,
                            itemSize: 30,
                            itemBuilder: (context, _) {
                              return const Icon(
                                Icons.star,
                                color: Colors.amber,
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
