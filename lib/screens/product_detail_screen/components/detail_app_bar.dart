import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScrAppBar extends StatelessWidget {
  final String name;
  final double price;

  const DetailScrAppBar({
    Key? key,
    required this.name,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * .65,
                child: Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.end,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(
                '€ ${price.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 22,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
