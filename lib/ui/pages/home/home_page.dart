import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:livecode/core/controller/home_controller.dart';

import '../../../core/models/home_models.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Datum>>(
        future: controller.getProducts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasData) {
            return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 4,
                  childAspectRatio: 2/3
                ),
                padding: EdgeInsets.all(20),
                shrinkWrap: true,
                itemCount: snapshot.data!.length,
                itemBuilder: ((context, index) {
                  Datum dataProd = snapshot.data![index];
                  return Container(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(),
                          height: 250,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                dataProd.picture1 != null ?
                                '${dataProd.picture1}' : '${dataProd.picture1Default}',
                                // width: 30,
                                fit: BoxFit.cover,
                              ),
                              Text('${dataProd.name}')
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }));
          } else {
            return Center(
              child: Text('${snapshot.error}'),
            );
          }
        },
      ),
    );
  }
}
