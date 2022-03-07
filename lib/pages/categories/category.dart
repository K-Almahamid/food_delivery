import 'package:flutter/material.dart';
import 'package:food_delivery/pages/categories/sub_category.dart';
import 'package:food_delivery/utils/colors.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  var categories = [
    {
      'cat_id': '1',
      'cat_name': 'المأكولات البحرية',
      'cat_image': 'assets/images/category/cat1.png',
    },
    {
      'cat_id': '2',
      'cat_name': 'المقبلات',
      'cat_image': 'assets/images/category/cat2.png',
    },
    {
      'cat_id': '3',
      'cat_name': 'مشاوي',
      'cat_image': 'assets/images/category/cat3.png',
    },
    {
      'cat_id': '4',
      'cat_name': 'هش ونش',
      'cat_image': 'assets/images/category/cat4.png',
    },
    {
      'cat_id': '5',
      'cat_name': 'cat5',
      'cat_image': 'assets/images/category/cat5.png',
    },
    {
      'cat_id': '6',
      'cat_name': 'cat6',
      'cat_image': 'assets/images/category/cat6.png',
    },
    {
      'cat_id': '7',
      'cat_name': 'cat7',
      'cat_image': 'assets/images/category/cat7.png',
    },
    {
      'cat_id': '1',
      'cat_name': 'cat1',
      'cat_image': 'assets/images/category/cat1.png',
    },
    {
      'cat_id': '2',
      'cat_name': 'cat2',
      'cat_image': 'assets/images/category/cat2.png',
    },
    {
      'cat_id': '3',
      'cat_name': 'cat3',
      'cat_image': 'assets/images/category/cat3.png',
    },
    {
      'cat_id': '4',
      'cat_name': 'cat4',
      'cat_image': 'assets/images/category/cat4.png',
    },
    {
      'cat_id': '5',
      'cat_name': 'cat5',
      'cat_image': 'assets/images/category/cat5.png',
    },
    {
      'cat_id': '6',
      'cat_name': 'cat6',
      'cat_image': 'assets/images/category/cat6.png',
    },
    {
      'cat_id': '7',
      'cat_name': 'cat7',
      'cat_image': 'assets/images/category/cat7.png',
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
          'قائمة المأكولات',
          style:  TextStyle(
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
              return SingleCategory(
                  cat_id: categories[index]['cat_id']!,
                  cat_name: categories[index]['cat_name']!,
                  cat_image: categories[index]['cat_image']!);
            },
          ),
        ),
      ),
    );
  }
}

class SingleCategory extends StatelessWidget {
  final String cat_id;
  final String cat_name;
  final String cat_image;

  const SingleCategory({
    Key? key,
    required this.cat_id,
    required this.cat_name,
    required this.cat_image,
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
              color: AppColors.mainColor,
            ),
            child: Image.asset(cat_image),
          ),
          title: Text(
            cat_name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>  SubCategory(cat_id:cat_id, cat_name:cat_name,),
            ),
          );
        },
      ),
    );
  }
}
