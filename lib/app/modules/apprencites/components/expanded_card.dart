import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:new_presentation/app/colors/defaultColors.dart';
import 'package:new_presentation/app/modules/apprencites/apprencites_store.dart';

class ExpandedCard extends StatelessWidget {
  String? name;
  int? age;
  String? cpf;
  String? telephone;
  String? email;
  bool? active;
  DecorationImage? profileImage;
  DecorationImage? circleImage;
  String? registration;
  String? unit;
  String? sector;
  String? office;
  String? costCenterCode;
  String? costCenter;

  ExpandedCard(
      {Key? key,
        this.name,
        this.age,
        this.cpf,
        this.telephone,
        this.email,
        this.active,
        this.profileImage,
        this.circleImage,
        this.registration,
        this.unit,
        this.sector,
        this.office,
        this.costCenterCode,
        this.costCenter,
      }) : super(key: key);


  final ApprencitesStore _store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 20,
          height: 560,
          color: ColorsD.dark_green,
        ),
        Container(
          height: 560,
          width: 920,
          decoration: const BoxDecoration(
            color: ColorsD.white,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10),
              topRight: Radius.circular(10)
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: InkWell(
                        onTap: name == "Johnny Marques Silva Gouveia" ? () {
                          _store.openUrl();
                        } : null,
                        child: Container(
                          width: 285,
                          height: 285,
                          decoration: BoxDecoration(
                            image: profileImage,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ///Matrícula
                        Container(
                          width: 530,
                          height: 60,
                          color: ColorsD.dark_green,
                          child: Center(
                            child: Text(
                              registration!,
                              style: const TextStyle(
                                color: ColorsD.white,
                                fontSize: 40,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),

                        ///Nome
                        Text(
                          name!,
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 15),

                        ///Telefone
                        Row(
                          children: [
                            const Text(
                              "Telefone: ",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              telephone!,
                              style: const TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),

                        ///Email
                        Row(
                          children: [
                            const Text(
                              "Email: ",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              email!,
                              style: const TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),

                        ///Idade
                        Row(
                          children: [
                            const Text(
                              "Idade: ",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "$age",
                              style: const TextStyle(
                                fontSize: 28,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 15),

                ///Informações gerais
                Container(

                  color: ColorsD.dark_green,
                  child: const Center(
                    child: Text(
                      "Informações gerais",
                      style: TextStyle(
                        color: ColorsD.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),

                ///Unidade
                Row(
                  children: [
                    const Text(
                      "Unidade: ",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "$unit",
                      style: const TextStyle(
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),

                ///Setor
                Row(
                  children: [
                    const Text(
                      "Setor: ",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      sector!,
                      style: const TextStyle(
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),

                /*///Centro de Custo
                Row(
                  children: [
                    const Text(
                      "Centro de Custo: ",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "$costCenter",
                      style: const TextStyle(
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),

                ///Código
                Row(
                  children: [
                    const Text(
                      "Código: ",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      costCenterCode!,
                      style: const TextStyle(
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),*/
              ],
            ),
          ),
        ),
      ],
    );
  }
}
