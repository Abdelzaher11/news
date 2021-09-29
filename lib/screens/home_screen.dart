import 'package:flutter/material.dart';
import 'package:news/constants/colors.dart';
import 'package:news/constants/variables/font_size.dart';
import 'package:news/constants/variables/padding.dart';
import 'package:news/constants/variables/screen_variables.dart';
import 'package:news/widgets/custom_drawer.dart';

// ignore: use_key_in_widget_constructors
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:kScaffoldKey ,
      drawer:CustomDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.all(kPadding15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///drawer,name and image
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ///drawer icon
                    IconButton(
                      padding: EdgeInsets.zero,
                      iconSize: 40.0,
                      onPressed: () {
                        kScaffoldKey.currentState?.openDrawer();
                      },
                      icon: Image.asset(
                        'assets/drawer_icon.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    ///username
                    Text(
                      'Hi,\nUser',
                      style: TextStyle(
                        fontSize: kFont17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ///user image
                    ///when testing change the asset image to network ///
                    Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      width: MediaQuery.of(context).size.width*0.16,
                      height: MediaQuery.of(context).size.height*0.065,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.blue,width: 4.0),
                        image: DecorationImage(
                          image: AssetImage('assets/logo.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15.0,),
                ///content
                Padding(
                  padding: EdgeInsets.only(left: kPadding5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ///breaking news title
                      Text(
                        'Breaking News',
                        style: TextStyle(
                          fontSize: kFont25,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.6,
                        ),
                      ),
                      const SizedBox(height: 10.0,),
                      ///breaking news container
                      Container(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        height: MediaQuery.of(context).size.height*0.3,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                            image: NetworkImage('https://media.istockphoto.com/photos/passenger-airplane-flying-above-clouds-during-sunset-picture-id155439315?k=20&m=155439315&s=612x612&w=0&h=BvXCpRLaP5h1NnvyYI_2iRtSM0Xsz2jQhAmZ7nA7abA='),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(kPadding25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              ///author name
                              Container(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                height: MediaQuery.of(context).size.height*0.06,
                                width: MediaQuery.of(context).size.width*0.19,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.6),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                    child: Text(
                                        'Author',
                                      style: TextStyle(
                                        color: kWhiteColor,
                                      ),
                                    )
                                ),
                              ),
                              const SizedBox(height: 15.0,),
                              ///article
                              Container(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                height: MediaQuery.of(context).size.height*0.15,
                                width: MediaQuery.of(context).size.width*0.6,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.6),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(kPadding10),
                                  child: Text(
                                    'Reading is a very good habit that one needs to develop in life. Good books can inform you, enlighten you and lead you in the right direction. There is no better companion than a good book. Reading is important because it is good for your overall well-being.',
                                    maxLines: 5,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: kWhiteColor,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      ///category title
                      const SizedBox(height: 10.0,),
                      Text(
                        'Categories',
                        style: TextStyle(
                          fontSize: kFont25,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.6,
                        ),
                      ),
                      ///categories name
                      // ignore: sized_box_for_whitespace
                      Container(
                        height: MediaQuery.of(context).size.height*0.06,
                        child: ListView.builder(
                          itemCount: kCategoriesList.length,
                          itemBuilder: (context,index)=> categoriesName(kCategoriesList,index),
                          shrinkWrap: true,
                          //physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                      ///categories data
                      // ignore: sized_box_for_whitespace, avoid_unnecessary_containers
                      Container(
                        //height: MediaQuery.of(context).size.height*0.06,
                        child: ListView.builder(
                          itemCount: kCategoriesList.length,
                          itemBuilder: (context,index)=> categoriesData(),
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget categoriesName(cat,index)=>Card(
    color: kWhiteColor,
    shape:  StadiumBorder(
      side: BorderSide(
        color: kWhiteColor,
        width: 1.0,
      ),
    ),
    child: Padding(
      padding: EdgeInsets.all(kPadding10),
      child: Text(
        cat[index],
      ),
    ),
  );
  Widget categoriesData()=>Padding(
    padding: EdgeInsets.all(kPadding10),
    child: Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      height: MediaQuery.of(context).size.height*0.15,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        image: DecorationImage(
          image: NetworkImage('https://media.istockphoto.com/photos/passenger-airplane-flying-above-clouds-during-sunset-picture-id155439315?k=20&m=155439315&s=612x612&w=0&h=BvXCpRLaP5h1NnvyYI_2iRtSM0Xsz2jQhAmZ7nA7abA='),
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.all(kPadding10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              ///author name
              Column(
                children: [
                  Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    height: MediaQuery.of(context).size.height*0.06,
                    width: MediaQuery.of(context).size.width*0.19,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                        child: Text(
                          'Author',
                          style: TextStyle(
                            color: kWhiteColor,
                          ),
                        )
                    ),
                  ),
                ],
              ),
              //const SizedBox(height: 15.0,),
              ///article
              Expanded(
                child: Column(
                  children: [
                    Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      height: MediaQuery.of(context).size.height*0.15,
                      width: MediaQuery.of(context).size.width*0.6,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(kPadding10),
                        child: Text(
                          'Reading is a very good habit that one needs to develop in life. Good books can inform you, enlighten you and lead you in the right direction. There is no better companion than a good book. Reading is important because it is good for your overall well-being.',
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );

}
