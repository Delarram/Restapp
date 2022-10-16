import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/widget/custom_text.dart';

class CourseItemView extends StatelessWidget {
  const CourseItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffFFFFFF)
      ),
      child:
      Container(
        margin: EdgeInsets.all(5),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: CachedNetworkImage(
                      imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkQ-i9GP2SKQVYWmKPbNdRP00Ad3iINdw_4zEtrbrl&s",
                      placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()
                      ),
                      errorWidget: (context, url, error) => const Icon(Icons.error),
                      height: 70,
                      width: 70,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(height: 8,),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text:"English Elementary Course",
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            textOverflow: TextOverflow.ellipsis,
                            maxLine: 2,
                          ),
                          SizedBox(height: 8,),
                          CustomText(
                            text:"English Elementary Course",
                            color: Colors.black,
                            fontSize: 12,
                            textOverflow: TextOverflow.ellipsis,
                            maxLine: 2,
                          ),
                          SizedBox(height: 8,),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: 0.0, end: 0.50),
              duration: Duration(microseconds: 2500),
              builder: (context,value,_)=> ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                child: LinearProgressIndicator(
                  minHeight: 5,
                  value: value,
                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xffF56F37)),
                  backgroundColor:Color(0xfff5f5f5),
                  //Color(0xffF56F37)
                ),
              ),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TweenAnimationBuilder<double>(
                    tween: Tween<double>(begin: 0.0, end: 50),
                    duration: const Duration(milliseconds: 3500),
                    builder: (context, value, _) => CustomText(
                      text: "${value.round()} % DONE",
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                    ),
                  ),SizedBox(width: 5,),
                  CustomText(
                    text: "COMPLETE",
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  )
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
