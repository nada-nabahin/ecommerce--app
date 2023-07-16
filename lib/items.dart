import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Items extends StatefulWidget {
  const Items({Key? key}) : super(key: key);

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  List<bool> favoriteList = List.generate(6, (index) => false);

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'assets/PlayStation5.png',
      'assets/PlayStation6.png',
      'assets/PlayStation5.png',
      'assets/PlayStation6.png',
      'assets/PlayStation5.png',
      'assets/PlayStation6.png',
    ];

    List<String> titles = [
      'Playstation5',
      'Playstation5',
      'Pulse3D',
      'MediaRemote',
      'Title 5',
      'Title 6',
    ];

    List<String> prices = [
      '\$890.00',
      '\$890.00',
      '\$100.00',
      '\$50.00',
      '\$0.00',
      '\$0.00',
    ];

    List<String> saleInfo = [
      '900 sale',
      '900 sale',
      'On Sale',
      'On Sale',
      '',
      '',
    ];

    return Scaffold(
      backgroundColor: const Color(0xff333742),
      appBar: AppBar(
        backgroundColor: const Color(0xff333742),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_active_outlined,
              color: Colors.white,
              size: 27,
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.align_horizontal_left,
            size: 27,
          ),
        ),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(12),
        crossAxisCount: 2,
        childAspectRatio: 164 / 250,
        children: List.generate(images.length, (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                favoriteList[index] = !favoriteList[index];
              });
            },
            child: Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff454D5A),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Icon(
                      favoriteList[index]
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '4.6',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 16,
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            width: 124,
                            height: 156,
                            child: Image.asset(
                              images[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: const Color(0xff454D5A),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              titles[index],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 4),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: RichText(
                          text: TextSpan(
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            children: [
                              TextSpan(
                                text: prices[index],
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const TextSpan(
                                text: '  ',
                              ),
                              TextSpan(
                                text: saleInfo[index],
                                style: const TextStyle(
                                  fontSize: 12,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
