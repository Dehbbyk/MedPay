import 'package:flutter/material.dart';

import '../../utils.dart';

class SavingsDetailCard extends StatelessWidget {
  const SavingsDetailCard({
    super.key, required this.topRightWidget, required this.balance, this.onClick,
  });

  final Widget topRightWidget;
  final String balance;
  final Function()? onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      behavior: HitTestBehavior.translucent,
      child: Container(
        height: 160,
        decoration: BoxDecoration(
            color:Colors.blue.shade700,
            borderRadius: BorderRadius.circular(16.0)
        ),
        padding: EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Positioned(
              top: 0,
                right: 0,
                child: topRightWidget
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total Income",
                    style: TextStyle(
                        color: Colors.grey.shade200
                    ),
                  ),
                  Text(
                      "${getNaira()}$balance",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 28,
                        color: Colors.white
                      )
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                      "View All",
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(Icons.arrow_forward, color: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}