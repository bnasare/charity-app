import 'package:flutter/material.dart';

import 'welcomepage.dart';

class HealthGoals extends StatefulWidget {
  const HealthGoals({super.key});

  @override
  State<HealthGoals> createState() => _HealthGoals();
}

class _HealthGoals extends State<HealthGoals> {
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
                            image: AssetImage('assets/images/don3.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),
                      const Text(
                        'Health Goals',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const SizedBox(height: 25),
                      const Padding(
                        padding: EdgeInsets.only(right: 0),
                        child: LinearProgressIndicator(
                          value: 0.91,
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
                                  text: 'GH₵ 43,338',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                TextSpan(
                                  text: '/50,000',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 226, 226, 226),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '91%',
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
                                'assets/images/salem.png',
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
                                  'Salem Foundation',
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
                            """The "Health Goals" charity project is an initiative by the Salem Foundation aimed at promoting health and wellness among underprivileged populations. It provides access to basic healthcare services and focuses on promoting healthy habits. The project emphasizes community engagement and tailors its services to the most pressing health needs identified by local organizations and leaders. The Salem Foundation's innovative and community-driven approach has made a significant impact in the lives of many individuals and families. Overall, the "Health Goals" project is a testament to the foundation's commitment to improving the health and wellbeing of vulnerable populations.""",
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
                                height: 60, // set the desired height
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
