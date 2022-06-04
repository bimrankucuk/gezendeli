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
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Column(

                                                      children: [
                                                        Container(
                                                            child: Text("Arabaşı Çorbası ve Hamuru Tarifi İçin Malzemeler:",style: TextStyle(fontWeight: FontWeight.bold),)),
                                                        SizedBox(height: 10,),
                                                        Container(
                                                          alignment: Alignment.topLeft,
                                                          child: Text("Çorba için;\n |* 1 adet bütün tavuk\n|* 20-25 adet kurutulmuş acı biber\n|* 3 adet soğan\n|* Sıvı yağ\n|* Tuz\n\n Hamuru için;\n|* 10 su bardağı su\n|* 2 su bardağı un\n|* 2 tatlı kaşığı tuz"),
                                                        ),
                                                        SizedBox(height: 10,),
                                                        Container(
                                                            child: Text("Arabaşı Çorbası ve Hamuru Tarifi Nasıl Yapılır?",style: TextStyle(fontWeight: FontWeight.bold),)),
                                                        SizedBox(height: 10,),
                                                        Container(
                                                          child: Text("Hamurun Hazırlanışı:"
                                                              "\n1. Öncelikle tenceremize 6 su bardağı suyu ve 2 tatlı kaşığı tuzu ekleyip kaynamasını bekliyoruz."
                                                              "\n2. Başka bir kapta 4 su bardağı suyu ve unu güzelce çırpıyoruz ve kaynayan suyun içine yavaş yavaş ve aynı zamanda karıştırarak döküyoruz."
                                                              "\n3. Kaynadıktan sonra 15-20 dakika sürekli karıştırarak pişiriyoruz."
                                                              "\n4. Daha sonra önceden ıslattığımız tepsimize döküyoruz ve soğuması için buzdolabına koyuyoruz."
                                                              "\n5.Servis edeceğiniz zaman hamuru istediğiniz şekilde kesebilirsiniz."
                                                              "\n\nÇorbanın Hazırlanışı"
                                                              "\n1.Çorba için ilk olarak tavuğumuzu parçalayıp düdüklü tencerede 20-25 dakika pişirip soğumaya bırakıyoruz, tavuk suyunun yarısını çorbaya dökeceğiz."
                                                              "\n2. Diğer bir yanda biberlerimizi haşlıyoruz blenderda çekiyoruz ve süzgeçte süzüyoruz."
                                                              "\n3.Geniş bir tencereye yağımızı döküp soğanlarımızı iyice kavuruyoruz, süzdüğümüz biber suyumuzu ve tavuk suyumuzu tencereye ekleyip kaynatıyoruz."
                                                              "\n4.Kaynayan suyumuza didiklediğimiz tavuklarımızı ekleyip 15 dk daha kısık ateşte pişirmeye devam ediyoruz."),
                                                        ),
                                                      ],
                                                    ),
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
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Column(

                                                      children: [
                                                        Container(
                                                            child: Text("Keşkek Tarifi İçin Malzemeler",style: TextStyle(fontWeight: FontWeight.bold),)),
                                                        SizedBox(height: 10,),
                                                        Container(
                                                          alignment: Alignment.topLeft,
                                                          child: Text("|* 300 gr dövme buğday"
                                                              "\n|* 100 gr beyaz nohut"
                                                              "\n|* 5.5 su bardağı su"
                                                              "\n|* 750 gr kemikli koyun eti"
                                                              "\n|* 60 gr tereyağı"
                                                              "\n|* Karabiber"
                                                              "\n|* Tuz"
                                                            "\n|* Kırmızı toz biber"),
                                                        ),
                                                        SizedBox(height: 10,),
                                                        Container(
                                                            child: Text("Keşkek Tarifi Nasıl Yapılır?",style: TextStyle(fontWeight: FontWeight.bold),)),
                                                        SizedBox(height: 10,),
                                                        Container(
                                                          child: Text("\n1. Nohut ile buğdayı 2.5 su bardağı su ile bir gece önceden ıslatın ve eti haşlayın."
                                                              "\n2. Nohut ile buğdayın suyunu süzüp ete ilave edin. Ayırdığınız suya 4 bardak daha su ilave edin."
                                                              "\n3. Tereyağının yarısına su, karabiber ve tuzu ekleyip buğday lapa oluncaya kadar yaklaşık 75 dakika pişirin."
                                                              "\n4. Etin kemiklerini ayırıp yemeğin üzerine ilave edin. Keşkeği büyük bir tencereye alın.Tahta kaşıkla ezerek karıştırıp servis tabağına alın."
                                                              "\n5. Üzerine kırmızı pul biberle birlikte kızdırılmış tereyağı gezdirip tatlandırın."
                                                          ),
                                                        ),
                                                      ],
                                                    ),
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
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Column(

                                                      children: [
                                                        Container(
                                                            child: Text("Yahni Tarifi İçin Malzemeler",style: TextStyle(fontWeight: FontWeight.bold),)),
                                                        SizedBox(height: 10,),
                                                        Container(
                                                          alignment: Alignment.topLeft,
                                                          child: Text("|* 800gram yağsız kuşbaşı et"
                                                              "\n|* 400 gram arpacık soğan"
                                                              "\n|* 10 diş sarımsak"
                                                              "\n|* 1 yemek kaşığı tereyağı"
                                                              "\n|* 2 yemek kaşığı zeytinyağı"
                                                              "\n|* 1 yemek kaşığı domates salçası"
                                                              "\n|* 1 çay kaşığı tuz"
                                                              "\n|* 1 çay kaşığı karabiber"
                                                              "\n|* 1 adet defne yaprağı"
                                                              "\n|* 1 tatlı kaşığı sirke"),
                                                        ),
                                                        SizedBox(height: 10,),
                                                        Container(
                                                            child: Text("Yahni Tarifi Nasıl Yapılır?",style: TextStyle(fontWeight: FontWeight.bold),)),
                                                        SizedBox(height: 10,),
                                                        Container(
                                                          child: Text("\n1. Yağsız kuşbaşı etleri bol suda yıkayıp üzerlerini kağıt havlu yardımıyla kurulayın."
                                                              "\n2. Zeytinyağını derin bir tencerede kızdırın. Kuşbaşı etleri alıp yüksek ateşte kendi suyunu çekene kadar pişirin."
                                                              "\n3. Etlerin üzerini geçecek kadar sıcak su ekleyip kapağını açık bıraktığınız tencerede orta ateşte pişirme işlemini sürdürün.Arpacık soğan ve sarımsakların kabuklarını ayıklayıp bütün halde bırakın."
                                                              "\n4. Yumuşayan etlere domates salçası, arpacık soğan, sarımsak, sirke, tuz, karabiber ve defne yaprağını katıp karıştırın."
                                                              "\n5. Üzerini bir parmak kalınlığında geçecek kadar sıcak su ekleyip kısık ateşte pişirme işlemine devam edin. Kıvam ve lezzet vermesi için arada tereyağı ekleyin."
                                                              "\n6. Soğan ve sarımsaklar yumuşadığında salçalı sosuyla birlikte sıcak olarak servis edin."),
                                                        ),
                                                      ],
                                                    ),
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
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Column(

                                                      children: [
                                                        Container(
                                                            child: Text("Batırık Tarifi İçin Malzemeler",style: TextStyle(fontWeight: FontWeight.bold),)),
                                                        SizedBox(height: 10,),
                                                        Container(
                                                          alignment: Alignment.topLeft,
                                                          child: Text("Batırık Tarifi İçin Malzemeler:"
                                                              "\n\n1 su bardağı bulgur (ince ,esmer)\n|* ½ çay bardağı tahin\n|* 1 çay bardağı yer fıstığı (kavrulmuş)\n|* 1 çorba kaşığı biber salçası\n|* Kuru domates (arzuya göre)\n|* 1 adet kuru soğan\n|* 2 Adet domates\n|* 2 Adet salatalık\n|* Yarım demet maydanoz\n|* Yarım demet nane\n|* 2 adet yeşil biber\n|* 3 yaprak marul\n|* 3 adet taze soğan\n|* Lahana (kıyılmış arzuya göre, haşlanmış)\n|* ½ çay bardağı zeytinyağı\n|* ½ çay bardağı limon suyu\n|* 1 tatlı kaşığı kırmızı pul biber\n|* 1 çay kaşığı kimyon\n|* 5-6 su bardağı soğuk su\n|* 2 çay bardağı sıcak su\n|* Nar ekşisi\n|* Tuz"),
                                                        ),
                                                        SizedBox(height: 10,),
                                                        Container(
                                                            child: Text("Batırık Tarifi Nasıl Yapılır?",style: TextStyle(fontWeight: FontWeight.bold),)),
                                                        SizedBox(height: 10,),
                                                        Container(
                                                          child: Text("\n1. Tüm sebzelerimizi yıkayıp, hazırlayalım.\n2. Tahini küçük bir teflon tavaya alıp hafif kavuralım.\n3. Bulgurumuzu 1,5 çay bardağı sıcak su ile ıslatalım.\n4. Yer fıstığımızı robottan geçirelim veya bildiğiniz yöntemle küçük parçalar haline getirelim (Havanda da dövebilirsiniz)\n5. Tahin, bulgur, yer fıstığı, kimyonu derin yoğurma kabında kaşıkla karıştıralım.\n6. Bu tarifin özelliği tüm sebzelerin en ince boyutta ve küçük boyutta doğranmasıdır. Salatalıklar cacıklık, domatesler minik küp, biber, taze soğanlar, nane maydanoz, marul ince kıyılmış hazırlanır.\n7. Bulgur karışımımıza kuru soğanı rendeleyin, salçayı ekleyin (bu aşamada önceden ıslatılmış kurutulmuş domateste ekleyebilirsiniz)\n8. Karışımı 1-2 dk. birer tutam nane ve maydanozla yoğurun.\n9. Sebzeleri hırpalamadan şu sıra ile ekleyin. Yeşil biber ,taze soğan, nane, maydanoz, domates, salatalık.\n10. Zeytinyağı limon suyunu, pul biberi, tuzunu ekleyin. Elinizle hafifçe karıştırın.\n11. Batırığı ,susuz tüketmek istiyorsanız, kısır halindeyken bir tabağa ayırın, kalanını soğuk suyla sulandırın. Tamamını sulandırmak için 5-6 bardak su ekleyin.\n12. Ekşiden hoşlanıyorsanız nar ekşisini ekleyin.\n13. Çukur tabağa aldığınız batırığı ince kıyılmış marul veya lahana ekleyerek servis yapın.\nNot: Bu tarif Mersin(Silifke –Mut) yöresinde sunulduğu şekliyle hazırlandı. Karaman’da da benzer şekilde yapılıyor. İtiraf etmeliyim, kavrulmuş tahinin iştah kabartan kokusu nedeniyle önce bir tabak yiyip ardından fotoğrafladığım tek tarif… :)Bu tarif güneyde çay saatlerinde ,kısıra alternatif olarak sunulur.Yazın arzu ederseniz soğuksuyu azaltarak ile buz da ekleyebilirsiniz"),
                                                        ),
                                                      ],
                                                    ),
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
                                            return Padding(
                                              padding: const EdgeInsets.all(20),
                                              child: Column(
                                                children: [
                                                  Card(
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Column(

                                                        children: [
                                                          Container(
                                                              child: Text("Topalak Yemeği Tarifi İçin Malzemeler:",style: TextStyle(fontWeight: FontWeight.bold),)),
                                                          SizedBox(height: 10,),
                                                          Container(
                                                            alignment: Alignment.topLeft,
                                                            child: Text("|* 1 su bardağı ince bulgur \n|* 250 gram yağsız kıyma\n"
                                                                "|* 1 adet yumurta\n|* 1 çay kaşığı tuz"
                                                                "\n|* 1 çay kaşığı karabiber\n|* 1 çay kaşığı kırmızı biber\n"
                                                                "|* 2 yemek kaşığı tereyağı\n|* 2 yemek kaşığı domates salçası\n"
                                                                "|* 1 yemek kaşığı un\n|* 1 su bardağı haşlanmış nohut\n"
                                                                "|* 5 su bardağı et suyu\n|* 1 yemek kaşığı nane"),
                                                          ),
                                                          SizedBox(height: 10,),
                                                          Container(
                                                              child: Text("Topalak Yemeği Tarifi Nasıl Yapılır?",style: TextStyle(fontWeight: FontWeight.bold),)),
                                                          SizedBox(height: 10,),
                                                          Container(
                                                            child: Text("1. Kıyma, ince bulgur, tuz, karabiber, kırmızı biber ve yumurta birlikte yoğurulur. Fındık büyüklüğünde köfteler yapılır.\n"
                                                                "2. Tereyağ unla kavrulur, salça ilave edilir. Üzerine 5 su bardağı et suyu eklenir.\n"
                                                                "3. Su kaynayınca köfteler ve nohut ilave edilip pişirilir. Üzerine nane dökülerek servis yapılır. "),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
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
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Column(

                                                      children: [
                                                        Container(
                                                            child: Text("Sütlü Tarhana Çorbası Tarifi İçin Malzemeler",style: TextStyle(fontWeight: FontWeight.bold),)),
                                                        SizedBox(height: 10,),
                                                        Container(
                                                          alignment: Alignment.topLeft,
                                                          child: Text("|* 6yemek kaşığıtoz tarhana"
                                                              "\n|* 2 su bardağı süt"
                                                              "\n|* 4-5 su bardağı su"
                                                              "\n|* 1 yemek kaşığı salça"
                                                              "\n|* 2 diş sarımsak"
                                                              "\n|* 1 yemek kaşığı tereyağı"
                                                              "\n|* 3-4 yemek kaşığı sıvı yağ"),
                                                        ),
                                                        SizedBox(height: 10,),
                                                        Container(
                                                            child: Text("Sütlü Tarhana Çorbası Tarifi Nasıl Yapılır?",style: TextStyle(fontWeight: FontWeight.bold),)),
                                                        SizedBox(height: 10,),
                                                        Container(
                                                          child: Text("\n1. İlk işlem tarhana ve sütü bir kapta güzelce karıştırmak. Tarhana sütün içinde 5 dakika kadar şişecek."
                                                              "\n2. Tencereye sıvı yağı ve salçayı alıyoruz. Sarımsakları da diri şekilde koyup kavuruyoruz."
                                                              "\n3. Ocağın altını kısıp süt ve tarhana karışımını yavaş yavaş tencereye ekliyoruz. Bu işlemi yaparken çırpma teliyle karıştırıyoruz ki topaklanma olmasın."
                                                              "\n4. Suyu da ekledikten sonra orta ateşte 2-3 dakika kadar karıştırmaya devam edip kaynamaya bırakıyoruz."
                                                              "\n5. Çorbamız kaynadıktan sonra bütün durumdaki sarımsakları çorbadan alıyoruz. Tuzunu atıyoruz. Dilerseniz çorba bu aşamada tamamlanabilir, baharatları direkt atabilirsiniz."
                                                              "\n6. Arzuya göre sos tavasında tereyağını 1 yemek kaşığı sıvı yağ ekleyerek eritiyoruz ve pul biberle naneyi biraz çeviriyoruz. Çorbamıza bu yağı ekleyip, 5 dakika kısık ateşte kaynattıktan sonra kapatıyoruz. Afiyet olsun."),
                                                        ),
                                                      ],
                                                    ),
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
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Column(

                                                      children: [
                                                        Container(
                                                            child: Text("Çekme çörek Tarifi İçin Malzemeler",style: TextStyle(fontWeight: FontWeight.bold),)),
                                                        SizedBox(height: 10,),
                                                        Container(
                                                          alignment: Alignment.topLeft,
                                                          child: Text("Hamuru için :"
                                                              "\n\n|* 1 buçuk su bardağı ılık su"
                                                              "\n|* 1 tatlı kaşığı tuz"
                                                              "\n|* 5 yemek kaşığı sıvı yağ"
                                                              "\n|* 1 paket instant maya ( 10 gram )"
                                                              "\n|* 3 su bardağı un"
                                                              "\n\nÜzeri için"
                                                              "\n|* 1 adet yumurta sarısı"
                                                              "\n|* Susam çörek otu"
                                                              "\n|* 1 tatlı kaşığı yoğurt"),
                                                        ),
                                                        SizedBox(height: 10,),
                                                        Container(
                                                            child: Text("Çekme çörek Tarifi Nasıl Yapılır?",style: TextStyle(fontWeight: FontWeight.bold),)),
                                                        SizedBox(height: 10,),
                                                        Container(
                                                          child: Text("\n1. İlk önce fırını 50 dereceye ayarlayıp ısınmaya bırakın. Derin bir kaba ılık suyu tuzu ve sıvı yağı koyup iyice karıştırın. Üzerine toz mayayı unu ilave edip tel çırpıcıyla iyice çırpın. Hamur cıvık olacak bu sizi korkutmasın."
                                                              "\n2. Dikdörtgen borcam boyutlarındaki fırın tepsisini tereyağı veya margarinle kenarlarını köşelerini bolca yağlayın. ( Yoksa çöreğiniz yapışabilir. ) Hazırlanan cıvık hamuru iyice yağladığınız tepsiye dökün. "
                                                              "\n3. Elinizi 1-2 kaşık sıvı yağla iyice yağlayın. Hamurun üzerine bastırarak elinizle eşit bir şekilde tepsiye yayın. Üzeri için yumurta sarısı ve yoğurdu karıştırıp hamurun üzerine elinizle güzelce sürün."
                                                              "\n4. Üzerine susam ve çörek otu serpiştirin. 50 derecede ısıttığınız fırını kapayın. Tepsi mayası için çöreği fırına koyup kapağını kapatın. ılık fırın içerisinde yaklaşık 3o-40 dakika kadar mayalanmaya bırakın. ( Bu şekilde daha çabuk mayalanıyor. ) "
                                                              "\n5. Mayalanan hamuru fırından hiç çıkarmadan ayarını 190 dereceye ayarlayıp üzeri iyice kızarana kadar pişirin. Pişen çöreğin ilk sıcağı gittikten sonra dilimleyerek servis edebilirsiniz."),
                                                        ),
                                                      ],
                                                    ),
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
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Column(

                                                      children: [
                                                        Container(
                                                            child: Text("Palize Tarifi İçin Malzemeler",style: TextStyle(fontWeight: FontWeight.bold),)),
                                                        SizedBox(height: 10,),
                                                        Container(
                                                          alignment: Alignment.topLeft,
                                                          child: Text("|* 4 su bardağı su"
                                                              "\n|* 2 tepeleme dolu yemek kaşığı mısır nişastası"
                                                              "\n|* 5 yemek yemek kaşığı şeker"
                                                              "\n|* 3 yemek kaşığı süt renk vermesi için "
                                                              "\n|* 1 adet vanilya"),
                                                        ),
                                                        SizedBox(height: 10,),
                                                        Container(
                                                            child: Text("Palize Tarifi Nasıl Yapılır?",style: TextStyle(fontWeight: FontWeight.bold),)),
                                                        SizedBox(height: 10,),
                                                        Container(
                                                          child: Text("\n1. Küçük bir tencereye 3 bardak su süt ve şeker ilave edilir .Ocağa alınarak arada karıştırmak suretiyle kaynamaya bırakılır"
                                                              "\n2. Geriye kalan 1 bardak su ve nişasta bir kase içerisinde karıştırılır.Tenceredeki su kaynamaya başlayınca nişastalı karışım ve vanilya ilave edilerek karıştırılır.Üzeri göz göz olup kaynamaya başlayınca beş dakika kadar kaynatılır ve ocak kapatılır."
                                                              "\n3. Servis edilecek kaplara paylaştırılır.Ilıdıktan sonra buzdolabına alınarak 2 saat kadar bekletilir.2 saatin ardından üzeri istenilen şekilde süslenerek servis edilir."),
                                                        ),
                                                      ],
                                                    ),
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
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Column(

                                                      children: [
                                                        Container(
                                                            child: Text("Cızlama Tarifi İçin Malzemeler",style: TextStyle(fontWeight: FontWeight.bold),)),
                                                        SizedBox(height: 10,),
                                                        Container(
                                                          alignment: Alignment.topLeft,
                                                          child: Text("|* 2 adet yumurta"
                                                              "\n|* 2 su bardağı süt"
                                                              "\n|* 2 su bardağı un"
                                                              "\n|* 1 tepeleme çay kaşığı tuz"
                                                              "\n|* 1 tepeleme çay kaşığı kabartma tozu"
                                                              "\n|* yarım çay bardağı sıvı yağ"),
                                                        ),
                                                        SizedBox(height: 10,),
                                                        Container(
                                                            child: Text("Cızlama Tarifi Nasıl Yapılır?",style: TextStyle(fontWeight: FontWeight.bold),)),
                                                        SizedBox(height: 10,),
                                                        Container(
                                                          child: Text("\n1. Yumurtalar, süt, tuz, sıvı yağ çırpılır."
                                                              "\n2. Daha sonra un ve kabartma tozu eklenir."
                                                              "\n3. Homojen bir karışım elde ettikten sonra, hafif yağlanmış ve kızdırılmış tavaya kepçe yardımı ile dökülür."
                                                              "\n4. Göz göz olduğunda, krebimizi diğer tarafını da çevirip pişirelim. Afiyet olsun."),
                                                        ),
                                                      ],
                                                    ),
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
              /*Padding(
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
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Column(

                                                      children: [
                                                        Container(
                                                            child: Text("Sütlü Tarhana Çorbası Tarifi İçin Malzemeler",style: TextStyle(fontWeight: FontWeight.bold),)),
                                                        SizedBox(height: 10,),
                                                        Container(
                                                          alignment: Alignment.topLeft,
                                                          child: Text("|* 6yemek kaşığıtoz tarhana"
                                                              "\n|* 2 su bardağı süt"
                                                              "\n|* 4-5 su bardağı su"
                                                              "\n|* 1 yemek kaşığı salça"
                                                              "\n|* 2 diş sarımsak"
                                                              "\n|* 1 yemek kaşığı tereyağı"
                                                              "\n|* 3-4 yemek kaşığı sıvı yağ"),
                                                        ),
                                                        SizedBox(height: 10,),
                                                        Container(
                                                            child: Text("Sütlü Tarhana Çorbası Tarifi Nasıl Yapılır?",style: TextStyle(fontWeight: FontWeight.bold),)),
                                                        SizedBox(height: 10,),
                                                        Container(
                                                          child: Text("\n1. İlk işlem tarhana ve sütü bir kapta güzelce karıştırmak. Tarhana sütün içinde 5 dakika kadar şişecek."
                                                              "\n2. Tencereye sıvı yağı ve salçayı alıyoruz. Sarımsakları da diri şekilde koyup kavuruyoruz."
                                                              "\n3. Ocağın altını kısıp süt ve tarhana karışımını yavaş yavaş tencereye ekliyoruz. Bu işlemi yaparken çırpma teliyle karıştırıyoruz ki topaklanma olmasın."
                                                              "\n4. Suyu da ekledikten sonra orta ateşte 2-3 dakika kadar karıştırmaya devam edip kaynamaya bırakıyoruz."
                                                              "\n5. Çorbamız kaynadıktan sonra bütün durumdaki sarımsakları çorbadan alıyoruz. Tuzunu atıyoruz. Dilerseniz çorba bu aşamada tamamlanabilir, baharatları direkt atabilirsiniz."
                                                              "\n6. Arzuya göre sos tavasında tereyağını 1 yemek kaşığı sıvı yağ ekleyerek eritiyoruz ve pul biberle naneyi biraz çeviriyoruz. Çorbamıza bu yağı ekleyip, 5 dakika kısık ateşte kaynattıktan sonra kapatıyoruz. Afiyet olsun."),
                                                        ),
                                                      ],
                                                    ),
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
              ),*///TELEME
              /*Padding(
                padding: const EdgeInsets.all(25),
                child: Card(
                  child:Column(
                    children: [
                      ListTile(
                        title: Text("OVMAÇ:"),
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
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Column(

                                                      children: [
                                                        Container(
                                                            child: Text("Ovmaç Tarifi İçin Malzemeler",style: TextStyle(fontWeight: FontWeight.bold),)),
                                                        SizedBox(height: 10,),
                                                        Container(
                                                          alignment: Alignment.topLeft,
                                                          child: Text("|* 6yemek kaşığıtoz tarhana"
                                                              "\n|* 2 su bardağı süt"
                                                              "\n|* 4-5 su bardağı su"
                                                              "\n|* 1 yemek kaşığı salça"
                                                              "\n|* 2 diş sarımsak"
                                                              "\n|* 1 yemek kaşığı tereyağı"
                                                              "\n|* 3-4 yemek kaşığı sıvı yağ"),
                                                        ),
                                                        SizedBox(height: 10,),
                                                        Container(
                                                            child: Text("Ovmaç Tarifi Nasıl Yapılır?",style: TextStyle(fontWeight: FontWeight.bold),)),
                                                        SizedBox(height: 10,),
                                                        Container(
                                                          child: Text("\n1. İlk işlem tarhana ve sütü bir kapta güzelce karıştırmak. Tarhana sütün içinde 5 dakika kadar şişecek."
                                                              "\n2. Tencereye sıvı yağı ve salçayı alıyoruz. Sarımsakları da diri şekilde koyup kavuruyoruz."
                                                              "\n3. Ocağın altını kısıp süt ve tarhana karışımını yavaş yavaş tencereye ekliyoruz. Bu işlemi yaparken çırpma teliyle karıştırıyoruz ki topaklanma olmasın."
                                                              "\n4. Suyu da ekledikten sonra orta ateşte 2-3 dakika kadar karıştırmaya devam edip kaynamaya bırakıyoruz."
                                                              "\n5. Çorbamız kaynadıktan sonra bütün durumdaki sarımsakları çorbadan alıyoruz. Tuzunu atıyoruz. Dilerseniz çorba bu aşamada tamamlanabilir, baharatları direkt atabilirsiniz."
                                                              "\n6. Arzuya göre sos tavasında tereyağını 1 yemek kaşığı sıvı yağ ekleyerek eritiyoruz ve pul biberle naneyi biraz çeviriyoruz. Çorbamıza bu yağı ekleyip, 5 dakika kısık ateşte kaynattıktan sonra kapatıyoruz. Afiyet olsun."),
                                                        ),
                                                      ],
                                                    ),
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
              ),*///OVMAÇ
              /*Padding(
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
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Column(

                                                      children: [
                                                        Container(
                                                            child: Text("Sütlü Tarhana Çorbası Tarifi İçin Malzemeler",style: TextStyle(fontWeight: FontWeight.bold),)),
                                                        SizedBox(height: 10,),
                                                        Container(
                                                          alignment: Alignment.topLeft,
                                                          child: Text("|* 6yemek kaşığıtoz tarhana"
                                                              "\n|* 2 su bardağı süt"
                                                              "\n|* 4-5 su bardağı su"
                                                              "\n|* 1 yemek kaşığı salça"
                                                              "\n|* 2 diş sarımsak"
                                                              "\n|* 1 yemek kaşığı tereyağı"
                                                              "\n|* 3-4 yemek kaşığı sıvı yağ"),
                                                        ),
                                                        SizedBox(height: 10,),
                                                        Container(
                                                            child: Text("Sütlü Tarhana Çorbası Tarifi Nasıl Yapılır?",style: TextStyle(fontWeight: FontWeight.bold),)),
                                                        SizedBox(height: 10,),
                                                        Container(
                                                          child: Text("\n1. İlk işlem tarhana ve sütü bir kapta güzelce karıştırmak. Tarhana sütün içinde 5 dakika kadar şişecek."
                                                              "\n2. Tencereye sıvı yağı ve salçayı alıyoruz. Sarımsakları da diri şekilde koyup kavuruyoruz."
                                                              "\n3. Ocağın altını kısıp süt ve tarhana karışımını yavaş yavaş tencereye ekliyoruz. Bu işlemi yaparken çırpma teliyle karıştırıyoruz ki topaklanma olmasın."
                                                              "\n4. Suyu da ekledikten sonra orta ateşte 2-3 dakika kadar karıştırmaya devam edip kaynamaya bırakıyoruz."
                                                              "\n5. Çorbamız kaynadıktan sonra bütün durumdaki sarımsakları çorbadan alıyoruz. Tuzunu atıyoruz. Dilerseniz çorba bu aşamada tamamlanabilir, baharatları direkt atabilirsiniz."
                                                              "\n6. Arzuya göre sos tavasında tereyağını 1 yemek kaşığı sıvı yağ ekleyerek eritiyoruz ve pul biberle naneyi biraz çeviriyoruz. Çorbamıza bu yağı ekleyip, 5 dakika kısık ateşte kaynattıktan sonra kapatıyoruz. Afiyet olsun."),
                                                        ),
                                                      ],
                                                    ),
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
              ),*///KULAK
            ],
          );
        },
      ),
    );
  }
}