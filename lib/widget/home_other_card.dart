import 'package:flutter/material.dart';
import 'package:detail_real_estate/thema.dart';

class HomeOtherCard extends StatelessWidget {
  const HomeOtherCard({
    Key key,
    @required this.imageUrl,
    @required this.name,
    @required this.price,
    @required this.type,
  }) : super(key: key);

  final String imageUrl;
  final String name;
  final String price;
  final String type;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 180,
      margin: EdgeInsets.only(
        right: 20,
      ),
      decoration: BoxDecoration(
        color: backgroundColor2,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 150,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage(
                  imageUrl,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  price,
                  style: priceTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  name,
                  style: primaryTextStyle.copyWith(
                    fontWeight: semibold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  type,
                  style: secondaryTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
