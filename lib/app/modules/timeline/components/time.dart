import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_presentation/app/colors/defaultColors.dart';
import 'package:new_presentation/app/modules/timeline/components/image_times.dart';

class Time extends StatelessWidget {
  final String? tittle;
  final List<String> imagesPaths;


  Time({
    Key? key,
    this.tittle,
    required this.imagesPaths,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return ImageTimes(
              title: tittle!,
              imagesPaths: imagesPaths,
            );
          },
        );
      },
      hoverColor: ColorsD.transparent,
      child: Container(
        width: 350,
        height: 350,
        decoration: const BoxDecoration(
          color: ColorsD.dark_green,
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Center(
            child: Text(
              tittle!.toUpperCase(),
              style: const TextStyle(
                color: ColorsD.white,
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
