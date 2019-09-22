import 'package:flutter/material.dart';

class IconBadge extends StatefulWidget {
  IconBadge({Key key, this.icon, this.size, this.color}) : super(key: key);
  final IconData icon;
  final double size;
  final Color color;

  _IconBadgeState createState() => _IconBadgeState();
}

class _IconBadgeState extends State<IconBadge> {
  int counter = 0;
  
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Icon(
          widget.icon,
          size: widget.size,
          color: widget.color ??null,
        ),
        Positioned(
          right: 0.0,
          top: 0.0,
          child: Container(
            padding: const EdgeInsets.all(1.0),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(6)
            ),
            height: 12,
            width: 12,
            child: Container(
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: Colors.red[300],
                borderRadius: BorderRadius.circular(6)
              ),
              height: 7,
              width: 7,
            ),

          ),
        )
      ],
    );
  }
}