import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;

    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;
    return Scaffold(
        appBar: AppBar(
          title: Text('ApSkil'),
          backgroundColor: Color.fromARGB(255, 62, 137, 99),
          elevation: 5,
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Get.back();
            },
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    color: Colors.white,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Cari Sesuatu',
                        // labelText: 'Cari Sesuatu',
                        labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'InterRegular'),
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                );
              },
              icon: SvgPicture.asset(
                'images/search.svg',
                color: Colors.white,
                alignment: Alignment.center,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'images/bell.svg',
                color: Colors.white,
                alignment: Alignment.center,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: bodyHeight * 1.30,
                          width: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/image3.png')),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)),
                          ),
                        ),
                        SizedBox(width: bodyHeight * 0.01),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: bodyHeight * 0.01,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: bodyHeight * 0.03,
                                width: 65,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6)),
                                    border: Border.all(
                                        color:
                                            Color.fromARGB(255, 62, 137, 99)),
                                    color: Color.fromARGB(41, 32, 235, 25)),
                                child: Text(
                                  'UI/UX',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 62, 137, 99)),
                                ),
                              ),
                              SizedBox(
                                height: bodyHeight * 0.01,
                              ),
                              Container(
                                width: 175,
                                child: Text(
                                  'Kelas UI/UX Designer : Level Beginner',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'InterSemiBold'),
                                ),
                              ),
                              SizedBox(
                                height: bodyHeight * 0.01,
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    child: Text(
                                      'Rp. 0',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.redAccent),
                                    ),
                                  ),
                                  SizedBox(
                                    width: bodyHeight * 0.01,
                                  ),
                                  Container(
                                    child: Text(
                                      'Rp. 599.000',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black54,
                                          decoration:
                                              TextDecoration.lineThrough),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: bodyHeight * 0.01,
                              ),
                              IntrinsicHeight(
                                child: Row(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          height: 10,
                                          width: 15,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'images/Pathstar.png')),
                                          ),
                                        ),
                                        SizedBox(
                                          width: bodyHeight * 0.005,
                                        ),
                                        Text(
                                          '4.5',
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ],
                                    ),
                                    VerticalDivider(
                                      color: Colors.black26,
                                      thickness: 1,
                                    ),
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            height: 10,
                                            width: 15,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'images/usersuser.png')),
                                            ),
                                          ),
                                          SizedBox(
                                            width: bodyHeight * 0.005,
                                          ),
                                          Text(
                                            '1,2k',
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    height: 130,
                    width: 350,
                    decoration: new BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(
                    height: bodyHeight * 0.024,
                  ),
                  Divider(height: 1, thickness: 1, color: Colors.grey),
                  SizedBox(
                    height: bodyHeight * 0.024,
                  ),
                  Text('Pilih metode pembayaran',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "InterSemiBold",
                      )),
                  SizedBox(
                    height: bodyHeight * 0.016,
                  ),
                  Container(
                    width: bodyHeight * 0.5,
                    height: bodyHeight * 0.056,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 224, 224, 224),
                      border: Border.all(
                          color: Color.fromARGB(255, 190, 190, 190), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text(
                            'Transfer bank',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'InterSemiBold',
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('images/chevron.png'),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: bodyHeight * 0.012,
                  ),
                  Container(
                    width: bodyHeight * 0.5,
                    height: bodyHeight * 0.056,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 224, 224, 224),
                      border: Border.all(
                          color: Color.fromARGB(255, 190, 190, 190), width: 1),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8)),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text(
                            'Virtual account',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'InterSemiBold',
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('images/chevronDown.png'),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromARGB(255, 190, 190, 190), width: 1),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.asset('images/Radio.png'),
                              SizedBox(
                                width: bodyHeight * 0.02,
                              ),
                              Image.asset('images/BCA.png'),
                              SizedBox(
                                width: bodyHeight * 0.02,
                              ),
                              Text(
                                'BCA virtual account',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'InterSemiBold',
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: bodyHeight * 0.016,
                          ),
                          Row(
                            children: [
                              Image.asset('images/ellipse.png'),
                              SizedBox(
                                width: bodyHeight * 0.023,
                              ),
                              Image.asset('images/BNI.png'),
                              SizedBox(
                                width: bodyHeight * 0.02,
                              ),
                              Text(
                                'BNI virtual account',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'InterSemiBold',
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: bodyHeight * 0.016,
                          ),
                          Row(
                            children: [
                              Image.asset('images/ellipse.png'),
                              SizedBox(
                                width: bodyHeight * 0.023,
                              ),
                              Image.asset('images/BRI.png'),
                              SizedBox(
                                width: bodyHeight * 0.02,
                              ),
                              Text(
                                'BRI virtual account',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'InterSemiBold',
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: bodyHeight * 0.012,
                  ),
                  Container(
                    width: bodyHeight * 0.5,
                    height: bodyHeight * 0.056,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 224, 224, 224),
                      border: Border.all(
                          color: Color.fromARGB(255, 190, 190, 190), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text(
                            'E-Wallet',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'InterSemiBold',
                            ),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('images/chevron.png'),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: bodyHeight * 0.024,
                  ),
                  Divider(height: 1, thickness: 1, color: Colors.grey),
                  SizedBox(
                    height: bodyHeight * 0.024,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(80, 62, 137, 99),
                      border: Border.all(
                          color: Color.fromARGB(255, 62, 137, 99), width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('images/iconPromo.png'),
                        ),
                        SizedBox(
                          width: bodyHeight * 0.01,
                        ),
                        Text(
                          'Pakai promo biar makin hemat',
                          style: TextStyle(
                              color: Color.fromARGB(255, 62, 137, 99),
                              fontSize: 14,
                              fontFamily: 'InterSemibold'),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('images/chevronGreen.png'),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: bodyHeight * 0.07,
                  ),
                  Divider(height: 1, thickness: 1, color: Colors.grey),
                  SizedBox(
                    height: bodyHeight * 0.024,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                              fontFamily: 'InterSemibold', fontSize: 16),
                        ),
                        Spacer(),
                        Text(
                          'Rp.0',
                          style: TextStyle(
                              fontFamily: 'InterSemibold', fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: bodyHeight * 0.022),
                  GestureDetector(
                    onTap: (() {}),
                    child: Container(
                      alignment: Alignment.center,
                      height: bodyHeight * 0.06,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        color: Color(0xff3E8964),
                      ),
                      child: Text(
                        'Konfirmasi pembayaran',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'InterSemiBold',
                            fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
