import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectedProductCart extends StatefulWidget {
  final String productName;
  final String productPhoto;

  const SelectedProductCart({
    super.key,
    required this.productName,
    required this.productPhoto,
  });

  @override
  State<SelectedProductCart> createState() => _SelectedProductCartState();
}

class _SelectedProductCartState extends State<SelectedProductCart> {
  void increases() {
    countOfProduct += 1;
    setState(() {});
  }

  void dcreases() {
    countOfProduct -= 1;
    setState(() {});
  }

  int countOfProduct = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 149,
              width: 187,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,

                children: [
                  SizedBox(height: 5),
                  Text(
                    widget.productName,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  SizedBox(height: 4),
                  Text(
                    'المقاس:0-3أشهر',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  Text(
                    'لون الطقم :أبيض',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  SizedBox(height: 6),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFDADADA)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        height: 32,
                        width: 129,
                        child: Center(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: Icon(Icons.remove),
                                onPressed: () => dcreases(),
                              ),
                              SizedBox(width: 5),
                              Text(countOfProduct.toString()),
                              SizedBox(width: 5),
                              IconButton(
                                icon: Icon(Icons.add),
                                onPressed: () => increases(),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text('الكمية'),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(width: 6),
                      Container(
                        height: 19,width: 19,
                        child: SvgPicture.asset('assets/icon/recyclebin.svg',)),
                      Expanded(child: SizedBox()),
                      Text(
                        'LE 2,443.44',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(width: 15),
            Expanded(child: SizedBox()),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(widget.productPhoto, width: 158, height: 149),
            ),
          ],
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
