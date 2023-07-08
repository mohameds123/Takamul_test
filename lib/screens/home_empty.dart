import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:takamul_test/core/app_colors.dart';

class HomeScreenEmpty extends StatefulWidget {
  const HomeScreenEmpty({Key? key}) : super(key: key);

  @override
  State<HomeScreenEmpty> createState() => _HomeScreenEmpty();
}

class _HomeScreenEmpty extends State<HomeScreenEmpty> {
  AppColor appColor = AppColor();
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
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: _buildTitle(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 46.0, left: 16),
            child: Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: appColor.appColor,
                    ),
                    child: Icon(
                      Icons.notifications_none,
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
                    child: Icon(
                      Icons.question_mark,
                      color: Colors.white,
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 100.0),
                  child: Text(
                    'الرئيسية',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0, left: 16, top: 16),
            child: Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border:
                            Border.all(width: 2.5, color: appColor.appColor)),
                    child: Icon(
                      Icons.filter_alt_outlined,
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
                        )),
                    child: Icon(
                      Icons.sort,
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
            height: 120,
          ),
          Image.network(
            'https://cdn-icons-png.flaticon.com/512/103/103830.png?w=740&t=st=1688777002~exp=1688777602~hmac=960071dd1c9102b326f57cf401f29141943c428eed23ac2eb515a836178ed376',
            width: 150,
            height: 150,
          ),
          SizedBox(
            height: 26,
          ),
          Text('صفحتك الرئيسة فارغة',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w700
          ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'اذهب لقائمة المحللين',
                style: TextStyle(
                    fontWeight: FontWeight.w600,

                    color: appColor.appColor,
                    decoration: TextDecoration.underline,
                    fontSize: 10),
              ),
              Text('لمتابعة المحللين',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
