import 'package:flutter/material.dart';
import '../widgets/homeWidget.dart';
import 'package:google_fonts/google_fonts.dart';
import '../screens/sizeconfig.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
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
              padding: EdgeInsets.fromLTRB(
                  SizeConfig.safeBlockHorizontal * 4,
                  SizeConfig.safeBlockHorizontal * 4,
                  SizeConfig.safeBlockHorizontal * 4,
                  SizeConfig.safeBlockHorizontal * 7),
              child: HomeWidget(),
            ),
            Padding(
              padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal*4),
              child: Column(children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      'Prevention',
                      style: GoogleFonts.nunito(
                          textStyle: TextStyle(
                        fontSize: SizeConfig.safeBlockHorizontal * 7,
                        color: Color(0xFF0D1333),
                        fontWeight: FontWeight.normal,
                      )),
                    ),
                  ],
                ),
                SizedBox(height: SizeConfig.blockSizeVertical*1.5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          width: SizeConfig.safeBlockHorizontal * 25,
                          height: SizeConfig.safeBlockHorizontal * 25,
                          child: Image.asset('assets/closecontact.png'),
                        ),
                        SizedBox(height: SizeConfig.safeBlockVertical*1),
                        Text(
                          'Avoid close\ncontact',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width: SizeConfig.safeBlockHorizontal * 25,
                          height: SizeConfig.safeBlockHorizontal * 25,
                          child: Image.asset('assets/washhands.png'),
                        ),
                        SizedBox(height: SizeConfig.safeBlockVertical*1),
                        Text(
                          'Wash your\nhands often',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width: SizeConfig.safeBlockHorizontal * 25,
                          height: SizeConfig.safeBlockHorizontal * 25,
                          child: Image.asset('assets/facemask.png'),
                        ),
                        SizedBox(height: SizeConfig.safeBlockVertical*1),
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
