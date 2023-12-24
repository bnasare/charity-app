import 'package:flutter/material.dart';

import 'welcomepage.dart';

class FootballUnites extends StatefulWidget {
  const FootballUnites({super.key});

  @override
  State<FootballUnites> createState() => _FootballUnites();
}

class _FootballUnites extends State<FootballUnites> {
  bool isFavorite = false;
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).orientation == Orientation.portrait
            ? MediaQuery.of(context).size.height
            : MediaQuery.of(context).size.width,
        width: MediaQuery.of(context).orientation == Orientation.portrait
            ? MediaQuery.of(context).size.width
            : MediaQuery.of(context).size.height,
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
                            image: AssetImage('assets/images/don4.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      const Text(
                        'Football Unites',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const SizedBox(height: 25),
                      const Padding(
                        padding: EdgeInsets.only(right: 0),
                        child: LinearProgressIndicator(
                          value: 0.19,
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
                                  text: 'GH₵ 67,356',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                TextSpan(
                                  text: '/300,000',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 226, 226, 226),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '19%',
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
                                'assets/images/sports.jpg',
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
                                  'Rural Sports',
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
                                Text(
                                  'Verified Foundation',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
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
                            """"Football Unites" is a charity project by the Rural Sports Foundation aimed at promoting football as a means of bringing communities together. It focuses on empowering children and young people from rural and underprivileged communities through sport. The project includes football camps, coaching clinics, tournaments, and community events. It also promotes gender equality by providing special coaching and training programs for girls. Overall, the project has had a significant impact in breaking down barriers between different sections of society and providing opportunities for young people to develop their skills and pursue their dreams. It is a shining example of how sport can be used as a force for good in society.""",
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
                                height: 60,
                                width: 419,
                                child: ElevatedButton(
                                  onPressed: () {
                                    //add your onpressed function
                                  },
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    backgroundColor: Colors.black,
                                  ),
                                  child: const Text(
                                    'Donate Now',
                                    style: TextStyle(
                                      fontSize: 17,
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
