import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hai_air/cubit/auth_cubit.dart';
import 'package:hai_air/ui/widgets/destination_card.dart';
import 'package:hai_air/ui/widgets/destination_tile.dart';
import '../../shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSucces) {
            return Container(
              margin: EdgeInsets.only(
                top: 30,
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello, \n${state.user.name}",
                          style: blackTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: semiBold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Where to fly today?',
                          style: greyTextStyle.copyWith(
                              fontSize: 16, fontWeight: light),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/image_profile.png",
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          } else {
            return const SizedBox();
          }
        },
      );
    }

    Widget popularDestination() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              DestinationCard(
                imageUrl: 'assets/image_destination1.png',
                name: 'Like Ciliwung',
                city: 'Tangerang',
                rating: 4.8,
              ),
              DestinationCard(
                imageUrl: 'assets/image_destination2.png',
                name: 'White House',
                city: 'Spain',
                rating: 4.9,
              ),
              DestinationCard(
                imageUrl: 'assets/image_destination3.png',
                name: 'Hill Heyo',
                city: 'Monaco',
                rating: 4.8,
              ),
              DestinationCard(
                imageUrl: 'assets/image_destination4.png',
                name: 'Menarra',
                city: 'Japan',
                rating: 4.8,
              ),
              DestinationCard(
                imageUrl: 'assets/image_destination5.png',
                name: 'Unique Tree',
                city: 'Israel',
                rating: 4.8,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestination() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style:
                  blackTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
            ),
            const DestinationTile(
              imageUrl: 'assets/image_destination6.png',
              name: 'Danau Beratan',
              location: 'Singajara',
              rating: 4.6,
            ),
            const DestinationTile(
              imageUrl: 'assets/image_destination7.png',
              name: 'Sidney Opera',
              location: 'Australia',
              rating: 4.8,
            ),
            const DestinationTile(
              imageUrl: 'assets/image_destination8.png',
              name: 'Roma',
              location: 'Italy',
              rating: 4.9,
            ),
            const DestinationTile(
              imageUrl: 'assets/image_destination9.png',
              name: 'Unique Tree',
              location: 'Israel',
              rating: 4.7,
            ),
            const DestinationTile(
              imageUrl: 'assets/image_destination10.png',
              name: 'Hill Hey',
              location: 'Monaco',
              rating: 4.7,
            )
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestination(),
        newDestination(),
      ],
    );
  }
}
