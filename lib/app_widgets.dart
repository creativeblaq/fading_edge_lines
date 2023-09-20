import 'package:fading_edge_lines/line_painter.dart';
import 'package:flutter/material.dart';

///This builds a GridItemView widget
///The GridItemView widget is responsible for drawing the icon and text
class GridItemView extends StatelessWidget {
  const GridItemView(
      {super.key, required this.icon, required this.text, this.size = 48});

  final IconData icon;
  final String text;
  final double size;

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          child: Icon(
            icon,
            size: size,
            color: const Color(0xFF10154F),
          ),
        ),
        const SizedBox(height: 4),
        Text(text),
      ],
    );
  }
}

///This builds a GridItemViewWithLines widget
///The GridItemViewWithLines widget determines whether to draw a line
///to the right or bottom and whether to draw a dot
class GridItemViewWithLines extends StatelessWidget {
  const GridItemViewWithLines({
    super.key,
    this.showLineRight = true,
    this.reverse = false,
    this.showLineBottom = false,
    required this.icon,
    required this.text,
    this.showDot = false,
  });

  final bool showLineRight;
  final bool showLineBottom;
  final bool showDot;
  final bool reverse;

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: GridItemView(
                      icon: icon,
                      text: text,
                    ),
                  ),
                  //Spacer(),
                  Visibility(
                    visible: showLineBottom,
                    child: Container(
                      //color: Colors.amber,
                      //height: 4,
                      width: double.infinity,
                      //height: double.infinity,
                      padding: EdgeInsets.only(
                        right: showLineBottom && showLineRight ? 28 : 8,
                        left: showLineBottom && !showLineRight ? 28 : 8,
                      ),
                      child: CustomPaint(
                        painter: PointedLinePainter(
                          isVertical: false,
                          reverse: !reverse,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: showLineRight,
              maintainSize: true,
              maintainAnimation: true,
              maintainState: true,
              child: Container(
                height: double.infinity,
                padding: EdgeInsets.only(
                  bottom: reverse ? 8 : 28,
                  top: reverse ? 28 : 8,
                ),

                //height: double.infinity,
                child: CustomPaint(
                  painter: PointedLinePainter(
                    reverse: reverse,
                  ),
                ),
              ),
            ),
          ],
        ),
        Visibility(
          visible: showDot,
          child: Positioned(
            bottom: -4,
            right: -4,
            child: Container(
              //margin: const EdgeInsets.all(24),
              width: 8,
              height: 8,
              decoration: const BoxDecoration(
                color: Color(0xFF10154F),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
