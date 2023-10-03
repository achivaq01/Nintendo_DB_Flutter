import 'package:flutter/material.dart';

class LayoutJoc extends StatelessWidget {
  final dynamic itemData;

  // Constructor
  LayoutJoc({Key? key, required this.itemData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Ocupar la meitat superior de l'espai amb la imatge
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Image.asset(
                'assets/images/${itemData["imatge"]}',
              ),
            ),
          ),
          // Ocupar la meitat inferior de l'espai amb els textos
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${itemData['any']}",
                  style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
                ),
                const SizedBox(height: 10),
                Text(
                  "${itemData['tipus']}",
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    itemData['descripcio'],
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
