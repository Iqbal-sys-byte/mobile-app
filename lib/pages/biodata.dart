import 'package:flutter/material.dart';
import 'package:flutter_app3/widgets/footer_back_button.dart';

class Biodata extends StatelessWidget {
  const Biodata({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Mobile App Class",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 247, 137, 3),
          shadowColor: Colors.black,
          elevation: 10,
          automaticallyImplyLeading: false,
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 30,
                      //   child: Image.asset("assets/images/logo.png")
                    ),
                    Image.asset('images/logo.png'),
                    const Text("Biodata",
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: " Serif",
                            height: 1.5,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,

                      children: [
                        Container(
                          width: 80,
                          height: 100,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black26,

                                style: BorderStyle.solid,
                                width: 1,
                                //shadowColor: Colors.black,
                              ),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10),
                              )),

                          // Image.asset('images/logo.png'),
                          // child: Center(images: new Image.asset('images/logo.png')),

                          child: Center(child: Image.asset("images/guru_1.png", fit: BoxFit.cover)),
                          // child: Center(child: Text('Foto 2')),
                        ),
                        Container(
                          width: 80,
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(66, 42, 36, 36),
                              style: BorderStyle.solid,
                              width: 1,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Center(child: Image.asset("images/guru_2.png", fit: BoxFit.contain)),
                        ),

                        // Gambar ke
                        Container(
                          width: 80,
                          height: 100,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black26,
                                style: BorderStyle.solid,
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.all(Radius.circular(10))),
                          child: Center(child: Image.asset("images/guru_3.png", fit: BoxFit.contain)),

                          // child: Center(child: Text('Foto 3')),
                        ),
                        Container(
                          width: 80,
                          height: 100,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black26,
                                style: BorderStyle.solid,
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.all(Radius.circular(10))),
                          child: Center(child: Image.asset("images/guru_4.png", fit: BoxFit.contain)),
                          // child: Center(child: Text('Foto 4')),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      // crossAxisAlignment: CrossAxisAlignment.stretch,

                      children: [
                        Container(
                          width: 80,
                          height: 100,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black26,
                                style: BorderStyle.solid,
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.all(Radius.circular(10))),
                          child: Center(child: Image.asset("images/guru_5.png", fit: BoxFit.contain)),
                        ),
                        Container(
                          width: 80,
                          height: 100,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black26,
                                style: BorderStyle.solid,
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.all(Radius.circular(10))),
                          child: Center(child: Image.asset("images/guru_6.png", fit: BoxFit.contain)),
                        ),
                        Container(
                          width: 80,
                          height: 100,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black26,
                                style: BorderStyle.solid,
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.all(Radius.circular(10))),
                          child: Center(child: Image.asset("images/guru_7.png", fit: BoxFit.contain)),
                        ),
                        Container(
                          width: 80,
                          height: 100,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black26,
                                style: BorderStyle.solid,
                                width: 1,
                              ),
                              borderRadius: const BorderRadius.all(Radius.circular(10))),
                          child: Center(child: Image.asset("images/guru_8.png", fit: BoxFit.contain)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const FooterBackButton(parentRoute: "/"),
          ],
        ));
  }
}