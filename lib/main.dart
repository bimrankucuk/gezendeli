import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Anasayfa.dart';
import 'Auth.dart';
import 'Kaydol.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _emailController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();
  AuthServices _authServices=AuthServices();
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final ekranYukseklik=ekranBilgisi.size.height;
    final ekranGenislik=ekranBilgisi.size.width;
    return Scaffold(
      body:SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(top: ekranGenislik/3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:EdgeInsets.only(top: ekranYukseklik/20),
                child: SizedBox(
                    width: ekranGenislik/4,
                    child: Image.asset("resimler/ev.png")),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.all(ekranGenislik/30),
                      child: SizedBox(
                        width: ekranGenislik/1.2,
                        child: TextField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            prefixIcon:Icon(
                              FontAwesomeIcons.at,color: Colors.black,
                            ),
                            hintText: "E-mail",hintStyle: (TextStyle(color: Colors.black)),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20),),
                            ),

                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(ekranGenislik/30),
                      child: SizedBox(
                        width: ekranGenislik/1.2,
                        child: TextField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              FontAwesomeIcons.unlockKeyhole,
                              color: Colors.black,
                            ),
                            hintText: "Şifre",hintStyle: TextStyle(color: Colors.black),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20),),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: ekranGenislik/3,
                    child: RaisedButton(
                      color: Colors.black,
                      textColor: Colors.white,
                      child: Text("GİRİŞ YAP"),
                      onPressed: (){
                        //_authServices.singIn(_emailController.text, _passwordController.text).then((value){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Anasayfa()));});
                        _authServices.singIn(_emailController.text, _passwordController.text).then((value){Navigator.push(context, MaterialPageRoute(builder: (context)=>Anasayfa()));});
                      },
                    ),
                  ),
                  SizedBox(width: 25,),
                  SizedBox(
                    width: ekranGenislik/3,
                    child: RaisedButton(
                        color: Colors.black,
                        textColor: Colors.white,
                        child: Text("Kaydol"),
                        onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Kaydol()));
                        }
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
