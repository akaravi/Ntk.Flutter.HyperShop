import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hypertools/theme/theme.dart';
import 'package:like_button/like_button.dart';

class LikeDislike extends StatefulWidget {
  final bool initialValue;
  final Function(bool) onValueChanged;
  LikeDislike({Key key, this.initialValue = false, this.onValueChanged})
      : super(key: key);

  @override
  _LikeDislikeState createState() => _LikeDislikeState();
}

class _LikeDislikeState extends State<LikeDislike> {
  bool value = false;
  @override
  void initState() {
    value = widget.initialValue;
    super.initState();
  }

  Future<bool> onLikeButtonTapped(bool isLiked) async {
    if (widget.onValueChanged != null) widget.onValueChanged(!isLiked);
    return !isLiked;
  }

  @override
  Widget build(BuildContext context) {
    return LikeButton(
        onTap: onLikeButtonTapped,
        size: 28,
        isLiked: widget.initialValue,
        circleColor: CircleColor(
            start: colorFF0000.withOpacity(0.9),
            end: colorFF0000.withOpacity(0.1)),
        bubblesSize: 0,
        bubblesColor: BubblesColor(
            dotPrimaryColor: Colors.transparent,
            dotSecondaryColor: Colors.transparent,
            dotThirdColor: Colors.transparent,
            dotLastColor: Colors.transparent),
        likeBuilder: (bool isLiked) {
          return Icon(
            (isLiked ? FontAwesomeIcons.solidHeart : FontAwesomeIcons.heart),
            color: isLiked ? colorFF0000 : colorFF0000.withOpacity(0.5),
            size: 28,
          );
        });
  }
}
