import 'package:flutter/cupertino.dart';
import 'package:new_presentation/app/colors/defaultColors.dart';

class Month extends StatelessWidget {
  String? month;

  Month({
    Key? key,
    this.month,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Container(
        width: 250,
        height: 250,
        decoration: const BoxDecoration(
          color: ColorsD.dark_green_light,
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                month!.toUpperCase(),
                style: const TextStyle(
                  color: ColorsD.white,
                  fontSize: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
