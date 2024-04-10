import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_presentation/app/colors/defaultColors.dart';
import 'package:new_presentation/app/modules/apprencites/components/expanded_card.dart';

class ApprenticesCard extends StatelessWidget {
  String? name;
  int? age;
  String? cpf;
  String? telephone;
  String? email;
  bool? active;
  DecorationImage? profileImage;
  String? registration;
  String? unit;
  String? sector;
  String? office;
  String? costCenterCode;
  String? costCenter;

  ApprenticesCard({ Key? key,
    this.name,
    this.age,
    this.cpf,
    this.telephone,
    this.email,
    this.active,
    this.profileImage,
    this.registration,
    this.unit,
    this.sector,
    this.office,
    this.costCenterCode,
    this.costCenter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Material(
        elevation: 20,
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: active!
              ? () {
            showDialog(
              context: context,
              builder: (contextA) {
                return AlertDialog(
                  backgroundColor: ColorsD.transparent,
                  surfaceTintColor: ColorsD.transparent,
                  content: ExpandedCard(
                    name: name!,
                    age: age!,
                    cpf: cpf!,
                    telephone: telephone!,
                    email: email!,
                    active: active!,
                    profileImage: profileImage!,
                    registration: registration!,
                    unit: unit!,
                    sector: sector!,
                    office: office!,
                    costCenterCode: costCenterCode!,
                    costCenter: costCenter!,
                  ),
                );
              },
            );
          }
              : null,
          child: Container(
            width: 350,
            height: 200,
            decoration: BoxDecoration(
              color: ColorsD.white,
              borderRadius: BorderRadius.circular(20),
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
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "Idade: $age",
                                style: const TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "Cargo: $office",
                                style: const TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                ),
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
                        image: profileImage,
                        shape: BoxShape.circle,
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
