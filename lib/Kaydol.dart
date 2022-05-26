import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Auth.dart';


class Kaydol extends StatefulWidget {
  const Kaydol({Key? key}) : super(key: key);

  @override
  State<Kaydol> createState() => _KaydolState();
}

class _KaydolState extends State<Kaydol> {
  final TextEditingController _nameController=TextEditingController();
  final TextEditingController _emailController=TextEditingController();
  final TextEditingController _passwordController=TextEditingController();
  final TextEditingController _passwordAgainController=TextEditingController();
  AuthServices _authServices=AuthServices();
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final ekranYukseklik=ekranBilgisi.size.height;
    final ekranGenislik=ekranBilgisi.size.width;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.blue,
        ),
        backgroundColor: Colors.white,
        title: Text("Kayıt ol",style: TextStyle(color: Colors.blue),),


      ),
      body:SingleChildScrollView(
        child: Center(
          child: Padding(
            padding:  EdgeInsets.only(top:ekranGenislik/5),
            child: Container(
              height: ekranGenislik,
              width: ekranGenislik/1.2,
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(.75),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: _nameController,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    cursorColor: Colors.white,
                    keyboardType:TextInputType.name,
                    decoration: InputDecoration(
                      prefixIcon: Icon(FontAwesomeIcons.person,color: Colors.white,),
                    hintText: "kullanıcı adı",
                      prefixText: " ",
                      hintStyle: TextStyle(color: Colors.white),
                      focusColor: Colors.white,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: _emailController,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    cursorColor: Colors.white,
                    keyboardType:TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(FontAwesomeIcons.envelopeCircleCheck,color: Colors.white,),
                      hintText: "E-mail",
                      prefixText: " ",
                      hintStyle: TextStyle(color: Colors.white),
                      focusColor: Colors.white,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: _passwordController,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    cursorColor: Colors.white,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(FontAwesomeIcons.key,color: Colors.white,),
                      hintText: "Parola",
                      prefixText: " ",
                      hintStyle: TextStyle(color: Colors.white),
                      focusColor: Colors.white,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: _passwordController,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    cursorColor: Colors.white,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(FontAwesomeIcons.key,color: Colors.white,),
                      hintText: "Parola Tekrar",
                      prefixText: " ",
                      hintStyle: TextStyle(color: Colors.white),
                      focusColor: Colors.white,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(width: 25,),
                        SizedBox(
                          width: ekranGenislik/3,
                          child: RaisedButton(
                              color: Colors.blue,
                              textColor: Colors.white,
                              child: Text("Kaydet"),
                              onPressed: (){

                              }
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
