import 'package:flutter/material.dart';

import 'welcomepage.dart';

class HelpThemSmile extends StatefulWidget {
  const HelpThemSmile({super.key});

  @override
  State<HelpThemSmile> createState() => _HelpThemSmileState();
}

class _HelpThemSmileState extends State<HelpThemSmile> {
  bool isFavorite = false;
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const WelcomePage(),
                            ),
                          );
                        },
                        icon: const Icon(Icons.keyboard_backspace_rounded),
                      ),
                      //const SizedBox(width: 35),
                      const Text(
                        'Details',
                        style: TextStyle(fontSize: 18),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isFavorite = !isFavorite;
                          });
                        },
                        icon: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          color: isFavorite ? Colors.red : null,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 235,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/don.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      const Text(
                        'Help Them Smile Again',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const SizedBox(height: 25),
                      const Padding(
                        padding: EdgeInsets.only(right: 0),
                        child: LinearProgressIndicator(
                          value: 0.75,
                          color: Colors.orange,
                          backgroundColor: Color.fromARGB(255, 226, 226, 226),
                        ),
                      ),
                      const SizedBox(height: 25),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'GH₵ 52,650',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                TextSpan(
                                  text: '/70,000',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 226, 226, 226),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '75%',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )
                        ],
                      ),
                      const SizedBox(height: 30),
                      Container(
                        height: 80,
                        margin: const EdgeInsets.only(bottom: 10),
                        child: ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 3, horizontal: 30),
                          tileColor: const Color.fromARGB(255, 226, 226, 226),
                          leading: ClipOval(
                            child: CircleAvatar(
                              radius: 22.0,
                              backgroundColor: Colors.white,
                              child: Image.asset(
                                'assets/images/HH.png',
                              ),
                            ),
                          ),
                          title: const Padding(
                            padding: EdgeInsets.only(
                              top: 10,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'Happy Helpers',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.verified,
                                  color: Colors.blue,
                                  size: 17,
                                ),
                              ],
                            ),
                          ),
                          subtitle: const Padding(
                            padding: EdgeInsets.only(
                              top: 9,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Verified Foundation',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            """"Help Them Smile" is a charitable project for underprivileged children, aiming to provide basic necessities and organize engaging activities. The foundation believes that every child deserves happiness, regardless of their background. The project focuses on food, shelter, clothing, sports, games, art classes, and cultural activities. The foundation aims to create a positive impact and help children realize their full potential. Their ultimate goal is to bring happiness and hope to as many underprivileged children as possible. They encourage support from individuals and organizations. By joining hands with "Help Them Smile," everyone can make a significant difference in these children's lives.""",
                            maxLines: _isExpanded ? null : 3,
                            overflow: TextOverflow.fade,
                          ),
                          InkWell(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: Text(
                                _isExpanded ? 'Read less' : 'Read more',
                                style: const TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            onTap: () {
                              setState(
                                () {
                                  _isExpanded = !_isExpanded;
                                },
                              );
                            },
                          ),
                          const SizedBox(height: 20),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 19),
                              child: SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    0.08, // set the desired height
                                width: 419, // set the desired width
                                child: ElevatedButton(
                                  onPressed: () {
                                    //add your onpressed function
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    backgroundColor: Colors
                                        .black, // set the desired background color
                                  ),
                                  child: const Text(
                                    'Donate Now',
                                    style: TextStyle(
                                      fontSize: 17, // set the desired font size
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
