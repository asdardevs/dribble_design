import 'package:dribble_design/util/emoticon_face.dart';
import 'package:dribble_design/util/exercices_title.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(label: '', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: '', icon: Icon(Icons.message)),
          BottomNavigationBarItem(label: '', icon: Icon(Icons.person))
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            // greetings row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Hi, Asdardevs',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "27 Juli, 2022",
                            style: TextStyle(color: Colors.blue[100]),
                          )
                        ],
                      ),
                      Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.all(12),
                          child: const Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ))
                    ],
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  // Search bar
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[500],
                        borderRadius: BorderRadius.circular(12)),
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Search..",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  // how do you feel
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),

                  const SizedBox(
                    height: 25,
                  ),

                  // 4 defferent faces

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // bad
                      Column(
                        children: const [
                          EmoticonFace(
                            emoticonFace: '😩',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Bad',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      // fine
                      Column(
                        children: const [
                          EmoticonFace(
                            emoticonFace: '🙂',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Fine',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      // well
                      Column(
                        children: const [
                          EmoticonFace(
                            emoticonFace: '😊',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Well',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      // excelent
                      Column(
                        children: const [
                          EmoticonFace(
                            emoticonFace: '🥳',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Excelent',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(25),
                color: Colors.grey[200],
                child: Center(
                  child: Column(
                    children: [
                      //  Exercices Heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Exercices',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Icon(Icons.more_horiz)
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      //  Exercices Heading
                      Expanded(
                        child: ListView(
                          children: const [
                            ExcercicesTitle(
                              numberOfExcercices: '17',
                              excercicesName: "Speaking Skills",
                              icon: Icons.favorite,
                              color: Colors.orange,
                            ),
                            ExcercicesTitle(
                              numberOfExcercices: '10',
                              excercicesName: "Reading Skills",
                              icon: Icons.person,
                              color: Colors.green,
                            ),
                            ExcercicesTitle(
                              numberOfExcercices: '13',
                              excercicesName: "Writing Skills",
                              icon: Icons.star,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
