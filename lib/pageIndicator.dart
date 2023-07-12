import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final Color activeColor;
  final Color inactiveColor;

  const PageIndicator({
    super.key,
    required this.currentPage,
    required this.totalPages,
    this.activeColor = Colors.white,
    this.inactiveColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(totalPages, (index) {
        return Container(
          width: index == currentPage ? 22.0 : 8,
          height: 6.0,
          margin: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: index == currentPage ? activeColor : inactiveColor,
          ),
        );
      }),
    );
  }
}
