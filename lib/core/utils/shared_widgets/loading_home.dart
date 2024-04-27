import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingHomeData extends StatelessWidget {
  const LoadingHomeData({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              color: Colors.white,
              height: 80,
              width: MediaQuery.of(context).size.width,
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 200,
              child: list(200, 250),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 100,
              child: list(100, 100, shape: BoxShape.circle),
            ),
            const SizedBox(height: 20),
            Container(
              color: Colors.white,
              height: 200,
              width: MediaQuery.of(context).size.width,
            ),
            const SizedBox(height: 20),
            Container(
              color: Colors.white,
              height: 200,
              width: MediaQuery.of(context).size.width,
            )
          ],
        ),
      ),
    );
  }

  Widget list(double height, double width,
          {BoxShape shape = BoxShape.rectangle}) =>
      ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: shape,
            ),
            height: height,
            width: width,
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 10),
      );
}
