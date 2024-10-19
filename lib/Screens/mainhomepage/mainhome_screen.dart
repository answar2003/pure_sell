import 'package:flutter/material.dart';
import '../CartPage/CartPage.dart';
import '../ProductsPage/ProductsPage.dart';
import '../ProfilePage/ProfilePage.dart';
import '../SearchScreen/SearchScreen.dart';
import '../homeContent/homeContent.dart';

class MainHomeScreen extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MainHomeScreen> {
  int selectedIndex = 0;

  static  List<Widget> widgetOptions = <Widget>[
    HomeContent(),
    CompleteProfileScreen(),
    ProductPage(),
    CartPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
      drawer: Drawer(
        child: ListView(
          children:  [
            const DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.white),
                  accountName:Text('Answar Uddin'),
                  accountEmail: Text("answarbd2020@gmail.com"),
                  currentAccountPicture:Image(image: AssetImage("assets/images/profile.jpeg")) ,
                )
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
                _onItemTapped(0);
              },
            ),

            ListTile(
              title: Text('Search'),
              onTap: () {
                Navigator.pop(context);
                _onItemTapped(1);
              },
            ),
            ListTile(
              title: Text('Products'),
              onTap: () {
                Navigator.pop(context);
                _onItemTapped(2);
              },
            ),
            ListTile(
              title: Text('Cart'),
              onTap: () {
                Navigator.pop(context);
                _onItemTapped(3);
              },
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                Navigator.pop(context);
                _onItemTapped(4);
              },
            ),
          ],
        ),
      ),
    );
  }
}

