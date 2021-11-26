import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../screens/sizeconfig.dart';

class GuideScreen extends StatelessWidget {
  const GuideScreen({Key key}) : super(key: key);

  Card buildCard({IconData icon, Color color, String title, String subtitle}) {
    return Card(
      elevation: 5,
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        onTap: () =>
            launch('https://www.cdc.gov/coronavirus/2019-nCoV/index.html'),
        contentPadding: EdgeInsets.fromLTRB(
            SizeConfig.safeBlockHorizontal * 4,
            SizeConfig.safeBlockHorizontal * 4,
            SizeConfig.safeBlockHorizontal * 4,
            SizeConfig.safeBlockHorizontal * 7),
        leading: Icon(
          icon,
          color: color,
          size: SizeConfig.safeBlockHorizontal * 12,
        ),
        title: Text(title,
            style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
                    fontSize: SizeConfig.safeBlockHorizontal * 5,
                    fontWeight: FontWeight.w700,
                    height: 2.0))),
        subtitle: Text(subtitle,
            style: GoogleFonts.nunitoSans(
                textStyle: TextStyle(
                    fontSize: SizeConfig.safeBlockHorizontal * 4,
                    height: 1.5))),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SingleChildScrollView(
      child: Padding(
        padding:  EdgeInsets.fromLTRB( SizeConfig.safeBlockHorizontal * 4,
            SizeConfig.safeBlockHorizontal * 8,
            SizeConfig.safeBlockHorizontal * 4,
            SizeConfig.safeBlockHorizontal * 4),
        child: Column(children: <Widget>[
          buildCard(
              icon: LineIcons.share_alt_square,
              color: Color(0xFFFFB259),
              title: 'How it Spreads',
              subtitle: 'Learn how Covid-19 spreads'),
          SizedBox(height: SizeConfig.safeBlockVertical * 2),
          buildCard(
              icon: LineIcons.warning,
              color: Color(0xFFFF5959),
              title: 'Symptoms',
              subtitle: 'Learn symptoms about Covid-19'),
          SizedBox(height: SizeConfig.safeBlockVertical * 2),
          buildCard(
              icon: LineIcons.hospital_o,
              color: Color(0xFF4DB5FF),
              title: 'Prevention & Treatment',
              subtitle: 'Learn about Covid-19 Preventions'),
          SizedBox(height: SizeConfig.safeBlockVertical * 2),
          buildCard(
              icon: LineIcons.question_circle,
              color: Color(0xFF0AB242),
              title: 'What to do?',
              subtitle: 'What to do when you contact the virus'),
        ]),
      ),
    );
  }
}
