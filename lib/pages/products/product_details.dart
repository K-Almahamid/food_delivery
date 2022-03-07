import 'package:flutter/material.dart';
import 'package:food_delivery/pages/cart/shopping_cart.dart';
import 'package:food_delivery/utils/colors.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(
          children: [
            ListView(
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.greyColor.withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 0,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset('assets/images/product/pro1.jpg'),
                      const Padding(padding: EdgeInsets.only(top: 30)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: AppColors.mainColor,
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
                              child: const Icon(
                                Icons.add,
                                color: AppColors.whiteColor,
                                size: 25,
                              ),
                            ),
                            onTap: () {},
                          ),
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              '1',
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          GestureDetector(
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: AppColors.mainColor,
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
                              child: const Icon(
                                Icons.remove,
                                color: AppColors.whiteColor,
                                size: 25,
                              ),
                            ),
                            onTap: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'سمك مشوي',
                        style: TextStyle(fontSize: 25.0),
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.favorite,
                            color: AppColors.mainColor,
                          ),
                          Text(
                            '5',
                            style: TextStyle(fontSize: 16),
                          ),
                          Expanded(child: Text('')),
                          Icon(
                            Icons.star,
                            color: AppColors.mainColor,
                          ),
                          Text(
                            '5 review',
                            style: TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        'سمك مشويسمك مشويسمك مشويسمك مشويسمك مشويسمك مشويسمك مشويسمك مشويسمك مشويسمك مشويسمك مشويسمك مشويسمك مشويسمك مشويسمك مسمك مشويسمك مشويسمك مشويسمك مشويسمك مشويسمك مشويسمك مشويسمك مشويسمك مشويسمك مشويسمك مشويسمك مشويسمك مشويسمك مشويسمك مسمك مشويسمك مشويسمك مشويسمك مشويسمك مشويسمك مشويسمك مشويسمك مشويسمك مشويسمك مشويسمك مشويسمك مشويسمك مشويسمك مشويسمك مشويسمكمشويسمك مشويسمك مشويسمك مشويسمك مشويسمكمشويسمك مشويسمك مشويسمك مشويسمك مشويسمكمشويسمك مشويسمك مشويسمك مشويسمك مشويسمكمشويسمك مشويسمك مشويسمك مشويسم مشويسمكمشويسمك مشويسمك مشويسمك مشويسم مشويسمكمشويسمك مشويسمك مشويسمك مشويسم مشويسمكمشويسمك مشويسمك مشويسمك مشويسم مشويسمكمشويسمك مشويسمك مشويسمك مشويسم مشويسمكمشويسمك مشويسمك مشويسمك مشويسم مشويسمكمشويسمك مشويسمك مشويسمك مشويسم مشويسمكمشويسمك مشويسمك مشويسمك مشويسمك مشويسمك مشوي',
                        style:
                            TextStyle(fontSize: 16.0, color: AppColors.greyColor),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: Positioned(
                top: 0.0,
                left: 0.0,
                right: 0.0,
                height: 120,
                child:Container(
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
                          Icons.shopping_bag,
                          color: AppColors.mainColor,
                          size: 25,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ShoppingCart(),),);
                        },
                      ),
                    ),
                  ],
                ),
              ),),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60.0,
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
          children: [
            const Text(
              '\$15',
              style: TextStyle(
                fontSize: 20.0,
                color: AppColors.whiteColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Expanded(child: Text('')),
            Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  color: AppColors.yellowColor,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.shopping_bag,
                      color: AppColors.whiteColor,
                    ),
                    SizedBox(width: 5.0),
                    Text(
                      'اضافة الى السلة',
                      style:
                          TextStyle(color: AppColors.whiteColor, fontSize: 20),
                    ),
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }
}
