import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_fastcall/models/foodlist.dart';
import 'package:flutter_app_fastcall/views/listfood_detail_ui.dart';

class ListfoodNewUI extends StatefulWidget {
  const ListfoodNewUI({Key? key}) : super(key: key);

  @override
  _ListfoodNewUIState createState() => _ListfoodNewUIState();
}

class _ListfoodNewUIState extends State<ListfoodNewUI> {
  List<FoodList> foodList = [
    FoodList(
      name: 'Chesters Grill',
      website: 'http://www.chesters.co.th',
      facebook: 'chesterthai',
      mobile: '1145',
      image: 'f1.jpg',
      pikat: 'https://www.google.com/maps/place/%E0%B9%80%E0%B8%8A%E0%B8%AA%E0%B9%80%E0%B8%95%E0%B8%AD%E0%B8%A3%E0%B9%8C/@13.7077031,100.3735309,17z',
    ),
    FoodList(
      name: 'Narai Pizzeria',
      website: 'http://www.naraipizzeria.com',
      facebook: 'naraipizzeria',
      mobile: '1744',
      image: 'f2.jpg',
      pikat: 'https://www.google.com/maps/place/Narai+Pizzeria/@13.714112,100.4054199,17z',
    ),
    FoodList(
      name: 'S&P',
      website: 'http://www.snpfood.com',
      facebook: 'snpfood',
      mobile: '1344',
      image: 'f3.jpg',
      pikat: 'https://www.google.com/maps/place/S%26P+%E0%B8%A7%E0%B8%B4%E0%B8%84%E0%B8%95%E0%B8%AD%E0%B9%80%E0%B8%A3%E0%B8%B5%E0%B8%A2+%E0%B8%81%E0%B8%B2%E0%B8%A3%E0%B9%8C%E0%B9%80%E0%B8%94%E0%B9%89%E0%B8%99%E0%B8%AA%E0%B9%8C/@13.7144972,100.4137172,17z',
    ),
    FoodList(
      name: 'Oishi',
      website: 'http://www.oishifood.com',
      facebook: 'oishifoodstation',
      mobile: '1773',
      image: 'f4.jpg',
      pikat: 'https://www.google.com/maps/place/%E0%B9%82%E0%B8%AD%E0%B8%AD%E0%B8%B4%E0%B8%8A%E0%B8%B4%E0%B8%9A%E0%B8%B8%E0%B8%9F%E0%B9%80%E0%B8%9F%E0%B8%95%E0%B9%8C/@13.711965,100.4308508,17z',
    ),
    FoodList(
      name: 'MK Restaurants',
      website: 'http://www.mkrestaurant.com',
      facebook: 'mkrestaurants',
      mobile: '02-248-5555',
      image: 'f5.jpg',
      pikat: 'https://www.google.com/maps/place/MK+Restaurants/@13.707563,100.3939343,15z',
    ),
    FoodList(
      name: 'The Pizza',
      website: 'http://www.1112.com',
      facebook: 'thepizzacompany',
      mobile: '1112',
      image: 'f6.jpg',
      pikat: 'https://www.google.com/maps/place/The+Pizza+Company/@13.707838,100.3789835,17z',
    ),
    FoodList(
      name: 'Mc Donals',
      website: 'http://www.mcdonalds.co.th',
      facebook: 'McThai',
      mobile: '1711',
      image: 'f7.jpg',
      pikat: 'https://www.google.com/maps/place/McDonalds/@13.7077152,100.3746064,17z',
    ),
    FoodList(
      name: 'Pizza Hut',
      website: 'http://www.pizzahut.co.th',
      facebook: 'pizzahutthailand',
      mobile: '1150',
      image: 'f8.jpg',
      pikat: 'https://www.google.com/maps/place/Pizza+Hut/@13.7062522,100.3545673,17z',
    ),
    FoodList(
      name: 'KFC',
      website: 'http://www.kfc.co.th',
      facebook: 'kfcth',
      mobile: '1150',
      image: 'f9.jpg',
      pikat: 'https://www.google.com/maps/place/KFC+Petchkasem+Power+Center+(DT)/@13.7074455,100.3733213,15z',
    ),
    FoodList(
      name: 'JJ Delivery',
      website: 'http://www.jjdelivery.com',
      facebook: 'jjdelivery',
      mobile: '02-712-3000',
      image: 'f10.jpg',
      pikat: 'https://www.google.com/maps/place/%E0%B9%80%E0%B8%88%E0%B9%80%E0%B8%88+%E0%B8%94%E0%B8%B4%E0%B8%A5%E0%B8%B4%E0%B9%80%E0%B8%A7%E0%B8%AD%E0%B8%A3%E0%B8%B5%E0%B9%88%E0%B9%80%E0%B8%8B%E0%B8%AD%E0%B8%A3%E0%B9%8C%E0%B8%A7%E0%B8%B4%E0%B8%AA/@13.7239724,100.5763232,17z',
    ),
    FoodList(
      name: 'Burger King',
      website: 'http://www.burgerking.co.th',
      facebook: 'burgerkingthailand',
      mobile: '1112',
      image: 'f11.jpg',
      pikat: 'https://www.google.com/maps/place/Burger+King+-+Esso+Bangkae/@13.7016965,100.3777494,14z',
    ),
    FoodList(
      name: 'See Fah',
      website: 'http://www.seefah.com',
      facebook: 'seefahfanpage',
      mobile: '02-800-8080',
      image: 'f12.jpg',
      pikat: 'https://www.google.com/maps/place/%E0%B8%AA%E0%B8%B5%E0%B8%9F%E0%B9%89%E0%B8%B2+Seefah+Restaurant+%E0%B8%AA%E0%B8%B2%E0%B8%82%E0%B8%B2%E0%B8%A3%E0%B8%B2%E0%B8%8A%E0%B8%9E%E0%B8%A4%E0%B8%81%E0%B8%A9%E0%B9%8C/@13.7018945,100.3252189,12z',
    ),
    FoodList(
      name: 'ฮองมิน',
      website: 'http://www.hongminrestaurant.net',
      facebook: 'hongminfanpage',
      mobile: '02-248-0123',
      image: 'f13.jpg',
      pikat: 'https://www.google.com/maps/place/HONGMIN+The+Paseo+Park+Kanchanapisek+%E9%A6%99%E5%91%B3/@13.7188565,100.3297077,12z',
    ),
    FoodList(
      name: 'Yoshinoya',
      website: 'http://www.yoshinoya.co.th',
      facebook: 'YoshinoyaThailand',
      mobile: '02-663-3888',
      image: 'f14.jpg',
      pikat: 'https://www.google.com/maps/place/Yoshinoya/@13.7191703,100.3297076,12z',
    ),
    FoodList(
      name: 'ฮั่วเซ่งฮง',
      website: 'http://www.huasenghong.co.th',
      facebook: 'huasenghong',
      mobile: '02-2480123',
      image: 'f15.jpg',
      pikat: 'https://www.google.com/maps/place/%E0%B8%AE%E0%B8%B1%E0%B9%88%E0%B8%A7%E0%B9%80%E0%B8%8B%E0%B9%88%E0%B8%87%E0%B8%AE%E0%B8%87+%E5%92%8C%E6%88%90%E8%B1%90+%E0%B9%80%E0%B8%94%E0%B8%AD%E0%B8%B0%E0%B8%A1%E0%B8%AD%E0%B8%A5%E0%B8%A5%E0%B9%8C%E0%B8%9A%E0%B8%B2%E0%B8%87%E0%B9%81%E0%B8%84/@13.7194841,100.3297075,12z',
    ),
    FoodList(
      name: 'Scoozi Pizza',
      website: 'http://www.scoozipizza.com',
      facebook: 'scoozipizzaclub',
      mobile: '02-715-8555',
      image: 'f16.jpg',
      pikat: 'https://www.google.com/maps/place/Scoozi+-+Sathorn+Soi+10/@13.7223148,100.5254731,17z',
    ),
    FoodList(
      name: 'โดมิโน่ พิซซ่า',
      website: 'http://www.dominospizza.co.th',
      facebook: 'DominosPizzaThailand',
      mobile: '1612',
      image: 'f17.jpg',
      pikat: 'https://www.google.com/maps/place/Domino\'s+Pizza+Victoria+Garden/@13.7106497,100.387679,14.5z',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        title: Text(
          'Food List ร้านยอดฮิต NEW!!',
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
            child: Image.asset(
              'assets/images/fastfood.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return Divider(
                  height: 10,
                  color: Colors.black,
                );
              },
              itemCount: foodList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    //เปิดไปหน้า ListfoodDetailUI
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          //ที่หน้า listfooddetailUI มีการสร้างตัวรับค่า จึงต้องส่งข้อมูลไปด้วย
                          return ListfoodDetailUI(
                            name: foodList[index].name,
                            website: foodList[index].website,
                            facebook: foodList[index].facebook,
                            mobile: foodList[index].mobile,
                            image: foodList[index].image,
                            pikat: foodList[index].pikat,
                          );
                        },
                      ),
                    );
                  },
                  title: Text(
                    foodList[index].name,
                  ),
                  subtitle: Text(
                    foodList[index].mobile,
                  ),
                  leading: ClipOval(
                    child: Image.asset(
                      'assets/images/' + foodList[index].image,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
