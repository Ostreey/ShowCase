
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:super_carga_mobileapp/application/pages/contract_details/contract_details_page.dart';
import 'package:super_carga_mobileapp/application/pages/contract_list/contract_list_page.dart';


import '../../../common_widgets/ratting_stars.dart';
import '../../contract_details/contract_details_provider.dart';
import '../../../../constants.dart';
import '../../../../domain/models/contract_list/contract_list_model.dart';
import '../../main_page/main_page_provider.dart';
import '../../../../utilis.dart';
import '../../../common_widgets/text_highLight.dart';

class ContractListElement extends ConsumerWidget {
  ContractListProperties listContractProperties;

  ContractListElement(this.listContractProperties);



  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int tab = ref.watch(MiddleScreenTabProvider);
    final size = MediaQuery.of(context).size;
    final dateStyle = TextStyle(
        color: myColors().figmaBlue.shade300,
        fontSize: 14,
        fontWeight: FontWeight.w300);
    final titleStyle = TextStyle(color: Colors.white, fontSize: 18);

    return GestureDetector(
      onTap: () {
        ref.read(contractIdProvider.notifier).state = listContractProperties.id;
        Navigator.push(
            context,
            MaterialPageRoute(
                settings: RouteSettings(name: '/driver_contract_details'),
                builder: (context) => FutureBuilderContractDetails()));
      },
      child: Container(
        //height: size.height/10,
        width: size.width,
        margin: EdgeInsets.fromLTRB(size.width / 30, 0, size.width / 30, 0),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: myColors().figmaBlue.shade100,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (tab == 1) ...[
                    Text(
                      "Started on: ${listContractProperties.created.split('T')[0]}",
                      style: dateStyle,
                    )
                  ] else if (tab == 2) ...[
                    Row(
                      children: [
                        Text(
                          "Finished on: ${listContractProperties.created.split('T')[0]}",
                          style: dateStyle,
                        ),
                        Expanded(
                            child: RattingStars(
                                ratting: listContractProperties.rating))
                      ],
                    )
                  ],
                  Text(listContractProperties.jobTittle, style: titleStyle),
                  SizedBox(height: 9),
                  if (tab == 1) ...[
                    Row(
                      children: [
                        TextHighlight(
                            text1: "Status ",
                            text2: listContractProperties.state,
                            textSize: 14,
                            fontWeight: FontWeight.normal),
                        Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                if (listContractProperties.state ==
                                    "Delivered") ...[
                                  Text("Pending confirmation",
                                      style: TextStyle(
                                        color: myColors().figmaBlue.shade300,
                                        fontSize: 14,
                                      ))
                                ] else if (listContractProperties.state ==
                                    "Delivery confirmed") ...[
                                  Text("In review",
                                      style: TextStyle(
                                        color: myColors().figmaBlue.shade300,
                                        fontSize: 14,
                                      ))
                                ]
                              ],
                            ))
                      ],
                    )
                  ],
                  SizedBox(height: 9),
                  if (tab == 1) ...[
                    TextHighlight(
                        text1: "Payment: ",
                        text2: listContractProperties.paymentState ?? '',
                        textSize: 12,
                        fontWeight: FontWeight.w300)
                  ] else if (tab == 2) ...[
                    TextHighlight(
                        text1: "Contract value: ",
                        text2:
                        "\$${listContractProperties.contractValue.toString().split('.')[0]}" ??
                            '',
                        textSize: 12,
                        fontWeight: FontWeight.w300),
                  ],
                  SizedBox(height: 3),
                  TextHighlight(
                      text1: "Route: ",
                      text2:
                      "${listContractProperties.origin.city} to ${listContractProperties.destination.city}",
                      textSize: 12,
                      fontWeight: FontWeight.w300),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}