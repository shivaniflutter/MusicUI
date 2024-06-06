import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class player extends StatefulWidget {
  const player({super.key, required Map<String, String> item});
  @override
  State<player> createState() {
    return _playerstate();
  }
}

class _playerstate extends State<player> {
  int _selectedIndex = 0; // Default selected index for Home

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
        body: Column(
          children: [
            Stack(
              children: [
                Image.asset("Assets/image10.png"),
                Positioned(
                    bottom: 5.0,
                    left: 90.0,
                    child: SizedBox(
                      width: 300,
                      height: 50,
                      child: Text(
                        "Alone in the Abyss",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                            color: const Color.fromRGBO(230, 154, 21, 1)),
                      ),
                    )),
                Positioned(
                  bottom: 4.0,
                  left: 185.0,
                  child: Text(
                    "Youlakou",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                        color: const Color.fromRGBO(255, 255, 255, 1)),
                  ),
                )
              ],
            ),
            Row(children: [const Spacer(), Image.asset("Assets/image17.png")]),
            const SizedBox(
              height: 3,
            ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Dynamic Warmup | ",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: const Color.fromRGBO(255, 255, 255, 1)),
                  ),
                  const Spacer(),
                  Text(
                    "4 min ",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: const Color.fromRGBO(255, 255, 255, 1)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            LinearPercentIndicator(
              width:370,
              lineHeight: 5.0,
              percent: 0.5,
              backgroundColor: const Color.fromRGBO(217, 217, 217, 0.19),
              progressColor: const Color.fromRGBO(230, 154, 31, 1),
            ),
            const SizedBox(
              height:17,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("Assets/image14.png"),
                Image.asset("Assets/image15.png"),
                Image.asset("Assets/image13.png"),
                Image.asset("Assets/image16.png"),
                Image.asset("Assets/image12.png"),
              ],
            )
          ],
        ),
         bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items:const<BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:Icon(Icons.favorite),
            label: 'Favourite', ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search' ,),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',),
            BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            label: 'cart',
            ),
          

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile'),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        backgroundColor: Color.fromRGBO(19, 19, 19, 1),

         ),
    

        );
  }
}
Widget _getSelectedWidget(int index) {
    switch (index) {
      case 0:
        return Text('Favorite Screen');
      case 1:
        return Text('Search Screen');
      case 2:
        return Text('Home Screen');
      case 3:
        return Text('Cart Screen');
      case 4:
        return Text('Profile Screen');
      default:
        return Text('Home Screen');
    }
  }

