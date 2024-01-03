import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData iconData;
  final bool isInverted;
  final int offsetOrder;

  final _blackColor = const Color(0XFF1F2123);

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.iconData,
    required this.isInverted,
    this.offsetOrder = 0,
  });

  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry borderRadius = const BorderRadius.only(
      topLeft: Radius.circular(20),
      topRight: Radius.elliptical(60, 50),
      bottomLeft: Radius.circular(20),
      bottomRight: Radius.circular(20),
    );

    return Transform.translate(
      offset: Offset(0, offsetOrder * -20),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            color: isInverted ? Colors.white : _blackColor,
            borderRadius: borderRadius),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        color: isInverted ? _blackColor : Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: isInverted ? _blackColor : Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                          color: isInverted ? _blackColor : Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.translate(
                offset: const Offset(-5, 25),
                child: Transform.scale(
                  scale: 2,
                  child: Icon(
                    iconData,
                    color: isInverted ? _blackColor : Colors.white,
                    size: 88,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
