import 'package:flutter/material.dart';

import 'detail_app_bar.dart';

class DetailScreenImages extends StatefulWidget {
  final String name;
  final double price;
  final List<String> images;

  const DetailScreenImages({
    Key? key,
    required this.name,
    required this.price,
    required this.images,
  }) : super(key: key);

  @override
  _DetailScreenImagesState createState() => _DetailScreenImagesState();
}

class _DetailScreenImagesState extends State<DetailScreenImages> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    widget.images[currentIndex],
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 0,
              right: 0,
              child: DetailScrAppBar(
                price: widget.price,
                name: widget.name,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 80,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.images.length,
            itemBuilder: (ctx, i) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex = i;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 10),
                  height: 80,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 1.5,
                      color:
                          currentIndex == i ? Colors.grey : Colors.transparent,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: currentIndex == i
                        ? Hero(
                            tag: widget.images[0],
                            child: Image.network(
                              widget.images[i],
                              fit: BoxFit.cover,
                            ),
                          )
                        : Image.network(
                            widget.images[i],
                            fit: BoxFit.cover,
                          ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
