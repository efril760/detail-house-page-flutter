import 'package:detail_real_estate/thema.dart';
import 'package:detail_real_estate/widget/fasility_card.dart';
import 'package:detail_real_estate/widget/home_card.dart';
import 'package:detail_real_estate/widget/home_other_card.dart';
import 'package:detail_real_estate/widget/type_card.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget imageHeader() {
      return Container(
        width: double.infinity,
        height: 296,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/type_84.jpg",
            ),
          ),
        ),
      );
    }

    Widget headerContent() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cluster The Awa',
                    style: primaryTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semibold,
                    ),
                  ),
                  Text(
                    "Ciriung, Cibinong",
                    style: secondaryTextStyle,
                  ),
                ],
              ),
            ),
            Text(
              "Rp. 870.000.000",
              style: priceTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semibold,
              ),
            ),
          ],
        ),
      );
    }

    Widget marketingAgentCard() {
      return Container(
        margin: EdgeInsets.only(
          top: 24,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Marketing Agent',
              style: primaryTextStyle.copyWith(
                fontWeight: regular,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: backgroundColor5,
              ),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.only(right: 12),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/image_sales.png',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Kezia Poulen',
                          style: primaryTextStyle.copyWith(
                            fontWeight: semibold,
                          ),
                        ),
                        Text(
                          'Sales Excecutive',
                          style: secondaryTextStyle.copyWith(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: backgroundColor5,
                          border: Border.all(
                            color: primaryColor,
                            width: 1.0,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.chat,
                          color: primaryColor,
                          size: 20,
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: backgroundColor5,
                          border: Border.all(
                            color: primaryColor,
                            width: 1.0,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.phone,
                          size: 20,
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget typeHome() {
      return Container(
        margin: EdgeInsets.only(
          top: 24,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                'Type 36/84',
                style: primaryTextStyle.copyWith(
                  fontWeight: regular,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TypeCard(
                    icon: LineIcons.bath,
                    text: '1 Bath Room',
                  ),
                  SizedBox(width: 10),
                  TypeCard(
                    icon: LineIcons.bed,
                    text: '2 Bed Room',
                  ),
                  SizedBox(width: 10),
                  TypeCard(
                    icon: LineIcons.car,
                    text: '1 Cart Port',
                  ),
                  SizedBox(width: 10),
                  TypeCard(
                    icon: LineIcons.utensils,
                    text: '1 Kitchen Room',
                  ),
                  SizedBox(width: 10),
                  TypeCard(
                    icon: LineIcons.utensils,
                    text: '1 Kitchen Room',
                  ),
                  SizedBox(width: 10),
                  TypeCard(
                    icon: LineIcons.couch,
                    text: '1 Living Room',
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget facilitiesHome() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Home Facilities',
              style: primaryTextStyle.copyWith(
                fontWeight: regular,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FasilityCard(
                    imageUrl: 'assets/one_gate.jpg',
                    name: 'One Gate System',
                  ),
                  FasilityCard(
                    imageUrl: 'assets/security.jpg',
                    name: 'Security 24 Hour',
                  ),
                  FasilityCard(
                    imageUrl: 'assets/taman_apotik.jpg',
                    name: 'Apotik Garden',
                  ),
                  FasilityCard(
                    imageUrl: 'assets/cctv.jpg',
                    name: 'Cctv',
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget descriptionHome() {
      return Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(
          top: 24,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Description',
              style: primaryTextStyle.copyWith(
                fontWeight: regular,
              ),
            ),
            Text(
              'Awa comes from the New Zealand language which means peaceful river.',
              style: secondaryTextStyle.copyWith(
                fontSize: 12,
              ),
            )
          ],
        ),
      );
    }

    Widget otherType() {
      return Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(
          top: 24,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Other Type From Cluster The Awa',
              style: primaryTextStyle.copyWith(
                fontWeight: regular,
              ),
            ),
            SizedBox(height: 10),
            HomeOtherCard(
              imageUrl: "assets/type_98.jpg",
              name: "Cluster The Awa",
              price: "Rp. 1.100.000.000",
              type: "48/98",
            ),
          ],
        ),
      );
    }

    Widget otherHome() {
      return Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(
          top: 24,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Other Home',
              style: primaryTextStyle.copyWith(
                fontWeight: regular,
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  HomeCard(
                    imageUrl: "assets/home1.jpg",
                    name: "French Origins",
                    price: "Rp. 60.100.000.000",
                    location: "Jakarta Selatan",
                  ),
                  HomeCard(
                    imageUrl: "assets/home2.jpg",
                    name: "Diamond Residence",
                    price: "Rp. 1.200.000.000",
                    location: "Kota Bogor",
                  ),
                  HomeCard(
                    imageUrl: "assets/home3.jpg",
                    name: "Guava Boleapord",
                    price: "Rp. 4.100.000.000",
                    location: "Jakarta Timur",
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget bottomNavbar() {
      return Container(
        height: 70,
        padding: EdgeInsets.symmetric(
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          color: backgroundColor1,
        ),
        child: Row(
          children: [
            Image.asset(
              "assets/Button Chat.png",
              width: 40,
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Container(
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    "Reserv Now",
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semibold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            imageHeader(),
            ListView(
              children: [
                SizedBox(
                  height: 236,
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: defaultMargin,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: backgroundColor3,
                  ),
                  child: Column(
                    children: [
                      headerContent(),
                      marketingAgentCard(),
                      typeHome(),
                      facilitiesHome(),
                      descriptionHome(),
                      otherType(),
                      otherHome(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomNavbar(),
    );
  }
}
