import 'package:flutter/material.dart';
import 'package:super_carga_mobileapp/application/common_widgets/my_snack_bar.dart';

import '../../../../constants.dart';
import '../../../../data/Api.dart';
import '../../../../data/Common/Api.dart';
import '../../../../domain/models/common_models/model.dart';

class DropdownTruck extends StatefulWidget {
  var vehiculeType;

  DropdownTruck({required this.vehiculeType});

  @override
  _DropdownTruckState createState() => _DropdownTruckState();
}

class _DropdownTruckState extends State<DropdownTruck> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<VehiculeTypeData>(
      future: Repository().driverVehiculeList(),
      builder: (context, snapshot) {
        if (snapshot.hasData &&
            snapshot.connectionState == ConnectionState.done) {
          List<VehiculeTypeProperties> vehiculeTypePropertiesList = [];
          vehiculeTypePropertiesList =
              snapshot.data!.vehiculeTypePropertiesList;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Truck type",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.only(left: 30),
                decoration: BoxDecoration(
                  color: myColors().figmaBlue.shade200.withOpacity(0.4),
                  border: Border.all(color: myColors().figmaOrange.shade50),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: DropdownButton<String>(
                  dropdownColor: myColors().figmaBlue.shade200,
                  icon: Icon(Icons.arrow_drop_down,
                      color: myColors().figmaOrange.shade50),
                  // set the color of the dropdown icon
                  underline: Container(
                    height: 2,
                    decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Colors
                                  .transparent)), // set the color of the underline
                    ),
                  ),
                  value: widget.vehiculeType,

                  items: vehiculeTypePropertiesList.map((item) {
                    return DropdownMenuItem<String>(
                      value: item.name,
                      child: Text(item.name,
                          style: TextStyle(color: Colors.white)),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    setState(() {
                      widget.vehiculeType = value!;
                      int index = vehiculeTypePropertiesList.indexWhere(
                              (item) => item.name == widget.vehiculeType);
                      if (index != -1) {
                        print(vehiculeTypePropertiesList[index].id);
                        driverSetVehiculeType(
                            vehiculeTypePropertiesList[index].id)
                            .then((state) {
                          if (state) {
                            mySnackbar.show(context, "Vehicule type updated!");
                          } else {
                            mySnackbar.show(
                                context, "Vehicule type update failed!");
                          }
                        });
                      }
                    });
                  },
                ),
              )
            ],
          );
        } else if (snapshot.hasError) {
          return Text(
            '${snapshot.error}',
            style: TextStyle(color: Colors.orange),
          );
        }

        // By default, show a loading spinner.
        return Center(
          child: const SizedBox(
            width: 30,
            height: 30,
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
