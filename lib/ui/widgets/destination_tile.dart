import 'package:flutter/material.dart';
import 'package:hai_air/models/destinations_model.dart';
import 'package:hai_air/shared/theme.dart';
import 'package:hai_air/ui/page/detail_page.dart';

class DestinationTile extends StatelessWidget {
  final DestinationModel destinations;

  const DestinationTile(
    this.destinations, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailPage(destinations)),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(top: 16),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: kWhiteColor),
        child: Row(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(destinations.imageUrl),
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    destinations.name,
                    style: blackTextStyle.copyWith(
                        fontSize: 18, fontWeight: medium),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    destinations.city,
                    style: greyTextStyle.copyWith(
                        fontSize: 14, fontWeight: medium),
                  ),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 2),
                  width: 20,
                  height: 20,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/Icon_Star.png'))),
                ),
                Text(
                  destinations.rating.toString(),
                  style: blackTextStyle.copyWith(fontWeight: medium),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
