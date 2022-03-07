import 'package:flutter/material.dart';
import 'package:food_delivery/pages/products/product.dart';
import 'package:food_delivery/utils/colors.dart';

class SubCategory extends StatefulWidget {
  final String cat_id;
  final String cat_name;

  SubCategory({Key? key, required this.cat_id, required this.cat_name})
      : super(key: key);

  @override
  State<SubCategory> createState() => _SubCategoryState();
}

class _SubCategoryState extends State<SubCategory> {
  var categories = [
    {
      'sub_id': '1',
      'sub_name': 'بلطي',
      'sub_image': 'assets/images/category/cat1.png',
      'sub_count': '11',
    },
    {
      'sub_id': '2',
      'sub_name': 'جمبري',
      'sub_image': 'assets/images/category/cat2.png',
      'sub_count': '11',
    },
    {
      'sub_id': '3',
      'sub_name': 'اخطبوط',
      'sub_image': 'assets/images/category/cat3.png',
      'sub_count': '11',
    },
    {
      'sub_id': '4',
      'sub_name': 'سلطة بحرية ',
      'sub_image': 'assets/images/category/cat4.png',
      'sub_count': '11',
    },
    {
      'sub_id': '5',
      'sub_name': 'cat5',
      'sub_image': 'assets/images/category/cat5.png',
      'sub_count': '11',
    },
    {
      'sub_id': '6',
      'sub_name': 'cat6',
      'sub_image': 'assets/images/category/cat6.png',
      'sub_count': '11',
    },
    {
      'sub_id': '7',
      'sub_name': 'cat7',
      'sub_image': 'assets/images/category/cat7.png',
      'sub_count': '11',
    },
    {
      'sub_id': '1',
      'sub_name': 'cat1',
      'sub_image': 'assets/images/category/cat1.png',
      'sub_count': '11',
    },
    {
      'sub_id': '2',
      'sub_name': 'cat2',
      'sub_image': 'assets/images/category/cat2.png',
      'sub_count': '11',
    },
    {
      'sub_id': '3',
      'sub_name': 'cat3',
      'sub_image': 'assets/images/category/cat3.png',
      'sub_count': '11',
    },
    {
      'sub_id': '4',
      'sub_name': 'cat4',
      'sub_image': 'assets/images/category/cat4.png',
      'sub_count': '11',
    },
    {
      'sub_id': '5',
      'sub_name': 'cat5',
      'sub_image': 'assets/images/category/cat5.png',
      'sub_count': '11',
    },
    {
      'sub_id': '6',
      'sub_name': 'cat6',
      'sub_image': 'assets/images/category/cat6.png',
      'sub_count': '11',
    },
    {
      'sub_id': '7',
      'sub_name': 'cat7',
      'sub_image': 'assets/images/category/cat7.png',
      'sub_count': '11',
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
        title: Text(
          widget.cat_name,
          style: const TextStyle(
            color: AppColors.blackColor,
          ),
        ),
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.blackColor,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(top: 5),
          child: ListView.builder(
            itemCount: categories.length,
            itemBuilder: (BuildContext context, index) {
              return SingleSubCategory(
                sub_id: categories[index]['sub_id']!,
                sub_name: categories[index]['sub_name']!,
                sub_image: categories[index]['sub_image']!,
                sub_count: categories[index]['sub_count']!,
              );
            },
          ),
        ),
      ),
    );
  }
}

class SingleSubCategory extends StatelessWidget {
  final String sub_id;
  final String sub_name;
  final String sub_image;
  final String sub_count;

  const SingleSubCategory({
    Key? key,
    required this.sub_id,
    required this.sub_name,
    required this.sub_image,
    required this.sub_count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        child: ListTile(
          leading: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
              color: AppColors.greyColor,
            ),
            child: Image.asset(sub_image),
          ),
          title: Text(
            sub_name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(sub_count),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Product(),
            ),
          );
        },
      ),
    );
  }
}
