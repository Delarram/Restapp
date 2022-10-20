import 'package:flutter/material.dart';
import 'package:rest_api/dropdown/city_dropdown_bloc.dart';

import 'city_dropdown.dart';

class DropDownScreen extends StatelessWidget {
  const DropDownScreen({Key? key, required this.bloc}) : super(key: key);

   final CityDropDownBloc bloc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: CityDropDown(
                  key: const Key("cityDropdown"),
                  selectedCity: bloc.selectedCity,
                  onClickCity:bloc.onSelectedCity, cityList: bloc.cityList,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
