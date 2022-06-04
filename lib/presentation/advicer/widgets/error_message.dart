import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ErrorMessage extends StatelessWidget {
  final String message;
  const ErrorMessage({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.error, size: 40, color: Colors.redAccent),
        SizedBox(
          height: 20,
        ),
        Text(
          message,
          style: themeData.textTheme.headline1,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
