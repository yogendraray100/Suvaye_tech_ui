import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:suvaye_app/listItems.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int mySlideIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 250, 250, 250),
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  "assets/logo.svg",
                  width: 40,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "Suvaye",
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_active_outlined,
                  color: Colors.black,
                ))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(currentIndex: 1, items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Today'),
        BottomNavigationBarItem(
            icon: Icon(Icons.design_services), label: 'Service'),
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
      ]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                      child: const Text(
                    "Hello, Suvaye Tech",
                    style: TextStyle(fontSize: 20),
                  )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Services",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text(
                    "See more >",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.green),
                  )
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              Container(
                  child: Column(
                children: [
                  SizedBox(
                    height: 200,
                    width: 420,
                    child: PageView.builder(
                        itemCount: 3,
                        onPageChanged: (value) {
                          setState(() {
                            mySlideIndex = value;
                          });
                        },
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.all(15),
                            child: Container(
                              height: 200,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 149, 241, 197),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "App Development",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      "Develop beautiful fast mobile apps",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 40,
                    width: 150,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.all(15),
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  color: index == mySlideIndex
                                      ? Colors.grey
                                      : Colors.black12,
                                  shape: BoxShape.circle),
                            ),
                          );
                        }),
                  ),
                ],
              )),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Outline",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text(
                    "See more >",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.green),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  children: [
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: arrColors[0],
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(arrIcons[0]),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(arrNames[0])
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: arrColors[1],
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(arrIcons[1]),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(arrNames[1])
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  children: [
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: arrColors[2],
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(arrIcons[2]),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(arrNames[2])
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: arrColors[3],
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(arrIcons[3]),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(arrNames[3])
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
