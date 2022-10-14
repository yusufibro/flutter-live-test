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
            return Container(
              margin: EdgeInsets.only(top: 100),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 4,
                      childAspectRatio: 2 / 3),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  shrinkWrap: true,
                  itemCount: snapshot.data!.length,
                  itemBuilder: ((context, index) {
                    Datum dataProd = snapshot.data![index];
                    return Card(
                      shape: new RoundedRectangleBorder(
                        side: new BorderSide(color: Colors.black54, width: 2.0),
                      ),
                      child: Container(
                        height: 290,
                        width: 180,
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(20),
                            // border: Border.all(
                            //   width: 2,
                            //   color: Colors.black,
                            // ),
                            ),
                        // margin: EdgeInsets.all(20),
                        padding: EdgeInsets.all(20),
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                  child: dataProd.picture1 != null
                                      ? Image.network(
                                          '${dataProd.picture1}',
                                          width: double.infinity,
                                          fit: BoxFit.cover,
                                        )
                                      : Center(child: Text('TIDAK ADA GAMBAR')),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '${dataProd.price} / ${dataProd.satuan}',
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Min.Order Qty / ${dataProd.minimumOrder} / ${dataProd.satuan} ',
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('${dataProd.locationName}'),
                                SizedBox(
                                  height: 10,
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    'DETAIL >',
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  })),
            );
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
