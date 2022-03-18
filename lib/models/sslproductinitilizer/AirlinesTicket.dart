import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';
part 'AirlinesTicket.g.dart';

@JsonSerializable()
class AirlinesTicket {
  String productProfile;
  String hoursTillDeparture;
  String flightType;
  String pnr;
  String journeyFromTo;
  String thirdPartyBooking;

  AirlinesTicket({required this.productProfile, required this.hoursTillDeparture,
    required this.flightType, required this.pnr, required this.journeyFromTo,
    required this.thirdPartyBooking});
  Map<String, dynamic> toJson() => _$AirlinesTicketToJson(this);
  factory AirlinesTicket.fromJson(Map<String, dynamic> json) => _$AirlinesTicketFromJson(json);

  String getProductProfile() {
    return productProfile;
  }

  void setProductProfile(String productProfile) {
    this.productProfile = productProfile;
  }

  String getHoursTillDeparture() {
    return hoursTillDeparture;
  }

  void setHoursTillDeparture(String hoursTillDeparture) {
    this.hoursTillDeparture = hoursTillDeparture;
  }

  String getFlightType() {
    return flightType;
  }

  void setFlightType(String flightType) {
    this.flightType = flightType;
  }

  String getPnr() {
    return pnr;
  }

  void setPnr(String pnr) {
    this.pnr = pnr;
  }

  String getJourneyFromTo() {
    return journeyFromTo;
  }

  void setJourneyFromTo(String journeyFromTo) {
    this.journeyFromTo = journeyFromTo;
  }

  String getThirdPartyBooking() {
    return thirdPartyBooking;
  }

  void setThirdPartyBooking(String thirdPartyBooking) {
    this.thirdPartyBooking = thirdPartyBooking;
  }
}