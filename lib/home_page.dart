import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'assets/PlayStation5.png',
      'assets/PlayStation6.png',
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
              color: Color(0xff3CC1D5),
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

      /////////////////////
      body: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 11),
              ),
              Text(
                'Categories',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),

          // Tab bar //////////////////////
          TabBar(
            controller: _tabController,
            isScrollable: true,
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey[400],
            tabs: const [
              Tab(text: 'All'),
              Tab(text: 'PS4'),
              Tab(text: 'PS5'),
              Tab(text: 'Playstation5'),
              Tab(text: 'PlayStation4'),
            ],
          ),
          const SizedBox(
            height: 12,
          ),

          // Search Field and Filter Icon //////////////////////
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    width: 288,
                    decoration: BoxDecoration(
                      color: Color(0xff454D5A),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Search products...',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  height: 50,
                  width: 49,
                  decoration: BoxDecoration(
                    color: Color(0xff454D5A),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Icon(
                    Icons.tune,
                    color: Colors.white,
                    size: 27,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),

          // Scrollable row of containers //////////////////////
          Container(
            height: 450,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  width: 284,
                  height: 455,
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    color: const Color(0xff454D5A),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 12,
                        left: 12,
                        child: Text(
                          'Sony',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 12,
                        right: 12,
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.grey[400],
                          size: 25,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            width: 216,
                            height: 271,
                            child: Image.asset(
                              images[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),

      // bottomNavigationBar ///////////////////////
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Color(0xff333742),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 2,
          ),
          child: GNav(
            backgroundColor: const Color(0xff454D5A),
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: const Color(0xff333742),
            gap: 8,
            onTabChange: (index) {
              print(index);
            },
            padding: EdgeInsets.all(16),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.shopping_bag,
                text: 'Shopping',
              ),
              GButton(
                icon: Icons.supervised_user_circle,
                text: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
