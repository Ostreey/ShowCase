import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../constants.dart';
import '../../../../domain/models/common_models/model.dart';
import '../main_page_provider.dart';

class SearchBox extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _controller = TextEditingController();


    void clearText() {
      ref.read(searchTextProvider.notifier).state = Filtering('');
      _controller.clear();
    }

    return Container(
      height: 40,
      child: TextField(
        onChanged: (text) {
          ref.read(searchTextProvider.notifier).state = Filtering(text);
        },
        style: TextStyle(color: Colors.white),
        textAlign: TextAlign.start,
        controller: _controller,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 0),
          hintText: "Transport apples",
          labelText: "Search...",
          labelStyle: TextStyle(color: Colors.white),
          prefixIcon: Icon(Icons.search, color: Colors.white),
          suffixIcon: IconButton(
            icon: Icon(Icons.close, color: Colors.white),
            onPressed: clearText,
          ),
          hintStyle: TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: myColors().figmaOrange.shade50),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 2.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
