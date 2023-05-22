import 'package:flutter/material.dart';
import 'storybrain.dart';

var storyBrain = Storybrain();
void main() => runApp(Destini());

class Destini extends StatefulWidget {
  const Destini({super.key});

  @override
  State<Destini> createState() => _DestiniState();
}

class _DestiniState extends State<Destini> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/background.png'),
                  fit: BoxFit.cover),
            ),
            width: double.infinity,
            height: double.infinity,
            child: SafeArea(
                child: Column(
              children: [
                Expanded(
                    flex: 12,
                    child: Container(
                      padding: EdgeInsets.all(15),
                      child: Center(
                          child: Text(
                        storyBrain.getStory(),
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      )),
                    )),
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                          onPressed: () {
                            storyBrain.nextStory(1);
                            setState(() {});
                          },
                          child: Container(
                            color: Colors.green,
                            child: Center(
                              child: Text(
                                storyBrain.getchoice1(),
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )),
                    )),
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Visibility(
                        visible:
                            storyBrain.buttonVisible(storyBrain.getstorynum()),
                        child: TextButton(
                            onPressed: () {
                              storyBrain.nextStory(2);
                              setState(() {});
                            },
                            child: Container(
                              color: Colors.red,
                              child: Center(
                                child: Text(
                                  storyBrain.getchoice2(),
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )),
                      ),
                    )),
              ],
            )),
          ),
        ));
  }
}
