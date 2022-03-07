import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:food_delivery/pages/products/product_details.dart';
import 'package:food_delivery/pages/settings/drawer.dart';
import 'package:food_delivery/utils/colors.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var categories = [
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

  var products = [
    {
      'pro_id': '1',
      'pro_name': 'pro1',
      'pro_image': 'assets/images/product/pro1.jpg',
      'pro_desc': 'gggggggg',
    },
    {
      'pro_id': '1',
      'pro_name': 'pro2',
      'pro_image': 'assets/images/product/pro2.jpg',
      'pro_desc': 'gggggggg',
    },
    {
      'pro_id': '1',
      'pro_name': 'pro3',
      'pro_image': 'assets/images/product/pro3.jpg',
      'pro_desc': 'gggggggg',
    },
  ];
final GlobalKey<ScaffoldState> _keyDrawer = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _keyDrawer,
      endDrawer: MyDrawer(),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomRight,
              margin: const EdgeInsets.only(top: 30.0),
              padding: const EdgeInsets.only(right: 15.0),
              child: const Text(
                'توصيل الطلب إلى',
                style: TextStyle(color: AppColors.greyColor),
              ),
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: const Text(
                    'الموقع الحالي',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.arrow_drop_down,
                    color: AppColors.mainColor,
                  ),
                  onPressed: () {},
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  GestureDetector(
                    child: const Icon(
                      Icons.sort,
                      color: AppColors.mainColor,
                      size: 40,
                      textDirection: TextDirection.ltr,
                    ),
                    onTap: (){
                      _keyDrawer.currentState!.openEndDrawer();
                    },
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(right: 15.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.greyColor.withOpacity(0.2),
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'بحث',
                          suffixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 110,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (BuildContext context, index) {
                  return SingleCategory(
                      cat_id: categories[index]['cat_id']!,
                      cat_name: categories[index]['cat_name']!,
                      cat_image: categories[index]['cat_image']!);
                },
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.2 + 10,
              child: ListView.builder(
                itemCount: products.length,
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
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: AppColors.mainColor,
        selectedFontSize: 15,
        unselectedItemColor: AppColors.greyColor,
        unselectedFontSize: 12,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications,size: 25.0),
            label: 'الأشعارات',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer,size: 25.0),
            label: 'العروض',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,size: 25.0),
            label: 'حسابي ',
          ),
        ],
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
      padding: EdgeInsets.only(right: 5.0, left: 5.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppColors.mainColor,
            ),
            child: Image.asset(cat_image),
          ),
          Text(
            cat_name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
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
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(pro_image))),
            ),
            Text(
              pro_name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            Text(
              pro_desc,
              style: TextStyle(color: AppColors.greyColor),
            ),
          ],
        ),
      ),
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetails(),),);
      },
    );
  }
}
