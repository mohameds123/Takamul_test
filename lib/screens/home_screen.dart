import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:takamul_test/core/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  AppColor appColor =AppColor();
  int _currentIndex = 0;

  Widget _buildTitle() {
    return CustomNavigationBar(
      iconSize: 30.0,
      selectedColor: Color(0xff040307),
      strokeColor: Color(0x30040307),
      unSelectedColor: Color(0xffacacac),
      backgroundColor: Colors.white,
      items: [
        CustomNavigationBarItem(
          icon: Icon(Icons.lightbulb_outline),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.search),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.account_circle),
        ),
        CustomNavigationBarItem(
          icon: Icon(Icons.home),
        ),
      ],
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: _buildTitle(),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 46.0,left: 16),
            child: Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: appColor.appColor,

                    ),
                    child: Icon(Icons.notifications_none,
                    color: Colors.white,
                    )),
                SizedBox(
                  width: 4,
                ),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: appColor.appColor,

                    ),
                    child: Icon(Icons.question_mark,
                      color: Colors.white,
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 100.0),
                  child: Text(
                    'الرئيسية',
                    style:
                    TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0,left: 16,top: 16),
            child: Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            width: 2.5,
                            color: appColor.appColor
                        )
                    ),
                    child: Icon(Icons.filter_alt_outlined,
                      color: appColor.appColor,
                      size: 26,
                    )),
                SizedBox(
                  width: 4,
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            width: 2.5,
                            color: appColor.appColor,
                        )
                    ),
                    child: Icon(Icons.sort,
                      color: appColor.appColor,
                      size: 26,
                    )),
                SizedBox(
                  width: 4,
                ),
                Expanded(
                  child: Container(
                    height: 46,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                        hintText: 'بحث',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 16,
          ),
          Container(
            width: 300,
            height: 398,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(
                    width: 0.2,
                    color: Colors.grey
                )
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: HexColor('#c4e3d8'),
                        ),
                        child: MaterialButton(
                          onPressed: (){},
                          child: Text('شراء',
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 50,),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text('(2222)',
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 10
                              ),
                            ),
                            Text('اسم الشركة'),
                          ],
                        ),
                        Text('03:40:05pm - 27 oct 2022',
                          style: TextStyle(
                            fontSize: 6,
                            color: Colors.grey,
                            fontWeight: FontWeight.w700,
                          ),
                        ),

                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0,right: 16),
                      child: CircleAvatar(),
                    ),
                  ],

                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 16.0),
                  child: Text('(Lorem lpsum) وريم ايسوم  هو ببساطة نص شكلى (يهمنى ان الغاية هى الشكل وليس المحتوى)ويستةخدم فى صناعات المطابع ودور النشر كان لوريم وريم ايبسوم (Lorem ipsum)',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 10,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Column(
                      children: [
                        Text('السعراليوم',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 12
                          ),
                        ),
                        Text(' 473.474.32',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Column(
                      children: [
                        Text('السعر المستهدف',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 12
                          ),
                        ),
                        Text('1.043',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Column(
                      children: [
                        Text('السعر وقت التحليل',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 12
                          ),
                        ),
                        Text('12.33 ',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),

                  ],
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text('مدة التوصية',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                                fontSize: 12
                            ),
                          ),
                          Text('يوم 1',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 4.0),
                            child: Text('نسبة التغير فى السعر',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12
                              ),
                            ),
                          ),
                          Text('100%',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Column(
                        children: [
                          Text('نوع المضاربة',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                                fontSize: 12
                            ),
                          ),
                          Text('مضاربة',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 10,),

                Padding(
                  padding: const EdgeInsets.only(left: 96.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text('نسبة التغير للخسارة',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                                fontSize: 12
                            ),
                          ),
                          Text('100%',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Column(
                        children: [
                          Text('وقف الخسارة',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                                fontSize: 12
                            ),
                          ),
                          Text('12.8',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Text('قطاع الاعمال'),
                        Image.asset('assets/like.jpg',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(width: 6,),
                        Text('شركة ريت للابحاث'),
                        Image.asset('assets/like.jpg',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(width: 6,),
                        Text('ناجحة'),
                        Icon(Icons.check,
                          color: Colors.green,
                        )

                      ],

                    ),
                  ],
                ),
                SizedBox(height: 16,),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                  ),
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Row(
                      children: [
                        Container(child: Icon(Icons.ios_share_sharp)),
                        SizedBox(width: 100,),
                        Row(
                          children: [
                            Icon(Icons.recommend),
                            Text('20'),
                          ],
                        ),
                        SizedBox(width: 80,),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Icon(Icons.notifications_active_outlined),
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
          Text('باستمرار استخدامك للتطبيق فأنت توافق على سياسة اخلاء المسؤولية',
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.w600,
            fontSize: 10
          ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 230.0),
            child: Text(
              'اطلع عليها هنا',
              style: TextStyle(
                  fontWeight: FontWeight.w600,

                  color: Colors.red,
                  decoration: TextDecoration.underline,
                  fontSize: 10),
            ),
          ),
        ],
      ),

    );
  }
}
