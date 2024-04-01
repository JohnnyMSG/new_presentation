import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_presentation/app/colors/defaultColors.dart';
import 'package:new_presentation/app/modules/screenApprencites/components/expanded_card.dart';

class ApprenticesCard extends StatelessWidget {
  String? name;
  int? age;
  String? sector;
  bool? active;
  String? registration;
  DecorationImage? profileImage;
  DecorationImage? circleImage;
  String? unit;

  ApprenticesCard({
    Key? key,
    this.name,
    this.age,
    this.sector,
    this.active,
    this.registration,
    this.profileImage,
    this.circleImage,
    this.unit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: active!
          ? () {
              showDialog(
                context: context,
                builder: (contextA) {
                  return AlertDialog(
                    backgroundColor: ColorsD.transparent,
                    content: ExpandedCard(
                      name: name!,
                      age: age!,
                      sector: sector!,
                      active: active!,
                      profileImage: profileImage,
                      circleImage: circleImage,
                    ),
                  );
                },
              );
            }
          : null,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Material(
          elevation: 20,
          borderRadius: BorderRadius.circular(5),
          child: Container(
            width: 350,
            height: 200,
            decoration: BoxDecoration(
              color: ColorsD.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Stack(
              children: [
                !active!
                    ? Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 350,
                          height: 200,
                          decoration: BoxDecoration(
                            color: ColorsD.black_grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      )
                    : Container(),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 35,
                    color: ColorsD.dark_green,
                    child: Center(
                      child: Text(
                        "$registration",
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: ColorsD.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
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
                                name!,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "Idade: $age",
                                style: const TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "Unidade: $unit",
                                style: const TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, bottom: 20),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: 85,
                      height: 85,
                      decoration: BoxDecoration(
                        image: circleImage,
                      ),
                    ),
                  ),
                ),
                active!
                    ? Container()
                    : Padding(
                        padding: const EdgeInsets.only(right: 20, bottom: 20),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            width: 85,
                            height: 85,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorsD.black_grey.withOpacity(0.5),
                            ),
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
