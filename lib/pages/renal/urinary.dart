import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RenalUrinarySystem extends StatelessWidget {
  const RenalUrinarySystem({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("RenalUrinary System"),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(22),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Container(
                  width: 300,
                  margin: EdgeInsets.all(22),
                  child: Text(
                    "Welcome To RenalUrinary System",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                child: Image.asset("assets/images/urinary.jpeg"),
              ),
              SizedBox(
               height: 15,
              ), const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  ""
                      "The urinary system, also known as the renal system, produces, stores and eliminates urine, the fluid waste excreted by the kidneys. The kidneys make urine by filtering wastes and extra water from blood. Urine travels from the kidneys through two thin tubes called ureters and fills the bladder. When the bladder is full, a person urinates through the urethra to eliminate the waste."

                  "",
                  style: TextStyle(fontSize: 18),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
