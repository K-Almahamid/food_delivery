import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios,
              color: AppColors.blackColor, size: 20),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Form(
                  child: ListView(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 35),
                        child: const Text(
                          'تغيير كلمة المرور',
                          style: TextStyle(
                              color: AppColors.mainColor, fontSize: 20.0),
                        ),
                      ),
                      //form
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                          child: TextFormField(
                            obscureText: true,
                            decoration: const InputDecoration(
                              hintText: 'كلمة المرور الحالية',
                              border: InputBorder.none,
                            ),
                            validator: (String? value) {
                              if (value!.isEmpty || value.length < 6) {
                                return 'الرجاء ادخال كلمة المرور';
                              }
                            },
                          ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: 'كلمة المرور الجديدة',
                            border: InputBorder.none,
                          ),
                          validator: (String? value) {
                            if (value!.isEmpty || value.length < 6) {
                              return 'الرجاء ادخال كلمة المرور';
                            }
                          },
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: 'تاكيد كلمة المرور',
                            border: InputBorder.none,
                          ),
                          validator: (String? value) {
                            if (value!.isEmpty || value.length < 6) {
                              return 'الرجاء ادخال كلمة المرور';
                            }
                          },
                        ),
                      ),
                      MaterialButton(
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.only(bottom: 10, top: 30),
                          padding: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: AppColors.mainColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Text(
                            'حفظ',
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        onPressed: () {
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
