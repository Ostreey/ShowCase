
import 'package:flutter/material.dart';

class PageLoadingSpinnerWidget extends StatelessWidget {
  const PageLoadingSpinnerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: const SizedBox(
        width: 30,
        height: 30,
        child: CircularProgressIndicator(),
      ),
    );
  }
}
