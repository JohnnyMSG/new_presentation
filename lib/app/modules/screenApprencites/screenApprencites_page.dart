import 'package:flutter_modular/flutter_modular.dart';
import 'package:new_presentation/app/colors/defaultColors.dart';
import 'package:new_presentation/app/modules/screenApprencites/components/apprentices_card.dart';
import 'package:new_presentation/app/modules/screenApprencites/screenApprencites_store.dart';
import 'package:flutter/material.dart';

class ScreenApprencitesPage extends StatefulWidget {
  final String title;

  const ScreenApprencitesPage({Key? key, this.title = 'ScreenApprencitesPage'})
      : super(key: key);

  @override
  ScreenApprencitesPageState createState() => ScreenApprencitesPageState();
}

class ScreenApprencitesPageState extends State<ScreenApprencitesPage> {
  final ScreenApprencitesStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: ColorsD.transparent,
        child: Stack(
          children: [
            ///Imagem de fundo
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: 500,
                height: 280,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/cmaa/background_image.png",
                    ),
                  ),
                ),
              ),
            ),

            ///Cards
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Align(
                alignment: Alignment.center,
                child: Center(
                  child: Wrap(
                    children: [
                      ///Anna Beatriz
                      ApprenticesCard(
                        name: "Anna Beatriz Domingos de Jesus",
                        age: 19,
                        sector: "sla",
                        registration: "1010621",
                        active: true,
                        profileImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/anna/profileAnna.png'),
                        ),
                        circleImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/anna/circleAnna.png'),
                        ),
                        unit: "UVT",
                      ),

                      ///Arthur
                      ApprenticesCard(
                        name: "Arthur Nogueira Oliveira",
                        age: 20,
                        sector: "TI",
                        registration: "1010619",
                        active: true,
                        profileImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/arthur/profileArthur.png'),
                        ),
                        circleImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/arthur/circleArthur.png'),
                        ),
                        unit: "UVT",
                      ),

                      ///Camila
                      ApprenticesCard(
                        name: "Camila de Lima Oliveira",
                        age: 19,
                        sector: "sla",
                        registration: "1010628",
                        active: true,
                        profileImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/camila/profileCamila.png'),
                        ),
                        circleImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/camila/circleCamila.png'),
                        ),
                        unit: "UVT",
                      ),

                      ///Carlao
                      ApprenticesCard(
                        name: "Carlos Doliveira",
                        age: 19,
                        sector: "Sem setor",
                        registration: "-------",
                        active: false,
                        profileImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/carlao/profileCarlao.png'),
                        ),
                        circleImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/carlao/circleCarlao.png'),
                        ),
                        unit: "UVT",
                      ),

                      ///Eduardo
                      ApprenticesCard(
                        name: "Eduardo Nascimento dos Reis",
                        age: 19,
                        sector: "sla",
                        registration: "1010626",
                        active: true,
                        profileImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/eduardo/profileEduardo.png'),
                        ),
                        circleImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/eduardo/circleEduardo.png'),
                        ),
                        unit: "UVT",
                      ),

                      ///Filipe
                      ApprenticesCard(
                        name: "Filipe Ramos",
                        age: 19,
                        sector: "Sem setor",
                        registration: "-------",
                        active: false,
                        profileImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/filipe/profileFilipe.png'),
                        ),
                        circleImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/filipe/circleFilipe.png'),
                        ),
                        unit: "UVT",
                      ),

                      ///Johnny
                      ApprenticesCard(
                        name: "Johnny Marques Silva Gouveia",
                        age: 19,
                        sector: "CIIA",
                        registration: "1010623",
                        active: true,
                        profileImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/johnny/profileJohnny.png'),
                        ),
                        circleImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/johnny/circleJohnny.png'),
                        ),
                        unit: "UVT",
                      ),

                      ///Larah
                      ApprenticesCard(
                        name: "Larah Bianca Barcelo Peres",
                        age: 19,
                        sector: "sla",
                        registration: "1010631",
                        active: true,
                        profileImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/larah/profileLarah.png'),
                        ),
                        circleImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/larah/circleLarah.png'),
                        ),
                        unit: "UVT",
                      ),

                      ///Lucas
                      ApprenticesCard(
                        name: "Lucas Gabriel Silva Martins",
                        age: 19,
                        sector: "sla",
                        registration: "1010622",
                        active: true,
                        profileImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/lucas/profileLucas.png'),
                        ),
                        circleImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/lucas/circleLucas.png'),
                        ),
                        unit: "UVT",
                      ),

                      ///Pedro
                      ApprenticesCard(
                        name: "Pedro Emanuel",
                        age: 19,
                        sector: "Sem setor",
                        registration: "-------",
                        active: false,
                        profileImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/pedro/profilePedro.png'),
                        ),
                        circleImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/pedro/circlePedro.png'),
                        ),
                        unit: "UVT",
                      ),
                    ],
                  ),
                ),
              ),
            ),

            ///Cabeçalho
            Align(
              alignment: Alignment.topCenter,
              child: Material(
                elevation: 20,
                child: Container(
                  height: 125,
                  color: ColorsD.white,
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Modular.to.navigate("/apprencites");
                        },
                        child: Container(
                          width: 280,
                          height: 200,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/cmaa/main_logo.png",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            ///Botões
            Padding(
              padding: const EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () {
                    Modular.to.navigate("/");
                  },
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                    backgroundColor: MaterialStateProperty.all(
                        ColorsD.transparent),
                    shadowColor: MaterialStateProperty.all(
                        ColorsD.transparent),
                    overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
                      if (states.contains(MaterialState.pressed)) {
                        return ColorsD.white_grey;
                      }
                      return null; // <-- Splash color
                    }),
                  ),
                  child: Container(
                    width: 90,
                    height: 60,
                    decoration: BoxDecoration(
                      color: ColorsD.red,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Icon(
                      Icons.close,
                      color: ColorsD.white,
                      size: 30,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
