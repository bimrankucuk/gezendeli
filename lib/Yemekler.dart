import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Yemekler extends StatefulWidget {
  const Yemekler({Key? key}) : super(key: key);

  @override
  State<Yemekler> createState() => _YemeklerState();
}

class _YemeklerState extends State<Yemekler> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi=MediaQuery.of(context);
    final ekranGenislik=ekranBilgisi.size.width;
    final ekranYukseklik=ekranBilgisi.size.height;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text("GELENEKSEL LEZZETLER",style: TextStyle(color: Colors.black),),
      ),
      body:ListView.builder(
        itemCount: 1,
        itemBuilder: (context,index){
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: Card(
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("TOPALAK ÇORBASI:"),
                      ),
                      Image.asset("resimler/topalak1.jpg"),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              children: [

                                SizedBox(width: 50,),
                                GestureDetector(
                                    onTap : (){showModalBottomSheet(context: context, builder: (BuildContext){
                                      return Scaffold(
                                        body: ListView.builder(
                                          itemCount: 1,
                                          itemBuilder: (context,index){
                                            return Column(
                                              children: [
                                                Card(
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.all(5),
                                                        child: Text("YAKINDA!",style: TextStyle(color: Colors.red),),
                                                      ),

                                                    ],
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      );
                                    }
                                    );
                                    },
                                    child: Icon(FontAwesomeIcons.circleArrowUp)),
                                SizedBox(width: 75,),
                                Icon(FontAwesomeIcons.heart,),
                                SizedBox(width: 75,),
                                Icon(FontAwesomeIcons.comment),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),//topalak
              Padding(
                padding: const EdgeInsets.all(15),
                child: Card(
                  child:Column(
                    children: [
                      ListTile(
                        title: Text("ARABAŞI:"),
                      ),
                      Image.asset("resimler/arabasi1.jpeg"),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              children: [
                                SizedBox(width: 50,),
                                GestureDetector(
                                    onTap : (){showModalBottomSheet(context: context, builder: (BuildContext){
                                      return Scaffold(
                                        body: ListView.builder(
                                          itemCount: 1,
                                          itemBuilder: (context,index){
                                            return Column(
                                              children: [
                                                Card(
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.all(5),
                                                        child: Text("YAKINDA!",style: TextStyle(color: Colors.red),),
                                                      ),

                                                    ],
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      );
                                    }
                                    );
                                    },
                                    child: Icon(FontAwesomeIcons.circleArrowUp)),
                                SizedBox(width: 75,),
                                Icon(FontAwesomeIcons.heart,),
                                SizedBox(width: 75,),
                                Icon(FontAwesomeIcons.comment),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),//arabaşı
              Padding(
                padding: const EdgeInsets.all(25),
                child: Card(
                  child:Column(
                    children: [
                      ListTile(
                        title: Text("SÜTLÜ TARHANA:"),
                      ),
                      Image.asset("resimler/sutlutarhana1.jpg"),

                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              children: [
                                SizedBox(width: 50,),
                                GestureDetector(
                                    onTap : (){showModalBottomSheet(context: context, builder: (BuildContext){
                                      return Scaffold(
                                        body: ListView.builder(
                                          itemCount: 1,
                                          itemBuilder: (context,index){
                                            return Column(
                                              children: [
                                                Card(
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.all(5),
                                                        child: Text("YAKINDA!",style: TextStyle(color: Colors.red),),
                                                      ),

                                                    ],
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      );
                                    }
                                    );
                                    },
                                    child: Icon(FontAwesomeIcons.circleArrowUp)),
                                SizedBox(width: 75,),
                                Icon(FontAwesomeIcons.heart,),
                                SizedBox(width: 75,),
                                Icon(FontAwesomeIcons.comment),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),//sütlü tarhana
              Padding(
                padding: const EdgeInsets.all(25),
                child: Card(
                  child:Column(
                    children: [
                      ListTile(
                        title: Text("KEŞKEK:"),
                      ),
                      Image.asset("resimler/keskek1.jpg"),

                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              children: [
                                SizedBox(width: 50,),
                                GestureDetector(
                                    onTap : (){showModalBottomSheet(context: context, builder: (BuildContext){
                                      return Scaffold(
                                        body: ListView.builder(
                                          itemCount: 1,
                                          itemBuilder: (context,index){
                                            return Column(
                                              children: [
                                                Card(
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.all(5),
                                                        child: Text("YAKINDA!",style: TextStyle(color: Colors.red),),
                                                      ),

                                                    ],
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      );
                                    }
                                    );
                                    },
                                    child: Icon(FontAwesomeIcons.circleArrowUp)),
                                SizedBox(width: 75,),
                                Icon(FontAwesomeIcons.heart,),
                                SizedBox(width: 75,),
                                Icon(FontAwesomeIcons.comment),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),//KEŞKEK
              Padding(
                padding: const EdgeInsets.all(25),
                child: Card(
                  child:Column(
                    children: [
                      ListTile(
                        title: Text("YAHNİ:"),
                      ),
                      Image.asset("resimler/yahni1.png"),

                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              children: [
                                SizedBox(width: 50,),
                                GestureDetector(
                                    onTap : (){showModalBottomSheet(context: context, builder: (BuildContext){
                                      return Scaffold(
                                        body: ListView.builder(
                                          itemCount: 1,
                                          itemBuilder: (context,index){
                                            return Column(
                                              children: [
                                                Card(
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.all(5),
                                                        child: Text("YAKINDA!",style: TextStyle(color: Colors.red),),
                                                      ),

                                                    ],
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      );
                                    }
                                    );
                                    },
                                    child: Icon(FontAwesomeIcons.circleArrowUp)),
                                SizedBox(width: 75,),
                                Icon(FontAwesomeIcons.heart,),
                                SizedBox(width: 75,),
                                Icon(FontAwesomeIcons.comment),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),//YAHNİ
              Padding(
                padding: const EdgeInsets.all(25),
                child: Card(
                  child:Column(
                    children: [
                      ListTile(
                        title: Text("ÇEKME ÇÖREK:"),
                      ),
                      Image.asset("resimler/cekmecorek1.jpg"),

                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              children: [
                                SizedBox(width: 50,),
                                GestureDetector(
                                    onTap : (){showModalBottomSheet(context: context, builder: (BuildContext){
                                      return Scaffold(
                                        body: ListView.builder(
                                          itemCount: 1,
                                          itemBuilder: (context,index){
                                            return Column(
                                              children: [
                                                Card(
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.all(5),
                                                        child: Text("YAKINDA!",style: TextStyle(color: Colors.red),),
                                                      ),

                                                    ],
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      );
                                    }
                                    );
                                    },
                                    child: Icon(FontAwesomeIcons.circleArrowUp)),
                                SizedBox(width: 75,),
                                Icon(FontAwesomeIcons.heart,),
                                SizedBox(width: 75,),
                                Icon(FontAwesomeIcons.comment),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),//ÇEKME ÇÖREK
              Padding(
                padding: const EdgeInsets.all(25),
                child: Card(
                  child:Column(
                    children: [
                      ListTile(
                        title: Text("PALİZE:"),
                      ),
                      Image.asset("resimler/palize1.jpg"),

                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              children: [
                                SizedBox(width: 50,),
                                GestureDetector(
                                    onTap : (){showModalBottomSheet(context: context, builder: (BuildContext){
                                      return Scaffold(
                                        body: ListView.builder(
                                          itemCount: 1,
                                          itemBuilder: (context,index){
                                            return Column(
                                              children: [
                                                Card(
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.all(5),
                                                        child: Text("YAKINDA!",style: TextStyle(color: Colors.red),),
                                                      ),

                                                    ],
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      );
                                    }
                                    );
                                    },
                                    child: Icon(FontAwesomeIcons.circleArrowUp)),
                                SizedBox(width: 75,),
                                Icon(FontAwesomeIcons.heart,),
                                SizedBox(width: 75,),
                                Icon(FontAwesomeIcons.comment),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),//PALİZE
              Padding(
                padding: const EdgeInsets.all(25),
                child: Card(
                  child:Column(
                    children: [
                      ListTile(
                        title: Text("CIZLAMA:"),
                      ),
                      Image.asset("resimler/cizlama1.jpg"),

                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              children: [
                                SizedBox(width: 50,),
                                GestureDetector(
                                    onTap : (){showModalBottomSheet(context: context, builder: (BuildContext){
                                      return Scaffold(
                                        body: ListView.builder(
                                          itemCount: 1,
                                          itemBuilder: (context,index){
                                            return Column(
                                              children: [
                                                Card(
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.all(5),
                                                        child: Text("YAKINDA!",style: TextStyle(color: Colors.red),),
                                                      ),

                                                    ],
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      );
                                    }
                                    );
                                    },
                                    child: Icon(FontAwesomeIcons.circleArrowUp)),
                                SizedBox(width: 75,),
                                Icon(FontAwesomeIcons.heart,),
                                SizedBox(width: 75,),
                                Icon(FontAwesomeIcons.comment),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),//CIZLAMA
              Padding(
                padding: const EdgeInsets.all(25),
                child: Card(
                  child:Column(
                    children: [
                      ListTile(
                        title: Text("TELEME:"),
                      ),
                      Image.asset("resimler/teleme1.jpg"),

                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              children: [
                                SizedBox(width: 50,),
                                GestureDetector(
                                    onTap : (){showModalBottomSheet(context: context, builder: (BuildContext){
                                      return Scaffold(
                                        body: ListView.builder(
                                          itemCount: 1,
                                          itemBuilder: (context,index){
                                            return Column(
                                              children: [
                                                Card(
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.all(5),
                                                        child: Text("YAKINDA!",style: TextStyle(color: Colors.red),),
                                                      ),

                                                    ],
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      );
                                    }
                                    );
                                    },
                                    child: Icon(FontAwesomeIcons.circleArrowUp)),
                                SizedBox(width: 75,),
                                Icon(FontAwesomeIcons.heart,),
                                SizedBox(width: 75,),
                                Icon(FontAwesomeIcons.comment),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),//TELEME
              Padding(
                padding: const EdgeInsets.all(25),
                child: Card(
                  child:Column(
                    children: [
                      ListTile(
                        title: Text("OĞMAÇ:"),
                      ),
                      Image.asset("resimler/ogmac1.jpg"),

                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              children: [
                                SizedBox(width: 50,),
                                GestureDetector(
                                    onTap : (){showModalBottomSheet(context: context, builder: (BuildContext){
                                      return Scaffold(
                                        body: ListView.builder(
                                          itemCount: 1,
                                          itemBuilder: (context,index){
                                            return Column(
                                              children: [
                                                Card(
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.all(5),
                                                        child: Text("YAKINDA!",style: TextStyle(color: Colors.red),),
                                                      ),

                                                    ],
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      );
                                    }
                                    );
                                    },
                                    child: Icon(FontAwesomeIcons.circleArrowUp)),
                                SizedBox(width: 75,),
                                Icon(FontAwesomeIcons.heart,),
                                SizedBox(width: 75,),
                                Icon(FontAwesomeIcons.comment),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),//OVMAÇ
              Padding(
                padding: const EdgeInsets.all(25),
                child: Card(
                  child:Column(
                    children: [
                      ListTile(
                        title: Text("BATIRIK:"),
                      ),
                      Image.asset("resimler/batırık1.jpg"),

                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              children: [
                                SizedBox(width: 50,),
                                GestureDetector(
                                    onTap : (){showModalBottomSheet(context: context, builder: (BuildContext){
                                      return Scaffold(
                                        body: ListView.builder(
                                          itemCount: 1,
                                          itemBuilder: (context,index){
                                            return Column(
                                              children: [
                                                Card(
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.all(5),
                                                        child: Text("YAKINDA!",style: TextStyle(color: Colors.red),),
                                                      ),

                                                    ],
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      );
                                    }
                                    );
                                    },
                                    child: Icon(FontAwesomeIcons.circleArrowUp)),
                                SizedBox(width: 75,),
                                Icon(FontAwesomeIcons.heart,),
                                SizedBox(width: 75,),
                                Icon(FontAwesomeIcons.comment),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),//BATIRIK
              Padding(
                padding: const EdgeInsets.all(25),
                child: Card(
                  child:Column(
                    children: [
                      ListTile(
                        title: Text("KULAK:"),
                      ),
                      Image.asset("resimler/kulak1.jpg"),

                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              children: [
                                SizedBox(width: 50,),
                                GestureDetector(
                                    onTap : (){showModalBottomSheet(context: context, builder: (BuildContext){
                                      return Scaffold(
                                        body: ListView.builder(
                                          itemCount: 1,
                                          itemBuilder: (context,index){
                                            return Column(
                                              children: [
                                                Card(
                                                  child: Column(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.all(5),
                                                        child: Text("YAKINDA!",style: TextStyle(color: Colors.red),),
                                                      ),

                                                    ],
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      );
                                    }
                                    );
                                    },
                                    child: Icon(FontAwesomeIcons.circleArrowUp)),
                                SizedBox(width: 75,),
                                Icon(FontAwesomeIcons.heart,),
                                SizedBox(width: 75,),
                                Icon(FontAwesomeIcons.comment),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),//KULAK
            ],
          );
        },
      ),
    );
  }
}