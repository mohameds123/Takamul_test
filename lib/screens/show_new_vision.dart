import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:takamul_test/core/app_colors.dart';

class ShowNewVision extends StatefulWidget {
  const ShowNewVision({Key? key}) : super(key: key);

  @override
  State<ShowNewVision> createState() => _ShowNewVisionState();
}

class _ShowNewVisionState extends State<ShowNewVision> {
  AppColor Color = AppColor();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 46.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 130.0),
                  child: Text(
                    'اضافة رأى جديد',
                    style:
                    TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            width: 300,
            height: 350,
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
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 6.0, top: 150),
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
                  'التالى',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 6.0, top: 16),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.90,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  'الغاء',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}
