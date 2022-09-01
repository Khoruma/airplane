part of 'pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          right: defaultMargin,
          left: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy,\nKezia Anne',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Where to fly today?',
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/icon_profile.png'),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget popularDestinations() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            DestinationCard(
              title: 'Lake Ciliwung',
              imageUrl: 'assets/image_destination1.png',
              rating: 4.8,
              city: 'Tanggerang',
            ),
            DestinationCard(
              title: 'White Houses',
              imageUrl: 'assets/image_destination2.png',
              rating: 4.7,
              city: 'Spain',
            ),
            DestinationCard(
              title: 'Hill Heyo',
              imageUrl: 'assets/image_destination3.png',
              rating: 4.8,
              city: 'Monaco',
            ),
            DestinationCard(
              title: 'Menara',
              imageUrl: 'assets/image_destination4.png',
              rating: 5.0,
              city: 'Jepang',
            ),
            DestinationCard(
              title: 'Payung Teduh',
              imageUrl: 'assets/image_destination5.png',
              rating: 4.8,
              city: 'Singapore',
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestinations(),
      ],
    );
  }
}
