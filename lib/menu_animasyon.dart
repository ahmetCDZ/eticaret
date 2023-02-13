import 'package:flutter/material.dart';

class MenuAnimasyon extends StatefulWidget {
  const MenuAnimasyon({Key? key}) : super(key: key);

  @override
  State<MenuAnimasyon> createState() => _MenuAnimasyonState();
}

class _MenuAnimasyonState extends State<MenuAnimasyon> {
  late double ekranGenslik;
  bool menuAcikMi = false;
  @override
  Widget build(BuildContext context) {
    ekranGenslik = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [menuOlustur(context), dashBoardOlustur()],
      )),
    );
  }

  Widget menuOlustur(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 50),
      child: Align(
        alignment: Alignment.topLeft,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FlatButton.icon(
                onPressed: null,
                icon: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
                label: Text(
                  'Profilim',
                  style: TextStyle(fontSize: 18),
                )),
            FlatButton.icon(
                onPressed: null,
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                ),
                label: Text(
                  'Beğendiklerim',
                  style: TextStyle(fontSize: 18),
                )),
            FlatButton.icon(
                onPressed: null,
                icon: Icon(
                  Icons.shopping_basket_outlined,
                  color: Colors.red,
                ),
                label: Text(
                  'Siparişlerim',
                  style: TextStyle(fontSize: 18),
                )),
            FlatButton.icon(
                onPressed: null,
                icon: Icon(
                  Icons.call_end_outlined,
                  color: Colors.red,
                ),
                label: Text(
                  'Müşteri Hizmetleri',
                  style: TextStyle(fontSize: 18),
                )),
            FlatButton.icon(
                onPressed: null,
                icon: Icon(
                  Icons.settings,
                  color: Colors.red,
                ),
                label: Text(
                  'Ayarlar',
                  style: TextStyle(fontSize: 18),
                )),
            FlatButton.icon(
                onPressed: null,
                icon: Icon(
                  Icons.exit_to_app,
                  color: Colors.red,
                ),
                label: Text(
                  'Çıkış',
                  style: TextStyle(fontSize: 18),
                )),
          ],
        ),
      ),
    );
  }

  Widget dashBoardOlustur() {
    return AnimatedPositioned(
      child: Material(
        elevation: 8,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          menuAcikMi = !menuAcikMi;
                        });
                      },
                      child: Icon(
                        Icons.menu,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Uygualama Adı',
                      style: TextStyle(color: Colors.black54),
                    ),
                    Icon(
                      Icons.add_circle_outline,
                      color: Colors.black38,
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 200,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        color: Colors.amber,
                        width: 100,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                      ),
                      Container(
                        color: Colors.black,
                        width: 100,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                      ),
                      Container(
                        color: Colors.blue,
                        width: 100,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Ürün1'),
                Text('Ürün2'),
                Text('Ürün3'),
                Text('Ürün4')
              ],
            ),
          ),
        ),
      ),
      duration: Duration(milliseconds: 300),
      top: 0,
      bottom: 0,
      left: menuAcikMi ? 0.5 * ekranGenslik : 0,
      right: menuAcikMi ? -0.4 * ekranGenslik : 0,
    );
  }
}
