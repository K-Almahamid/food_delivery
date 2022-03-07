import 'package:flutter/material.dart';
import 'package:food_delivery/pages/products/product_details.dart';
import 'package:food_delivery/utils/colors.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var products = [
    {
      'pro_id': '1',
      'pro_name': 'سمك',
      'pro_image': 'assets/images/product/pro1.jpg',
      'pro_desc':
          'بلطي جمبري سلطة محيطية رويال فلكي بلطي جمبري سلطة محيطية رويال فلكي رويال فلكي بلطي جمبري سلطة محيطية رويال فلكي رويال فلكي بلطي جمبري سلطة محيطية رويال فلكي',
      'pro_offer': '1',
    },
    {
      'pro_id': '1',
      'pro_name': 'مشاوي',
      'pro_image': 'assets/images/product/pro2.jpg',
      'pro_desc': 'هش ونش',
      'pro_offer': '1',
    },
    {
      'pro_id': '1',
      'pro_name': 'ستيككك',
      'pro_image': 'assets/images/product/pro3.jpg',
      'pro_desc': 'لحم بقري',
      'pro_offer': '0',
    },
    {
      'pro_id': '1',
      'pro_name': 'سمك',
      'pro_image': 'assets/images/product/pro1.jpg',
      'pro_desc':
          'بلطي جمبري سلطة محيطية رويال فلكي بلطي جمبري سلطة محيطية رويال فلكي رويال فلكي بلطي جمبري سلطة محيطية رويال فلكي رويال فلكي بلطي جمبري سلطة محيطية رويال فلكي',
      'pro_offer': '1',
    },
    {
      'pro_id': '1',
      'pro_name': 'مشاوي',
      'pro_image': 'assets/images/product/pro2.jpg',
      'pro_desc': 'هش ونش',
      'pro_offer': '1',
    },
    {
      'pro_id': '1',
      'pro_name': 'ستيككك',
      'pro_image': 'assets/images/product/pro3.jpg',
      'pro_desc': 'لحم بقري',
      'pro_offer': '0',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0.0,
        centerTitle: true,
        title: const Text(
          'سمك مشوي',
          style:  TextStyle(color: AppColors.blackColor),
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
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (BuildContext context, index) {
              return SingleProduct(
                pro_id: products[index]['pro_id']!,
                pro_name: products[index]['pro_name']!,
                pro_image: products[index]['pro_image']!,
                pro_desc: products[index]['pro_desc']!,
                pro_offer: products[index]['pro_offer']!,
              );
            },
          ),
        ),
      ),
    );
  }
}

class SingleProduct extends StatelessWidget {
  final String pro_id;
  final String pro_name;
  final String pro_desc;
  final String pro_image;
  final String pro_offer;

  const SingleProduct({
    Key? key,
    required this.pro_id,
    required this.pro_name,
    required this.pro_desc,
    required this.pro_image,
    required this.pro_offer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(pro_image),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 80,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          pro_name,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        RichText(
                          overflow: TextOverflow.ellipsis,
                          text: TextSpan(children: [
                            TextSpan(
                              text: pro_desc,
                              style: const TextStyle(
                                fontSize: 12,
                                color: AppColors.greyColor,
                              ),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  width: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.favorite_border,
                        color: AppColors.mainColor,
                      ),
                      checkOffer(pro_offer)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProductDetails(),
          ),
        );
      },
    );
  }
}

Widget checkOffer(String offer) {
  return offer == '1'
      ? Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.mainColor,
          ),
          child: const Text(
            'عرض',
            style: TextStyle(
              color: AppColors.whiteColor,
            ),
          ),
        )
      : const Text('');
}
