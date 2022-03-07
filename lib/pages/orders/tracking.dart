import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Tracking extends StatefulWidget {
  const Tracking({Key? key}) : super(key: key);

  @override
  State<Tracking> createState() => _TrackingState();
}

class _TrackingState extends State<Tracking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          'تتبع الطلب',
          style: TextStyle(color: AppColors.blackColor),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.blackColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          GestureDetector(
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.chat,
                    color: AppColors.mainColor,
                    size: 17,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Text(
                    'محادثة',
                    style: TextStyle(
                      color: AppColors.mainColor,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            onTap: () {},
          ),
        ],
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          child: ListView(
            children: [
              const Padding(padding: EdgeInsets.only(top: 10)),
              const Text(
                'الوقت المقدر لاستلام الطلب',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                '05:30:00',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: AppColors.mainColor,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              getDeliveryInfo(),
              getTimeLine(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 10),
        decoration: BoxDecoration(
            color: AppColors.mainColor,
            borderRadius: BorderRadius.circular(10)),
        child: MaterialButton(
          child: const Text(
            'الغاء الطلب',
            style:  TextStyle(
              fontSize: 18,
              color: AppColors.whiteColor,
            ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}

Widget getDeliveryInfo() {
  return Container(
    child: ListTile(
      title: const Text(
        'الاسم',
        style: TextStyle(color: AppColors.greyColor),
      ),
      subtitle: const Text(
        'خالد وليد',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: AppColors.blackColor,
        ),
      ),
      leading: Container(
        width: 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: const DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://i.pinimg.com/236x/fc/82/9c/fc829c64be9be6e7abc51d60a70c09c0.jpg'),
          ),
        ),
      ),
      trailing: Container(
        width: 50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Text(
                  '4.9',
                  style: TextStyle(color: AppColors.mainColor),
                ),
                Icon(
                  Icons.star_border,
                  color: AppColors.mainColor,
                ),
              ],
            ),
            const Text(
              '199',
              style: TextStyle(color: AppColors.greyColor),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget getTimeLine() {
  double height = 70;
  return Container(
    color: AppColors.greyColor,
    margin: const EdgeInsets.only(top: 10, bottom: 80),
    child: Column(
      children: [
        Container(
          height: height,
          color: AppColors.whiteColor,
          child: TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.13,
            afterLineStyle: const LineStyle(thickness: 3),
            beforeLineStyle: const LineStyle(thickness: 3),
            indicatorStyle: const IndicatorStyle(
              height: 1,
              padding: EdgeInsets.all(2),
            ),
            endChild: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Text(
                      'تأكيد الطلب',
                      style: TextStyle(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          height: height,
          color: AppColors.whiteColor,
          child: TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.13,
            afterLineStyle: const LineStyle(thickness: 3),
            beforeLineStyle: const LineStyle(thickness: 3),
            indicatorStyle: const IndicatorStyle(
              height: 1,
              padding: EdgeInsets.all(2),
            ),
            endChild: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Text(
                      'تجهيز الطلب',
                      style: TextStyle(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          height: height,
          color: AppColors.whiteColor,
          child: TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.13,
            afterLineStyle: const LineStyle(thickness: 3),
            beforeLineStyle: const LineStyle(thickness: 3),
            indicatorStyle: const IndicatorStyle(
              height: 1,
              padding: EdgeInsets.all(2),
            ),
            endChild: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Text(
                      'تم تجهيز الطلب في المطعم',
                      style: TextStyle(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          height: height,
          color: AppColors.whiteColor,
          child: TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.13,
            afterLineStyle: const LineStyle(thickness: 3),
            beforeLineStyle: const LineStyle(thickness: 3),
            indicatorStyle: const IndicatorStyle(
              height: 1,
              padding: EdgeInsets.all(2),
            ),
            endChild: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Text(
                      'السائق استلم الطلب',
                      style: TextStyle(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          height: height,
          color: AppColors.whiteColor,
          child: TimelineTile(
            alignment: TimelineAlign.manual,
            lineXY: 0.13,
            afterLineStyle: const LineStyle(thickness: 3),
            beforeLineStyle: const LineStyle(thickness: 3),
            isLast: true,
            indicatorStyle: const IndicatorStyle(
              height: 1,
              padding: EdgeInsets.all(2),
            ),
            endChild: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Text(
                      'الطلب في الطريق أليك',
                      style: TextStyle(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
