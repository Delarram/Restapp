import 'package:flutter/material.dart';

import '../../widget/custom_text.dart';
import '../../widget/custom_textfield.dart';

class CourseHomeAtk extends StatelessWidget {
  const CourseHomeAtk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.20,
                width: double.infinity,
                color: const Color(0xfff7341d),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24, vertical: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffF6F6F6),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomText(
                                  text: "Aung Thu",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                CustomText(
                                  text: "Good Morning",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ],
                            ),
                            Spacer(),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: const Color(0xfff7341d),
                                  border: Border.all(
                                      width: 1,
                                      color: const Color(0xffF6F6F6))),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Center(
                                    child: Icon(
                                      Icons.notifications_outlined,
                                      size: 22,
                                      color: Color(0xffF6F6F6),
                                    )),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        child:  CustomTextField(
                          width: double.infinity,
                          height:20, labelText: 'Enter please', obsureText:true ,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
