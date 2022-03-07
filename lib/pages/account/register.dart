import 'package:flutter/material.dart';
import 'package:food_delivery/pages/account/login.dart';
import 'package:food_delivery/utils/colors.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                        child: const Text(
                          'إنشاء حساب ',
                          style: TextStyle(
                              color: AppColors.mainColor, fontSize: 20.0),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: const Text(
                          'جديد',
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
                          keyboardType: TextInputType.name,
                          decoration: const InputDecoration(
                            hintText: 'الاسم الكامل',
                            border: InputBorder.none,
                          ),
                          validator: (String? value) {
                            if (value!.isEmpty || value.length < 5) {
                              return 'الرجاء ادخال الاسم الكامل';
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
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            hintText: 'البريد الألكتروني',
                            border: InputBorder.none,
                          ),
                          validator: (String? value) {
                            if (value!.isEmpty ||
                                value.indexOf('.') == -1 ||
                                !value.contains('@')) {
                              return 'الرجاء ادخال البريد الألكتروني';
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
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                            hintText: 'رقم الهاتف',
                            border: InputBorder.none,
                          ),
                          validator: (String? value) {
                            if (value!.isEmpty || value.length < 5) {
                              return 'الرجاء ادخال رقم الهاتف';
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
                            hintText: 'كلمة المرور',
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
                            'تسجيل الدخول',
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        onPressed: () {},
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          ' عند الضغظ على الشروط والأحكام انت توافق على قوانين التطبيق ',
                          style: TextStyle(
                            color: AppColors.blackColor,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'هل لديك حساب؟',
                      style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(width: 5),
                    GestureDetector(
                      child:const Text(
                        'سجل الدخول',
                        style: TextStyle(
                          color: AppColors.mainColor,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),),);
                        },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
