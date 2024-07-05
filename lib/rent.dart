import 'package:flutter/material.dart';

class RentSections extends StatefulWidget {
  const RentSections({super.key});

  @override
  State<RentSections> createState() => _RentSectionsState();
}

class LookinOption {
  final String imagepath;
  final String text;

  LookinOption({required this.imagepath, required this.text});
}

class _RentSectionsState extends State<RentSections> {
  int selectedIndexFirst = 1;
  int selectedIndexSecond = 1;
  int selectedIndexLast = 1;

  int selectedIndexFirstR = -1;
  int selectedIndexSecondR = 1;
  int selectedIndexLastR = 1;

  final selectedToogleIndex = ValueNotifier<int>(0);
  int selectedIndex = 0;
  int selectedIndexRent = 0;
  List<LookinOption> options = [
    LookinOption(imagepath: "assets/icons/0.png", text: 'Full House'),
    LookinOption(imagepath: "assets/icons/landIconn.png", text: 'Flatmates'),
    LookinOption(imagepath: "assets/icons/0.png", text: 'PG/Hostel'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SizedBox(
        width: 330,
        child: Padding(
          padding: const EdgeInsets.only(right: 50),
          child: FloatingActionButton.extended(
            elevation: 4.0,
            label: const Text('search'),
            onPressed: () {},
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
      bottomNavigationBar: const BottomAppBar(
          // hasNotch: false,

          ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              // Distribute available space equally among boxes
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: options.asMap().entries.map((entry) {
                final int index = entry.key;
                final LookinOption option = entry.value;

                return InkWell(
                  // Handle box clicks
                  onTap: () => setState(() => selectedIndex = index),
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: selectedIndex == index
                          ? Border.all(color: Colors.green, width: 2.0)
                          : Border.all(color: Colors.grey, width: 1.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(option.imagepath,
                            height: 32.0, width: 32.0),
                        const SizedBox(height: 8.0),
                        Text(option.text,
                            style: const TextStyle(fontSize: 16.0)),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
            if (selectedIndex != -1) buildDetailsColumn(selectedIndex),
          ],
        ),
      ),
    );
  }

  Widget buildDetailsColumn(int selectedIndex) {
    switch (selectedIndex) {
      case 0:
        return const Center(child: Text(' house '));
      case 1:
        return const Center(child: Text('flame'));
      case 2:
        return const Center(child: Text('pg'));
      default:
        return const Text('Error: Unexpected selection');
    }
  }
}
