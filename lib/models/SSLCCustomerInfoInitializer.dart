import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'SSLCCustomerInfoInitializer.g.dart';

@JsonSerializable()
class SSLCCustomerInfoInitializer {
  String ?customerName;
  String ?customerEmail;
  String customerAddress1;
  String ?customerAddress2;
  String? customerCity;
  String? customerState;
  String ?customerPostCode;
  String? customerCountry;
  String? customerPhone;
  String? customerFax;

  SSLCCustomerInfoInitializer(
      {required this.customerName,
      required this.customerEmail,
      required this.customerAddress1,
         this.customerAddress2,
      required this.customerCity,
      this.customerState,
       this.customerPostCode,
        this.customerCountry,
      this.customerPhone,
      this.customerFax});

  Map<String, dynamic> toJson() => _$SSLCCustomerInfoInitializerToJson(this);

  factory SSLCCustomerInfoInitializer.fromJson(Map<String, dynamic> json) =>
      _$SSLCCustomerInfoInitializerFromJson(json);

  SSLCCustomerInfoInitializer addAddress2(String customerAddress2) {
    this.customerAddress2 = customerAddress2;
    return this;
  }

  SSLCCustomerInfoInitializer addState(String customerState) {
    this.customerState = customerState;
    return this;
  }

  SSLCCustomerInfoInitializer addFax(String customerFax) {
    this.customerFax = customerFax;
    return this;
  }

  String? getCustomerName() {
    return customerName;
  }

  void setCustomerName(String customerName) {
    this.customerName = customerName;
  }

  String? getCustomerEmail() {
    return customerEmail;
  }

  void setCustomerEmail(String customerEmail) {
    this.customerEmail = customerEmail;
  }

  String getCustomerAddress1() {
    return customerAddress1;
  }

  void setCustomerAddress1(String customerAddress1) {
    this.customerAddress1 = customerAddress1;
  }

  String? getCustomerAddress2() {
    return this.customerAddress2;
  }

  void setCustomerAddress2(String customerAddress2) {
    this.customerAddress2 = customerAddress2;
  }

  String? getCustomerCity() {
    return customerCity;
  }

  void setCustomerCity(String customerCity) {
    this.customerCity = customerCity;
  }

  String? getCustomerState() {
    return this.customerState;
  }

  void setCustomerState(String customerState) {
    this.customerState = customerState;
  }

  String? getCustomerPostCode() {
    return customerPostCode;
  }

  void setCustomerPostCode(String customerPostCode) {
    this.customerPostCode = customerPostCode;
  }

  String? getCustomerCountry() {
    return customerCountry;
  }

  void setCustomerCountry(String customerCountry) {
    this.customerCountry = customerCountry;
  }

  String? getCustomerPhone() {
    return customerPhone;
  }

  void setCustomerPhone(String customerPhone) {
    this.customerPhone = customerPhone;
  }

  String? getCustomerFax() {
    return customerFax;
  }

  void setCustomerFax(String customerFax) {
    this.customerFax = customerFax;
  }
}
