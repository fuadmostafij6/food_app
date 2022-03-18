import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
part 'SSLCShipmentInfoInitializer.g.dart';
@JsonSerializable()
class SSLCShipmentInfoInitializer {
  String? shipmentMethod;
  String? shipAddress2;
  String? shipState;
  int? numOfItems;
  ShipmentDetails? shipmentDetails;

  SSLCShipmentInfoInitializer({required this.shipmentMethod, required this.numOfItems,
      required this.shipmentDetails });

  Map<String, dynamic> toJson() => _$SSLCShipmentInfoInitializerToJson(this);
  factory SSLCShipmentInfoInitializer.fromJson(Map<String, dynamic> json) => _$SSLCShipmentInfoInitializerFromJson(json);

  SSLCShipmentInfoInitializer addShipAddress2(String shipAddress2) {
    this.shipAddress2 = shipAddress2;
    return this;
  }

  SSLCShipmentInfoInitializer addShipState(String shipState) {
    this.shipState = shipState;
    return this;
  }

  String? getShipmentMethod() {
    return shipmentMethod;
  }

  void setShipmentMethod(String shipmentMethod) {
    this.shipmentMethod = shipmentMethod;
  }

  int? getNumOfItems() {
    return numOfItems;
  }

  void setNumOfItems(int numOfItems) {
    this.numOfItems = numOfItems;
  }

  ShipmentDetails? getShipmentDetails() {
    return shipmentDetails;
  }

  void setShipmentDetails(
      ShipmentDetails shipmentDetails) {
    this.shipmentDetails = shipmentDetails;
  }

  String? getShipAddress2() {
    return shipAddress2;
  }

  void setShipAddress2(String shipAddress2) {
    this.shipAddress2 = shipAddress2;
  }

  String? getShipState() {
    return shipState;
  }

  void setShipState(String shipState) {
    this.shipState = shipState;
  }
}


@JsonSerializable()
class ShipmentDetails {
  String? shipName;
  String? shipAddress1;
  String? shipCity;
  String? shipPostCode;
  String? shipCountry;

  ShipmentDetails(
      { this.shipName,
       this.shipAddress1,
       this.shipCity,
       this.shipPostCode,
       this.shipCountry});

  Map<String, dynamic> toJson() => _$ShipmentDetailsToJson(this);
  factory ShipmentDetails.fromJson(Map<String, dynamic> json) => _$ShipmentDetailsFromJson(json);

  String? getShipName() {
    return shipName;
  }

  void setShipName(String shipName) {
    this.shipName = shipName;
  }

  String? getShipAddress1() {
    return shipAddress1;
  }

  void setShipAddress1(String shipAddress1) {
    this.shipAddress1 = shipAddress1;
  }

  String? getShipCity() {
    return shipCity;
  }

  void setShipCity(String shipCity) {
    this.shipCity = shipCity;
  }

  String? getShipPostCode() {
    return shipPostCode;
  }

  void setShipPostCode(String shipPostCode) {
    this.shipPostCode = shipPostCode;
  }

  String? getShipCountry() {
    return shipCountry;
  }

  void setShipCountry(String shipCountry) {
    this.shipCountry = shipCountry;
  }
}
