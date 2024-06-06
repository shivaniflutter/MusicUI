//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
//import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_ui/player.dart';

class Gallary extends StatefulWidget {
  const Gallary({super.key});

  @override
  State<Gallary> createState() {
    return _Gallarystate();
  }
}

class _Gallarystate extends State<Gallary> {
    int _selectedIndex = 4; // Default selected index for Home

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Map<String, String>> discography = [
    {
      'title1': "Dead inside",
      'title2': "2020",
      'imageUrl': "Assets/image3.png"
    },
    {'title1': "Alone", 'title2': "2023", 'imageUrl': "Assets/image4.png"},
    {'title1': "Heartless", 'title2': "2023", 'imageUrl': "Assets/image5.png"}
  ];
  final List<Map<String, dynamic>> popularSingles = [
    {
      'image': 'Assets/image6.png',
      'title': 'We Are Chaos',
      'subtitle': '2023 * Easy Living',
    },
    {
      'image': 'Assets/image7.png',
      'title': 'smile',
      'subtitle': '2023 * Berrechid',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset("Assets/image2.png"),
              Positioned(
                  bottom: 55,
                  left: 15,
                  child: SizedBox(
                    height: 50,
                    width: 169,
                    child: Center(
                      child: Text(
                        "A.L.O.N.E",
                        style: GoogleFonts.inter(
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ),
                  )),
              Positioned(
                bottom: 20, // Position the button below the "A.L.O.N.E" text
                left: 45,
                child: Container(
                  width: 100,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: const Color.fromRGBO(255, 46, 0, 1),
                  ),
                  
                    child: Center(
                      child: Text(
                        " Subscribe ",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ),
            ]
              ),
            
          
    
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("Assets/image8.png"),
              const SizedBox(
                width: 5,
              ),
              Image.asset("Assets/image9.png"),
              const SizedBox(
                width: 5,
              ),
              Image.asset("Assets/image9.png"),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(children: [
            Text(
              " Discography",
              style: GoogleFonts.inter(
                color: const Color.fromRGBO(255, 46, 0, 1),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              width: 240,
            ),
            Text(
              "See all",
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: const Color.fromRGBO(248, 162, 69, 1)),
            )
          ]),
          const SizedBox(
            height: 7,
          ),
          SizedBox(
              height: 163,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    final item = discography[index];
                    return  GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => player(item: item),
                      ),
                    );
                  },
                    
                    child:Container(
                      width: 150,
                      margin:
                          const EdgeInsetsDirectional.symmetric(horizontal: 5),
                      child: Column(
                        children: [
                          Image.asset(
                            item['imageUrl']!,
                            width: 120,
                            height: 120,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(item['title1']!,
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color:
                                      const Color.fromRGBO(203, 200, 200, 1))),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            item['title2']!,
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 10,
                                color: const Color.fromRGBO(132, 125, 125, 1)),
                          )
                        ],
                      ),
                    ),
                    );
                  })),
          const SizedBox(
            height: 3,
          ),
          Row(children: [
            Text(
              " Popular singles",
              style: GoogleFonts.inter(
                color: const Color.fromRGBO(203, 200, 200, 1),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            Text(
              "See all",
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: const Color.fromRGBO(248, 162, 69, 1)),
            )
          ]),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: popularSingles.length,
              itemBuilder: (context, index) {
                final single = popularSingles[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.asset(single['image']),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Align text to start
                        children: [
                          Text(
                            single['title'],
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: const Color.fromRGBO(203, 200, 200, 1),
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            single['subtitle'],
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              fontSize: 8,
                              color: const Color.fromRGBO(203, 200, 200, 1),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          Image.asset("Assets/image9.png"),
                          const SizedBox(height: 1),
                          Image.asset("Assets/image9.png"),
                          const SizedBox(height: 1),
                          Image.asset("Assets/image9.png"),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
    
    
        ]
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

