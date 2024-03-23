import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20.0),
            Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                //color: Colors.blue,
                image: DecorationImage(
                    image: AssetImage('assets/images/profile.png')),
              ),
              //margin: const EdgeInsets.all(5.0),
              //padding: const EdgeInsets.all(1.0),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text('Jorshua Estrada',
                style: TextStyle(
                  fontFamily: 'Oooh_Baby',
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                )),
            /*const Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Text('FLUTTER DEVELOPER',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                  )),
            ),*/
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(
                    top: 16.0,
                    bottom: 16.0,
                  ),
                  child: Text(
                    'FLUTTER DEVELOPER',
                    //textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 2.75,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Container(
                    height: 2.0,
                    width: double.infinity,
                    color: Colors.black,
                    margin: const EdgeInsets.only(
                      left: 100.0,
                      right: 100.0,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 50.0,
              width: double.infinity,
              margin: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                top: 50.0,
              ),
              decoration: const BoxDecoration(
                color: Colors.lightBlue,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(5, 10),
                    blurRadius: 30,
                  )
                ],
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(left: 15, right: 15),
                    child: const Icon(Icons.phone, color: Colors.white),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      '+502 1234-5678',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50.0,
              width: double.infinity,
              margin: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                top: 20.0,
              ),
              decoration: const BoxDecoration(
                color: Colors.lightBlue,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(5, 10),
                    blurRadius: 30,
                  )
                ],
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(left: 15, right: 15),
                    child: const Icon(Icons.email, color: Colors.white),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      'myemail123@gmail.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
