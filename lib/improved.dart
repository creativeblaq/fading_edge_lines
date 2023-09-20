import 'package:fading_edge_lines/app_widgets.dart';
import 'package:flutter/material.dart';

class Home2 extends StatelessWidget {
  const Home2({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      appBar: AppBar(
        title: const Text('Home 2', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.indigo[900],
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SafeArea(
        bottom: false,
        child: Container(
          margin: const EdgeInsets.only(top: 16),
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
                    child: GridView.count(
                      crossAxisCount: 2,
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      children: const [
                        GridItemViewWithLines(
                          reverse: false,
                          icon: Icons.dry_cleaning_outlined,
                          text: 'Fashion',
                          showLineBottom: true,
                          showDot: true,
                        ),
                        GridItemViewWithLines(
                          showLineRight: false,
                          showLineBottom: true,
                          reverse: true,
                          icon: Icons.dry_cleaning_outlined,
                          text: 'Fashion',
                        ),
                        GridItemViewWithLines(
                          showLineRight: true,
                          reverse: true,
                          icon: Icons.dry_cleaning_outlined,
                          text: 'Fashion',
                        ),
                        GridItemViewWithLines(
                          showLineRight: false,
                          icon: Icons.dry_cleaning_outlined,
                          text: 'Fashion',
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
      floatingActionButton: Card(
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
    );
  }
}
