import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants.dart';
import '../main_page_provider.dart';

class MyBottomNavBar extends ConsumerWidget {

  int selectedIndex = 1;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    selectedIndex = ref.watch(bottomNavIndex);
    return Container(
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: myColors().figmaOrange.shade50, width: 1.0)),
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: myColors().figmaBlue.shade50,
        unselectedItemColor: Colors.white,
        selectedItemColor: myColors().figmaOrange.shade50,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/find_job.png'),
              //  width: 24,
              //height: 24
            ),
            label: 'Find job',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/proposals.png'),
            ),
            label: 'Proposals',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/contracts.png'),
            ),
            label: 'Contracts',
          ),
          BottomNavigationBarItem(
            icon: Image(
              image: AssetImage('assets/chat.png'),
            ),
            label: 'Chat',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: (index){
          ref.read(bottomNavIndex.notifier).state = index;
        },
      ),
    );
  }
}
