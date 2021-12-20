import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var image = 'assets/images/mueid.jpg';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Food Panda'),
          centerTitle: true,
          elevation: 15,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border_outlined),
              padding: EdgeInsets.only(right: 16),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_bag_outlined),
              padding: EdgeInsets.only(right: 16),
            ),
          ],
        ),

        //drawer section
        drawer: Drawer(
          child: Container(
            color: Colors.white,
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(image),
                  ),
                  accountName: Text('Mueid'),
                  accountEmail: Text('mrmuyed@gmail.com'),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.favorite_border_rounded),
                  title: Text('Favorite'),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.receipt),
                  title: Text('Orders'),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.person_outline),
                  title: Text('Profile'),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.person_pin_circle_outlined),
                  title: Text('Address'),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.emoji_events_outlined),
                  title: Text('Challenges & Rewards'),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.wallet_giftcard_rounded),
                  title: Text('Vouchers'),
                ),
                ListTile(
                  onTap: () {},
                  leading: Icon(Icons.help_outline),
                  title: Text('Help Center'),
                ),
                Divider(
                  height: 0.2,
                ),
                ListTile(
                  onTap: () {},
                  title: Text('Settings'),
                ),
                ListTile(
                  onTap: () {},
                  title: Text('Terms & Conditions/Privacy'),
                ),
                ListTile(
                  onTap: () {},
                  title: Text('Log Out'),
                ),
              ],
            ),
          ),
        ),

        //body section
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    label: Text('Search'),
                    hintText: ("search"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 5),
                child: InkWell(
                  onTap: () {
                    print('click');
                  },
                  child: Stack(
                    children: [
                      Image.asset("assets/images/food.jpg"),
                      Positioned(
                        bottom: 15,
                        left: 15,
                        child: Text(
                          'Cyclon Offer 50% OFF',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 5, 30, 5),
                child: InkWell(
                  onTap: () {
                    print('click');
                  },
                  child: Stack(
                    children: [
                      Image.asset("assets/images/Deals.jpg"),
                      Positioned(
                        bottom: 15,
                        left: 15,
                        child: Text(
                          'Super Hot Offer 50% OFF',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 5, 30, 5),
                child: InkWell(
                  onTap: () {
                    print('click');
                  },
                  child: Stack(
                    children: [
                      Image.asset("assets/images/photo.jpg"),
                      Positioned(
                        bottom: 15,
                        left: 15,
                        child: Text(
                          'Bkash Offer 40% OFF',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
