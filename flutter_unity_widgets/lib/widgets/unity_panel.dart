import 'package:flutter/material.dart';

class UnityPanel extends StatelessWidget {
  final Widget child;
  final String? title;
  final Color? backgroundColor;
  final Color? titleBackgroundColor;
  final Color? borderColor;
  final EdgeInsets? padding;

  const UnityPanel({
    Key? key,
    required this.child,
    this.title,
    this.backgroundColor,
    this.titleBackgroundColor,
    this.borderColor,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    final bgColor = backgroundColor ??
        (isDark ? const Color(0xFF383838) : Colors.grey[100]);
    final titleBgColor = titleBackgroundColor ??
        (isDark ? const Color(0xFF2D2D2D) : Colors.grey[300]);
    final border = borderColor ??
        (isDark ? const Color(0xFF1E1E1E) : Colors.grey[400]);
    final titleTextColor = isDark ? Colors.white70 : Colors.black87;

    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: border!, width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (title != null)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                color: titleBgColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
              child: Text(
                title!,
                style: TextStyle(
                  color: titleTextColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          Padding(
            padding: padding ?? const EdgeInsets.all(16),
            child: child,
          ),
        ],
      ),
    );
  }
}