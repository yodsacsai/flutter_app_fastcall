import 'package:flutter/material.dart';
import 'package:flutter_app_fastcall/models/foodlist.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ListfoodDetailUI extends StatefulWidget {
  //ตัวแปรเพื่อเก็บค่าที่ส่งมาจากอีกหน้าหนึ่ง
  String name = '';
  String website = '';
  String facebook = '';
  String mobile = '';
  String image = '';
  String pikat = '';

  //คอนสตรักเตอร์ที่จะรับค่าที่ส่งมา
  ListfoodDetailUI({
    Key? key,
    required this.name,
    required this.website,
    required this.facebook,
    required this.mobile,
    required this.image,
    required this.pikat,
   }) : super(key: key);

  @override
  _ListfoodDetailUIState createState() => _ListfoodDetailUIState();
}

class _ListfoodDetailUIState extends State<ListfoodDetailUI> {

  //เมธอดเปิดเว็บ
  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  //เมธอดโทร
  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  //


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        title: Text(
          'Food Detial รายละเอียดร้าน',
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Image.asset(
                'assets/images/' + widget.image,
                width: 150,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 40,
                //height: 100,
                child: Card(
                  color: Colors.green[300],
                  elevation: 10,
                  shadowColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(
                          10.0,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.person,
                            ),
                            Text(
                              '   Name:  ' + widget.name,
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(
                          10.0,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.globeAmericas,
                            ),
                            Text(
                              '   Website:  ' + widget.website,
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  FontAwesomeIcons.desktop,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(
                          10.0,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.facebook,
                            ),
                            Text(
                              '   Facebook:  ' + widget.facebook,
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'Like',
                                  style: TextStyle(
                                    color: Colors.grey[300],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(
                          10.0,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.mobileAlt,
                            ),
                            Text(
                              '   Mobile:  ' + widget.mobile,
                            ),
                            
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton.icon(
                    onPressed: (){
                      //เปิดเว็บ
                      setState(() {
                        _launchInBrowser(widget.website);
                      });
                    } ,
                    icon: Icon(
                      FontAwesomeIcons.globeAmericas,
                    ),
                    label: Text(
                      'เปิดเว็บ',
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      fixedSize: Size(
                        120.0,
                        50,
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: (){
                      setState(() {
                        _makePhoneCall('tel:' + widget.mobile);
                      });
                    } ,
                    icon: Icon(
                      Icons.call,
                    ),
                    label: Text(
                      'โทรเลย',
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      fixedSize: Size(
                        120.0,
                        50,
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: (){
                      setState(() {
                        _launchInBrowser(
                          widget.pikat
                        );
                      });
                    } ,
                    icon: Icon(
                      FontAwesomeIcons.mapMarkedAlt,
                    ),
                    label: Text(
                      ' พิกัด',
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      fixedSize: Size(
                        130.0,
                        50,
                      ),
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
