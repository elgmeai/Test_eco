import 'package:flutter/material.dart';
import 'package:test1/presentation/widgets/Selected_product_cart.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:test1/presentation/widgets/custom_button.dart';

class CartPage extends StatelessWidget {
  static route()=>MaterialPageRoute(builder: (context) => CartPage());
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width / 30),
        child: Column(
          children: [
            SizedBox(height: height / 17),
            ListTile(
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('العربة', style: Theme.of(context).textTheme.bodyMedium),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
            SizedBox(height: height / 80),

            SelectedProductCart(
              productName: 'طقم مواليد طباعة-4 قطع',
              productPhoto: 'assets/images/image.png',
            ),
            SelectedProductCart(
              productName: 'طقم تطريزة طباعة-4 قطع',
              productPhoto: 'assets/images/images.png',
            ),
            /////////
            SizedBox(height: 80),
            Row(
              children: [
                Text('9,773.77 LE'),
                Expanded(child: SizedBox(height: 35)),
                Text(
                  'المجموع الفرعي',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ],
            ),
            Row(
              children: [
                Text('9,773.77 LE'),
                Expanded(child: SizedBox(height: 35)),
                Text(
                  'المجموع الفرعي',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: StyledDivider(
                lineStyle: DividerLineStyle.dotted,
                color: Color(0xFFEEEEEE),
                height: 30,
                thickness: 3,
              ),
            ),
            Row(
              children: [
                Text('9,773.77 LE'),
                Expanded(child: SizedBox()),
                Text('المجموع', style: Theme.of(context).textTheme.labelSmall),
              ],
            ),
            SizedBox(height: 30,),
            CustomButton(contentButton: 'Checkout',),
            
          ],
        ),
      ),
    );
  }
}
