import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:new_presentation/app/colors/defaultColors.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({Key? key, this.title = 'Home'}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomeStore store;

  @override
  void initState() {
    super.initState();
    store = Modular.get<HomeStore>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Modular.to.navigate("/apprencites");
        },
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/cmaa/image_home.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
