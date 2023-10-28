import 'package:flutter/material.dart';

class TextTile extends StatelessWidget {
   const TextTile({super.key,required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: Theme.of(context).textTheme.displayMedium);
  }
}
