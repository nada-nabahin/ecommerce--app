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
            height: 30,
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
            height: 12,
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

          // Tab bar view //////////////////////
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                // Content for 'All' tab
                Center(child: Text('All Content')),

                // Content for 'PS4' tab
                Center(child: Text('PS4 Content')),

                // Content for 'PS5' tab
                Center(child: Text('PS5 Content')),

                // Content for 'Playstation5' tab
                Center(child: Text('Playstation5 Content')),

                // Content for 'PlayStation4' tab
                Center(child: Text('PlayStation4 Content')),
              ],
            ),
          ),

          // Rest of the code...
        ],
      ),

      // Rest of the code...

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
                text: 'shopping',
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
