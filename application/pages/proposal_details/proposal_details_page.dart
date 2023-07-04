
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:super_carga_mobileapp/application/pages/proposal_details/widgets/proposal_details_view.dart';

import '../../../constants.dart';
import '../../../domain/models/proposal_details/proposal_details_model.dart';
import '../../../utilis.dart';
import '../../common_widgets/page_title.dart';
import 'proposal_details_provider.dart';




class ProposalDetailsPage extends StatelessWidget {
  final String proposalId;

  ProposalDetailsPage({required this.proposalId});



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
                  PageTitle(title: "Proposal details"),
                  Container(
                    width: size.width,
                    margin: EdgeInsets.symmetric(
                        vertical: size.height / 30,
                        horizontal: size.width / 30),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: myColors().figmaBlue.shade100,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: ProposalDetailsView(proposalId: proposalId)
                        )
                      ],
                    ),
                  ),
                ],
              )),
        ),
      );
    }
  }
