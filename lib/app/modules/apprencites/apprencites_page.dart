import 'package:flutter_modular/flutter_modular.dart';
import 'package:new_presentation/app/modules/apprencites/apprencites_store.dart';
import 'package:new_presentation/app/modules/components/main_drawer.dart';
import 'package:new_presentation/app/modules/components/main_app_bar.dart';
import 'package:flutter/material.dart';

class ApprencitesPage extends StatefulWidget {
  final String title;

  const ApprencitesPage({Key? key, this.title = 'ApprencitesPage'})
      : super(key: key);

  @override
  ApprencitesPageState createState() => ApprencitesPageState();
}

class ApprencitesPageState extends State<ApprencitesPage> {
  final ApprencitesStore _store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MainAppBar(),
      drawer: null,
      body: MainDrawer(),
      /*Container(
        height: double.infinity,
        width: double.infinity,
        color: ColorsD.transparent,
        child: Stack(
          children: [
            ///Cards
            ListView(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 120),
                  child: Text(
                    'Aprendizes',
                    style: TextStyle(
                      color: ColorsD.black,
                      fontSize: 30,
                      fontFamily: "AspireSCRegular",
                    ),
                  ),
                ),
                Center(
                  child: Wrap(
                    children: [
                      ///Anna Beatriz
                      ApprenticesCard(
                        name: "Anna Beatriz Domingos de Jesus",
                        age: 19,
                        cpf: "702.909.916-84",
                        telephone: "(34) 99698-0784",
                        email: "anna.beatriz@cmaa.ind.br",
                        active: true,
                        profileImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/anna/profileAnna.png'),
                        ),
                        circleImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/anna/circleAnna.png'),
                        ),
                        registration: "1010621",
                        unit: "Unidade Vale do Tijuco",
                        sector: "sla",
                        office: "Jovem Aprendiz",
                        costCenterCode: "1040",
                        costCenter: "APRENDIZES - ADMINISTRATIVO",
                      ),

                      ///Arthur
                      ApprenticesCard(
                        name: "Arthur Nogueira Oliveira",
                        age: 20,
                        cpf: "703.677.296-44",
                        telephone: "(34) 98889-5106",
                        email: "arthur.oliveira@cmaa.ind.br",
                        active: true,
                        profileImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/arthur/profileArthur.png'),
                        ),
                        circleImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/arthur/circleArthur.png'),
                        ),
                        registration: "1010619",
                        unit: "Unidade Vale do Tijuco",
                        sector: "TI",
                        office: "Jovem Aprendiz",
                        costCenterCode: "2140",
                        costCenter: "APRENDIZES - AGRÍCOLA",
                      ),

                      ///Camila
                      ApprenticesCard(
                        name: "Camila de Lima Oliveira",
                        age: 19,
                        cpf: "147.502.126-79",
                        telephone: "(34) 98414-5378",
                        email: "camila.oliveira@cmaa.ind.br",
                        active: true,
                        profileImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/camila/profileCamila.png'),
                        ),
                        circleImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/camila/circleCamila.png'),
                        ),
                        registration: "1010628",
                        unit: "Unidade Vale do Tijuco",
                        sector: "sla",
                        office: "Jovem Aprendiz",
                        costCenterCode: "1040",
                        costCenter: "APRENDIZES - ADMINISTRATIVO",
                      ),

                      ///Carlao
                      ApprenticesCard(
                        name: "Carlos Doliveira",
                        age: 19,
                        active: false,
                        circleImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/carlao/circleCarlao.png'),
                        ),
                        registration: "-------",
                        sector: "Sem setor",
                        office: "Jovem Aprendiz",
                      ),

                      ///Eduardo
                      ApprenticesCard(
                        name: "Eduardo Nascimento dos Reis",
                        age: 19,
                        cpf: "145.036.136-69",
                        telephone: "(34) 99976-3562",
                        email: "eduardo.nascimento@cmaa.ind.br",
                        active: true,
                        profileImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/eduardo/profileEduardo.png'),
                        ),
                        circleImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/eduardo/circleEduardo.png'),
                        ),
                        registration: "1010626",
                        unit: "Unidade Vale do Tijuco",
                        sector: "sla",
                        office: "Jovem Aprendiz",
                        costCenterCode: "2140",
                        costCenter: "APRENDIZES - AGRÍCOLA",
                      ),

                      ///Filipe
                      ApprenticesCard(
                        name: "Filipe Ramos",
                        age: 19,
                        active: false,
                        circleImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/filipe/circleFilipe.png'),
                        ),
                        registration: "-------",
                        sector: "Sem setor",
                        office: "Jovem Aprendiz",
                      ),

                      ///Johnny
                      ApprenticesCard(
                        name: "Johnny Marques Silva Gouveia",
                        age: 19,
                        cpf: "700.263.686-33",
                        telephone: "(34) 99862-0410",
                        email: "johnny.gouveia@cmaa.ind.br",
                        active: true,
                        profileImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/johnny/profileJohnny.png'),
                        ),
                        circleImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/johnny/circleJohnny.png'),
                        ),
                        registration: "1010623",
                        unit: "Unidade Vale do Tijuco",
                        sector: "CIIA",
                        office: "Jovem Aprendiz",
                        costCenterCode: "2140",
                        costCenter: "APRENDIZES - AGRÍCOLA",
                      ),

                      ///Larah
                      ApprenticesCard(
                        name: "Larah Bianca Barcelo Peres",
                        age: 19,
                        cpf: "706.128.666-02",
                        telephone: "(34) 99956-2690",
                        email: "larah.peres@cmaa.ind.br",
                        active: true,
                        profileImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/larah/profileLarah.png'),
                        ),
                        circleImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/larah/circleLarah.png'),
                        ),
                        registration: "1010631",
                        unit: "Unidade Vale do Tijuco",
                        sector: "sla",
                        office: "Jovem Aprendiz",
                        costCenterCode: "2140",
                        costCenter: "APRENDIZES - AGRÍCOLA",
                      ),

                      ///Lucas
                      ApprenticesCard(
                        name: "Lucas Gabriel Silva Martins",
                        age: 19,
                        cpf: "048.504.371-84",
                        telephone: "(34) 99133-0749",
                        email: "lucas.martins@cmaa.ind.br",
                        active: true,
                        profileImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/lucas/profileLucas.png'),
                        ),
                        circleImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/lucas/circleLucas.png'),
                        ),
                        registration: "1010622",
                        unit: "Unidade Vale do Tijuco",
                        sector: "sla",
                        office: "Jovem Aprendiz",
                        costCenterCode: "2140",
                        costCenter: "APRENDIZES - AGRÍCOLA",
                      ),

                      ///Pedro
                      ApprenticesCard(
                        name: "Pedro Emanuel",
                        age: 19,
                        active: false,
                        circleImage: const DecorationImage(
                          image: AssetImage(
                              'assets/images/apprentices_profiles/pedro/circlePedro.png'),
                        ),
                        registration: "-------",
                        sector: "Sem setor",
                        office: "Jovem Aprendiz",
                      ),
                    ],
                  ),
                ),
              ],
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
      ),*/
    );
  }
}
