import 'package:flutter/material.dart';
import 'package:takamul_test/core/app_colors.dart';

class FilteringOptionsScreen extends StatefulWidget {
  const FilteringOptionsScreen({Key? key}) : super(key: key);

  @override
  State<FilteringOptionsScreen> createState() => _FilteringOptionsScreen();
}

class _FilteringOptionsScreen extends State<FilteringOptionsScreen> {
  AppColor Color =AppColor();
  bool? all1;
  bool? all2;
  bool? all3;
  bool? mosaraa;
  bool? buy ;
  bool? favourit ;
  bool? estesmar ;
  bool? sell;
  bool? arany;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: Text('')),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              context: context,
              builder:(context)=>Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:16.0),
                      child: Text('تصفية',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 240.0),
                      child: Text('اراء المجلس',),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 16,top: 6),
                      child: Row(
                        children: [
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color.appColor,
                              border: Border.all(width: 2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: Text('استثمار',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            )),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(width: 2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: Text('مصارعة')),
                          ),
                          SizedBox(width: 10,),

                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(width: 2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: Text('الكل')),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 240.0,top: 16),
                      child: Text('نوع التحليل',),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 16,top: 6),
                      child: Row(
                        children: [
                           Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color.appColor,
                              border: Border.all(width: 2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: Text('بيع',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(width: 2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: Text('شراء')),
                          ),
                          SizedBox(width: 10,),

                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(width: 2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: Text('الكل')),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 250.0,top: 16),
                      child: Text('المحللين',),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 16,top: 6),
                      child: Row(
                        children: [
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color.appColor,
                              border: Border.all(width: 2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: Text('ارانى',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(width: 2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: Text('المفضلة')),
                          ),
                          SizedBox(width: 10,),

                          Container(
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(width: 2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: Text('الكل')),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only( top: 40),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.90,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color.appColor,
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text(
                            'تطبيق',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
          );
        },
        child: Icon(Icons.open_in_new),
      ),
    );
  }
}
