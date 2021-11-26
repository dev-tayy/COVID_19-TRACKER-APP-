import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../screens/sizeconfig.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Nigeria',
            style: GoogleFonts.openSans(
                textStyle: TextStyle(
                    fontSize: SizeConfig.safeBlockHorizontal * 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ),
          SizedBox(
            height: SizeConfig.safeBlockVertical * 5,
          ),
          Text('Are you feeling sick?',
              style: GoogleFonts.nunito(
                  fontSize: SizeConfig.safeBlockHorizontal * 7,
                  fontWeight: FontWeight.normal,
                  color: Colors.white)),
          SizedBox(
            height: SizeConfig.safeBlockVertical * 1,
          ),
          Text(
              'If you feel sick with any of Covid-19 symptoms please call or e-Mail NCDC immediately for help.',
              style: GoogleFonts.nunito(
                  fontSize: SizeConfig.safeBlockHorizontal * 5,
                  fontWeight: FontWeight.w100,
                  color: Colors.white)),
          SizedBox(height: SizeConfig.safeBlockVertical * 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RaisedButton(
                  padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.safeBlockVertical * 2,
                      horizontal: SizeConfig.safeBlockHorizontal * 7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                      SizedBox(width: SizeConfig.safeBlockHorizontal * 3),
                      Text('Call Now',
                          style: GoogleFonts.openSans(
                              textStyle: TextStyle(
                                  fontSize: SizeConfig.safeBlockHorizontal * 5,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white)))
                    ],
                  ),
                  color: Color(0xFFFF4D58),
                  onPressed: () => launch("tel:/+23480097000010"),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RaisedButton(
                      padding: EdgeInsets.symmetric(
                          vertical: SizeConfig.safeBlockVertical * 2,
                          horizontal: SizeConfig.safeBlockHorizontal * 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(
                            Icons.mail,
                            color: Colors.white,
                          ),
                          SizedBox(width: SizeConfig.safeBlockHorizontal * 3),
                          Text('Send Mail',
                              style: GoogleFonts.openSans(
                                  textStyle: TextStyle(
                                      fontSize:
                                          SizeConfig.safeBlockHorizontal * 5,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white)))
                        ],
                      ),
                      color: Color(0xFF4D79FF),
                      onPressed: () => launch("mailto:info@ncdc.gov.ng"),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100))),
                ],
              )
            ],
          )
        ]);
  }
}
