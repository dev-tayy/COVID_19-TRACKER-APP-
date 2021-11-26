import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../repositories/data_repositories.dart';
import '../models/countrydata.dart';
import '../models/globaldata.dart';
import '../screens/sizeconfig.dart';

class StatisticsScreen extends StatefulWidget {
  StatisticsScreen({Key key}) : super(key: key);

  @override
  _StatisticsScreenState createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  Future<CountryData> futureCountryData;
  Future<GlobalData> futureGlobalData;

  @override
  void initState() {
    super.initState();
    futureCountryData = fetchData();
    //futureGlobalData = fetchGlobalData();
  }

  Container buildContainer1(
      {Color color, String cases, String numbers, double fontsize}) {
    return Container(
        width: SizeConfig.safeBlockHorizontal * 44,
        height: SizeConfig.safeBlockVertical * 15,
        padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 3),
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(cases,
                  style: GoogleFonts.nunito(
                      color: Colors.white,
                      fontSize: SizeConfig.safeBlockHorizontal * 5,
                      fontWeight: FontWeight.bold)),
              Text(numbers,
                  style: GoogleFonts.nunito(
                    color: Colors.white,
                    fontSize: fontsize,
                  )),
            ]));
  }

  Container buildContainer2({Color color, String cases, String numbers}) {
    return Container(
        width: SizeConfig.safeBlockHorizontal * 30,
        height: SizeConfig.safeBlockVertical * 14,
        padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 3),
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(cases,
                  style: GoogleFonts.nunito(
                      color: Colors.white,
                      fontSize: SizeConfig.safeBlockHorizontal * 4,
                      fontWeight: FontWeight.bold)),
              Text(numbers,
                  style: GoogleFonts.nunito(
                    color: Colors.white,
                    fontSize: SizeConfig.safeBlockHorizontal * 7,
                  )),
            ]));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Center(
      child: SingleChildScrollView(
        child: FutureBuilder<CountryData>(
            future: futureCountryData,
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return Container(
                  color: Color(0xFF473F97),
                  padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Nigeria Statistics',
                        style: GoogleFonts.nunito(
                            textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: SizeConfig.safeBlockHorizontal * 7,
                        )),
                      ),
                      Text(
                        'Live Update',
                        style: GoogleFonts.nunito(
                            textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: SizeConfig.safeBlockHorizontal * 5,
                        )),
                      ),
                      SizedBox(height: SizeConfig.safeBlockVertical * 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          buildContainer1(
                              color: Color(0xFFFFB259),
                              fontsize: SizeConfig.safeBlockHorizontal * 9,
                              cases: 'Samples Tested',
                              numbers: snapshot.data.data.totalSamplesTested
                                  .replaceAllMapped(
                                      new RegExp(
                                          r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                                      (Match m) => '${m[1]},')),
                          buildContainer1(
                              color: Color(0xFF9059FF),
                              fontsize: SizeConfig.safeBlockHorizontal * 9,
                              cases: 'Confirmed Cases',
                              numbers: snapshot.data.data.totalConfirmedCases
                                  .toString()
                                  .replaceAllMapped(
                                      new RegExp(
                                          r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                                      (Match m) => '${m[1]},')),
                        ],
                      ),
                      SizedBox(height: SizeConfig.safeBlockVertical * 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          buildContainer2(
                              color: Color(0xFF4DB5FF),
                              cases: 'Active',
                              numbers: snapshot.data.data.totalActiveCases
                                  .toString()
                                  .replaceAllMapped(
                                      new RegExp(
                                          r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                                      (Match m) => '${m[1]},')),
                          buildContainer2(
                              color: Color(0xFF4CD97B),
                              cases: 'Discharged',
                              numbers: snapshot.data.data.discharged
                                  .toString()
                                  .replaceAllMapped(
                                      new RegExp(
                                          r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                                      (Match m) => '${m[1]},')),
                          buildContainer2(
                              color: Color(0xFFFF5959),
                              cases: 'Deaths',
                              numbers: snapshot.data.data.death.toString()),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.safeBlockVertical * 5,
                        child: Divider(
                          color: Colors.white,
                          thickness: 1,
                        ),
                      ),
                      Text(
                        'Global Statistics',
                        style: GoogleFonts.nunito(
                            textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: SizeConfig.safeBlockHorizontal * 7,
                        )),
                      ),
                      Text(
                        'Live Update',
                        style: GoogleFonts.nunito(
                            textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: SizeConfig.safeBlockHorizontal * 5,
                        )),
                      ),
                      SizedBox(height: SizeConfig.safeBlockVertical * 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          buildContainer1(
                              color: Color(0xFFFFB259),
                              fontsize: SizeConfig.blockSizeHorizontal * 7.5,
                              cases: 'Total Confirmed Cases',
                              numbers: 900292298.toString().replaceAllMapped(
                                  new RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                                  (Match m) => '${m[1]},')),
                          buildContainer1(
                              color: Color(0xFF4CD97B),
                              fontsize: SizeConfig.blockSizeHorizontal * 7.5,
                              cases: 'Total Recovered Cases',
                              numbers: 12883382.toString().replaceAllMapped(
                                  new RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                                  (Match m) => '${m[1]},')),
                        ],
                      ),
                      SizedBox(height: SizeConfig.safeBlockVertical * 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          buildContainer1(
                              color: Color(0xFF4DB5FF),
                              fontsize: SizeConfig.blockSizeHorizontal * 7.5,
                              cases: 'Total Active Cases',
                              numbers: 1290129.toString().replaceAllMapped(
                                  new RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                                  (Match m) => '${m[1]},')),
                          buildContainer1(
                              color: Color(0xFFFF5959),
                              fontsize: SizeConfig.blockSizeHorizontal * 7.5,
                              cases: 'Total Deaths',
                              numbers: 2000000.toString().replaceAllMapped(
                                  new RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
                                  (Match m) => '${m[1]},')),
                        ],
                      )
                    ],
                  ),
                );
              } else if (snapshot.hasError) {
                print(snapshot.error);
              }
              print(snapshot);
              return Container(
                  padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal * 8),
                  child: CircularProgressIndicator());
            }),
      ),
    );
  }
}
