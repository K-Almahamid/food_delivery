import 'package:flutter/material.dart';
import 'package:food_delivery/pages/account/forget_password.dart';
import 'package:food_delivery/pages/account/register.dart';
import 'package:food_delivery/pages/home/home.dart';
import 'package:food_delivery/utils/colors.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                          'سجل الدخول الى حسابك ',
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
                        child: Row(
                          children: [
                            Expanded(
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
                            GestureDetector(
                              child: Text('هل نسيت ؟',style: TextStyle(color: AppColors.mainColor),),
                            onTap: (){
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ForgetPassword(),),);
                            },
                            )
                          ],
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
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home(),),);
                        },
                      ),
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
                      'ليس لديك حساب؟',
                      style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(width: 5),
                    GestureDetector(
                      child:const Text(
                        'انشاء حساب',
                        style: TextStyle(
                            color: AppColors.mainColor,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      onTap: (){
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Register(),),);
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
