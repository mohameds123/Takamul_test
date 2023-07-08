import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../core/app_colors.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  AppColor Color =AppColor();
  bool arabValue = false;
  bool englishValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 150.0),
              child: Text(
                'اختر لغة التطبيق',
                style: TextStyle(
                  fontSize: 26,
                  color: Color.appColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Text(
              'يمكنك تغيرها لاحقا من اعدادات التطبيق',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('العربية',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.appColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Checkbox(
                  activeColor: Color.appColor,
                  shape: CircleBorder(),
                  value: this.arabValue,
                  onChanged: (value) {
                    setState(() {
                      this.arabValue = value!;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('English',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.appColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Checkbox(
                  activeColor: Color.appColor,
                  shape: CircleBorder(),
                  value: this.englishValue,
                  onChanged: (value) {
                    setState(() {
                      this.englishValue = value!;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Container(
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

          ],
        ),
      ),
    );
  }
}
