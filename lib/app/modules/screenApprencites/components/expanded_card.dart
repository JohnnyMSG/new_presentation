import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_presentation/app/colors/defaultColors.dart';

class ExpandedCard extends StatelessWidget {
  String name;
  int age;
  String sector;
  bool active;
  DecorationImage? profileImage;
  DecorationImage? circleImage;

  ExpandedCard(
      {Key? key,
        required this.name,
        required this.age,
        required this.sector,
        required this.active,
        this.profileImage,
        this.circleImage,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 20,
          height: 700,
          color: ColorsD.dark_green,
        ),
        Container(
          width: 1250,
          height: 700,
          decoration: const BoxDecoration(
            color: ColorsD.white,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10)
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 285,
                      height: 285,
                      decoration: BoxDecoration(
                        image: profileImage,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,  right: 10),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 330,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                name,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "$age",
                                style: const TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                sector,
                                style: const TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
