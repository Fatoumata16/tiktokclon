import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'dateinscription.dart';
import 'deleyedanimation.dart';
import 'main.dart';

class connexioon extends StatelessWidget {
  const connexioon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(
          icon: const Icon(
            Icons.close,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                delaayedanimated(
                    delay: 1500,
                    child: Center(
                      child: Text(
                        "Inscription",
                        style: TextStyle(
                          color: Color.fromARGB(255, 8, 4, 4),
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )),
                SizedBox(
                  height: 32,
                ),
                Text(
                  "Telephone",
                  style: TextStyle(
                    color: Color.fromARGB(255, 13, 2, 1),
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 34,
                ),
              ],
            ),
          ),
          Container(
            width: 360,
            child: TextFormField(
              maxLength: 10,
              decoration: const InputDecoration(
                  labelText: 'Numeroo de Telephone',
                  border: OutlineInputBorder()),
              validator: (value) {
                if (value!.isEmpty) {
                  return null;
                }
                return 'veuillez saisir un texte ';
              },
            ),
          ),
          Container(
            width: 360,
            child: TextFormField(
              maxLength: 10,
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              decoration: const InputDecoration(
                  labelText: 'Mot de Passe', border: OutlineInputBorder()),
              validator: (value) {
                if (value!.isEmpty) {
                  return null;
                }
                return 'veuillez saisir un texte ';
              },
            ),
          ),
          Container(
            width: 350,
            color: Color.fromARGB(255, 202, 200, 200),
            child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 1, 6, 10)),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DateInscription(),
                    ));
              },
              child: Text('Connexion'),
            ),
          ),
          Text(
            'confirm',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 90,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 35),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: delaayedanimated(
                    delay: 6500,
                    child: Text(
                      '',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    )),
              ),
            ),
          )
        ],
      )),
    );
  }
}
