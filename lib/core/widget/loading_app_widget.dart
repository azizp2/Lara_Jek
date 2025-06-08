import 'package:flutter/material.dart';

class LoadingAppWidget extends StatelessWidget {
  final double? size;
  const LoadingAppWidget({super.key, this.size});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: size ?? 200,
        width: size ?? 200,
        child: CircularProgressIndicator(),
      ),
    );
  }
}
