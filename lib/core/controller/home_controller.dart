import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:livecode/core/models/home_models.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  Future<List<Datum>> getProducts() async {
    Uri url = Uri.parse(
      'https://marketdevb2bbe.fishlog.co.id/api/cat/product',
    );
    final response = await http
        .get(Uri.parse('https://marketdevb2bbe.fishlog.co.id/api/cat/product'));
    print('response ' + response.body);

    var responseDataModel = ModelDataProducts.fromJson(response.body);
    return responseDataModel.data!.dataProducts!;
  }
}
