import 'package:flutter/material.dart';


class CityDropDown extends StatelessWidget {
  CityDropDown({
    Key? key,
    required this.selectedCity,
    required this.onClickCity,
    required this.cityList,
  }) : super(key: key);


  final List<String> cityList;
  final String selectedCity;
  final Function onClickCity;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: DropdownButtonHideUnderline(
        child: ButtonTheme(
          alignedDropdown: true,
          child: DropdownButton<String>(
            icon: const Icon(Icons.arrow_forward_ios,size: 18,),
            isExpanded:true,
            value: selectedCity,
            items: cityList
                .map((item) => DropdownMenuItem<String>(
                value: item,
                child: Text(item, style: const TextStyle(fontSize: 16))))
                .toList(),
            onChanged: (item) => onClickCity(item),
          ),
        ),
      ),
    );
  }
}
