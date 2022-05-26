import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GezilecekYerler extends StatefulWidget {
  const GezilecekYerler({Key? key}) : super(key: key);

  @override
  State<GezilecekYerler> createState() => _GezilecekYerlerState();
}

class _GezilecekYerlerState extends State<GezilecekYerler> {
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
        title: Text("GEZİLECEK YERLER",style: TextStyle(color: Colors.black),),

      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index){
          return Column(
            children: [

              Padding(
                padding: const EdgeInsets.all(25),
                child: Card(
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset("resimler/kanyon11.jpg"),
                        width: ekranGenislik,
                        height: ekranGenislik/2,
                      ),
                      ListTile(
                        title: Text("KANYON:"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text("Gezende Kanyonu, Mersin’in Gülnar İlçesi sınırlarında Ermenek çayı üzerinde yer alan berrak suyu etkileyici manzarası ile yeni keşfedilen bir turizm değeridir. Şimdilik yürüyüş yolu bulunmadığı için trekking ayakkabılarıyla inilebilen orta zorlukta bir yürüyüşle ulaşılabilen kanyonun yakın zamanda yürüyüş yollarının yapılması beklenmektedir."),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 50,),
                             GestureDetector(
                                 onTap: (){showModalBottomSheet(context: context, builder: (BuildContext){
                                   return Scaffold(
                                     body:ListView.builder(
                                       itemCount: 1,
                                       itemBuilder: (context,index){
                                         return Column(
                                           children: [
                                             Card(
                                               child: Padding(
                                                 padding: const EdgeInsets.all(25),
                                                 child: Column(
                                                   children: [
                                                     Image.asset("resimler/kanyon4.jpg"),
                                                     SizedBox(height: 15,),
                                                     Text("     Kent merkezine 190, ilçe merkezine 40 kilometre uzaklıktaki Gezende"
                                                         " mahallesinde bulunan Gezende Kanyonuna araç park alanından yaklaşık 1 "
                                                         "kilometre yürüyerek ulaşılabiliyor. Ermenek çayı üzerinde yer alan berrak "
                                                         "suyu etkileyici manzarasıyla ziyaretçilerini ağırlayan kanyon,  "
                                                         "ziyaretçilerine doğa yürüyüşü ve kamp imkanı sunuyor.Mersin Valiliği öncülüğünde, "
                                                         "Gülnar Kaymakamlığı, Mersin Üniversitesi Turizm Fakültesi ve Gülnar Belediyesi ile "
                                                         "birlikte yürütülen Gülnar İlçesi Turizm Destinasyonu çalışmasında ön plana çıkarılan "
                                                         "Gezende Kanyonunun turizme açılması için "
                                                         "çalışmalar sürüyor. Kanyonun Tabiat Parkı ilan edilmesi için başvuru yapıldı."),
                                                   ],
                                                 ),
                                               ),
                                             ),
                                           ],
                                         );
                                       },
                                     ) ,
                                   );
                                 });},
                                 child: Icon(FontAwesomeIcons.circleArrowUp)),
                             SizedBox(width: 50,),
                              Icon(FontAwesomeIcons.camera),
                              SizedBox(width: 50,),
                              Icon(FontAwesomeIcons.heart,),
                              SizedBox(width: 50,),
                              Icon(FontAwesomeIcons.comment),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),//kanyon
              Padding(
                padding: const EdgeInsets.all(25),
                child: Card(
                  child: Column(
                    children: [
                      Image.asset("resimler/baraj7.jpg"),
                      ListTile(
                        title: Text("BARAJ:"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text("Gezende Barajı, Mersin'de, Mut ilcesinde Ermenek Çayı üzerinde enerji üretmek amacıyla 1979-1990 yılları arasında inşa edilmiş bir barajdır."),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 50,),
                              GestureDetector(
                                  onTap: (){showModalBottomSheet(context: context, builder: (BuildContext){
                                    return Scaffold(
                                      body:ListView.builder(
                                        itemCount: 1,
                                        itemBuilder: (context,index){
                                          return Column(
                                            children: [
                                              Card(
                                                child: Padding(
                                                  padding: const EdgeInsets.all(25),
                                                  child: Column(
                                                    children: [
                                                      Image.asset("resimler/baraj6.jpg"),
                                                      SizedBox(height: 15,),
                                                      Text("     İlk olarak 1992 yılında KKDF fonundan 5 adet alabalık işletmesi"
                                                          " kurularak başlanan su ürünleri yetiştiriciliğinde 2003 yılından"
                                                          " itibaren çok büyük bir gelişme kaydedilmiştir. Su ürünleri üretimi "
                                                          "2003 yılı itibarıyla 305.7 ton olarak gerçekleşmiş 2005 yılı itibarıyla "
                                                          "toplam üretim kapasitesi 525.7 tona ulaşmıştır.Hayvancılığın Desteklenmesi"
                                                          " kararları kapsamında Su ürünlerine (yavru balık alımı ve sofralık balık "
                                                          "satışlarına) destek verilmesi 2005 ve 2006 yıllarında göletlerde “Kafeste "
                                                          "Alabalık Yetiştiriciliği Projesi” yapılmasını hızlandırmıştır. Gülnar ilçesi"
                                                          " Gezende Baraj Gölünde toplam 500 ton/yıl kapasiteli 2 adet Kafeste alabalık"
                                                          " yetiştiriciliği işletmesi kurulmuş ve işletmeler faal halde olup 1 adet işletme "
                                                          "kurulum aşamasında 1 adet işletme de ön izin için Bakanlığa müracaat etmiştir. "
                                                          "2006 yılı sonu itibarıyla toplam üretim "
                                                          "kapasitesi önceki yıllara oranla % 300 artış göstermiş ve 1957.5 ton/yıla ulaşmıştır."),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ) ,
                                    );
                                  });},
                                  child: Icon(FontAwesomeIcons.circleArrowUp)),
                              SizedBox(width: 50,),
                              Icon(FontAwesomeIcons.camera),
                              SizedBox(width: 50,),
                              Icon(FontAwesomeIcons.heart,),
                              SizedBox(width: 50,),
                              Icon(FontAwesomeIcons.comment),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),//baraj
              Padding(
                padding: const EdgeInsets.all(25),
                child: Card(
                  child: Column(
                    children: [
                      Image.asset("resimler/kale1.jpg"),
                      ListTile(
                        title: Text("KALE:"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text("!YAKINDA!",style: TextStyle(color: Colors.red),),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 50,),
                              GestureDetector(
                                  onTap: (){showModalBottomSheet(context: context, builder: (BuildContext){
                                    return Scaffold(
                                      body:ListView.builder(
                                        itemCount: 1,
                                        itemBuilder: (context,index){
                                          return Column(
                                            children: [
                                              Card(
                                                child: Column(
                                                  children: [
                                                   Text("!YAKINDA!",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                                                  ],
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ) ,
                                    );
                                  });},
                                  child: Icon(FontAwesomeIcons.circleArrowUp)),
                              SizedBox(width: 50,),
                              Icon(FontAwesomeIcons.camera),
                              SizedBox(width: 50,),
                              Icon(FontAwesomeIcons.heart,),
                              SizedBox(width: 50,),
                              Icon(FontAwesomeIcons.comment),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),//kale
              Padding(
                padding: const EdgeInsets.all(25),
                child: Card(
                  child: Column(
                    children: [
                      Image.asset("resimler/bardat4.jpg"),
                      ListTile(
                        title: Text("Bardat Pazarı:"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text("Bozyazı İlçesi sınırına yakın, Gülnar İlçemerkezi’nin batısında ve 36km. mesafede, 1250m. yükseklikte, Gezende"
                            " Köyü’nün çok hareketli bir mahallesidir."),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 50,),
                              GestureDetector(
                                  onTap: (){showModalBottomSheet(context: context, builder: (BuildContext){
                                    return Scaffold(
                                      body:ListView.builder(
                                        itemCount: 1,
                                        itemBuilder: (context,index){
                                          return Column(
                                            children: [
                                              Card(
                                                child: Padding(
                                                  padding: const EdgeInsets.all(25),
                                                  child: Column(
                                                    children: [
                                                      Image.asset("resimler/bardat1.jpg"),
                                                      SizedBox(height: 15,),
                                                      Text("    Bozyazı İlçesi sınırına yakın, Gülnar İlçemerkezi’nin "
                                                          "batısında ve 36km. mesafede, 1250m. yükseklikte, Gezende Köyü’nün çok hareketli "
                                                          "bir mahallesidir. Ermenek Yolu üzerinde(asfalt), Köseçobanlı(Alanboğaz)’dan 5km."
                                                          " uzaklıktadır. Bu yaylanın eski bir geçmişi olduğu söylenir. Eskiden, Gilindire’"
                                                          "nin(Aydıncık) ticaret merkezi olduğu yıllarda, İç Anadolu’ya giden kervan yolu "
                                                          "üzerinde, söğüt ağaçlarının koyu gölgesinde kurulmuş bir Pazar yeridir. Zamanla"
                                                          " söğüt ağaçlarının yerini çınar ağaçları almıştır."),
                                                      SizedBox(height: 10,),
                                                      Text("    Gülnar, Anamur, Mersin, Silifke, Mut, Ermenek, Karaman üretici ve "
                                                          " buluşma yeri konumundaki yayla pazarı, özellikle Cuma günleri panayıra "
                                                          "dönmektedir. Ama ne yazık ki, gerekli altyapı binlerce yıldır hala halledilmiş "
                                                          "değildir. Her türlü taze sebze ve meyvenin yanısıra, yok olmaya yüz tutmuş el z"
                                                          "anaatları ve becerilerinin ürünleride bulunabilmektedir. Ayrıca günümüzde hala taze"
                                                          " ve leziz et yemeyi sevenler için aranıp-bulunamayacak bir konumdadır."),
                                                      SizedBox(height: 10,),
                                                      Text("    Bardat Yaylası, yazları 350 haneye kadar çıkarken kışları 50 haneye kadar düşmektedir"
                                                          ". Yazları çevreden günübirlik geliş-gidişlere sık rastlanır. Bu yaylanın yakınlarında "
                                                          "Gezende Baraj Gölü, Ilısu Şelalesi gibi görülmeye değer harika yerler vardır."),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ) ,
                                    );
                                  });},
                                  child: Icon(FontAwesomeIcons.circleArrowUp)),
                              SizedBox(width: 50,),
                              Icon(FontAwesomeIcons.camera),
                              SizedBox(width: 50,),
                              Icon(FontAwesomeIcons.heart,),
                              SizedBox(width: 50,),
                              Icon(FontAwesomeIcons.comment),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),//bardat
              Padding(
                padding: const EdgeInsets.all(25),
                child: Card(
                  child: Column(
                    children: [
                      Image.asset("resimler/pinar5.jpg"),
                      ListTile(

                        title: Text("ILI PINAR:"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text("Köyümüzde bulunan ve bir çok amaç için kullanılan tarihi çeşmedir. Ilıpınar çeşmesi erik festivalleri,düğünler gibi bir çok etkinlik için kullanılmaktadır."),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 50,),
                              GestureDetector(
                                  onTap: (){showModalBottomSheet(context: context, builder: (BuildContext){
                                    return Scaffold(
                                      body:ListView.builder(
                                        itemCount: 1,
                                        itemBuilder: (context,index){
                                          return Column(
                                            children: [
                                              Card(
                                                child: Column(
                                                  children: [
                                                    Text("!YAKINDA!",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                                                  ],
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ) ,
                                    );
                                  });},
                                  child: Icon(FontAwesomeIcons.circleArrowUp)),
                              SizedBox(width: 50,),
                              Icon(FontAwesomeIcons.camera),
                              SizedBox(width: 50,),
                              Icon(FontAwesomeIcons.heart,),
                              SizedBox(width: 50,),
                              Icon(FontAwesomeIcons.comment),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),//ılı pınar
              Padding(
                padding: const EdgeInsets.all(25),
                child: Card(
                  child: Column(
                    children: [
                      Image.asset("resimler/pinar1.jpg"),
                      ListTile(

                        title: Text("BÜYÜK PINAR:"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text("Büyük pınar köyün içme suyu ve bahçe sulama suyu olarak kullanılmaktadır"),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 50,),
                              GestureDetector(
                                  onTap: (){showModalBottomSheet(context: context, builder: (BuildContext){
                                    return Scaffold(
                                      body:ListView.builder(
                                        itemCount: 1,
                                        itemBuilder: (context,index){
                                          return Column(
                                            children: [
                                              Card(
                                                child: Column(
                                                  children: [
                                                    Text("!YAKINDA!",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                                                  ],
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ) ,
                                    );
                                  });},
                                  child: Icon(FontAwesomeIcons.circleArrowUp)),
                              SizedBox(width: 50,),
                              Icon(FontAwesomeIcons.camera),
                              SizedBox(width: 50,),
                              Icon(FontAwesomeIcons.heart,),
                              SizedBox(width: 50,),
                              Icon(FontAwesomeIcons.comment),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),//büyük pınar
              Padding(
                padding: const EdgeInsets.all(25),
                child: Card(
                  child: Column(
                    children: [
                      Image.asset("resimler/degirmen5.jpg"),
                      ListTile(
                        title: Text("Değirmen:"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text("Gezende köyü Bahçe Arası mekisinde bulunan ve ayakta kalan en eski taş değirmendir"),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 50,),
                              GestureDetector(
                                  onTap: (){showModalBottomSheet(context: context, builder: (BuildContext){
                                    return Scaffold(
                                      body:ListView.builder(
                                        itemCount: 1,
                                        itemBuilder: (context,index){
                                          return Column(
                                            children: [
                                              Card(
                                                child: Column(
                                                  children: [
                                                    Text("!YAKINDA!",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                                                  ],
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ) ,
                                    );
                                  });},
                                  child: Icon(FontAwesomeIcons.circleArrowUp)),
                              SizedBox(width: 50,),
                              Icon(FontAwesomeIcons.camera),
                              SizedBox(width: 50,),
                              Icon(FontAwesomeIcons.heart,),
                              SizedBox(width: 50,),
                              Icon(FontAwesomeIcons.comment),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),//degirmen
              Padding(
                padding: const EdgeInsets.all(25),
                child: Card(
                  child: Column(
                    children: [
                      Image.asset("resimler/cami1.jpg"),
                      ListTile(
                        title: Text("CAMİ VE KEMER:"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text("!YAKINDA!",style: TextStyle(color: Colors.red),),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 50,),
                              GestureDetector(
                                  onTap: (){showModalBottomSheet(context: context, builder: (BuildContext){
                                    return Scaffold(
                                      body:ListView.builder(
                                        itemCount: 1,
                                        itemBuilder: (context,index){
                                          return Column(
                                            children: [
                                              Card(
                                                child: Column(
                                                  children: [
                                                    Text("!YAKINDA!",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                                                  ],
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ) ,
                                    );
                                  });},
                                  child: Icon(FontAwesomeIcons.circleArrowUp)),
                              SizedBox(width: 50,),
                              Icon(FontAwesomeIcons.camera),
                              SizedBox(width: 50,),
                              Icon(FontAwesomeIcons.heart,),
                              SizedBox(width: 50,),
                              Icon(FontAwesomeIcons.comment),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),//cami ve kemer
            ],
          );
        },
      ),
    );
  }
}
