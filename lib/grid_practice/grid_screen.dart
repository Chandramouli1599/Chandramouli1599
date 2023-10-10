import 'package:flutter/material.dart';

class GridScreen extends StatefulWidget {
  const GridScreen({Key? key}) : super(key: key);

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  final List<Map<String, dynamic>> categories = [
    {"name": "Electronics", "icon": Icons.phone_android, "image": "assets/electronics.jpg"},
    {"name": "Bikes", "icon": Icons.accessibility, "image": "assets/hunter.jpg"},
    {"name": "StudyMaterials", "icon": Icons.book, "image": "assets/material.jpeg"},
    {"name": "Kitchen", "icon": Icons.home, "image": "assets/kitchen.jpg"},
    {"name": "Sports & Outdoors", "icon": Icons.directions_bike, "image": "assets/sports.jpeg"},
    {"name": "Toys & Games", "icon": Icons.toys, "image": "assets/toys.jpg"},
    {"name": "Beauty", "icon": Icons.face, "image": "assets/peacock.jpg"},
    {"name": "Automotive", "icon": Icons.directions_car, "image": "assets/car.jpg"},
    {"name": "prime", "icon": Icons.pageview_rounded, "image": "assets/prime.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.lightBlueAccent,
          floating: false,
          pinned: false,
          expandedHeight: 100.0,
          actions: const <Widget>[

          ],
          flexibleSpace: FlexibleSpaceBar(
            background: Column(
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      color: Colors.white,
                      elevation: 5.0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child:  Row(
                            children:<Widget>[
                              Expanded(
                                child:TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: 'Search Amazon.products',
                                    prefixIcon: Icon(Icons.search),
                                    border: InputBorder.none,
                                  ),
                                  onChanged: (value) {
                                    // Handle search input changes here
                                  },
                                ),
                              ),
                              IconButton(
                                icon: const Icon(Icons.camera_alt_outlined),
                                onPressed: () {
                                  // Handle lens option action here
                                },
                              ),
                              IconButton(
                                icon: const Icon(Icons.mic),
                                onPressed: () {
                                  // Handle mic option action here
                                },
                              ),
                              /*IconButton(
                                icon: const Icon(Icons.voice_chat),
                                onPressed: () {
                                  // Handle mic option action here
                                },
                              ),*/
                              IconButton(
                                icon: const Icon(Icons.call),
                                onPressed: () {
                                  // Handle mic option action here
                                },
                              ),
                            ]),
                      ),
                    )) ],
            ),
          ),
        ),
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.0,
          ),
          delegate: SliverChildBuilderDelegate(
                (context, index) {
              return GestureDetector(
                onTap: () {
                  // Handle category selection here
                  // You can navigate to a new screen or perform any other action.
                },
                child: Card(
                  elevation: 10.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        categories[index]["image"],
                        width: 300.0, // Set the image width as per your requirements
                        height: 250.0, // Set the image height as per your requirements
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        categories[index]["name"],
                        style: const TextStyle(fontSize: 22.0),
                      ),
                    ],
                  ),
                ),
              );
            },
            childCount: categories.length,
          ),
        ),
      ],
    );
  }
}