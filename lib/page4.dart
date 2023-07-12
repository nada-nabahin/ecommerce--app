import 'package:ecommerce_app/pageIndicator.dart';
import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  // final _controller = PageController(viewportFraction: 0.7);
  PageController controller = PageController();
  bool isClicked = false;

  int _currentPage = 0;
  final int _totalPages = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff333742),
        title: const Text('PULSE 3D Wireless Headset ',
            style: TextStyle(color: Colors.white, fontSize: 15)),
        leading: const Icon(Icons.arrow_back_ios),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isClicked = !isClicked;
                });
              },
              child: Icon(
                Icons.favorite_border,
                color: isClicked ? Colors.red : Colors.white,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xff333742),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              'PULSE 3D \nWireless Headset',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Category Name',
              style: TextStyle(color: Color(0xff707070), fontSize: 16),
            ),
            const SizedBox(
              height: 18,
            ),
            Stack(
              alignment: Alignment.topRight,
              children: [
                const Row(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.visibility, color: Color(0xff707070)),
                        SizedBox(
                          width: 9,
                        ),
                        Text(
                          '1.5 K',
                          style:
                              TextStyle(color: Color(0xff707070), fontSize: 16),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.favorite, color: Color(0xff707070)),
                        SizedBox(
                          width: 9,
                        ),
                        Text(
                          '212',
                          style:
                              TextStyle(color: Color(0xff707070), fontSize: 16),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.local_mall, color: Color(0xff707070)),
                        SizedBox(
                          width: 9,
                        ),
                        Text(
                          '120',
                          style:
                              TextStyle(color: Color(0xff707070), fontSize: 16),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 95,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            color: const Color(0xff333742),
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(color: Colors.white)),
                      ),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: Colors.white),
                        ),
                      ),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: const Color(0xffED5454),
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: PageView.builder(
                controller: controller,
                itemCount: _totalPages,
                itemBuilder: (context, index) {
                  String? assetsPath;
                  switch (index) {
                    case 0:
                      assetsPath = 'assets/PS5HEADSETW.png';
                      break;
                    case 1:
                      assetsPath = 'assets/PS5HEADSETW.png';
                      break;
                  }
                  return SizedBox(
                    height: 390,
                    child: Image.asset("$assetsPath"),
                  );
                },
                onPageChanged: (int index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
              ),
            ),
            PageIndicator(
              currentPage: _currentPage,
              totalPages: _totalPages,
              activeColor: Colors.white,
              inactiveColor: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
