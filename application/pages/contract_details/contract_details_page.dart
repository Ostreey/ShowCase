
import 'package:super_carga_mobileapp/application/common_widgets/user_component.dart';
import 'package:super_carga_mobileapp/application/pages/contract_details/widget/documents_section.dart';
import 'package:super_carga_mobileapp/application/pages/contract_details/widget/summary_section_widget.dart';
import 'package:super_carga_mobileapp/application/common_widgets/my_snack_bar.dart';
import '../../../domain/models/contract_details/contract_details_model.dart';
import '../../../data/Api.dart';
import 'package:flutter/material.dart';
import 'package:super_carga_mobileapp/constants.dart';
import 'package:super_carga_mobileapp/application/pages/main_page/main_page_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../common_widgets/error_message.dart';
import '../../common_widgets/page_loading_spinner.dart';
import '../../common_widgets/page_title.dart';
import 'contract_details_provider.dart';
import '../../common_widgets/section_divider.dart';
import 'widget/job_details_component.dart';

class ContractDetailsWidget extends StatefulWidget {
  ContractDetailsProperties contractDetailsProperties;
  int tab;
  String test = "test";

  ContractDetailsWidget(
      {required this.contractDetailsProperties, required this.tab});

  @override
  State<ContractDetailsWidget> createState() => _ContractDetailsWidgetState();
}

class _ContractDetailsWidgetState extends State<ContractDetailsWidget> {
  bool test = false;
  var proofOfPickup;
  var cargoOnPickup;
  var proofOfDelivery;
  var cargoOnDelivery;

  void proofOfPickupImageCallback(String proofPicturePath) {
    debugPrint(proofPicturePath);
    proofOfPickup = proofPicturePath;
  }

  void cargoOnPickupImageCallback(String cargoPicturePath) {
    debugPrint(cargoPicturePath);
    cargoOnPickup = cargoPicturePath;
  }

  void proofOfDeliveryImageCallback(String proofPicturePath) {
    proofOfDelivery = proofPicturePath;
  }

  void cargoOnDeliveryImageCallback(String cargoPicturePath) {
    cargoOnDelivery = cargoPicturePath;
  }

  bool _isLoadingPickup = false;
  bool _isLoadingDelivery = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    bool allowConfirmPickup = false, allowConfirmDelivery = false;

    if (widget.contractDetailsProperties.state == "Started") {
      allowConfirmPickup = true;
    } else if (widget.contractDetailsProperties.state == "Picked up") {
      allowConfirmDelivery = true;
    }

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: myColors().figmaBlue.shade50,
        body: SingleChildScrollView(
          child: Column(
            children: [
              PageTitle(title: "Contract details"),
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
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          UserComponent(customer: widget.contractDetailsProperties.customer, pricePerKm: widget.contractDetailsProperties.costsSummary.pricePerKm),
                          SectionDivider(height: 20),
                          JobDetailsComponent(contractDetailsProperties: widget.contractDetailsProperties),
                          SectionDivider(height: 20),
                          Text("Documents",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 20),
                          DocumentsSection(
                              proofURL: widget.contractDetailsProperties
                                  .pickUpProofImagePath,
                              cargoURL: widget.contractDetailsProperties
                                  .pickUpCargoImagePath,
                              description1: "Proof of pickup",
                              description2: "Cargo on pickup",
                              size: size,
                              proofImageCallback: proofOfPickupImageCallback,
                              cargoImageCallback: cargoOnPickupImageCallback,
                              allowUpload: allowConfirmPickup),
                          SizedBox(height: 5),
                          if (allowConfirmPickup) ...[
                            Consumer(builder: (_, WidgetRef ref, __) {
                              _isLoadingPickup =
                                  ref.watch(PickupButtonProvider);
                              return ElevatedButton(
                                onPressed: () {
                                  if (proofOfPickup != null &&
                                      cargoOnPickup != null) {
                                    ref
                                        .read(PickupButtonProvider.notifier)
                                        .state = true;
                                    DriverRepository().postConfirmPickup(
                                            proofOfPickup,
                                            cargoOnPickup,
                                            widget.contractDetailsProperties.id)
                                        .then((result) {
                                      if (result) {
                                        ref.refresh(contractDetailsProvider(
                                            widget
                                                .contractDetailsProperties.id));
                                        mySnackbar.show(
                                            context, "Pickup confirmed!");
                                      } else {
                                        mySnackbar.show(context,
                                            "Pickup confirmation failed!");
                                      }
                                      ref
                                          .read(PickupButtonProvider.notifier)
                                          .state = false;
                                    });
                                  } else {
                                    mySnackbar.show(context,
                                        "You need to upload pictures first");
                                  }
                                },
                                child: _isLoadingPickup
                                    ? Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(40, 0, 40, 0),
                                        child: CircularProgressIndicator(
                                          color: Colors.white,
                                        ),
                                      ) // Show loading spinner
                                    : const Text("Confirm pickup"),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      myColors().figmaOrange.shade50,
                                  minimumSize: Size(80, 40),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                ),
                              );
                            }),
                          ],
                          SizedBox(height: 20),
                          if (widget.contractDetailsProperties.state !=
                              "Started") ...[
                            DocumentsSection(
                                proofURL: widget.contractDetailsProperties
                                    .deliveryProofImagePath,
                                cargoURL: widget.contractDetailsProperties
                                    .deliveryCargoImagePath,
                                description1: "Proof of delivery",
                                description2: "Proof of delivery",
                                size: size,
                                proofImageCallback:
                                    proofOfDeliveryImageCallback,
                                cargoImageCallback:
                                    cargoOnDeliveryImageCallback,
                                allowUpload: allowConfirmDelivery),
                            SizedBox(height: 5),
                            if (allowConfirmDelivery) ...[
                              Consumer(builder: (_, WidgetRef ref, __) {
                                _isLoadingDelivery =
                                    ref.watch(DeliveryButtonProvider);
                                return ElevatedButton(
                                  onPressed: () {
                                    if (proofOfDelivery != null &&
                                        cargoOnDelivery != null) {
                                      ref
                                          .watch(
                                              DeliveryButtonProvider.notifier)
                                          .state = true;
                                      DriverRepository().postConfirmDelivery(
                                              proofOfDelivery,
                                              cargoOnDelivery,
                                              widget
                                                  .contractDetailsProperties.id)
                                          .then((result) {
                                        if (result) {
                                          ref.refresh(contractDetailsProvider(
                                              widget.contractDetailsProperties
                                                  .id));
                                          // TODO: "Change state to delivered";
                                          mySnackbar.show(
                                              context, "Delivery confirmed!");
                                        } else {
                                          mySnackbar.show(context,
                                              "Delivery confirmation failed!");
                                        }
                                        ref
                                            .watch(
                                                DeliveryButtonProvider.notifier)
                                            .state = false;
                                      });
                                    } else {
                                      mySnackbar.show(context,
                                          "You need to upload pictures first");
                                    }
                                  },
                                  child: _isLoadingDelivery
                                      ? Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(40, 0, 40, 0),
                                          child: CircularProgressIndicator(
                                            color: Colors.white,
                                          ),
                                        ) // Show loading spinner
                                      : const Text("Confirm delivery"),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        myColors().figmaOrange.shade50,
                                    minimumSize: Size(80, 40),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                );
                              })
                            ],
                            SizedBox(height: 20),
                          ],
                          SectionDivider(height: 30),
                          SummarySectionWidget(widget: widget),
                          /* Center(
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text("Open dispute"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: figmaOrange.shade50,
                                minimumSize: Size(80, 40),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                            ),
                          )*/
                        ],
                      ),
                    )
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




class FutureBuilderContractDetails extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int tab = ref.watch(MiddleScreenTabProvider);
    String contractId = ref.watch(contractIdProvider);
    final contractDetailsAsyncValue =
        ref.watch(contractDetailsProvider(contractId));

    return contractDetailsAsyncValue.when(
      data: (contracDetails) {
        return ContractDetailsWidget(
          tab: tab,
          contractDetailsProperties: contracDetails,
        );
      },
      loading: () => PageLoadingSpinnerWidget(),
      error: (error, stackTrace) => ErrorMessage(message: error.toString()),
    );
  }
}
