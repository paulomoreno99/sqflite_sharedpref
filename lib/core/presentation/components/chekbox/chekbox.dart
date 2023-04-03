// ignore_for_file: prefer_const_constructors, unnecessary_import, implementation_imports, unused_import, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CheckboxWidget extends StatefulWidget {
  final Function(bool) onChanged;

  const CheckboxWidget({required this.onChanged});

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: _checked,
            onChanged: (value) {
              setState(() {
                _checked = !_checked;
              });
              widget.onChanged(_checked);
            }),
        Text('Não exibir mais'),
      ],
    );
  }
}
