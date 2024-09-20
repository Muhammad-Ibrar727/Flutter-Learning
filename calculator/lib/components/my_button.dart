import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;
  const MyButton({ 
    required this.title, 
    this.color = const Color(0xffa5a5a5),
    required this.onPress
    });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: InkWell(
          onTap: onPress,
          child: Container(
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                // boxShadow: [
                //   BoxShadow(
                //     color:  Colors.grey.withOpacity(0.5), // Shadow color with opacity
                //     spreadRadius: 5, // Spread radius
                //     blurRadius: 10, // Blur radius for the shadow
                //     offset: const Offset(0, 2), // Horizontal and vertical offset
                //   )
                //   ],
                color: color,
              ),
              child: Center(child: Text(title,style: const TextStyle(color: Colors.white,fontSize: 20),)),
            ),
        ),
      ),
    );
  }
}