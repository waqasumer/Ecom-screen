import 'dart:html';
import 'dart:ui';

import 'package:assignmentno4/fav.dart';
import 'package:assignmentno4/search.dart';
import 'package:assignmentno4/store.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Ecommerce extends StatefulWidget {
  @override
  _EcommerceState createState() => _EcommerceState();
}

class _EcommerceState extends State<Ecommerce> {
  final List<String> slideimg = [
    'assets/images/image1.jpeg',
    'assets/images/image2.jpg'
        'assets/images/image3.jpeg',
    'assets/images/image4.jpeg',
  ];

  List<dynamic> img = [
    'assets/images/grid1.jpg',
    'assets/images/grid2.jpg',
    'assets/images/grid3.jpg',
    'assets/images/grid4.jpeg',
    'assets/images/grid5.jpg',
    'assets/images/grid6.jpg',
    'assets/images/grid7.jpg',
    'assets/images/grid8.jpg',
  ];
  List<dynamic> headin = [
    "iphone 12 Pro Max",
    "iphone 11 Pro Max",
    "Sumsung S21 Ultra",
    "Sumsung S20 Ultra",
    "PlayStation 5",
    "PlayStation 4",
    "HP Laptop Envy",
    "MacBook Pro",
  ];

  final List icon = ['Icons.home'];

  int currentTab = 0;

  Widget currentScreen = Search();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "E-Commerce App",
          style: TextStyle(color: Colors.white),
        )),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.notifications),
              color: Colors.white,
              onPressed: () {})
        ],
        backgroundColor: (Color(0xFF111140)),
      ),
      body:
          // Container(
          //     child:
          //         PageStorage(bucket: PageStorageBucket(), child: currentScreen)),

          Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                child: ListTile(
                  title: Text(
                    "Items",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                  ),
                  trailing: GestureDetector(
                    onTap: () {},
                    child: Text(
                      "View More",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.double,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: CarouselSlider(
                  items: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset(
                              'assets/images/slide2.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 10, bottom: 5),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    "Apple Iphone ",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              stars()
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Container(
                              child: Image.asset('assets/images/slide5.jpg')),
                          Container(
                            margin: EdgeInsets.only(top: 10, bottom: 5),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "Hp Laptop Envy",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          stars(),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Container(
                              child: Image.asset('assets/images/slide31.jpg')),
                          Container(
                            margin: EdgeInsets.only(top: 10, bottom: 5),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "Sumsung Galaxy",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          stars()
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset('assets/images/slide4.jpg'),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, bottom: 5),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                " Sony Playstation 5",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          stars()
                        ],
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    autoPlay: true,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 20, left: 15),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "More Categories",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                child: CarouselSlider(items: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      color: Color(0xFFe6e6e6),
                    ),
                    width: 310,
                    height: 120,
                    child: ListTile(
                      leading: Icon(
                        Icons.mobile_friendly,
                        size: 40,
                        color: Color(0xFF002963),
                      ),
                      title: Text(
                        "Mobiles",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      subtitle: Text(
                        "20 Items",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      color: Color(0xFFe6e6e6),
                    ),
                    width: 310,
                    height: 120,
                    child: ListTile(
                      leading: Icon(
                        Icons.laptop,
                        size: 40,
                        color: Color(0xFF002963),
                      ),
                      title: Text(
                        "Laptops",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      subtitle: Text(
                        "9 Items",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      color: Color(0xFFe6e6e6),
                    ),
                    width: 310,
                    height: 120,
                    child: ListTile(
                      leading: Icon(
                        Icons.bolt,
                        size: 40,
                        color: Color(0xFF002963),
                      ),
                      title: Text(
                        "Electronic Items",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 23),
                      ),
                      subtitle: Text(
                        "20 Items",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      color: Color(0xFFe6e6e6),
                    ),
                    width: 310,
                    height: 120,
                    child: ListTile(
                      leading: Icon(
                        Icons.double_arrow,
                        size: 40,
                        color: Color(0xFF002963),
                      ),
                      title: Text(
                        "Other Items",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 23),
                      ),
                      subtitle: Text(
                        "15 Items",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ], options: CarouselOptions(height: 70)),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, bottom: 20),
                child: ListTile(
                  title: Text(
                    "popular Items",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                  ),
                  trailing: GestureDetector(
                    onTap: () {},
                    child: Text(
                      "View More",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.double,
                      ),
                    ),
                  ),
                ),
              ),
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisSpacing: 10,
                crossAxisCount: 2,
                children: List.generate(
                  img.length,
                  (index) {
                    return Container(
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)),
                            ),
                            child: Image.asset(
                              "${img[index]}",
                            ),
                          ),
                          Container(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "${headin[index]}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                          ),
                          Container(
                            child: stars(),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xFF111140),
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                          'data:image/png;base64,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'),
                    ),
                    title: Text(
                      "User name",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                    ),
                    subtitle: Text(
                      "Example@gmail.com",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    trailing: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'https://static.thenounproject.com/png/44346-200.png'),
                ),
                title: Text(
                  "Help & Support",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAdVBMVEX///8AAAA6Ojr7+/swMDAODg7Pz8+WlpaGhobg4ODd3d3w8PDX19fa2trj4+Ovr6+0tLSmpqYpKSmenp6Pj49ZWVm/v79nZ2d4eHjo6Oju7u4kJCS6urqIiIhLS0tCQkIZGRl2dnZRUVFmZmZdXV02NjY+Pj655hBrAAAEY0lEQVR4nO2d21bbMBBF7dzBgTjkHgIBSvj/TywhXZSisVHs0ZE6Ofu1WZU3uloaebKMEEIIIYQQQgghhBBCCCHkP2Ozm632nV57DvvFQzmOrfOd8SjX5nVSxLb6pDs9qPt9sL6OrXZi+BTG78jqNrZdlg3uwvkdmccW1O9/3+ldxfQr3oILvlPGE7y9Rwjm+TSW4A3G751hHMFNH2YYpxa7oCZ6YhnBcIUUzPMtXHCKFcwf0YJbsGCeT8CGz3DDHLsQv8UL5g9QQ/Awc6ILFNzEEMxnQMNZ9WP0W1P5Xx+AhvKCuz/UeQ0odntZEbe1IY8zI8V+shNrEveuOJGK152vxNeWhWoRdayF0rWX/+JgBpsShW6iv6iSGgpq16YrlD3QL6XnlrJTL0WmcIvuBZiNH8J3hSqELrIKUMzALQY1mI7dokOsGa8xxUgIf9wQzefKLWYUoBgJGipBw4DQUAkaBoSGStAwIDRUgoYBoaESNAwIDZWg4TcKxc0wkKFwdlBpOFncPd13RjdKRYMMCzcisKKY8vMHC51dcZBh9ugUI+87f42t66tUI8rQCfe4F7va/N8faRzBoQyd0wPxENh5GoWwW5Rhtvy3kL34I/eYqL0izDAbfi3jSRxFpNPa1g0VZ/hllMxf5GFSPK1tO9wADbPiz2nsW1Xonhyk3LKhIg3fGS+Xg03lvz6Lhi1rEWxYz9x9mA9a9cWkDEv3Ydo31KQMhQPp9opJGdaE2DVvqGkZ1sTYNVZMyzDbVSs2baiJGcqT/omGk0ZqhnWKzRpqcobqtZieYZ1ik76YoKFyQ03RUFcxSUPVhpqmoaZiooaKDTVVQ71JI1lDtYZ6pmEXR92NunNq8QzD7nL90gHibpP/5Yy+6G+4DHxZ/zz8G6q3YfjL+ufhrehrmJpgnldv2TUyFH4Wmxddww7e4Ec8r4T7GSZYhd43p/wMq7Zq4+J32O9n+Av/+B743ZD0M3zFP74HfvezWIcn7PdD+2Op/fkwxUpUXtPYX5emp6j+bnEB74cX8I5/sjS9TwMm0l4bDvP7peb3vM2fW5g/ezJ/fqh7kp+goflzfPOxGObjaczHRJmPa6uJTWwcCp2Wofn4UvsxwvbjvC3E6hu/b2H+zoz5e0/m766Zv39o/w6p/XvA5u9y27+Pb/+bCva/i8FvmwSEhkrQMCA0VIKGAaGhEjQMCA2VoGFAaKgEDQNi39B+jhL7eWbi5QpCZc8D5XsSYsRR+Z7s5+yC5F0T8/PB8q7Zz51nP/9hZQ5LhaO7LIkclheQh9R+Lln7+YCj5HQGjjNHnvGG2LzcF5Bbve6WWBD0l4U/Ah5stnhDae0fDs9L2LpsqudmdaYxBLPsBiYYLUBXfAEIQKQaPFLIS3BlyniCGeLKfc/vcyThGAQeUsFrNZGhG2Gnxgq2M1NLd3oI47fWeaNWYTxSnxxfS/BS+0e2y9nqsdNrz2G/mJfADQtCCCGEEEIIIYQQQgghhJBU+A2OclmzYRJ3QgAAAABJRU5ErkJggg=='),
                ),
                title: Text(
                  "Logout",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 50,
        color: Colors.white,
        child: Container(
          height: 50,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: <
                  Widget>[
            MaterialButton(
                minWidth: 50,
                onPressed: () {
                  setState(() {
                    currentScreen = Search();
                    currentTab = 0;
                  });
                },
                child: Icon(Icons.home,
                    color: currentTab == 0 ? Color(0xFF111140) : Colors.black)),
            MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    currentScreen = Search();
                    currentTab = 1;
                  });
                },
                child: Icon(Icons.favorite,
                    color: currentTab == 1 ? Color(0xFF111140) : Colors.black)),
            MaterialButton(
                minWidth: 60,
                onPressed: () {
                  // setState(() {
                  //   currentScreen = Search();
                  //   currentTab = 2;
                  // });
                  setState(
                    () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Search"),
                            content: TextField(),
                          );
                        },
                      );
                    },
                  );
                },
                child: Container(
                  child: Icon(Icons.search,
                      size: 50,
                      color:
                          currentTab == 2 ? Color(0xFF111140) : Colors.black),
                )),
            MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    currentScreen = Search();
                    currentTab = 3;
                  });
                },
                child: Icon(Icons.store,
                    color: currentTab == 3 ? Color(0xFF111140) : Colors.black)),
            MaterialButton(
                minWidth: 60,
                onPressed: () {
                  setState(() {
                    currentScreen = Search();
                    currentTab = 4;
                  });
                },
                child: Icon(Icons.person,
                    color: currentTab == 4 ? Color(0xFF111140) : Colors.black)),
          ]),
        ),
      ),
    );
  }
}

Widget trail(var review) {
  return Container(
    child: Text(review),
  );
}

Widget stars() {
  return Row(
    children: [
      Icon(
        Icons.star,
        color: Colors.yellow,
        size: 12,
      ),
      SizedBox(
        width: 2,
      ),
      Icon(
        Icons.star,
        color: Colors.yellow,
        size: 12,
      ),
      SizedBox(
        width: 2,
      ),
      Icon(
        Icons.star,
        color: Colors.yellow,
        size: 12,
      ),
      SizedBox(
        width: 2,
      ),
      Icon(
        Icons.star,
        color: Colors.yellow,
        size: 12,
      ),
      SizedBox(
        width: 2,
      ),
      Icon(
        Icons.star,
        color: Colors.yellow,
        size: 12,
      ),
      SizedBox(
        width: 15,
      ),
      Container(
        child: Text("(8.5 review)"),
      ),
    ],
  );
}
