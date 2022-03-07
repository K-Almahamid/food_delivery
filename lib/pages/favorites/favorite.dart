import 'package:flutter/material.dart';
import 'package:food_delivery/pages/products/product_details.dart';
import 'package:food_delivery/utils/colors.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
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
          'المفضلة',
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
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: GridView.builder(
            itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(

              crossAxisCount: 2,
            ),
            itemBuilder: (BuildContext context, index) {
              return SingleProduct(
                pro_id: products[index]['pro_id']!,
                pro_name: products[index]['pro_name']!,
                pro_image: products[index]['pro_image']!,
                pro_desc: products[index]['pro_desc']!,
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

  const SingleProduct({
    Key? key,
    required this.pro_id,
    required this.pro_name,
    required this.pro_desc,
    required this.pro_image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.width / 4.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(pro_image),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                      Text(
                        pro_name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),

                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Text(
                              '4.8',
                              style: TextStyle(color: AppColors.blackColor),
                            ),
                            Icon(
                              Icons.star_border,
                              color: AppColors.mainColor,
                              size: 15,
                            ),
                          ],
                        ),
                        const Text(
                          '\$20',
                          style: TextStyle(color: AppColors.mainColor),
                        ),
                        const Icon(
                          Icons.favorite_border,
                          color: AppColors.mainColor,
                          size: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
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
