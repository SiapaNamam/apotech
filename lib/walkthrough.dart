import 'package:apotech/welcome.dart';
import 'package:apotech/widgets/walkthrough/widget_walkthrough.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Walkthrough());
}

class Walkthrough extends StatefulWidget {
  const Walkthrough({super.key});

  @override
  State<Walkthrough> createState() => _WalkthroughState();
}

class _WalkthroughState extends State<Walkthrough> {
  int imageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  children: [
                    walkthrought(
                        'assets/walkthrough/walkthrough_1.png',
                        'View and buy \nMedicine online',
                        'Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.'),
                    walkthrought(
                        'assets/walkthrough/walkthrough_2.png',
                        'Online medical & \nHealthcare',
                        'Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.'),
                    walkthrought(
                        'assets/walkthrough/walkthrough_3.png',
                        'Get Delivery on time',
                        'Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.'),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Skip',
                      style: TextStyle(
                          color: const Color(0xff090F47).withOpacity(0.45)),
                    ),
                    SizedBox(
                      width: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (int i = 0; i < 3; i++)
                            Container(
                              width: 5,
                              height: 5,
                              color: i == imageIndex
                                  ? const Color(0xff4157FF)
                                  : const Color(0xffC4C4C4),
                            ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (imageIndex < 2) {
                          setState(() {
                            imageIndex++;
                          });
                        } else {
                          Navigator.pushNamed(context, Welcome.routname);
                        }
                      },
                      child: const Text(
                        'Next',
                        style: TextStyle(
                            color: Color(0xff4157FF),
                            fontFamily: 'Overpass-Bold'),
                      ),
                    )
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
