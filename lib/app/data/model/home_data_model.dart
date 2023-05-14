// To parse this JSON data, do
//
//     final homeDataModel = homeDataModelFromJson(jsonString);

import 'dart:convert';

HomeDataModel homeDataModelFromJson(String str) => HomeDataModel.fromJson(json.decode(str));

String homeDataModelToJson(HomeDataModel data) => json.encode(data.toJson());

class HomeDataModel {
    String? ip;
    String? countryName;
    String? countryCode;
    String? regionCode;
    String? regionName;
    String? cityName;
    String? zipCode;
    dynamic isoCode;
    dynamic postalCode;
    String? latitude;
    String? longitude;
    dynamic metroCode;
    String? areaCode;
    String? timezone;
    String? driver;

    HomeDataModel({
        this.ip,
        this.countryName,
        this.countryCode,
        this.regionCode,
        this.regionName,
        this.cityName,
        this.zipCode,
        this.isoCode,
        this.postalCode,
        this.latitude,
        this.longitude,
        this.metroCode,
        this.areaCode,
        this.timezone,
        this.driver,
    });

    factory HomeDataModel.fromJson(Map<String, dynamic> json) => HomeDataModel(
        ip: json["ip"],
        countryName: json["countryName"],
        countryCode: json["countryCode"],
        regionCode: json["regionCode"],
        regionName: json["regionName"],
        cityName: json["cityName"],
        zipCode: json["zipCode"],
        isoCode: json["isoCode"],
        postalCode: json["postalCode"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        metroCode: json["metroCode"],
        areaCode: json["areaCode"],
        timezone: json["timezone"],
        driver: json["driver"],
    );

    Map<String, dynamic> toJson() => {
        "ip": ip,
        "countryName": countryName,
        "countryCode": countryCode,
        "regionCode": regionCode,
        "regionName": regionName,
        "cityName": cityName,
        "zipCode": zipCode,
        "isoCode": isoCode,
        "postalCode": postalCode,
        "latitude": latitude,
        "longitude": longitude,
        "metroCode": metroCode,
        "areaCode": areaCode,
        "timezone": timezone,
        "driver": driver,
    };
}
