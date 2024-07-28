import 'package:flutter/material.dart';

class SebhaCounterSection extends StatelessWidget {
  final int total;
  final int currentCount;
  final int cycleCount;
  final int beadCount;
  final String title;
  final String subtitle;

  const SebhaCounterSection({
    super.key,
    required this.total,
    required this.currentCount,
    required this.cycleCount,
    required this.beadCount,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final textColor = isDarkMode ? Colors.white : Colors.black;

    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: 250,
                  height: 50,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(color: textColor, fontSize: 20),
                      children: [
                        TextSpan(
                          text: subtitle,
                          style:
                              const TextStyle(fontFamily: 'DIN', fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'الإجمالي',
                      style: TextStyle(color: textColor, fontSize: 20),
                    ),
                    Text(
                      '$total',
                      style: TextStyle(color: textColor, fontSize: 22),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildCounterBox('عدد الدورات', cycleCount, textColor),
              _buildCounterBox('العدد الحالي', currentCount, textColor),
              _buildCounterBox('عدد الحبات', beadCount, textColor),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCounterBox(String label, int count, Color textColor) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            border: Border.all(color: textColor),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            '$count',
            style: TextStyle(color: textColor, fontSize: 24),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          label,
          style: TextStyle(color: textColor, fontSize: 18),
        ),
      ],
    );
  }
}
