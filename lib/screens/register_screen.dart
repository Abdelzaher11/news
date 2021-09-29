import 'package:flutter/material.dart';
import 'package:news/constants/colors.dart';
import 'package:news/constants/controllers.dart';
import 'package:news/constants/variables/font_size.dart';
import 'package:news/constants/variables/padding.dart';
import 'package:news/screens/home_screen.dart';
import 'package:news/widgets/background_container.dart';

// ignore: use_key_in_widget_constructors
class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                width: MediaQuery.of(context).size.width*0.9,
                height: MediaQuery.of(context).size.height*0.50,
                decoration: BoxDecoration(
                  color: kUserInfoContainerColor.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(kPadding5),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        ///title
                        Text(
                          'Sign up',
                          style: TextStyle(
                            color:kGreenColor,
                            fontSize: kFont18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ///input fields
                        Padding(
                          padding: EdgeInsets.all(kPadding20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ///username section
                              ///username title
                              Padding(
                                padding: EdgeInsets.only(left: kPadding15),
                                child: Text(
                                  'Username',
                                  style: TextStyle(
                                    color: kGreenColor,
                                    fontSize: kFont16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5.0,),
                              ///username controller
                              Container(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                decoration: BoxDecoration(
                                  color: kWhiteColor,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                  ),
                                ),
                                child: TextField(
                                  controller: kUsernameRegisterController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.only(left: kPadding15,),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15.0,),
                              ///email section
                              ///email title
                              Padding(
                                padding: EdgeInsets.only(left: kPadding15),
                                child: Text(
                                  'Email',
                                  style: TextStyle(
                                    color: kGreenColor,
                                    fontSize: kFont16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5.0,),
                              ///email controller
                              Container(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                decoration: BoxDecoration(
                                  color: kWhiteColor,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                  ),
                                ),
                                child: TextField(
                                  controller: kEmailRegisterController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.only(left: kPadding15,),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15.0,),
                              ///password section
                              ///password title
                              Padding(
                                padding: EdgeInsets.only(left: kPadding15),
                                child: Text(
                                  'Password',
                                  style: TextStyle(
                                    color: kGreenColor,
                                    fontSize: kFont16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5.0,),
                              ///password controller
                              Container(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                decoration: BoxDecoration(
                                  color: kWhiteColor,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                  ),
                                ),
                                child: TextField(
                                  controller: kPasswordRegisterController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.only(left: kPadding15,),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15.0,),
                              ///confirm password section
                              ///confirm password title
                              Padding(
                                padding: EdgeInsets.only(left: kPadding15),
                                child: Text(
                                  'Re-Password',
                                  style: TextStyle(
                                    color: kGreenColor,
                                    fontSize: kFont16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5.0,),
                              ///confirm password controller
                              Container(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                decoration: BoxDecoration(
                                  color: kWhiteColor,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                  ),
                                ),
                                child: TextField(
                                  controller: kConfirmPasswordRegisterController,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.only(left: kPadding15,),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        ///login button
                        MaterialButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context)=>HomeScreen(),
                            ));
                          },
                          child: Icon(Icons.arrow_forward_ios,color: kWhiteColor,size: 30.0,),
                          color: kGreenColor.withOpacity(0.7),
                        ),
                        const SizedBox(height: 15.0,),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),

    );
  }
}
