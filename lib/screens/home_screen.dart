import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rest_api/provider/drawer_screen_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DrawerScreenProvider>(
      create: (BuildContext context) { return DrawerScreenProvider(); },
      child: Consumer<DrawerScreenProvider>(
        builder: (BuildContext context, value, Widget? child) {
          return  Scaffold(
            body:  Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            color: Colors.white),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Provider',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w900,
                                          height: 0.9,
                                          fontSize: 30.0),
                                    ),
                                    const SizedBox(height: 10),
                                    const Text(
                                      'Lorem Ipsum is simply dummy text of the printing\nand typesetting industry.\nLorem Ipsum has been the industry'
                                          's standard\ndummy text ever since the 1500s',
                                      style: TextStyle(fontSize: 12, height: 1.5),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 8,
                                      textAlign: TextAlign.justify,
                                    ),
                                    const SizedBox(height: 10.0),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 5),
                                      width: MediaQuery.of(context).size.width * 0.4,
                                      child: TextButton(
                                        onPressed: () {},
                                        style: TextButton.styleFrom(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10.0, horizontal: 10.0),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(10.0)),
                                          backgroundColor: Colors.green,
                                        ),
                                        child: const Text(
                                          'Subscribe Now',
                                          style: TextStyle(color: Colors.white),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}