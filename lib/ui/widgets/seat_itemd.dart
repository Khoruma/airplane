part of 'widgets.dart';

class SeatItem extends StatelessWidget {
  const SeatItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(18),
        color: kUnavailableColor, 
      ),
    );
  }
}
