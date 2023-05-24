import 'package:flutter/material.dart';

class DateTimePick extends StatefulWidget {
  const DateTimePick({Key? key}) : super(key: key);

  @override
  State<DateTimePick> createState() => _DateTimePickState();
}

class _DateTimePickState extends State<DateTimePick> {
  DateTime date = DateTime(2022, 12, 24);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Column(
            children: [
              Text("${date.year}/${date.month}/${date.day}"),
              SizedBox(
                height: 16,
              ),
              MaterialButton(onPressed: () async {
               DateTime? newDate = await showDatePicker(
                    context: context,
                    initialDate: date,
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100));
               if(newDate==null)return;
               setState(() => date = newDate);
              })
            ],
          ),
        ),
      );
}
