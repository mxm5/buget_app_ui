import 'package:flutter/material.dart';

class TheFontShowTester extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          color: Colors.white,
          child: Center(
            child: Column(
              children: <Widget>[
                Container(height: 90,color: Colors.limeAccent,child: Center(child: Text('تست کردن فونت',style: TextStyle(fontSize: 40, color: Colors.green[900],fontWeight: FontWeight.w900),),),),

                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'منم سلام دارم خدمتتون',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 29),
                        child: Text(
                          'عکس ها و فونت ها و مدل هاتون رو وارد کنید و یک چیز با حال درست کنید',
                          style: TextStyle(fontSize: 24),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Text(' سلام چطورید خوبید دیگه نه ؟',style: TextStyle(fontSize: 30,letterSpacing: 7,fontFamily: 'Adobe_arabic_shin'),textAlign: TextAlign.center,),
                      Text('1234567890  ۱۲۳۴۵۶۷۸۹۰',style: TextStyle(fontSize: 30,letterSpacing: 0,fontFamily: 'Adobe_arabic_shin'),textAlign: TextAlign.center,),
                      Text('Adobe_arabic_shin',style: TextStyle(fontSize: 30,letterSpacing: 0,fontFamily: 'Adobe_arabic_shin'),textAlign: TextAlign.center,),

                      Text(' سلام چطورید خوبید دیگه نه ؟',style: TextStyle(fontSize: 30,letterSpacing: 2,fontFamily: 'Aqlaam_Regular'),textAlign: TextAlign.center,),
                      Text('1234567890  ۱۲۳۴۵۶۷۸۹۰',style: TextStyle(fontSize: 30,letterSpacing: 2,fontFamily: 'Aqlaam_Regular'),textAlign: TextAlign.center,),
                      Text('Aqlaam_Regular',style: TextStyle(fontSize: 30,letterSpacing: 2,fontFamily: 'Aqlaam_Regular'),textAlign: TextAlign.center,),

                      Text(' سلام چطورید خوبید دیگه نه ؟',style: TextStyle(fontSize: 20,letterSpacing: 0,fontFamily: 'Bareeq_Regular'),textAlign: TextAlign.center,),
                      Text('1234567890  ۱۲۳۴۵۶۷۸۹۰',style: TextStyle(fontSize: 20,letterSpacing: 0,fontFamily: 'Bareeq_Regular'),textAlign: TextAlign.center,),
                      Text('Bareeq_Regular',style: TextStyle(fontSize: 20,letterSpacing: 0,fontFamily: 'Bareeq_Regular'),textAlign: TextAlign.center,),

                      Text(' سلام چطورید خوبید دیگه نه ؟',style: TextStyle(fontSize: 25,letterSpacing: 0,fontFamily: 'Bedayah_v.1.1'),textAlign: TextAlign.center,),
                      Text('1234567890  ۱۲۳۴۵۶۷۸۹۰',style: TextStyle(fontSize: 25,letterSpacing: 0,fontFamily: 'Bedayah_v.1.1'),textAlign: TextAlign.center,),
                      Text('Bedayah_v.1.1',style: TextStyle(fontSize: 25,letterSpacing: 0,fontFamily: 'Bedayah_v.1.1'),textAlign: TextAlign.center,),

                      Text(' سلام چطورید خوبید دیگه نه ؟',style: TextStyle(fontSize: 25,letterSpacing: 0,fontFamily: 'B-NAZANIN'),textAlign: TextAlign.center,),
                      Text('1234567890  ۱۲۳۴۵۶۷۸۹۰',style: TextStyle(fontSize: 25,letterSpacing: 0,fontFamily: 'B-NAZANIN'),textAlign: TextAlign.center,),
                      Text('B-NAZANIN',style: TextStyle(fontSize: 25,letterSpacing: 0,fontFamily: 'B-NAZANIN'),textAlign: TextAlign.center,),

                      Text(' سلام چطورید خوبید دیگه نه ؟',style: TextStyle(fontSize: 20,letterSpacing: 0,fontFamily: 'Decora'),textAlign: TextAlign.center,),
                      Text('1234567890  ۱۲۳۴۵۶۷۸۹۰',style: TextStyle(fontSize: 20,letterSpacing: 0,fontFamily: 'Decora'),textAlign: TextAlign.center,),
                      Text('Decora',style: TextStyle(fontSize: 20,letterSpacing: 0,fontFamily: 'Decora'),textAlign: TextAlign.center,),

                      Text(' سلام چطورید خوبید دیگه نه ؟',style: TextStyle(fontSize: 30,letterSpacing: 0,fontFamily: 'Dima-Fantasy'),textAlign: TextAlign.center,),
                      Text('1234567890  ۱۲۳۴۵۶۷۸۹۰',style: TextStyle(fontSize: 30,letterSpacing: 0,fontFamily: 'Dima-Fantasy'),textAlign: TextAlign.center,),
                      Text('Dima-Fantasy',style: TextStyle(fontSize: 30,letterSpacing: 0,fontFamily: 'Dima-Fantasy'),textAlign: TextAlign.center,),

                      Text(' سلام چطورید خوبید دیگه نه ؟',style: TextStyle(fontSize: 27,letterSpacing: 0,fontFamily: 'Far_DastNevis'),textAlign: TextAlign.center,),
                      Text('1234567890  ۱۲۳۴۵۶۷۸۹۰',style: TextStyle(fontSize: 27,letterSpacing: 0,fontFamily: 'Far_DastNevis'),textAlign: TextAlign.center,),
                      Text('Far_DastNevis',style: TextStyle(fontSize: 27,letterSpacing: 0,fontFamily: 'Far_DastNevis'),textAlign: TextAlign.center,),

                      Text(' سلام چطورید خوبید دیگه نه ؟',style: TextStyle(fontSize: 27,letterSpacing: 0,fontFamily: 'hekayat'),textAlign: TextAlign.center,),
                      Text('1234567890  ۱۲۳۴۵۶۷۸۹۰',style: TextStyle(fontSize: 27,letterSpacing: 0,fontFamily: 'hekayat'),textAlign: TextAlign.center,),
                      Text('hekayat',style: TextStyle(fontSize: 27,letterSpacing: 0,fontFamily: 'hekayat'),textAlign: TextAlign.center,),

                      Text(' سلام چطورید خوبید دیگه نه ؟',style: TextStyle(fontSize: 23,letterSpacing: 0,fontFamily: 'Nishan_Regular'),textAlign: TextAlign.center,),
                      Text('1234567890  ۱۲۳۴۵۶۷۸۹۰',style: TextStyle(fontSize: 23,letterSpacing: 0,fontFamily: 'Nishan_Regular'),textAlign: TextAlign.center,),
                      Text('Nishan_Regular',style: TextStyle(fontSize: 23,letterSpacing: 0,fontFamily: 'Nishan_Regular'),textAlign: TextAlign.center,),

                      Text(' سلام چطورید خوبید دیگه نه ؟',style: TextStyle(fontSize: 23,letterSpacing: 0,fontFamily: 'Rawafed.Zainab'),textAlign: TextAlign.center,),
                      Text('1234567890  ۱۲۳۴۵۶۷۸۹۰',style: TextStyle(fontSize: 23,letterSpacing: 0,fontFamily: 'Rawafed.Zainab'),textAlign: TextAlign.center,),
                      Text('Rawafed.Zainab',style: TextStyle(fontSize: 23,letterSpacing: 0,fontFamily: 'Rawafed.Zainab'),textAlign: TextAlign.center,),

                      Text(' سلام چطورید خوبید دیگه نه ؟',style: TextStyle(fontSize: 23,letterSpacing: 0,fontFamily: 'Sulimany_V2_Bold_Ornamented'),textAlign: TextAlign.center,),
                      Text('1234567890  ۱۲۳۴۵۶۷۸۹۰',style: TextStyle(fontSize: 23,letterSpacing: 0,fontFamily: 'Sulimany_V2_Bold_Ornamented'),textAlign: TextAlign.center,),
                      Text('Sulimany_V2_Bold_Ornamented',style: TextStyle(fontSize: 23,letterSpacing: 0,fontFamily: 'Sulimany_V2_Bold_Ornamented'),textAlign: TextAlign.center,),

                      Text(' سلام چطورید خوبید دیگه نه ؟',style: TextStyle(fontSize: 23,letterSpacing: 0,fontFamily: 'Vazir'),textAlign: TextAlign.center,),
                      Text('1234567890  ۱۲۳۴۵۶۷۸۹۰',style: TextStyle(fontSize: 23,letterSpacing: 0,fontFamily: 'Vazir'),textAlign: TextAlign.center,),
                      Text('Vazir',style: TextStyle(fontSize: 23,letterSpacing: 0,fontFamily: 'Vazir'),textAlign: TextAlign.center,),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
