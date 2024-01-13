import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:wallpaper_ui/Screens/nature.dart';
import 'package:http/http.dart' as http;
import '../Models/wallpapermodel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  var mykey = "hxFCMu063UGXWB7rous4xW7i0iWGZ5HFBo0p5GPue6cGWhps2IiuUyTT";
  late Future<WallpaperModel> wallpaper;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    wallpaper = getWallpapers('House');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey.shade100,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search Wallpapers",
                    suffixIcon: IconButton(onPressed: (){
                      wallpaper=getWallpapers(searchController.text.toString());
                      setState(() {

                      });
                    },icon: const Icon(Icons.search),),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 20),
                    ),
                  ),
                ),
              ),
              // const SizedBox(
              //   height: 30,
              // ),

              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Best Of the month",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              FutureBuilder(
                future: wallpaper,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: snapshot.data!.photos!.map((pics) => Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          height: 200,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: Image.network("${pics.src!.portrait}",fit: BoxFit.cover,),
                        ),
                      )).toList()),
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text("${snapshot.hasError}"),
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),



              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     children: [
              //       const SizedBox(
              //         width: 20,
              //       ),
              //       Column(
              //         children: [
              //           Container(
              //             clipBehavior: Clip.antiAlias,
              //             height: 200,
              //             width: 140,
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(12)),
              //             child: Image.asset(
              //               "assets/images/n4.png",
              //               fit: BoxFit.cover,
              //             ),
              //           ),
              //         ],
              //       ),
              //       const SizedBox(
              //         width: 20,
              //       ),
              //       Column(
              //         children: [
              //           Container(
              //             clipBehavior: Clip.antiAlias,
              //             height: 200,
              //             width: 140,
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(12)),
              //             child: Image.asset(
              //               "assets/images/n3.png",
              //               fit: BoxFit.cover,
              //             ),
              //           ),
              //         ],
              //       ),
              //       const SizedBox(
              //         width: 20,
              //       ),
              //       Column(
              //         children: [
              //           Container(
              //             clipBehavior: Clip.antiAlias,
              //             height: 200,
              //             width: 140,
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(12)),
              //             child: Image.asset(
              //               "assets/images/n2.png",
              //               fit: BoxFit.cover,
              //             ),
              //           ),
              //         ],
              //       ),
              //       const SizedBox(
              //         width: 20,
              //       ),
              //       Column(
              //         children: [
              //           Container(
              //             clipBehavior: Clip.antiAlias,
              //             height: 200,
              //             width: 140,
              //             decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(12)),
              //             child: Image.asset(
              //               "assets/images/n1.png",
              //               fit: BoxFit.cover,
              //             ),
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "The color tone",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.pinkAccent,
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Categories",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          // child:Text('hi'),
                          clipBehavior: Clip.antiAlias,
                          height: 100,
                          width: 175,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/w1.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Nature",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          // child:Text('hi'),
                          clipBehavior: Clip.antiAlias,
                          height: 100,
                          width: 175,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/w2.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Nature",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          // child:Text('hi'),
                          clipBehavior: Clip.antiAlias,
                          height: 100,
                          width: 175,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/w3.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: const Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Nature",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          // child:Text('hi'),
                          clipBehavior: Clip.antiAlias,
                          height: 100,
                          width: 175,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/w4.png"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Nature()));
                                },
                                child: const Text(
                                  "Nature",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<WallpaperModel> getWallpapers(String search) async {
    var url = "https://api.pexels.com/v1/search?query=$search";
    var response =
        await http.get(Uri.parse(url), headers: {'Authorization': mykey});
    if (response.statusCode == 200) {
      var photos = jsonDecode(response.body);
      return WallpaperModel.fromJson(photos);
    } else {
      return WallpaperModel();
    }
  }
}
