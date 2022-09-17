import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rest_api/screens/loginscreen/login_screen.dart';


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
        mainAxisSize: MainAxisSize.max,
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
                            color:  Color(0xffC0C1D8),
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
                            color: const  Color(0xffA674F7)
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
          SizedBox(
            height: 20,
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
                      width: 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: index == currentPage
                            ? Color(0xffA674F7)
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
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                child: Column(
                  children: [
                    CustomButton(
                      nextPage: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginScreen()));
                      },
                      text: 'LogIn',
                      height: 40,
                      width: double.infinity,
                    ),SizedBox(height: 15,),
                    CustomButton(
                      nextPage: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginScreen()));
                      },
                      text: 'SignIn',
                      height: 40,
                      width: double.infinity,
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
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.transparent,
                          border: Border.all(
                              width: 1, color: const Color(0xffF2BE01))),
                      padding: const EdgeInsets.all(3),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color(0xffF2BE01),
                        ),
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
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