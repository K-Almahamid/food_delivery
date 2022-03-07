import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery/pages/account/login.dart';
import 'package:food_delivery/pages/account/register.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/constants.dart';
import 'package:page_indicator/page_indicator.dart';

class Tips extends StatefulWidget {
  const Tips({Key? key}) : super(key: key);

  @override
  _TipsState createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  var array = [
    {
      'title': 'ابحث عن مؤكلات المفضلة لديك',
      'info': 'أفضل الاطعمة تجدها في التطبيق ',
      'image': 'assets/images/tip1.png',
    },
    {
      'title': 'ابحث عن مؤكلات المفضلة لديك',
      'info': 'أفضل الاطعمة تجدها في التطبيق ',
      'image': 'assets/images/tip2.png',
    },
    {
      'title': 'ابحث عن مؤكلات المفضلة لديك',
      'info': 'أفضل الاطعمة تجدها في التطبيق ',
      'image': 'assets/images/tip3.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    double height = (MediaQuery.of(context).size.height / 7);
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 40, right: 30),
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                child: const Text(
                  'تسجيل الدخول',
                  style: TextStyle(
                    color: AppColors.mainColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: (){
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Login(),),);
                },
              ),
            ),
            Container(
              height: height * 4,
              child: PageIndicatorContainer(
                length: array.length,
                shape: IndicatorShape.circle(),
                align: IndicatorAlign.bottom,
                indicatorColor: AppColors.whiteColor,
                indicatorSelectorColor: AppColors.mainColor,
                child: PageView.builder(
                  physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: array.length,
                  itemBuilder: (BuildContext context, index) {
                    return SingleTips(
                      title: array[index]['title']!,
                      info: array[index]['info']!,
                      image: array[index]['image']!,
                    );
                  },
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: ListView(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      textDirection: TextDirection.rtl,
                      children: [
                        MaterialButton(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: AppColors.mainColor,
                                borderRadius: BorderRadius.circular(15)),
                            child: const  Text(
                              'انشاء حساب',
                              style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register(),),);
                          },
                        ),
                        const SizedBox(height: 15),
                        MaterialButton(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: AppColors.greyColor.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                FaIcon(
                                  FontAwesomeIcons.facebook,
                                  size: 16.0,
                                  color: AppColors.blueColor,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'متابعة بأستخدام الفيس بوك',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SingleTips extends StatelessWidget {
  final String title;
  final String info;
  final String image;

  const SingleTips({
    Key? key,
    required this.title,
    required this.info,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            child: Image.asset(image, fit: BoxFit.cover),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            title,
            style: const TextStyle(
              color: AppColors.mainColor,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: Text(
            info,
            style: const TextStyle(
              color: AppColors.greyColor,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
