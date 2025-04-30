import 'package:flutter/material.dart';
import 'package:test1/presentation/screens/cart_page.dart';

class CustomButton extends StatelessWidget {
  final String contentButton;
  const CustomButton({super.key, required this.contentButton});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Expanded(child: SizedBox()),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(335, 54),
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            backgroundColor: Color(0xFF654929),
          ),
          onPressed:
              () => Navigator.of(
                context,
              ).push(CartPage.route()),
          child: Text(
            contentButton,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        //SizedBox(height: 20),
      ],
    );
  }
}
