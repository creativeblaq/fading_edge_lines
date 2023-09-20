import 'package:fading_edge_lines/app_widgets.dart';
import 'package:fading_edge_lines/line_painter.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double sizingVal = MediaQuery.of(context).size.width * 0.3;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.indigo[900],
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Stack(children: [
        Container(
          color: Colors.indigo[900],
        ),
        Positioned(
          top: 16,
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: SingleChildScrollView(
              child: SizedBox(
                width: size.width,
                height: size.height,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Package Processing',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF10154F),
                          ),
                        ),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.close)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Choose your option',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Row(
                            children: [
                              Text('Swipe Right',
                                  style: TextStyle(
                                    fontSize: 14,
                                  )),
                              SizedBox(width: 8),
                              Icon(Icons.arrow_forward),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Flexible(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Expanded(
                            child: GridItemView(
                                icon: Icons.dry_cleaning_outlined,
                                text: 'Fashion'),
                          ),
                          Container(
                            // color: Colors.amber,
                            // width: 4,
                            height: double.infinity,
                            constraints: BoxConstraints(
                              maxHeight: sizingVal,
                            ),

                            //height: double.infinity,
                            child: CustomPaint(
                              painter: PointedLinePainter(),
                            ),
                          ),
                          const Expanded(
                            child: GridItemView(
                                icon: Icons.inventory_2_outlined,
                                text: 'Fragile'),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: SizedBox(
                              // color: Colors.amber,
                              // height: 4,
                              //width: MediaQuery.of(context).size.width * 0.5,
                              //height: double.infinity,
                              child: CustomPaint(
                                painter: PointedLinePainter(
                                  isVertical: false,
                                  reverse: true,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(24),
                            width: 8,
                            height: 8,
                            decoration: const BoxDecoration(
                              color: Color(0xFF10154F),
                              shape: BoxShape.circle,
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              // color: Colors.amber,
                              height: 4,
                              //width: MediaQuery.of(context).size.width * 0.5,
                              //height: double.infinity,
                              child: CustomPaint(
                                painter: PointedLinePainter(isVertical: false),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Expanded(
                            child: GridItemView(
                                icon: Icons.dry_cleaning_outlined,
                                text: 'Fashion'),
                          ),
                          Container(
                            // color: Colors.amber,
                            //width: 4,
                            constraints: BoxConstraints(maxHeight: sizingVal),
                            height: double.infinity,
                            child: CustomPaint(
                              painter: PointedLinePainter(
                                //isVertical: true,
                                reverse: true,
                              ),
                            ),
                          ),
                          const Expanded(
                            child: GridItemView(
                                icon: Icons.dry_cleaning_outlined,
                                text: 'Fashion'),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(40),
                      //color: Colors.amber,
                      child: const GridItemView(
                        icon: Icons.add_reaction_outlined,
                        text: 'Others',
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 60,
          right: 16,
          child: Card(
            shape: const CircleBorder(),
            color: Colors.indigo[900],
            clipBehavior: Clip.hardEdge,
            elevation: 10,
            child: InkWell(
              onTap: () {},
              child: const Padding(
                padding: EdgeInsets.all(14.0),
                child: Icon(
                  Icons.chat,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
