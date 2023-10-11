import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String currency, amount, unit;
  final IconData icon;
  final bool isInverted;

  final _blackColor = const Color(0xff1f2123);

  const CurrencyCard({
    super.key,
    required this.currency,
    required this.amount,
    required this.unit,
    required this.icon,
    required this.isInverted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: isInverted ? Colors.white : _blackColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  currency,
                  style: TextStyle(
                    color: isInverted ? _blackColor : Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                        color: isInverted ? _blackColor : Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      unit,
                      style: TextStyle(
                        color: isInverted ? Colors.black87 : Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: const Offset(0, 10),
                child: Icon(
                  icon,
                  color: isInverted ? _blackColor : Colors.white,
                  size: 68,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
