import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rest_api/widget/custom_text.dart';

class CourseItemView extends StatelessWidget {
  const CourseItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffFFFFFF)
      ),
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkQ-i9GP2SKQVYWmKPbNdRP00Ad3iINdw_4zEtrbrl&s",
            placeholder: (context, url) =>
            const Center(child: CircularProgressIndicator()
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
            height: 90,
            width: 90,
            fit: BoxFit.fill,
          ),
          SizedBox(height: 8,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               CustomText(
                 text:"My Course",
                   color: Colors.black,
                 textOverflow: TextOverflow.ellipsis,
                 maxLine: 2,
               ),
               Spacer(),
                TweenAnimationBuilder<double>(
                  tween: Tween<double>(begin: 0.0, end: 30.0),
                  duration: Duration(microseconds: 2500),
                  builder: (context,value,_)=> LinearProgressIndicator(
                    value: value,
                    color: Colors.grey.shade100,
                    backgroundColor: Colors.pink[400],
                  ),),
              SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                   CustomText(
                     text: "Continue",
                     fontSize: 11,
                   )
                ],
              )
            ],
          ),

        ],
      ),
    );
  }
}
