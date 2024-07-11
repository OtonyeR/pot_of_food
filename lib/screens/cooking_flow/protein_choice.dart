import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pot_of_food/components/styles/colors.dart';
import 'package:pot_of_food/components/styles/styles.dart';

class ProteinScreen extends StatefulWidget {
  const ProteinScreen({Key? key}) : super(key: key);

  @override
  State<ProteinScreen> createState() => _ProteinScreenState();
}

class _ProteinScreenState extends State<ProteinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Add Proteins',
          style: TextStyle(
              color: mainBlack, fontWeight: FontWeight.w500, fontSize: 20),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: mainBlack,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ProteinTag(),
                    ProteinTag(),
                    ProteinTag(),
                    ProteinTag(),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: MediaQuery.of(context).size.height *
                              0.5, // Adjust height as needed
                          // width: MediaQuery.of(context).size.width * 0.525,
                          child: Stack(
                            children: [
                              Positioned(
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.width * 0.85,
                                  width:
                                      MediaQuery.of(context).size.width * 0.39,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.black12,
                                            spreadRadius: 1,
                                            blurRadius: 2)
                                      ]),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Spacer(),
                                        Text(
                                          'Chicken',
                                          style: TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.orange,
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          '₦1,000 Per Kg',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black54,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 35,
                                right: 120,
                                child: Draggable(
                                  feedback: Container(
                                    height: 110,
                                    width: 110,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(55),
                                        color: Colors.grey,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey.shade200,
                                              spreadRadius: 2,
                                              blurRadius: 2)
                                        ]),
                                    child: Icon(Icons.fastfood,
                                        color: Colors.white,
                                        size:
                                            50), // Placeholder for the image icon
                                  ),
                                  childWhenDragging: Container(),
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey.shade200,
                                              spreadRadius: 2,
                                              blurRadius: 2)
                                        ]),
                                    child: Icon(Icons.fastfood,
                                        color: mainOrange,
                                        size:
                                            50), // Placeholder for the image icon
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 140,
                    right: MediaQuery.of(context).size.width * 0.07,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.25,
                      child: DragTarget(
                        builder: (context, candidateItems, rejectedItems) {
                          return Container(
                            padding: EdgeInsets.only(right: 1),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Wrap(
                                  direction: Axis.vertical,
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  alignment: WrapAlignment.center,
                                  spacing: 12,
                                  children: const [
                                    Text(
                                      'Drag To Add',
                                      style: TextStyle(color: subText),
                                    ),
                                    Icon(
                                      Icons.arrow_downward_rounded,
                                      color: subText,
                                    )
                                  ],
                                ),
                                Wrap(
                                  alignment: WrapAlignment.spaceBetween,
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  spacing: 12,
                                  children: [
                                    Icon(Icons.arrow_left),
                                    Text('1KG'),
                                    Icon(Icons.arrow_right)
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
              Center(
                child: GestureDetector(
                  child: Image.asset(
                    'assets/flame.png',
                    scale: 1,
                  ),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Container ProteinTag() {
    return Container(
      margin: EdgeInsets.only(right: 8),
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0), color: mainOrange),
      child: Center(
          child: Text(
        'Chicken',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),
      )),
    );
  }
}
