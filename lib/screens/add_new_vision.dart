import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:multi_dropdown/multiselect_dropdown.dart';
import 'package:takamul_test/core/app_colors.dart';

class AddNewVision extends StatefulWidget {
  const AddNewVision({Key? key}) : super(key: key);

  @override
  State<AddNewVision> createState() => _AddNewVisionState();
}

class _AddNewVisionState extends State<AddNewVision> {
  AppColor Color =AppColor();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'عزيزنا المستخدم. بامكانك اضافة ونشر تحليلاتك خلال ',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Text(
                    ' فترة اغلاق السوق السعودى لكنها ستكون خاصة بك ',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  MultiSelectDropDown(
                    borderColor: Colors.white,
                    backgroundColor: Colors.grey.shade200,
                    hint: '*اسم الشركة',
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,                    ),
                    onOptionSelected: (List<ValueItem> selectedOptions) {},
                    options: const <ValueItem>[
                      ValueItem(label: 'Option 1', value: '1'),
                      ValueItem(label: 'Option 2', value: '2'),
                      ValueItem(label: 'Option 3', value: '3'),
                    ],
                    selectionType: SelectionType.single,
                    chipConfig: const ChipConfig(wrapType: WrapType.wrap),
                    dropdownHeight: 300,
                    optionTextStyle: const TextStyle(fontSize: 16),
                    selectedOptionIcon: const Icon(Icons.check_circle),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Container(
                        width: 150,
                        height: 55,
                        child: MultiSelectDropDown(
                          borderColor: Colors.white,
                          backgroundColor: Colors.grey.shade200,
                          hint: 'العملية',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,                          ),
                          onOptionSelected:
                              (List<ValueItem> selectedOptions) {},
                          options: const <ValueItem>[
                            ValueItem(label: 'Option 1', value: '1'),
                            ValueItem(label: 'Option 2', value: '2'),
                            ValueItem(label: 'Option 3', value: '3'),
                            ValueItem(label: 'Option 4', value: '4'),
                            ValueItem(label: 'Option 5', value: '5'),
                            ValueItem(label: 'Option 6', value: '6'),
                          ],
                          selectionType: SelectionType.single,
                          chipConfig: const ChipConfig(wrapType: WrapType.wrap),
                          dropdownHeight: 300,
                          optionTextStyle: const TextStyle(fontSize: 16),
                          selectedOptionIcon: const Icon(Icons.check_circle),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 6.0,
                          right: 6,
                        ),
                        child: Container(
                          height: 53,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              hintText: ' السعر الحالى',
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 0.0, right: 12, top: 16),
                        child: Container(
                          height: 55,
                          width: 150,
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
                              hintText: ' وقف الخسارة',
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.0, top: 16),
                        child: Container(
                          height: 55,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              hintText: '      السعر المستهدف',
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 16, top: 16),
                        child: Container(
                          height: 55,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              hintText: ' % التغير للخسارة',
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6.0, right: 6, top: 16),
                        child: Container(
                          height: 55,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              hintText: ' % التغير فى السعر',
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 150,
                        height: 55,
                        child: MultiSelectDropDown(
                          borderColor: Colors.white,
                          backgroundColor: Colors.grey.shade200,
                          hint: 'نوع التحليل',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                          ),
                          onOptionSelected:
                              (List<ValueItem> selectedOptions) {},
                          options: const <ValueItem>[
                            ValueItem(label: 'Option 1', value: '1'),
                            ValueItem(label: 'Option 2', value: '2'),
                            ValueItem(label: 'Option 3', value: '3'),
                          ],
                          selectionType: SelectionType.single,
                          chipConfig: const ChipConfig(wrapType: WrapType.wrap),
                          dropdownHeight: 300,
                          optionTextStyle: const TextStyle(fontSize: 16),
                          selectedOptionIcon: const Icon(Icons.check_circle),
                        ),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Container(
                        width: 150,
                        height: 55,
                        child: MultiSelectDropDown(
                          borderColor: Colors.white,
                          backgroundColor: Colors.grey.shade200,
                          hint: 'المدة',
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey,
                          ),
                          onOptionSelected:
                              (List<ValueItem> selectedOptions) {},
                          options: const <ValueItem>[
                            ValueItem(label: 'Option 1', value: '1'),
                            ValueItem(label: 'Option 2', value: '2'),
                            ValueItem(label: 'Option 3', value: '3'),
                          ],
                          selectionType: SelectionType.single,
                          chipConfig: const ChipConfig(wrapType: WrapType.wrap),
                          dropdownHeight: 300,
                          optionTextStyle: const TextStyle(fontSize: 16),
                          selectedOptionIcon: const Icon(Icons.check_circle),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 6.0),
              child: Container(
                height: 100,
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    hintText: ' ماتحليلك؟',
                    hintStyle:
                    TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0, top: 16),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.90,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: MaterialButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(Icons.attach_file),
                      Spacer(),
                      Text(
                        'ارفق صورة',
                        style: TextStyle(
                            color: Colors.grey,
                           ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0, top: 16),
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

          ],
        ),
      ),
    );
  }
}
