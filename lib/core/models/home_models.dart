// To parse this JSON data, do
//
//     final modelDataProducts = modelDataProductsFromJson(jsonString);

import 'dart:convert';

ModelDataProducts modelDataProductsFromJson(String str) =>
    ModelDataProducts.fromJson(json.decode(str));

String modelDataProductsToJson(ModelDataProducts data) =>
    json.encode(data.toJson());

class ModelDataProducts {
  ModelDataProducts({
    this.status,
    this.message,
    this.data,
  });

  bool? status;
  String? message;
  Data? data;

  factory ModelDataProducts.fromJson(String str) =>
      ModelDataProducts.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ModelDataProducts.fromMap(Map<String, dynamic> json) =>
      ModelDataProducts(
        status: json["status"],
        data: Data.fromMap(json["data"]),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "data": data?.toMap(),
      };
}

class Data {
  Data({
    this.currentPage,
    this.dataProducts,
  });

  int? currentPage;
  List<Datum>? dataProducts;

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        currentPage: json["current_page"],
        dataProducts:
            List<Datum>.from(json["data"].map((x) => Datum.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "current_page": currentPage,
        "data": List<dynamic>.from(dataProducts!.map((x) => x.toMap())),
      };
}

class Datum {
  Datum({
    this.id,
    this.name,
    this.description,
    this.priceCoretDefault,
    this.priceCoret,
    this.categoryId,
    this.categoryName,
    this.priceDefault,
    this.price,
    this.priceNumber,
    this.picture1,
    this.picture1Do,
    this.picture1Default,
    this.picture2,
    this.picture2Do,
    this.picture2Default,
    this.picture3,
    this.picture3Do,
    this.picture3Default,
    this.picture4,
    this.picture4Do,
    this.picture4Default,
    this.picture5,
    this.picture5Do,
    this.picture5Default,
    this.pictureArray,
    this.spec,
    this.satuan,
    this.size,
    this.guaranty,
    this.temperature,
    this.prodLocation,
    this.area,
    this.sku,
    this.owner,
    this.typeProdId,
    this.typeProdName,
    this.locationId,
    this.province,
    this.cities,
    this.location,
    this.locationName,
    this.status,
    this.counter,
    this.areaId,
    this.createdAt,
    this.stock,
    this.keterangan,
    this.idWms,
    this.minimumOrder,
  });

  int? id;
  String? name;
  dynamic description;
  dynamic priceCoretDefault;
  String? priceCoret;
  int? categoryId;
  String? categoryName;
  int? priceDefault;
  String? price;
  String? priceNumber;
  String? picture1;
  String? picture1Do;
  String? picture1Default;
  dynamic picture2;
  dynamic picture2Do;
  dynamic picture2Default;
  dynamic picture3;
  dynamic picture3Do;
  dynamic picture3Default;
  dynamic picture4;
  dynamic picture4Do;
  dynamic picture4Default;
  dynamic picture5;
  dynamic picture5Do;
  dynamic picture5Default;
  List<String>? pictureArray;
  dynamic spec;
  dynamic satuan;
  dynamic size;
  dynamic guaranty;
  dynamic temperature;
  String? prodLocation;
  dynamic area;
  String? sku;
  dynamic owner;
  int? typeProdId;
  String? typeProdName;
  int? locationId;
  Cities? province;
  Cities? cities;
  Location? location;
  String? locationName;
  String? status;
  int? counter;
  int? areaId;
  DateTime? createdAt;
  Stock? stock;
  dynamic keterangan;
  String? idWms;
  num? minimumOrder;

  factory Datum.fromJson(String str) => Datum.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Datum.fromMap(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        priceCoretDefault: json["price_coret_default"],
        priceCoret: json["price_coret"],
        categoryId: json["category_id"],
        categoryName: json["category_name"],
        priceDefault: json["price_default"],
        price: json["price"],
        priceNumber: json["price_number"],
        picture1: json["picture_1"],
        picture1Do: json["picture_1_do"],
        picture1Default: json["picture_1_default"],
        picture2: json["picture_2"],
        picture2Do: json["picture_2_do"],
        picture2Default: json["picture_2_default"],
        picture3: json["picture_3"],
        picture3Do: json["picture_3_do"],
        picture3Default: json["picture_3_default"],
        picture4: json["picture_4"],
        picture4Do: json["picture_4_do"],
        picture4Default: json["picture_4_default"],
        picture5: json["picture_5"],
        picture5Do: json["picture_5_do"],
        picture5Default: json["picture_5_default"],
        pictureArray: List<String>.from(json["picture_array"].map((x) => x)),
        spec: json["spec"],
        satuan: json["satuan"],
        size: json["size"],
        guaranty: json["guaranty"],
        temperature: json["temperature"],
        prodLocation: json["prod_location"],
        area: json["area"],
        sku: json["sku"],
        owner: json["owner"],
        typeProdId: json["typeProd_id"],
        typeProdName: json["typeProd_name"],
        locationId: json["location_id"],
        province: Cities.fromJson(json["province"]),
        cities: Cities.fromJson(json["cities"]),
        location: Location.fromJson(json["location"]),
        locationName: json["location_name"],
        status: json["status"],
        counter: json["counter"],
        areaId: json["area_id"],
        createdAt: DateTime.parse(json["created_at"]),
        stock: Stock.fromJson(json["stock"]),
        keterangan: json["keterangan"],
        idWms: json["id_wms"],
        minimumOrder: json["minimum_order"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "description": description,
        "price_coret_default": priceCoretDefault,
        "price_coret": priceCoret,
        "category_id": categoryId,
        "category_name": categoryName,
        "price_default": priceDefault,
        "price": price,
        "price_number": priceNumber,
        "picture_1": picture1,
        "picture_1_do": picture1Do,
        "picture_1_default": picture1Default,
        "picture_2": picture2,
        "picture_2_do": picture2Do,
        "picture_2_default": picture2Default,
        "picture_3": picture3,
        "picture_3_do": picture3Do,
        "picture_3_default": picture3Default,
        "picture_4": picture4,
        "picture_4_do": picture4Do,
        "picture_4_default": picture4Default,
        "picture_5": picture5,
        "picture_5_do": picture5Do,
        "picture_5_default": picture5Default,
        "picture_array": List<dynamic>.from(pictureArray!.map((x) => x)),
        "spec": spec,
        "satuan": satuan,
        "size": size,
        "guaranty": guaranty,
        "temperature": temperature,
        "prod_location": prodLocation,
        "area": area,
        "sku": sku,
        "owner": owner,
        "typeProd_id": typeProdId,
        "typeProd_name": typeProdName,
        "location_id": locationId,
        "province": province?.toJson(),
        "cities": cities?.toJson(),
        "location": location?.toJson(),
        "location_name": locationName,
        "status": status,
        "counter": counter,
        "area_id": areaId,
        "created_at": createdAt?.toIso8601String(),
        "stock": stock?.toJson(),
        "keterangan": keterangan,
        "id_wms": idWms,
        "minimum_order": minimumOrder,
      };
}

class Cities {
  Cities({
    this.id,
    this.provinceId,
    this.name,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  int? provinceId;
  String? name;
  dynamic? createdAt;
  dynamic? updatedAt;

  factory Cities.fromJson(Map<String, dynamic> json) => Cities(
        id: json["id"],
        provinceId: json["province_id"] == null ? null : json["province_id"],
        name: json["name"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "province_id": provinceId == null ? null : provinceId,
        "name": name,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}

class Location {
  Location({
    this.id,
    this.label,
    this.name,
    this.description,
    this.phone,
    this.address,
    this.createdAt,
    this.updatedAt,
    this.long,
    this.lat,
    this.city,
    this.province,
    this.picture,
    this.descIn,
    this.descEn,
  });

  int? id;
  String? label;
  String? name;
  String? description;
  String? phone;
  String? address;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? long;
  String? lat;
  int? city;
  int? province;
  dynamic? picture;
  dynamic? descIn;
  dynamic? descEn;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        id: json["id"],
        label: json["label"],
        name: json["name"],
        description: json["description"],
        phone: json["phone"],
        address: json["address"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        long: json["long"],
        lat: json["lat"],
        city: json["city"],
        province: json["province"],
        picture: json["picture"],
        descIn: json["desc_in"],
        descEn: json["desc_en"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "label": label,
        "name": name,
        "description": description,
        "phone": phone,
        "address": address,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "long": long,
        "lat": lat,
        "city": city,
        "province": province,
        "picture": picture,
        "desc_in": descIn,
        "desc_en": descEn,
      };
}

class Stock {
  Stock({
    this.id,
    this.productId,
    this.qty,
    this.createdAt,
    this.updatedAt,
    this.companiesId,
    this.warehouseId,
    this.qtyFloat,
    this.dateStock,
  });

  int? id;
  int? productId;
  int? qty;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? companiesId;
  dynamic? warehouseId;
  int? qtyFloat;
  dynamic? dateStock;

  factory Stock.fromJson(Map<String, dynamic> json) => Stock(
        id: json["id"],
        productId: json["product_id"],
        qty: json["qty"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        companiesId: json["companies_id"],
        warehouseId: json["warehouse_id"],
        qtyFloat: json["qty_float"],
        dateStock: json["date_stock"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "product_id": productId,
        "qty": qty,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
        "companies_id": companiesId,
        "warehouse_id": warehouseId,
        "qty_float": qtyFloat,
        "date_stock": dateStock,
      };
}
