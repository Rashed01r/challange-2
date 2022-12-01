import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  Settings({super.key, this.label, required this.value});
  final label;
  final bool value;
  bool check = false;

  @override
  State<Settings> createState() => _SettingState();
}

class _SettingState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(widget.label),
          Switch(
              value: widget.value,
              onChanged: (value) {
                setState(() {
                  value = !widget.value;
                });
              }),
        ],
      ),
    );
  }
}
