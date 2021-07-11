import 'package:detail_real_estate/thema.dart';
import 'package:flutter/material.dart';

class TypeCard extends StatelessWidget {
  const TypeCard({
    Key key,
    @required this.icon,
    @required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 100,
      margin: EdgeInsets.only(top: 12),
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: backgroundColor2,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: primaryTextColor,
            size: 36,
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            text,
            style: secondaryTextStyle.copyWith(
              fontSize: 12,
              fontWeight: light,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
