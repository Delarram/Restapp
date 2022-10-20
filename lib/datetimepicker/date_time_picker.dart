// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// class DateTimePicker extends StatefulWidget {
//   const DateTimePicker({Key? key}) : super(key: key);
//
//   @override
//   State<DateTimePicker> createState() => _DateTimePickerState();
// }
//
// class _DateTimePickerState extends State<DateTimePicker> {
//   TextEditingController dateController = TextEditingController();
//
//   @override
//   void initState() {
//     dateController.text = "";
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       onTap: () async {
//         DateTime? pickedDate = await showDatePicker(
//           context: context,
//           initialDate: DateTime.now(),
//           firstDate: DateTime(2000),
//           lastDate: DateTime(2101),
//         );
//         if (pickedDate != null){
//           print(pickedDate);
//           String formattedDate = "${}";
//           print(formattedDate);
//           setState(() {
//             dateController.text = formattedDate;
//           });
//         } else {
//           print('date is nots selected');
//         }
//       },
//     );
//   }
// }
// //neurps
// //rdrefr