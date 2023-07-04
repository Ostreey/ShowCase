
import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../constants.dart';

class DocumentsSection extends StatefulWidget {
  var proofURL;
  var cargoURL;
  final String description1;
  final String description2;
  final Size size;
  final bool allowUpload;
  final Function(String proofPicture) proofImageCallback;
  final Function(String proofPicture) cargoImageCallback;

  DocumentsSection({
    required this.proofURL,
    required this.cargoURL,
    required this.description1,
    required this.description2,
    required this.size,
    required this.proofImageCallback,
    required this.cargoImageCallback,
    required this.allowUpload,
  });

  @override
  _DocumentsSectionState createState() => _DocumentsSectionState();
}

class _DocumentsSectionState extends State<DocumentsSection> {
  File? _proofOfPickup;
  File? _cargoOnPickup;

  @override
  Widget build(BuildContext context) {
    final descOfPictures =
    TextStyle(color: myColors().figmaOrange.shade50, fontSize: 14);

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.description1, style: descOfPictures),
              SizedBox(
                width: widget.size.width / 2.5,
                height: widget.size.width / 3,
                child: GestureDetector(
                  onTap: () async {
                    if (widget.allowUpload) {
                      final ImagePicker picker = ImagePicker();
                      final XFile? image;
                      image =
                      await picker.pickImage(source: ImageSource.gallery);
                      if (image != null) {
                        setState(() {
                          _proofOfPickup = File(image!.path);
                          widget.proofImageCallback(_proofOfPickup!.path);
                        });
                      }
                    }
                    ;
                  },
                  child: _proofOfPickup != null
                      ? Image.file(
                    _proofOfPickup!,
                    width: 100,
                    height: 100,
                    fit: BoxFit.fill,
                  )
                      : (widget.proofURL != null
                      ? CachedNetworkImage(
                    imageUrl: widget.proofURL,
                    fit: BoxFit.fill,
                    placeholder: (context, url) => Padding(
                      padding: EdgeInsets.all(50),
                      child: CircularProgressIndicator(),
                    ),
                    errorWidget: (context, url, error) =>
                        Icon(Icons.error), // Optional error widget
                  )
                      : Image.asset("assets/no-image.png",
                      fit: BoxFit.fill)),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.description2, style: descOfPictures),
              SizedBox(
                width: widget.size.width / 2.5,
                height: widget.size.width / 3,
                child: GestureDetector(
                  onTap: () async {
                    if (widget.allowUpload) {
                      final ImagePicker picker = ImagePicker();
                      final XFile? image =
                      await picker.pickImage(source: ImageSource.gallery);
                      if (image != null) {
                        // Store the selected image in the state variable
                        setState(() {
                          _cargoOnPickup = File(image.path);
                          widget.cargoImageCallback(_cargoOnPickup!.path);
                        });
                      }
                    }
                  },
                  child: _cargoOnPickup != null
                      ? Image.file(
                    _cargoOnPickup!,
                    width: 100,
                    height: 100,
                    fit: BoxFit.fill,
                  )
                      : (widget.cargoURL != null
                      ? CachedNetworkImage(
                    imageUrl: widget.cargoURL,
                    fit: BoxFit.fill,
                    placeholder: (context, url) => Padding(
                      padding: EdgeInsets.all(50),
                      child: CircularProgressIndicator(),
                    ),
                    errorWidget: (context, url, error) =>
                        Icon(Icons.error), // Optional error widget
                  )
                      : Image.asset("assets/no-image.png",
                      fit: BoxFit.fill)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
