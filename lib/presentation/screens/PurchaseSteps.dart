import 'package:flutter/material.dart';
import 'package:test1/presentation/screens/pages/payment.dart';
import 'package:test1/presentation/widgets/custom_button.dart';

class PurchaseSteps extends StatefulWidget {
  const PurchaseSteps({super.key});

  @override
  State<PurchaseSteps> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PurchaseSteps> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: TabBar(
            padding: EdgeInsets.only(top: 90),
            labelColor: Color(0xFF654929),
            unselectedLabelColor: Color(0x78777C99),
            dividerColor: Colors.transparent,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(
                child: Row(
                  children: [
                    Text('الدفع'),
                    SizedBox(width: 4),
                    Icon(Icons.wallet_rounded),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  children: [
                    Text('بيانات الطلب'),
                    SizedBox(width: 4),
                    Icon(Icons.photo_album_rounded),
                  ],
                ),
              ),
              Tab(
                child: Row(
                  children: [
                    Expanded(child: SizedBox()),
                    Text('التوصيل'),
                    SizedBox(width: 4),
                    Icon(Icons.car_crash_rounded),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Payment(),
            Center(child: Text("It's rainy here")),
            Center(child: Text("It's sunny here")),
          ],
        ),
        floatingActionButton: Column(

          children: [
            Expanded(child: SizedBox()),
            CustomButton(contentButton: 'أكمل الطلب'),
            SizedBox(height: 20,)
          ],
        ),
        floatingActionButtonLocation:    
      FloatingActionButtonLocation.centerFloat,
        
      ),
    );
  }
}
