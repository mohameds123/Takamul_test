import 'package:flutter/material.dart';
import 'package:takamul_test/core/app_colors.dart';

class MaritalStatusScreen extends StatefulWidget {
  const MaritalStatusScreen({Key? key}) : super(key: key);

  @override
  State<MaritalStatusScreen> createState() => _MaritalStatusScreen();
}

class _MaritalStatusScreen extends State<MaritalStatusScreen> {
  AppColor Color =AppColor();
  bool singleValue = false;
  bool marriedValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: Text('MaritalStatus')),
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
                      child: Text('الحالة الاجتماعية',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16
                      ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0,right: 16,left: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Checkbox(
                            activeColor: Color.appColor,
                            shape: CircleBorder(),
                            value: this.singleValue,
                            onChanged: (value) {
                              setState(() {
                                this.singleValue = value!;
                              });
                            },
                          ),
                          Spacer(),
                          Text('اعزب',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.appColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0,left: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Checkbox(
                            activeColor: Color.appColor,
                            shape: CircleBorder(),
                            value: this.marriedValue,
                            onChanged: (value) {
                              setState(() {
                                this.marriedValue = value!;
                              });
                            },
                          ),
                          Spacer(),
                          Text('متزوج',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.appColor,
                              fontWeight: FontWeight.w600,
                            ),
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