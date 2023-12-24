import 'package:flutter/material.dart';

import 'welcomepage.dart';

class EducationKey extends StatefulWidget {
  const EducationKey({super.key});

  @override
  State<EducationKey> createState() => _EducationKey();
}

class _EducationKey extends State<EducationKey> {
  bool isFavorite = false;
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                              image: AssetImage('assets/images/don2.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 25),
                        const Text(
                          'Education Is The Key',
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
                                    text: 'GH₵ 104,130',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '/130,000',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 226, 226, 226),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              '81%',
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
                                  'assets/images/dream.jpg',
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
                                    'Dream Big Ghana',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
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
                              """"Education Is The Key" is a charity project by the Ark Foundation that provides scholarships and learning materials to children from low-income families in underprivileged communities. The foundation partners with schools to enhance education and break the cycle of poverty. The project recognizes the importance of education in creating a better future for children and communities. It empowers children and families to create brighter futures for themselves. Supporting organizations like the Ark Foundation is crucial in providing education to those who need it most. The project is an inspiring example of how small actions can make a significant difference in the world.""",
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
                                        fontSize:
                                            17, // set the desired font size
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
      ),
    );
  }
}
