import 'package:flutter/material.dart';
import '../widgets/homeWidget.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF473F97),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
              ),
              padding: EdgeInsets.fromLTRB(16, 16, 16, 25),
              child: HomeWidget(),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      'Prevention',
                      style: GoogleFonts.nunito(
                          textStyle: TextStyle(
                        fontSize: 25,
                        color: Color(0xFF0D1333),
                        fontWeight: FontWeight.normal,
                      )),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          width: 90,
                          height: 90,
                          child: Image.asset('assets/closecontact.png'),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Avoid close\ncontact',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width: 90,
                          height: 90,
                          child: Image.asset('assets/washhands.png'),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Wash your\nhands often',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width: 90,
                          height: 90,
                          child: Image.asset('assets/facemask.png'),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Wear a\nfacemask',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )
                  ],
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
