part of 'widgets.dart';

class BookingDetailsItem extends StatelessWidget {
  final String title;
  final String textValue;
  final Color textColor;

  const BookingDetailsItem({
    Key? key,
    required this.title,
    required this.textValue,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 16,
      ),
      child: Row(
        children: [
          Container(
            height: 16,
            width: 16,
            margin: const EdgeInsets.only(right: 6),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_check.png'),
              ),
            ),
          ),
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontSize: 14,
              fontWeight: regular,
            ),
          ),
          const Spacer(),
          Text(
            textValue,
            style: blackTextStyle.copyWith(
              fontSize: 14,
              fontWeight: semiBold,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
