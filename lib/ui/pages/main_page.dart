part of 'pages.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget customBottonNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
            bottom: 30,
            right: defaultMargin,
            left: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              CustomBottomNavigationItems(
                imageUrl: 'assets/icon_home.png',
                isActive: true,
              ),
              CustomBottomNavigationItems(
                imageUrl: 'assets/icon_booking.png',
                isActive: false,
              ),
              CustomBottomNavigationItems(
                imageUrl: 'assets/icon_card.png',
                isActive: false,
              ),
              CustomBottomNavigationItems(
                imageUrl: 'assets/icon_settings.png',
                isActive: false,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          customBottonNavigation(),
        ],
      ),
    );
  }
}
