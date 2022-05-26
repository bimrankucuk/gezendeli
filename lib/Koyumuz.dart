import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Koyumuz extends StatefulWidget {
  const Koyumuz({Key? key}) : super(key: key);

  @override
  State<Koyumuz> createState() => _KoyumuzState();
}

class _KoyumuzState extends State<Koyumuz> {
  @override
  Widget build(BuildContext context) {
    var EkranBilgi=MediaQuery.of(context);
    final ekranYukseklik=EkranBilgi.size.height;
    final ekranGenislik=EkranBilgi.size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Text("KÖYÜMÜZ",style: TextStyle(color: Colors.black),),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (context ,index){
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25),
                child: Card(
                  child: Column(
                    children: [
                      Image.asset("resimler/karkoyfoto.jpg"),
                      ListTile(

                        title: Text("GEZENDE KÖYÜ:"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Text(" Gezende Mersin'in Gülnar ilçesine bağlı bir köydur."
                            "36°31′K 33°20′D koordinatlarındaki köy ilin sınır "
                            "köylerinden biridir. Göksu Irmağı ve bu ırmak uzerinde "
                            "kurulu Gezende Barajı ve Hidroelektrik Santrali baraj "
                            "gölünün kıyısındadır. Gülnar'a 45 ve Mersin'e 195 "
                            "kilometre uzakliktadir.Köyün 2019 yılı rakamlarıyla "
                            "nüfusu 361  olmakla birlikte geçmişte köyün önemli bir "
                            "yerleşim yeri oldugu anlaşılmaktadır."),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 40,),
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
                                                 padding: const EdgeInsets.all(20),
                                                 child: Column(
                                                   children: [
                                                     Image.asset("resimler/koyfoto.jpg"),
                                                     SizedBox(height: 10,),
                                                     Text("    Gülnar' a 45 km.dir.Alanboğaz beldesinden kuzeye dogru 12 km gidilerek"
                                                         " ulaşılır.Gök su nehrinin kıyısnda dır. Kendi adıyla anılan Gezende Barajı"
                                                         " bulunmaktadır. Köyün kesin olarak ne zaman kurulduğu bilinmemektedir. adının "
                                                         "nereden geldiğine gelince birçok söylenti bulunmaktadır. Köyün sınırları içinde"
                                                         " Hamam medrese ve çok sayıda tarihi kalıntılardan anlaşıldığına göre Anadolu selçuklular"
                                                         " zamanında kurulduğu varsayımları içindedir.Köy eski bir eğitim merkeziimiş her taraftan"
                                                         " buradaki medreseye okumak için gelirlermiş.Köyde Şıh Ali Ağalar odası,İbrahim ağalar "
                                                         "dası,Deli Hüseyinler odası veAk ağalar odası olmak üzere dört adet misafirhane ninde "
                                                         "olması köyün çok kalabalık bir insan topluluğu tarafından ziyaret edildiğini göstermekted"
                                                         "ir.Daha önceki yerleşim bölgesinde meydana gelen toprak kayması yüzünden köyün yeri şimd"
                                                         "iki yere taşınmıştır.Köyün geçimi tarım ve hayvancılıktır.Suyu bol olduğundan her türlü "
                                                         "meyve ve zebze yetişmektedir.Alanboğaz ve Bardat ın tüm sebze ve meyve ihtiyaçlarını "
                                                         "Gezende köyü karşılar.Çok nefis Kekik balı bulunur.. Köye okul 1946 yılında yapılmış."
                                                         "Gezende Barajı 1992 yılnda faaliyete geçmiştir.2000 yılı sayımına göre nüfusu 559 kişi "
                                                         "iken ,Türkiye İstatistik Kurumu 2007 Yılı Adrese Dayalı Nüfus kayıt Sitemine Göre "
                                                         "Köyümüzde 228 erkek -290 bayan olmak üzere toplam 518 kişi yaşadığı belirlenmiştir."),
                                                     SizedBox(height: 10,),
                                                     Text("    Köyümüzde baraj yapıldıktan sonra iklimin daha ılıman olması neticesinde can"
                                                         " eriği erken olmaya başlamış ve buda köyümüzün eriğinin değerli olmasını sağlamıştır. "
                                                         "Son yıllarda köyde erik fidanı ekimine ağırlık verildiğinden erik üretiminde büyüme s"
                                                         "ağlanmış ve buda köylülerimizin ekonomik açıdan biraz olsun rahatlamalarını  sağlamıştı"
                                                         "r.Köyümüzde erik toplama işi her yıl mayıs ayının ilk haftasında başlar, Ilısı köyünde"
                                                         "n gelecek olan suyun verilmeye başlanması ile sulak olmayan arazilerede erik ekimi yapı"
                                                         "labilecek ve köyümüz ekonomisi daha da büyüyecek ve  ismini daha iyi duyurabilecektir. A"
                                                         "yrıca köyümüz barajı ve manzarası , Büyükpınar , İlipınar ,bahçe arasındaki eski hamam ,"
                                                         "köyümüz camisindeki  günümüze kadar  kalabilen eski tarihi değerde yapılar ve mezarları,"
                                                         " Sivrikale, Kayalık, Hacettepesi, Deliktaş, Kaleardı, Bardat Yaylası ve Pazarı ,yaylamız"
                                                         "daki sayısız Ermeniler zamanından kalma inleri,Bayamkurağındaki Sayharmanı, eski Örenkuyu"
                                                         " , Sülüklü , Kargakuyusu , Musasuyu çeşmeleri ve eşsiz Yayla havası "
                                                         "ile Gülnarın en güzel köyü ve yaylası diyebiliriz."),                                            ],
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
                             SizedBox(width: 40,),
                             Icon(FontAwesomeIcons.streetView),
                              SizedBox(width: 40,),
                             Icon(FontAwesomeIcons.camera),
                              SizedBox(width: 40,),
                              Icon(FontAwesomeIcons.heart),
                              SizedBox(width: 40,),
                             Icon(FontAwesomeIcons.comment),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Card(
                  child: Column(
                    children: [
                      Image.asset("resimler/tarihfoto.jpg"),
                      ListTile(
                        title: Text("TARİHÇE"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text("Köyümüzün ismi; Osmanlı Arşiv Belgelerinde Gezende ya da Kezende Karyesi olarak geçmektedir."),
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [

                              SizedBox(width: 75,),
                              GestureDetector(
                                  onTap: (){
                                    showModalBottomSheet(context: context, builder: (BuildContext)
                                    {
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
                                                        Image.asset("resimler/karkoyfoto.jpg"),
                                                        SizedBox(height: 10,),
                                                        Text("      Köyümüzün ismi; Osmanlı Arşiv Belgelerinde Gezende ya da Kezende Karyesi "
                                                            "olarak geçmektedir. Osmanlı Devleti zamanında önemli bir merkez olan Gezende ‘"
                                                            "de halk geçimini tarım, hayvancılık ve ticaretle sağlamaktadır. Ama bölgenin sapa olma"
                                                            "sı üretilen ürünlerin ticari anlamda değer kazanmasını bir hayli zorlaştırmıştır. Tarihç"
                                                            "i Suraiya Faroqhi “Osmanlı’da Kentler ve Kentliler” adlı eserinde Dokumacılık anlamında G"
                                                            "ülnar ve çevresini önemli bir merkez olduğunu belirtir. Bununla birlikte, Çulfalık ve Ista"
                                                            "r adı verilen dokuma tezgahlarında dokunan battaniye, çuval, kilim ve yollukların"
                                                            " Pazar bulunmadığından satılamamakta olduğunu yazar."),
                                                        SizedBox(height: 10,),
                                                        Text("      Köyümüzün ismi; Osmanlı Arşiv Belgelerinde Gezende ya da Kezende Kary"
                                                            "esi olarak geçmektedir. Osmanlı Devleti zamanında önemli bir merkez olan Gezend"
                                                            "e ‘de halk geçimini tarım, hayvancılık ve ticaretle sağlamaktadır. Ama bölgenin sapa"
                                                            " olması üretilen ürünlerin ticari anlamda değer kazanmasını bir hayli zorlaştırmıştır. "
                                                            "Tarihçi Suraiya Faroqhi “Osmanlı’da Kentler ve Kentliler” adlı eserinde Dokumacılık anlam"
                                                            "ında Gülnar ve çevresini önemli bir merkez olduğunu belirtir. Bununla birlikte, Çulfalık ve "
                                                            "Istar adı verilen dokuma tezgahlarında dokunan battaniye, çuval, kilim ve yoll"
                                                            "ukların Pazar bulunmadığından satılamamakta olduğunu yazar."),
                                                        SizedBox(height: 10,),
                                                        Text("      1872 tarihli İçel Sancağına ait ilk salnameye göre Silifke sancak merkezi, Anamur,"
                                                            " Ermenek, Gülnar ve Mut kazalarından oluşmaktadır. Gülnar’ın Köyleri (nahiyeleri) ise "
                                                            "Bozağaç, Gezende, Yörükan ve Zeyne nahiyeleridir. Gezende köyünde Osmanlı Devleti zamanın"
                                                            "da Medrese tahsili de yapılmakta olup Gülnar bölgesinin önemli merkezlerinden biridir. Zat"
                                                            "en 1903 Maarif Salnamesi ’ne bakıldığı zaman Gülnar ‘da Gezende ‘de dahil olmak üzere 10 Med"
                                                            "resenin bulunduğugörülür."),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        ) ,
                                      );
                                    }
                                    );
                                  },
                                  child: Icon(FontAwesomeIcons.circleArrowUp)),
                              SizedBox(width: 75,),
                              Icon(FontAwesomeIcons.heart),
                              SizedBox(width: 75,),
                              Icon(FontAwesomeIcons.comment),
                            ],
                          ),
                        ],
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
}