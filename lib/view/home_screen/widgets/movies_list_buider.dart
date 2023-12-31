import 'package:flutter/material.dart';
import 'package:flutter_application_3/utils/color_constant/color_constant.dart';

class MovieslistBuilder extends StatelessWidget {
  MovieslistBuilder({
    required this.title,
    required this.shape,
    required this.height,
    required this.width,
    required this.fontsize,
    required this.Imagelist,
    this.child,
  });
  final String title;
  final BoxShape shape;
  final double height;
  final double width;
  final double fontsize;
  final List<String> Imagelist;
  final child;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 14),
              child: Text(
                title,
                style: TextStyle(
                    fontSize: fontsize,
                    fontWeight: FontWeight.w700,
                    color: ColorConstant.primarywhite),
              ),
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: SizedBox(
                    height: height,
                    child: Row(
                      children: List.generate(
                        Imagelist.length,
                        (index) => Padding(
                          padding: const EdgeInsets.only(right: 7),
                          child: Container(
                              height: height,
                              width: width,
                              decoration: BoxDecoration(
                                shape: shape,
                                image: DecorationImage(
                                    image: AssetImage(Imagelist[index]),
                                    fit: BoxFit.cover),
                              ),
                              child: child),
                        ),
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
