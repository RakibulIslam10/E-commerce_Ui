import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(Eu());
}

class Eu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScren(),
    );
  }
}

class HomeScren extends StatelessWidget {
  var MyItems = [
    {
      "name": "Smartphone",
      "category": "Mobile",
      "price": 59.99,
      "image":
          "https://www.mobiledokan.com/wp-content/uploads/2022/03/Xiaomi-Redmi-Note-11.jpg.webp"
    },
    {
      "name": "Laptop",
      "category": "Computer",
      "price": 199.99,
      "image":
          "https://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c08599931.png"
    },
    {
      "name": "Smart TV",
      "category": "Television",
      "price": 89.99,
      "image":
          "https://www.startech.com.bd/image/cache/catalog/television/oneplus/Y1G-1-500x500.webp"
    },
    {
      "name": "Wireless Headphones",
      "category": "Audio",
      "price": 19.99,
      "image":
          "https://static.gadgetandgear.com/image/250x250/fit/tmp/product/20220820_1660984332_600269.jpeg"
    },
    {
      "name": "Computer",
      "category": "Mobile",
      "price": 49.99,
      "image": "https://www.bdstall.com/asset/product-image/giant_135029.jpg"
    },
    {
      "name": "Refrigerator",
      "category": "Mobile",
      "price": 449.99,
      "image": "https://vision.com.bd/images/detailed/153/Pink-FL-_988617.jpg"
    },
    {
      "name": "Refrigerator",
      "category": "Mobile",
      "price": 445.99,
      "image":
          "https://blog.daraz.com.bd/wp-content/uploads/2022/06/Canon-EOS-M50-Mirrorless-Camera.jpg"
    },
    {
      "name": "Sound box",
      "category": "Mobile",
      "price": 489.99,
      "image":
          "https://blog.daraz.com.bd/wp-content/uploads/2023/05/logitech-z607.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 80.0),
          child: Text(
            "Popular",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                size: 32,
              ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        selectedItemColor: Colors.pink,
        // Set your desired color for the selected item
        unselectedItemColor: Colors.grey,
        // Set your desired color for unselected items
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: ""),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink,
        onPressed: () {},
        child: Icon(Icons.store),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 14),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: TextField(
                decoration: (InputDecoration(
                    hintText: "Search",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)))),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: MyItems.length,
              itemBuilder: (context, index) {
                return InkWell(
                  child: Card(
                    elevation: 2,
                    shadowColor: Colors.grey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            flex: 5,
                            child: Image.network(
                                MyItems[index]["image"].toString())),
                        Column(
                          children: [
                            Text(MyItems[index]["name"].toString()),
                            Text(
                              "price \$" + MyItems[index]["price"].toString(),
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        )
                      ],
                    ),
                  ),
                );
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 2),
            ),
          ),
        ],
      ),
      // backgroundColor: Colors.white,

      drawer: Drawer(
          child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.all(0),
            child: Container(
              child: Column(
                children: [
                  SizedBox(
                      height: 110,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Image.network(
                          "https://cdn-icons-png.flaticon.com/256/9368/9368192.png",
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "👋 Hey there!",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  )
                ],
              ),
              color: Colors.pink,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profile"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Setting"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text("Share"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text("Rate App"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.email_rounded),
            title: Text("Contact Us"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text("Privacy Policy"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.dark_mode_outlined),
            title: Text("Dark Mode"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Exit"),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120.0),
            child: Padding(
              padding: const EdgeInsets.only(top: 48.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: .0),
                child: ElevatedButton(
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                  ),
                  child: Text("Exit"),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
