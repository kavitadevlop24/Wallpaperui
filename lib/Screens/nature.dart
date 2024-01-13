import 'package:flutter/material.dart';
import 'package:wallpaper_ui/Screens/nature1.dart';

class Nature extends StatefulWidget {
  const Nature({Key? key}) : super(key: key);

  @override
  State<Nature> createState() => _NatureState();
}

class _NatureState extends State<Nature> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey.shade100,
        body: SingleChildScrollView(
          child: Column(
            children: [
            Padding(padding: const EdgeInsets.only(top: 50,left: 15),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text("Nature",style: TextStyle(fontSize: 45,fontWeight: FontWeight.w700),),
            ),
            ),
              SizedBox(height: 3,),
              Padding(padding: const EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("36 wallpaper available",style: TextStyle(fontSize: 22,color: Colors.grey,fontWeight: FontWeight.w600),),
              ),
              ),
              SizedBox(height: 25,),
              Padding(padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Container(
                    height: 230,
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage("assets/images/w1.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Nature1()));
                    },
                    child: Container(
                      height: 250,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage("assets/images/w2.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              ),
              SizedBox(height: 25,),
              Padding(padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Container(
                      height: 260,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage("assets/images/w3.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Nature1()));
                      },
                      child: Container(
                        height: 230,
                        width: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage("assets/images/w4.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25,),
              Padding(padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Container(
                      height: 230,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage("assets/images/w1.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Nature1()));
                      },
                      child: Container(
                        height: 250,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage("assets/images/w2.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )

      ),
    );
  }
}
