import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';



class BottomNav extends StatefulWidget {

  final int? selectedIndex;
  const BottomNav({Key? key, this.selectedIndex=0}) : super(key: key);
  @override
  _BottomNavState createState() => _BottomNavState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _BottomNavState extends State<BottomNav> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _selectedIndex =0;
  static List<Widget> _widgetOptions = <Widget>[
    Center(child: Text("Hello"),),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedIndex=widget.selectedIndex!;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      // appBar: AppBar(title: Text('home')),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/svg/main-home.svg",
            ),
            activeIcon: SvgPicture.asset(
              "assets/svg/main-home-active.svg",
            ),
            label: "Home",
            // title: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/svg/main-category.svg",
            ),
            activeIcon: SvgPicture.asset(
              "assets/svg/main-category-active.svg",
            ),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/svg/main-wishlist.svg",
            ),
            activeIcon: SvgPicture.asset(
              "assets/svg/main-wishlist-active.svg",
            ),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/svg/main-stores.svg",
            ),
            activeIcon: SvgPicture.asset(
              "assets/svg/main-stores-active.svg",
            ),
            label: 'Stores',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/svg/main-account.svg",
            ),
            activeIcon: SvgPicture.asset(
              "assets/svg/main-account-active.svg",
            ),
            label: 'Account',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        elevation: 8,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey[200],
        selectedFontSize: 10,
        unselectedFontSize: 10,
        iconSize: 20,
        selectedLabelStyle: GoogleFonts.poppins(fontWeight: FontWeight.w500),
        unselectedLabelStyle: GoogleFonts.poppins(fontWeight: FontWeight.w500),
        onTap: _onItemTapped,
      ),
    );
  }
}
