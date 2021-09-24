import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductAvaliableColors extends StatefulWidget {
  final List<Color> colors;

  const ProductAvaliableColors({
    Key? key,
    required this.colors,
  }) : super(key: key);

  @override
  State<ProductAvaliableColors> createState() => _ProductAvaliableColorsState();
}

class _ProductAvaliableColorsState extends State<ProductAvaliableColors> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Avaliable colors:'),
          Row(
            children: [
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * .7,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.colors.length,
                  itemBuilder: (ctx, i) {
                    return Container(
                      alignment: Alignment.center,
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: currentIndex == i
                            ? Colors.grey.withOpacity(.6)
                            : Colors.transparent,
                        shape: BoxShape.circle,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            currentIndex = i;
                          });
                        },
                        child: Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                            color: widget.colors[i],
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const Spacer(),
              SvgPicture.asset(
                'assets/svg/share.svg',
                height: 20,
                width: 20,
              ),
              const SizedBox(width: 10),
              SvgPicture.asset(
                'assets/svg/save.svg',
                height: 20,
                width: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
