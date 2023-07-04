import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:super_carga_mobileapp/application/common_widgets/error_message.dart';
import 'package:super_carga_mobileapp/application/pages/contract_list/contract_list_page.dart';
import 'package:super_carga_mobileapp/application/pages/job_list/job_list_provider.dart';
import 'package:super_carga_mobileapp/application/pages/proposal_list/proposal_list_page.dart';
import 'package:flutter/material.dart';
import 'package:super_carga_mobileapp/application/pages/chat_list/chat_list.dart';
import 'package:super_carga_mobileapp/constants.dart';
import '../../job_list/job_list_page.dart';

import '../main_page_provider.dart';

Widget TextTabs(String text, Color color) {
  return Text(
    text,
    style: TextStyle(
      fontSize: 15,
      color: color,
    ),
  );
}

class MiddleScreenContent extends ConsumerWidget {
  late int screenNumber;
  late int tab;
  late Color firstTabColor;
  late Color secondTabColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final List<String> firstTabName = ["All jobs", "Active", "Active", ""];
    final List<String> secondTabName = [
      "Saved jobs",
      "Archived",
      "Finished",
      ""
    ];
    screenNumber = ref.watch(bottomNavIndex);
    ref.watch(searchTextProvider);
    tab = ref.watch(MiddleScreenTabProvider);
    firstTabColor = tab == 1 ? myColors().figmaOrange.shade50 : Colors.white;
    secondTabColor = tab == 2 ? myColors().figmaOrange.shade50 : Colors.white;

    return Column(
      children: [
        screenNumber < 3
            ? Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        ref.read(MiddleScreenTabProvider.notifier).state = 1;
                        ref.invalidate(JobListPaginationProvider);
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(size.width / 25, 10, 0, 20),
                        child:
                            TextTabs(firstTabName[screenNumber], firstTabColor),
                      )),
                  GestureDetector(
                      onTap: () {
                        ref.invalidate(JobListPaginationProvider);
                        ref.read(MiddleScreenTabProvider.notifier).state = 2;
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(15, 10, 10, 20),
                        child: TextTabs(
                            secondTabName[screenNumber], secondTabColor),
                      ))
                ],
              )
            : SizedBox(height: 10),
        Expanded(
          child: buildMiddleScreen(screenNumber: screenNumber),
        )
      ],
    );
  }
}

class buildMiddleScreen extends StatelessWidget {
  final int screenNumber;

  buildMiddleScreen({super.key, required this.screenNumber});

  @override
  Widget build(BuildContext context) {
    switch (screenNumber) {
      case 0:
        return JobListPage();
      case 1:
        return ProposalListPage();
      case 2:
        return ContractListPage();
      case 3:
        return FutureBuilderChatList();
      default:
        return ErrorMessage(message: "Error");
    }
  }
}
