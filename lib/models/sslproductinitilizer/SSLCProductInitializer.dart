import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

import 'AirlinesTicket.dart';
import 'General.dart';
import 'NonPhysicalGoods.dart';
import 'PhysicalGoods.dart';
import 'TelecomVertical.dart';
import 'TravelVertical.dart';

part 'SSLCProductInitializer.g.dart';

@JsonSerializable()
class SSLCProductInitializer {
  late String productName;
  late String productCategory;
  late  String cart;
  late double productAmount;
  late  double vat;
  late  double discountAmount;
  late  double convenienceFee;
  late  AirlinesTicket airlinesTicket;
  late General? general;
  late PhysicalGoods physicalGoods;
  late  NonPhysicalGoods nonPhysicalGoods;
  late  TelecomVertical telecomVertical;
  late  TravelVertical travelVertical;

  SSLCProductInitializer(
      {required this.productName, required this.productCategory,  this.general});

  Map<String, dynamic> toJson() => _$SSLCProductInitializerToJson(this);

  factory SSLCProductInitializer.fromJson(Map<String, dynamic> json) =>
      _$SSLCProductInitializerFromJson(json);

  SSLCProductInitializer.WithPhysicalGoodsProfile(
      {required this.productName,
      required this.productCategory,
      required this.physicalGoods});

  SSLCProductInitializer.WithNonPhysicalGoodsProfile({required this.productName,
    required this.productCategory, required this.nonPhysicalGoods});

  SSLCProductInitializer.WithTravelVerticalProfile({required this.productName,
    required this.productCategory, required this.travelVertical});

  SSLCProductInitializer.WithTelecomVerticalProfile({required this.productName,
    required this.productCategory, required this.telecomVertical});

  PhysicalGoods getPhysicalGoods() {
    return this.physicalGoods;
  }

  void setPhysicalGoods(PhysicalGoods physicalGoods) {
    this.physicalGoods = physicalGoods;
  }

  NonPhysicalGoods getNonPhysicalGoods() {
    return this.nonPhysicalGoods;
  }

  void setNonPhysicalGoods({required NonPhysicalGoods nonPhysicalGoods}) {
    this.nonPhysicalGoods = nonPhysicalGoods;
  }

  TelecomVertical getTelecomVertical() {
    return telecomVertical;
  }

  void setTelecomVertical({required TelecomVertical telecomVertical}) {
    this.telecomVertical = telecomVertical;
  }

  TravelVertical getTravelVertical() {
    return this.travelVertical;
  }

  void setTravelVertical({required TravelVertical travelVertical}) {
    this.travelVertical = travelVertical;
  }

  AirlinesTicket getAirlinesTicket() {
    return this.airlinesTicket;
  }

  void setAirlinesTicket({required AirlinesTicket airlinesTicket}) {
    this.airlinesTicket = airlinesTicket;
  }

  General? getGeneral() {
    return general;
  }

  void setGeneral({required General general}) {
    this.general = general;
  }

  SSLCProductInitializer addCart(String cart) {
    this.cart = cart;
    return this;
  }

  SSLCProductInitializer addProductAmount(double productAmount) {
    this.productAmount = productAmount;
    return this;
  }

  SSLCProductInitializer addVat(double vat) {
    this.vat = vat;
    return this;
  }

  SSLCProductInitializer addDiscountAmount(double discountAmount) {
    this.discountAmount = discountAmount;
    return this;
  }

  SSLCProductInitializer addConvenienceFee(double convenienceFee) {
    this.convenienceFee = convenienceFee;
    return this;
  }

  String getProductName() {
    return this.productName;
  }

  void setProductName(String productName) {
    this.productName = productName;
  }

  String getProductCategory() {
    return this.productCategory;
  }

  void setProductCategory(String productCategory) {
    this.productCategory = productCategory;
  }

  String getCart() {
    return this.cart;
  }

  void setCart(String cart) {
    this.cart = cart;
  }

  double getProductAmount() {
    return this.productAmount;
  }

  void setProductAmount(double productAmount) {
    this.productAmount = productAmount;
  }

  double getVat() {
    return this.vat;
  }

  void setVat(double vat) {
    this.vat = vat;
  }

  double getDiscountAmount() {
    return this.discountAmount;
  }

  void setDiscountAmount(double discountAmount) {
    this.discountAmount = discountAmount;
  }

  double getConvenienceFee() {
    return this.convenienceFee;
  }

  void setConvenienceFee(double convenienceFee) {
    this.convenienceFee = convenienceFee;
  }
}
