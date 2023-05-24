import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rest_api/screens/loginscreen/login_screen.dart';
import 'package:rest_api/screens/loginscreen/login_textfield.dart';


import '../../widget/custom_button.dart';
import '../../widget/custom_text.dart';


class LandingPage extends StatefulWidget {

  const LandingPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final PageController pageController = PageController();

  List<String> textList = ["hello", "test", "hi"];
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: PageView.builder(
                controller: pageController,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        child: Center(
                          child: Image.asset(
                              "assets/images/hello.png",
                              fit: BoxFit.fitHeight
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 50,bottom: 10),
                        child: Center(
                          child: CustomText(
                            text: "Welcome To The World Of Language App",
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            maxLine: 2,
                            color: Color(0xff0300000),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      //
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: Center(
                          child: CustomText(
                            text: "Learning has never been so easy! With Mystery Language yoy will learn to speak your dream language no time",
                            fontSize: 16,
                            maxLine: 3,
                            textAlign: TextAlign.center,
                            color: Colors.grey,
                              //31347A
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
          SizedBox(
            height: 5,
            width: double.infinity,
            child: Center(
              child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 10,
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: index == currentPage
                            ? Color(0xff31347A)
                            : Colors.grey,
                      ),
                    );
                  }),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          if (currentPage == 2)
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        nextPage: () {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) => const LoginTextField()
                              ),
                                  (route) => false);
                        },
                        text: 'LogIn',
                        height: 50,
                        color: Color(0xffFFFFFF),
                        width: double.infinity,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: CustomButton(
                        nextPage: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginTextField()));
                        },
                        text: 'SignIn',
                        height: 50,
                        color: Color(0xffFFFFFF),
                        width: double.infinity,
                      ),
                    ),SizedBox(height: 15,),
                  ],
                ),
              ),
            )
          else
            Padding(
              padding:
              const EdgeInsets.only(bottom: 30, left: 20, right: 20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        if (currentPage == 0) {
                          currentPage = 2;
                        } else {
                          currentPage += 1;
                        }
                        pageController.animateToPage(currentPage,
                            curve: Curves.decelerate,
                            duration: const Duration(milliseconds: 300));
                      });
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "Skip",
                          fontWeight: FontWeight.bold,
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Container(
                          height: 1.h,
                          width: 15.w,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (currentPage == 2) {
                          currentPage = 0;
                        } else {
                          currentPage += 1;
                        }
                        pageController.animateToPage(currentPage,
                            curve: Curves.decelerate,
                            duration: const Duration(milliseconds: 300));
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.transparent,
                          border: Border.all(
                              width: 1, color: const Color(0xff31347A))),
                      padding: const EdgeInsets.all(3),
                      child: Container(
                        height: 25,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color(0xff31347A),
                        ),
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}