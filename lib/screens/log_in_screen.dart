import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news/constants/colors.dart';
import 'package:news/constants/controllers.dart';
import 'package:news/constants/variables/font_size.dart';
import 'package:news/constants/variables/padding.dart';
import 'package:news/screens/register_screen.dart';
import 'package:news/widgets/background_container.dart';

// ignore: use_key_in_widget_constructors
class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
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
                      'Login',
                      style: TextStyle(
                        color:kGreenColor,
                        fontSize: kFont18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ///lines
                    const SizedBox(height: 8.0,),
                    // ignore: sized_box_for_whitespace
                    Container(
                      width: MediaQuery.of(context).size.width*0.18,
                      height: MediaQuery.of(context).size.height*0.002,
                      //color: kBlackColor,
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Expanded(
                            child: Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Expanded(
                                  child: Container(
                                    color: kBlackColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10.0,),
                          Expanded(
                            child: Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Expanded(
                                  child: Container(
                                    color: kBlackColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10.0,),
                          Expanded(
                            child: Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Expanded(
                                  child: Container(
                                    color: kBlackColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
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
                              controller: kUsernameLogInController,
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
                              controller: kPasswordLogInController,
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
                      onPressed: (){},
                      child: Icon(Icons.arrow_forward_ios,color: kWhiteColor,size: 30.0,),
                      color: kGreenColor.withOpacity(0.7),
                    ),
                    const SizedBox(height: 15.0,),
                    ///social media icon
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ///facebook icon
                        InkWell(
                          onTap: (){},
                          child: CircleAvatar(
                            backgroundColor: Colors.blue[900],
                            radius: 28.0,
                            child: const FaIcon(FontAwesomeIcons.facebookF,size: 40.0,),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        ///google icon
                        InkWell(
                          onTap: (){},
                          child: CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 28.0,
                            child: const FaIcon(FontAwesomeIcons.googlePlusG,size: 40.0,),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        ///discord icon
                        InkWell(
                          onTap: (){},
                          child: const CircleAvatar(
                            backgroundColor: Colors.purple,
                            radius: 28.0,
                            child: FaIcon(FontAwesomeIcons.discord,size: 40.0,),
                          ),
                        ),
                      ],
                    ),
                    ///or and sign up button
                    Text(
                      'or',
                      style: TextStyle(
                        fontSize: kFont17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.15,
                      height: MediaQuery.of(context).size.height*0.004,
                      color: Colors.black,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>RegisterScreen(),
                        ));
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          color: kGreenColor,
                          fontSize: kFont19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Divider(height: 50.0,color: Colors.transparent,),
                    ///aboutUs, contactUs And privacy button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ///AboutUs
                        InkWell(
                          onTap: (){},
                          child: Text(
                            'AboutUs-',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: kFont15,
                            ),
                          ),
                        ),
                        ///ContactUs
                        InkWell(
                          onTap: (){},
                          child: Text(
                            'ContactUs-',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: kFont15,
                            ),
                          ),
                        ),
                        ///Privacy
                        InkWell(
                          onTap: (){},
                          child: Text(
                            'Privacy',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: kFont15,
                            ),
                          ),
                        ),

                      ],
                    ),
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
