import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../data/Api.dart';
import '../../../../domain/models/proposal_details/proposal_details_model.dart';
import '../../../../constants.dart';
import 'package:super_carga_mobileapp/application/common_widgets/my_snack_bar.dart';
import '../../../common_widgets/page_title.dart';
import '../../../common_widgets/text_highLight.dart';

class StartContract extends StatefulWidget {
  ProposalDetailsProperties proposalDetailsProperties;

  StartContract(this.proposalDetailsProperties);

  @override
  _StartContractState createState() => _StartContractState();
}

class _StartContractState extends State<StartContract> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;


    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: myColors().figmaBlue.shade50,
        body: SingleChildScrollView(
          child: Column(
            children: [
              PageTitle(title: "Summary"),
              Container(
                //height: size.height/10,
                width: size.width,
                margin: EdgeInsets.fromLTRB(size.width / 30, size.height / 30,
                    size.width / 30, size.height / 30),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: myColors().figmaBlue.shade100,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20),
                    Container(
                      child: Column(
                        children: [
                          TextHighlight(
                              text1: "Price per km:  ", text2: "\$${widget
                              .proposalDetailsProperties.costsSummary
                              .pricePerKm}", textSize: 14, fontWeight:
                          FontWeight.normal),
                          SizedBox(
                            height: 3,
                          ),
                          TextHighlight(
                              text1: "Price per distance:  ", text2: "\$${widget
                              .proposalDetailsProperties.costsSummary
                              .pricePerDistance}",  textSize: 14, fontWeight:
                          FontWeight.normal),
                          SizedBox(
                            height: 3,
                          ),
                          // if(widget.proposalDetailsProperties.additionOneName != "" && widget.proposalDetailsProperties.additionTwoName != "" )...[
                          /*   if(widget.proposalDetailsProperties.costsSummary.additions != "" && widget.proposalDetailsProperties.additionOneName != "")...[
                              textHighlight(
                                  "Additions:  ",
                                  "${widget.proposalDetailsProperties.additionOneName}: ${widget.proposalDetailsProperties.additionOnePrice}\$ + ${widget.proposalDetailsProperties.additionTwoName}:  ${widget.proposalDetailsProperties.additionTwoPrice}\$",
                                  14,
                                  FontWeight.normal)
                            ],
                                if(widget.proposalDetailsProperties.additionOneName != "")...[
                                  textHighlight(
                                      "Additions:  ",
                                      "${widget.proposalDetailsProperties.additionOneName}: ${widget.proposalDetailsProperties.additionOnePrice}\$",
                                      14,
                                      FontWeight.normal),
                                ],
                          if(widget.proposalDetailsProperties.additionTwoName != "")...[
                            textHighlight(
                                "Additions:  ",
                                "${widget.proposalDetailsProperties.additionTwoName}: ${widget.proposalDetailsProperties.additionTwoPrice}\$",
                                14,
                                FontWeight.normal),
                          ],*/
                          //TODO: add additions
                          //   ],
                          SizedBox(
                            height: 30,
                          ),
                          TextHighlight(text1:  "Total: ", text2:   "\$${widget.proposalDetailsProperties.costsSummary
                              .price}", textSize: 18, fontWeight:  FontWeight.normal),
                          SizedBox(
                            height: 3,
                          ),
                          TextHighlight(text1:   "Service fee: ",text2:  "\$${widget.proposalDetailsProperties.costsSummary
                              .serviceFee}", textSize: 18, fontWeight:  FontWeight.normal),

                          Divider(
                            height: 30,
                            // specify the height of the divider
                            color: myColors().figmaOrange.shade50,
                            // specify the color of the divider
                            thickness: 1, // specify the thickness of the divider
                          ),
                          TextHighlight(text1: "Total: ", text2:   "\$${widget.proposalDetailsProperties.costsSummary
                              .totalPrice}", textSize: 20, fontWeight: FontWeight.bold),
                          Row(
                            children: [
                              Checkbox(
                                checkColor: Colors.white,
                                fillColor:
                                MaterialStateProperty.resolveWith<Color?>(
                                        (Set<MaterialState> states) {
                                      const Set<
                                          MaterialState> interactiveStates =
                                      <MaterialState>{
                                        MaterialState.pressed,
                                        MaterialState.hovered,
                                        MaterialState.focused,
                                      };
                                      if (states.any(
                                          interactiveStates.contains)) {
                                        return Colors.blue;
                                      }
                                      return myColors().figmaOrange.shade50;
                                    }),
                                value: isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Accept terms and conditions",
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .headline1,
                              )
                            ],
                          ),

                          ElevatedButton(
                            onPressed: isChecked
                                ? () {
                              driverPostStartContract(
                                  widget.proposalDetailsProperties.id).then((
                                  state) {
                                if (state) {
                                  mySnackbar.show(
                                      context, "Contract has benn started!");
                                  Timer(Duration(seconds: 1), () {
                                    Navigator.of(context)
                                      ..popUntil(
                                          ModalRoute.withName("/driver_panel"));
                                  });
                                }
                                else {
                                  mySnackbar.show(context,
                                      "Error! Unable to start contract");
                                }
                              });
                            }
                                : () {
                              mySnackbar.show(
                                  context, "You need to accept terms");
                            },
                            child: const Text("Start contract"),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: myColors().figmaOrange.shade50,
                              minimumSize: Size(80, 40),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
