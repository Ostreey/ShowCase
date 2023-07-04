import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:super_carga_mobileapp/application/common_widgets/my_snack_bar.dart';
import 'package:super_carga_mobileapp/data/Common/Api.dart';

import '../../../../constants.dart';

class MyIconButton extends StatelessWidget {
  final String text;
  final IconData icon;

  MyIconButton({required this.text, required this.icon});

  final textStyle = TextStyle(color: Colors.white, fontSize: 14);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final ImagePicker picker = ImagePicker();
        final XFile? documentImage =
        await picker.pickImage(source: ImageSource.gallery);
        if (documentImage != null) {
          // Store the selected image in the state variable
          changeProfilePicture(documentImage.path).then((result) {
            if (result) {
              mySnackbar.show(context, "Driving license uploaded succesfully!");
            } else {
              mySnackbar.show(context, "Driving license upload failed!");
            }
          });
          // Do something with the selected image...
        }
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(7, 0, 0, 15),
        child: Row(
          children: [
            Icon(icon, color: myColors().figmaOrange.shade50),
            SizedBox(width: 5),
            Text(
              text,
              style: textStyle,
            )
          ],
        ),
      ),
    );
  }
}
