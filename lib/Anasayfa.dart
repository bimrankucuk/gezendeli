import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'GezilecekYerler.dart';
import 'Koyumuz.dart';
import 'Yemekler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi=MediaQuery.of(context);
    final ekranGenislik=ekranBilgisi.size.width;
    final ekranYukseklik=ekranBilgisi.size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.all(ekranGenislik/6),
                child: Image.asset("resimler/logo.jpg"),
              ), //logo
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text("Kategoriler:",style: TextStyle(fontWeight: FontWeight.w600),),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(FontAwesomeIcons.arrowRight),
                  ),
                ],
              ),
              Container(
                height: ekranGenislik/2,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      child: Container(
                        width: ekranGenislik/2,
                        child: Card(
                          child: Column(
                            children: [
                              Image.asset("resimler/koy.jpeg"),
                              ListTile(
                                leading: Icon(FontAwesomeIcons.houseChimney,),
                                title: Text("KÖYÜMÜZ"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Koyumuz()));
                      },
                    ),
                    GestureDetector(
                      child: Container(
                        width: ekranGenislik/2,
                        child: Card(
                          child: Column(
                            children: [
                              Image.asset("resimler/gezilecekyer.jpg"),
                              ListTile(
                                leading: Icon(FontAwesomeIcons.car),
                                title: Text("GEZİLECEK YERLER"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>GezilecekYerler()));
                      },
                    ),
                    GestureDetector(
                      child: Container(
                        width: ekranGenislik/2,
                        child: Card(
                          child: Column(
                            children: [
                              Image.asset("resimler/yemek.jpg"),
                              ListTile(
                                leading: Icon(FontAwesomeIcons.utensils),
                                title: Text("YEMEKLER"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Yemekler()));
                      },
                    ),
                    GestureDetector(
                      child: Container(
                        width: ekranGenislik/2,
                        child: Card(
                          child: Column(
                            children: [
                              Image.asset("resimler/gelenek.jpg"),
                              ListTile(
                                leading: Icon(FontAwesomeIcons.mosque),
                                title: Text("GELENEKLER"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: (){
                        showModalBottomSheet(context: context, builder: (BuildContext){
                          return Scaffold(
                            body: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("!YAKINDA!",style: TextStyle(color:Colors.red,fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                          );
                        });
                      },
                    ),
                  ],

                ),
              ),
              SizedBox(height: 50,),
              Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 GestureDetector(
                   onTap: (){
                     _urlAc("https://www.linkedin.com/in/bayram-imran-k%C3%BC%C3%A7%C3%BCk-605b56228/");
                   },
                     child: Icon(FontAwesomeIcons.linkedin,)),
                 SizedBox(width: 15,),
                 GestureDetector(
                     onTap: (){
                       _urlAc("https://github.com/bimrankucuk");
                     },
                     child: Icon(FontAwesomeIcons.github)),
                 SizedBox(width: 15,),
                 GestureDetector(
                     onTap: (){
                       _urlAc("mailto:b.imrankucuk@gmail.com");
                     },
                     child: Icon(FontAwesomeIcons.envelopeCircleCheck)),
                 SizedBox(width: 15,),
                 GestureDetector(
                     onTap: (){
                       _urlAc("https://www.instagram.com/b.imrankucuk/");
                     },
                     child: Icon(FontAwesomeIcons.instagramSquare)),
                 SizedBox(width: 15,),
                 GestureDetector(
                     onTap: (){
                       _urlAc("https://www.youtube.com/channel/UC02yYYKnzU9q93KK5UDpEUQ");
                     },
                     child: Icon(FontAwesomeIcons.youtube)),
                 SizedBox(width: 15,),
                 GestureDetector(
                     onTap: (){
                       _urlAc("https://twitter.com/b_imrankucuk?t=wK3butwmSwU6kIRoWzMeqw&s=09");
                     },
                     child: Icon(FontAwesomeIcons.twitter)),
               ],
             ),

            ],
          ),
        ),
      ),
    );
  }
}
Future _urlAc(String link)async{
  if(await canLaunch(link)){
    await launch(link);
  }else{
    debugPrint("Sayfa bulunamadı");
  }
}


