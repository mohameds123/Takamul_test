import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:takamul_test/core/app_colors.dart';
import 'package:takamul_test/screens/languge_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool value = false;
  AppColor Color = AppColor();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 46.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 130.0),
                    child: Text('تسجيل الدخول'),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100.0, right: 16),
              child: Text(
                'رقم جوالك',
                style: TextStyle(
                  fontSize: 26,
                  color: Color.appColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Text(
                'ادخل رقم جوالك لنرسل لك كود التفعيل',
                style: TextStyle(
                  fontSize: 10,
                  color: Color.appColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: IntlPhoneField(
                decoration: InputDecoration(
                  labelText: 'رقم الجوال',
                  labelStyle: TextStyle(
                    color: Colors.deepOrange,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                initialCountryCode: 'SA',
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'فهم المخاطر',
                        style: TextStyle(
                            color: Colors.deepOrange,
                            decoration: TextDecoration.underline,
                            fontSize: 12),
                      )),
                  Text(
                    'و',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'الشروط والاحكام',
                        style: TextStyle(
                            color: Colors.deepOrange,
                            decoration: TextDecoration.underline,
                            fontSize: 12),
                      )),
                  Text(
                    'الموافقة على',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  Checkbox(
                    activeColor: Colors.deepOrange,
                    value: this.value,
                    onChanged: (value) {
                      setState(() {
                        this.value = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0, top: 40),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.90,
                height: 60,
                decoration: BoxDecoration(
                  color: Color.appColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LanguageScreen()));
                  },
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
          ],
        ),
      ),
    );
  }
}
