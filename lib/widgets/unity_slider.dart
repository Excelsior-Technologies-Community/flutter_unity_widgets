import 'package:flutter/material.dart';

class UnitySlider extends StatelessWidget {
  final double value;
  final ValueChanged<double> onChanged;
  final double min;
  final double max;
  final String label;
  final int? divisions;
  final bool showValue;

  const UnitySlider({
    Key? key,
    required this.value,
    required this.onChanged,
    this.min = 0.0,
    this.max = 1.0,
    required this.label,
    this.divisions,
    this.showValue = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final textColor = isDark ? Colors.white70 : Colors.black87;
    final valueTextColor = isDark ? Colors.white54 : Colors.black54;
    final inactiveColor = isDark ? const Color(0xFF4A4A4A) : Colors.grey[300];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: TextStyle(
                color: textColor,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            if (showValue)
              Text(
                value.toStringAsFixed(2),
                style: TextStyle(color: valueTextColor, fontSize: 13),
              ),
          ],
        ),
        Slider(
          value: value,
          onChanged: onChanged,
          min: min,
          max: max,
          divisions: divisions,
          activeColor: const Color(0xFF2196F3),
          inactiveColor: inactiveColor,
        ),
      ],
    );
  }
}