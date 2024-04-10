import 'package:flutter/material.dart';
import 'package:new_presentation/app/colors/defaultColors.dart';

class ImageTimes extends StatefulWidget {
  final String? title;
  final List<String> imagesPaths;

  const ImageTimes({
    Key? key,
    this.title,
    required this.imagesPaths,
  }) : super(key: key);

  @override
  _ImageTimesState createState() => _ImageTimesState();
}

class _ImageTimesState extends State<ImageTimes> {
  int _currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shadowColor: ColorsD.transparent,
      backgroundColor: ColorsD.transparent,
      surfaceTintColor: ColorsD.transparent,
      content: Container(
        height: 550,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ColorsD.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              Container(
                height: 50,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: ColorsD.dark_green,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Center(
                    child: Text(
                      widget.title ?? "",
                      style: const TextStyle(
                        color: ColorsD.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _currentIndex = (_currentIndex - 1) % widget.imagesPaths.length;
                          if (_currentIndex < 0) {
                            _currentIndex += widget.imagesPaths.length;
                          }
                        });
                      },
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(ColorsD.transparent),
                        backgroundColor: MaterialStateProperty.all(ColorsD.transparent),
                        overlayColor: MaterialStateProperty.all(ColorsD.transparent),
                        shadowColor: MaterialStateProperty.all(ColorsD.transparent),
                        surfaceTintColor: MaterialStateProperty.all(ColorsD.transparent),
                        padding: MaterialStateProperty.all(EdgeInsets.zero),
                      ),
                      child: Container(
                        height: 450,
                        width: 50,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                          color: ColorsD.dark_green,
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios_new_sharp,
                          color: ColorsD.white,
                        ),
                      ),
                    ),
                    const SizedBox(width: 2),
                    Expanded(
                      child: Container(
                        width: 450,
                        height: 450,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 3,
                            color: ColorsD.dark_green,
                          ),
                          image: DecorationImage(
                            image: AssetImage(
                              widget.imagesPaths[_currentIndex],
                            ),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 2),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          _currentIndex = (_currentIndex + 1) % widget.imagesPaths.length;
                        });
                      },
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(ColorsD.transparent),
                        backgroundColor: MaterialStateProperty.all(ColorsD.transparent),
                        overlayColor: MaterialStateProperty.all(ColorsD.transparent),
                        shadowColor: MaterialStateProperty.all(ColorsD.transparent),
                        surfaceTintColor: MaterialStateProperty.all(ColorsD.transparent),
                        padding: MaterialStateProperty.all(EdgeInsets.zero),
                      ),
                      child: Container(
                        height: 450,
                        width: 50,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          color: ColorsD.dark_green,
                        ),
                        child: const Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: ColorsD.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
