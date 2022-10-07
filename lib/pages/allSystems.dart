import 'package:flutter/material.dart';
import 'package:uniquetomy/pages/circulatorySystem.dart';
import 'package:uniquetomy/pages/nervous_system.dart';
import 'package:uniquetomy/pages/renal/urinary.dart';
import 'package:uniquetomy/pages/reproductive_system.dart';
import 'package:uniquetomy/pages/respiratory_system.dart';
import 'package:uniquetomy/pages/skeletal_system.dart';

import 'DigestiveSystem.dart';
import 'Immune_system.dart';
import 'endocrineSystem.dart';
import 'exocrine_system.dart';

class ClassesOfBodySystem extends StatelessWidget {
  ClassesOfBodySystem({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/background.jpeg"))),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(22),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/kit.jpeg")),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Container(
                    width: 500,
                    margin: EdgeInsets.all(22),
                    child: Text(
                      "Welcome, Unique.",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.red ,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CirculatorySystem()));
                      },
                      child: Container(
                        height: 95,
                        width: 130,
                        padding: EdgeInsets.all(16),
                        margin: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Container(
                          child: Text(
                            "Circulatory System",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DigestiveSystem()));
                      },
                      child: Container(
                        height: 95,
                        width: 130,
                        padding: EdgeInsets.all(16),
                        margin: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Container(
                          child: Text(
                            "Digestive System",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EndocrineSystem()));
                      },
                      child: Container(
                        height: 95,
                        width: 130,
                        padding: EdgeInsets.all(16),
                        margin: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Container(
                          child: Text(
                            "Endocrine System",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ExocrineSystem()));
                      },
                      child: Container(
                        height: 95,
                        width: 130,
                        padding: EdgeInsets.all(16),
                        margin: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Container(
                          child: Text(
                            "Exocrine System",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ImmuneSystem()));
                      },
                      child: Container(
                        height: 95,
                        width: 130,
                        padding: EdgeInsets.all(16),
                        margin: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Container(
                          child: Text(
                            "Immune System",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => NervousSystem()));
                      },
                      child: Container(
                        height: 95,
                        width: 130,
                        padding: EdgeInsets.all(16),
                        margin: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Container(
                          child: Text(
                            "Nervous System",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RenalUrinarySystem()));
                      },
                      child: Container(
                        height: 95,
                        width: 130,
                        padding: EdgeInsets.all(16),
                        margin: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Container(
                          child: Text(
                            "Renal/Urinary System",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ReproductiveSystem()));
                      },
                      child: Container(
                        height: 95,
                        width: 130,
                        padding: EdgeInsets.all(16),
                        margin: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Container(
                          child: Text(
                            "Reproductive System",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const RespiratorySystem()));
                      },
                      child: Container(
                        height: 95,
                        width: 130,
                        padding: EdgeInsets.all(16),
                        margin: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Container(
                          child: Text(
                            "Respiratory System",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SkeletalSystem()));
                      },
                      child: Container(
                        height: 95,
                        width: 140,
                        padding: EdgeInsets.all(16),
                        margin: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Container(
                          child: Text(
                            "SkeletalSystem",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
