import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FirstApp extends StatefulWidget {
  FirstApp(this.switchApp, {super.key});
  void Function() switchApp;

  @override
  State<FirstApp> createState() => _FirstAppState();
}

class _FirstAppState extends State<FirstApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.deepPurpleAccent,
          Colors.purpleAccent,
        ]),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300.0,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.deepPurpleAccent,
                    Colors.purpleAccent,
                    Colors.deepPurple
                  ]),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50.0),
                bottomRight: Radius.circular(50.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: const BoxDecoration(
                    boxShadow: ([
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 10),
                        blurRadius: 6.0,
                      )
                    ]),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("images/15.png"), fit: BoxFit.fill)),
              ),
            ),
          ),
          const SizedBox(
            height: 140.0,
          ),
          OutlinedButton.icon(
            onPressed: widget.switchApp,
            label: const Text(
              " Strat Quiz",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
              ),
            ),
            icon: const Icon(Icons.fast_forward_outlined),
          )
        ],
      ),
    );
  }
}
