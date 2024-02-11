import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LAYOUT'),
        leading: const FaIcon(FontAwesomeIcons.car),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 150,
              child: Image.asset(
                'images/bg.jpg',
                fit: BoxFit.fill,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              'This is the title',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'this is the subtitle',
                              style: TextStyle(
                                  color: Colors.black38, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.star,
                            color: Colors.redAccent,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text('41'),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.phone,
                            color: Colors.blueAccent,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Call")
                        ],
                      ),
                      Column(
                        children: [
                          FaIcon(FontAwesomeIcons.route,
                              color: Colors.blueAccent),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Route')
                        ],
                      ),
                      Column(
                        children: [
                          FaIcon(FontAwesomeIcons.share,
                              color: Colors.blueAccent),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Share')
                        ],
                      )
                    ],
                  ),
                  Text(''' Lorem Ipsum is simply 
           dummy text of the printing and 
           typesetting industry. Lorem Ipsum has been
            the industry's standard dummy text ever since 
            the 1500s, when an unknown printer took a galley of type
             and scrambled it to make a type specimen book. 
             It has survived not only five centuries, 
             but also the leap into electronic typesetting,
              remaining essentially unchanged.
              Lorem Ipsum is simply 
           dummy text of the printing and 
           typesetting industry. Lorem Ipsum has been
            the industry's standard dummy text ever since 
            the 1500s, when an unknown printer took a galley of type
             and scrambled it to make a type specimen book. 
             It has survived not only five centuries, 
             but also the leap into electronic typesetting,
              remaining essentially unchanged. ''')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
