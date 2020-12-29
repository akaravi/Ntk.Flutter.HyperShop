import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hypertools/theme/theme.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class NumericUpDown extends StatefulWidget {
  final Function(int) valueChanged;
  final int initValue;
  final Color color;
  final double fontSize;
  final bool allowLongTap;
  NumericUpDown({
    Key key,
    this.valueChanged,
    this.initValue = 1,
    this.color,
    this.fontSize = 16,
    this.allowLongTap = true,
  }) : super(key: key);

  @override
  _NumericUpDownState createState() => _NumericUpDownState();
}

class _NumericUpDownState extends State<NumericUpDown> {
  int value = 0;
  Color color;
  @override
  void initState() {
    if (widget.color != null)
      color = widget.color;
    else
      color = colorCF5A00;
    value = widget.initValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        GestureDetector(
          onTap: () {
            if (value + 1 > 999) return;
            setState(() {
              value++;
              changeValue(value);
            });
          },
          onLongPress: () {
            if (!widget.allowLongTap) return;
            if (value + 10 > 999) {
              setState(() {
                value = 999;
                changeValue(value);
              });
              return;
            }
            setState(() {
              value = value + 10;
              changeValue(value);
            });
          },
          child: Icon(
            FontAwesomeIcons.plusCircle,
            size: widget.fontSize,
            color: color.withOpacity(0.7),
          ),
        ),
        Text(getValue(value.toString()).toPersianDigit(),
            style:
                textStyleNumberBold(color: color, size: widget.fontSize + 2)),
        GestureDetector(
          onTap: () {
            if (value - 1 < 0) return;
            setState(() {
              value--;
              changeValue(value);
            });
          },
          onLongPress: () {
            if (!widget.allowLongTap) return;
            if (value - 10 < 0) {
              setState(() {
                value = 0;
                changeValue(value);
                return;
              });
              setState(() {
                value = value - 10;
                changeValue(value);
              });
            }
          },
          child: Icon(
            FontAwesomeIcons.minusCircle,
            size: widget.fontSize,
            color: color.withOpacity(0.7),
          ),
        ),
      ],
    ));
  }

  void changeValue(int value) {
    if (widget.valueChanged != null) widget.valueChanged(value);
  }

  String getValue(String data) {
    if (data.length == 3) return data;
    if (data.length == 2) return " " + data + " ";
    return " " + data + " ";
  }
}
