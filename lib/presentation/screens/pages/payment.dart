import 'package:easy_radio/easy_radio.dart';
import 'package:flutter/material.dart';

import 'package:test1/presentation/widgets/custom_button.dart';

enum PaymentMethod { visa, whatsapp }

enum Address { shippingadress, different }

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  PaymentMethod _paymentMethod = PaymentMethod.visa;
  Address _paymentAddress = Address.shippingadress;
  @override
  Widget build(BuildContext context) {
    // var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
        right: width / 25,
        left: width / 25,
        top: width / 25,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: SizedBox()),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,

                  children: [
                    Text('payment'),
                    SizedBox(height: 5),
                    Text(
                      'All transactions are secure and encrypted.',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Color(0xFFD9D9D9)),
                ),
                width: 361,
                height: 49,
                child: Row(
                  children: [
                    Expanded(child: SizedBox()),
                    Text(
                      'سداد - الدفع عن طريق (كي نت/فيزا/ماستر)',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    SizedBox(width: 17),
                    EasyRadio<PaymentMethod>(
                      shape: RadioShape.circle(),
                      activeFillColor: Color(0xFF654929),
                      dotStyle: DotStyle.circle(),
                      radius: 8,
                      dotRadius: 4,
                      dotColor: Colors.white,
                      activeBorderColor: Color(0xFF654929),
                      value: PaymentMethod.visa,
                      groupValue: _paymentMethod,
                      onChanged: (value) {
                        setState(() {
                          _paymentMethod = value!;
                        });
                      },
                    ),
                    SizedBox(width: 22),
                  ],
                ),
              ),
              _paymentMethod == PaymentMethod.visa
                  ? Container(
                    width: 361,
                    height: 164,
                    decoration: BoxDecoration(color: Color(0xFFE3E3E3)),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 3,
                        bottom: 10,
                        right: 20,
                        left: 20,
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.wallet,
                            size: 80,
                            color: Color(0xFF696969),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'After clicking “ادفع الآن”, you will be redirected',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          Text(
                            'to سداد - الدفع عن طريق (كي نت/فيزا/ماستر) to',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          Text(
                            'complete your purchase securely',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                        ],
                      ),
                    ),
                  )
                  : Container(),

              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFD9D9D9), width: 1),
                ),
                width: 361,
                height: 49,
                child: Row(
                  children: [
                    Expanded(child: SizedBox()),
                    Text(
                      'Payment Link (WhatsApp)',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    SizedBox(width: 17),
                    EasyRadio<PaymentMethod>(
                      shape: RadioShape.circle(),
                      activeFillColor: Color(0xFF654929),
                      dotStyle: DotStyle.circle(),
                      radius: 8,
                      dotRadius: 4,
                      dotColor: Colors.white,
                      activeBorderColor: Color(0xFF654929),
                      value: PaymentMethod.whatsapp,
                      groupValue: _paymentMethod,
                      onChanged: (value) {
                        setState(() {
                          _paymentMethod = value!;
                        });
                      },
                    ),
                    SizedBox(width: 22),
                  ],
                ),
              ),
              //////
              SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFD9D9D9), width: 1),
                ),
                width: 361,
                height: 49,
                child: Row(
                  children: [
                    Expanded(child: SizedBox()),
                    Text(
                      'Same as shipping address',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    SizedBox(width: 17),
                    EasyRadio<Address>(
                      shape: RadioShape.circle(),
                      activeFillColor: Color(0xFF654929),
                      dotStyle: DotStyle.circle(),
                      radius: 8,
                      dotRadius: 4,
                      dotColor: Colors.white,
                      activeBorderColor: Color(0xFF654929),
                      value: Address.shippingadress,
                      groupValue: _paymentAddress,
                      onChanged: (value) {
                        setState(() {
                          _paymentAddress = value!;
                        });
                      },
                    ),
                    SizedBox(width: 22),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFD9D9D9), width: 1),
                ),
                width: 361,
                height: 49,
                child: Row(
                  children: [
                    Expanded(child: SizedBox()),
                    Text(
                      'Use a different billing address',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    SizedBox(width: 17),
                    EasyRadio<Address>(
                      shape: RadioShape.circle(),
                      activeFillColor: Color(0xFF654929),
                      dotStyle: DotStyle.circle(),
                      radius: 8,
                      dotRadius: 4,
                      dotColor: Colors.white,
                      activeBorderColor: Color(0xFF654929),
                      value: Address.different,
                      groupValue: _paymentAddress,
                      onChanged: (value) {
                        setState(() {
                          _paymentAddress = value!;
                        });
                      },
                    ),
                    SizedBox(width: 22),
                  ],
                ),
              ),
            ],
          ),

          Expanded(child: SizedBox()),
          /////////////////
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: CustomButton(contentButton: 'أكمل الطلب'),
          // ),
          // SizedBox(height: 30),
          //////////////////
        ],
      ),
    );
  }
}
