import 'package:flutter/material.dart';
import 'package:musicplayerui/utils/neu_box.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // menu and back button

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: NeuBox(
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                  Text(
                    ' P L A Y L I S T',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: NeuBox(
                      child: Icon(Icons.menu),
                    ),
                  )
                ],
              ),

              const SizedBox(height: 30),

              // cover art, artist name and song

              SizedBox(
                height: 400,
                width: 350,
                child: NeuBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'lib/images/images.jpeg',
                          height: 300,
                          width: 380,
                          fit: BoxFit.cover,
                        ),
                      ),

                      const SizedBox(height: 15),

                      // artist name and song

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Music to be Murdered By',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.grey.shade700),
                              ),
                              const SizedBox(height: 2),
                              const Text(
                                'Eminem',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 22),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.favorite,
                            size: 30,
                            color: Colors.red,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 40),

              // start time, shuffle button, repeat button, end time

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('00:00'),
                  Icon(Icons.shuffle),
                  Icon(Icons.repeat),
                  Text('3:38'),
                ],
              ),

              const SizedBox(height: 25),

              // linear bar

              Padding(
                padding: const EdgeInsets.all(12),
                child: NeuBox(
                  child: LinearPercentIndicator(
                    lineHeight: 10,
                    percent: 0.7,
                    progressColor: Colors.green,
                    // backgroundColor: Colors.transparent,
                  ),
                ),
              ),

              const SizedBox(height: 40),

              // previous song, pause play, next song

              Row(
                children: const [
                  Expanded(
                    child: SizedBox(
                      height: 80,
                      child: NeuBox(
                        child: Icon(
                          Icons.skip_previous,
                          size: 32,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: SizedBox(
                        height: 80,
                        child: NeuBox(
                          child: Icon(
                            Icons.play_arrow,
                            size: 32,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 80,
                      child: NeuBox(
                        child: Icon(
                          Icons.skip_next,
                          size: 32,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
