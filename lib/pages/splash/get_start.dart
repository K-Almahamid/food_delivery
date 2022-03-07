import 'package:flutter/material.dart';
import 'package:food_delivery/pages/splash/tips.dart';
import 'package:food_delivery/utils/colors.dart';

class GetStart extends StatefulWidget {
  const GetStart({Key? key}) : super(key: key);

  @override
  _GetStartState createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
    double height = (MediaQuery
        .of(context)
        .size
        .height / 3);
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: height * 2,
              decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage('assets/images/tip0.png'),
                ),
              ),
            ),
            Container(
              height: height,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  )
                ],
              ),
              child: ListView(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    textDirection: TextDirection.rtl,
                    children: [
                      const Text(
                        'أشهى المؤكولات',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'أكتشف افضل الأمؤكلات في مكان واحد',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 16.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 35.0, right: 250),
                        child: GestureDetector(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 30),
                            decoration: BoxDecoration(
                                color: AppColors.whiteColor,
                                borderRadius: BorderRadius.circular(15)),
                            child: const Text(
                              'ابدا من هنا',
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Tips(),),);
                          },
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
