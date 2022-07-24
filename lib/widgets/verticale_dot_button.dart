import 'package:flutter/material.dart';

class VerticaleDotButton extends StatefulWidget {
  const VerticaleDotButton({Key? key}) : super(key: key);

  @override
  State<VerticaleDotButton> createState() => _VerticaleDotButtonState();
}

class _VerticaleDotButtonState extends State<VerticaleDotButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      constraints: const BoxConstraints(
        maxHeight: 50,
        maxWidth: 50,
      ),
      splashRadius: 25,
      onPressed: () {},
      icon: const Icon(Icons.more_vert),
    );
  }
}
