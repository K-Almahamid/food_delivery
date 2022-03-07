import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_delivery/utils/colors.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  var products = [
    {
      'pro_id': '1',
      'pro_name': 'سمك',
      'pro_image': 'assets/images/product/pro1.jpg',
      'pro_qty': '20',
      'pro_price': '10',
    },
    {
      'pro_id': '2',
      'pro_name': 'مشاوي',
      'pro_image': 'assets/images/product/pro2.jpg',
      'pro_qty': '20',
      'pro_price': '10',
    },
    {
      'pro_id': '3',
      'pro_name': 'كبة',
      'pro_image': 'assets/images/product/pro3.jpg',
      'pro_qty': '20',
      'pro_price': '10',
    },
    {
      'pro_id': '3',
      'pro_name': 'كبة',
      'pro_image': 'assets/images/product/pro3.jpg',
      'pro_qty': '20',
      'pro_price': '10',
    },
    {
      'pro_id': '3',
      'pro_name': 'كبة',
      'pro_image': 'assets/images/product/pro3.jpg',
      'pro_qty': '20',
      'pro_price': '10',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 70),
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (BuildContext context, index) {
                  return SingleProduct(
                    pro_id: products[index]['pro_id']!,
                    pro_name: products[index]['pro_name']!,
                    pro_price: products[index]['pro_price']!,
                    pro_qty: products[index]['pro_qty']!,
                    pro_image: products[index]['pro_image']!,
                  );
                },
              ),
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Positioned(
                top: 0.0,
                left: 0.0,
                right: 0.0,
                height: 120,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.greyColor.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: AppColors.mainColor,
                            size: 25,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          height: 280,
          child: Column(
            children: [
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'ملخص الدفع',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: Row(
                        children: const [
                          Text('المجموع'),
                          Expanded(child: Text('')),
                          Text('100'),
                        ],
                      ),
                    ),
                    const Divider(color: AppColors.greyColor),
                    Container(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: Row(
                        children: const [
                          Text('رسوم التوصيل'),
                          Expanded(child: Text('')),
                          Text('100'),
                        ],
                      ),
                    ),
                    const Divider(color: AppColors.greyColor),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: const [
                          Text(
                            'قيمة الطلب',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Expanded(child: Text('')),
                          Text('100'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                child: Container(
                  height: 70,
                  child: Column(
                    children: [
                      Container(
                        height: 50.0,
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                          color: AppColors.mainColor,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.greyColor.withOpacity(0.3),
                              spreadRadius: 7,
                              blurRadius: 4,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Row(
                          children: const [
                            Text(
                              'تنفيذ الطلب',
                              style: TextStyle(
                                  color: AppColors.whiteColor, fontSize: 20),
                            ),
                            Expanded(child: Text('')),
                            Text(
                              '1000',
                              style: TextStyle(color: AppColors.whiteColor),
                            ),
                            SizedBox(width: 5),
                            Text(
                              'المجموع',
                              style: TextStyle(color: AppColors.whiteColor),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  showCheckMessage(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

showCheckMessage(BuildContext context) {
  showModalBottomSheet(
    shape:const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      )
    ),
    context: context,
    builder: (BuildContext context) {
      return Container(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: const Icon(
                    Icons.task_alt,
                    color: AppColors.mainColor,
                    size: 150,
                  ),
                ),
                const Text(
                  'شكرا لطلبك',
                  style: TextStyle(color: AppColors.mainColor, fontSize: 20),
                ),
                const Text(
                  'يمكنك تتبع طلبك من خلال الضغط على الزر في الأسفل',
                  style: TextStyle(color: AppColors.greyColor, fontSize: 16),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: MaterialButton(
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child:   const Text(
                        'تتبع الطلب',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: AppColors.whiteColor, fontSize: 20),
                      ),
                    ),
                    onPressed: (){
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: OutlinedButton(
                    child: const Text("الانتقال الى المؤكولات", style: TextStyle(color: AppColors.blackColor, fontSize: 20)),
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: AppColors.mainColor, width: 2),
                      fixedSize: Size(MediaQuery.of(context).size.width,50),
                      backgroundColor: AppColors.whiteColor,
                      primary: AppColors.blackColor,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}

class SingleProduct extends StatelessWidget {
  final String pro_id;
  final String pro_name;
  final String pro_price;
  final String pro_qty;
  final String pro_image;

  const SingleProduct({
    Key? key,
    required this.pro_id,
    required this.pro_name,
    required this.pro_price,
    required this.pro_qty,
    required this.pro_image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            child: const Icon(Icons.cancel, color: Colors.red),
          ),
          Container(
            child: ListTile(
              title: Text(
                pro_name,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              subtitle: Text(
                pro_price,
                style: const TextStyle(color: AppColors.greyColor),
              ),
              leading: Container(
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(pro_image),
                  ),
                ),
              ),
              trailing: Container(
                width: 80,
                child: Row(
                  children: [
                    GestureDetector(
                      child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.mainColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Icon(Icons.add,
                              color: AppColors.whiteColor)),
                      onTap: () {},
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(pro_qty),
                    ),
                    GestureDetector(
                      child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.mainColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Icon(Icons.remove,
                              color: AppColors.whiteColor)),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
