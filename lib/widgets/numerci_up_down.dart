import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hypertools/theme/theme.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class NumericUpDown extends StatefulWidget {
  final Function(int) valueChanged;
  final int initValue;
  NumericUpDown({
    Key key,
    this.valueChanged,
    this.initValue = 1,
  }) : super(key: key);

  @override
  _NumericUpDownState createState() => _NumericUpDownState();
}

class _NumericUpDownState extends State<NumericUpDown> {
  int value = 0;
  @override
  void initState() {
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
              size: 16,
              color: colorCF5A00.withOpacity(0.7),
            ),
          ),
          Text(getValue(value.toString()).toPersianDigit(),
              style: textStyleNumberBold(color: colorCF5A00, size: 18)),
          GestureDetector(
            onTap: () {
              if (value - 1 == 0) return;
              setState(() {
                value--;
                changeValue(value);
              });
            },
            onLongPress: () {
              if (value - 10 == 0) {
                setState(() {
                  value = 1;
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
              size: 16,
              color: colorCF5A00.withOpacity(0.7),
            ),
          ),
        ],
      ),
    );
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
