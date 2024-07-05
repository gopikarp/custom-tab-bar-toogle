import 'package:easy_rent/buypage.dart';
import 'package:easy_rent/rent.dart';
import 'package:easy_rent/tab_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'Flutter Custom TabBar',
            style: TextStyle(fontSize: 16),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Container(
              height: 40,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(90)),
                color: Colors.white,
                border: Border.all(
                  color: Colors.blue,
                  width: 2.0,
                ),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(90)),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 2.0,
                    ),
                    color: Colors.green,
                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black54,
                  tabs: const [
                    TabItem(
                      title: 'Buy',
                    ),
                    TabItem(
                      title: 'Rent',
                    ),
                    TabItem(
                      title: 'Commercial',
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  BuyPage(),
                  RentSections(),
                  Center(child: Text('Deleted Page')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
