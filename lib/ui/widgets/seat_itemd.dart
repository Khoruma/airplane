part of 'widgets.dart';

class SeatItem extends StatelessWidget {
  final int status;

  const SeatItem({
    Key? key,
    required this.status,
  }) : super(key: key);

  backgroundColor() {
    switch (status) {
      case 1:
        return kAvailableColor;
      case 2:
        return kPrimayColor;
      case 3:
        return kUnavailableColor;
      default:
        return kUnavailableColor;
    }
  }

  borderColor() {
    switch (status) {
      case 1:
        return kPrimayColor;
      case 2:
        return kPrimayColor;
      case 3:
        return kUnavailableColor;
      default:
        return kUnavailableColor;
    }
  }

  child() {
    switch (status) {
      case 1:
        return const SizedBox();
      case 2:
        return Center(
          child: Text(
            'YOU',
            style: whiteTextStyle.copyWith(
              fontSize: 14,
              fontWeight: semiBold,
            ),
          ),
        );
      case 3:
        return const SizedBox();
      default:
        return const SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(18),
        color: backgroundColor(),
        border: Border.all(
          color: borderColor(),
        ),
      ),
      child: child(),
    );
  }
}
