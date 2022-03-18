import 'package:json_annotation/json_annotation.dart';
part 'SSLCAdditionalInitializer.g.dart';

@JsonSerializable()
 class SSLCAdditionalInitializer {
   String valueA;
   String valueB;
   String valueC;
   String valueD;

   SSLCAdditionalInitializer({required this.valueA, required this.valueB, required this.valueC, required this.valueD});

   Map<String, dynamic> toJson() => _$SSLCAdditionalInitializerToJson(this);
   factory SSLCAdditionalInitializer.fromJson(Map<String, dynamic> json) => _$SSLCAdditionalInitializerFromJson(json);

   String getValueA() {
    return valueA;
  }

   void setValueA(String valueA) {
    this.valueA = valueA;
  }

   String getValueB() {
    return valueB;
  }

   void setValueB(String valueB) {
    this.valueB = valueB;
  }

   String getValueC() {
    return valueC;
  }

   void setValueC(String valueC) {
    this.valueC = valueC;
  }

   String getValueD() {
    return valueD;
  }

   void setValueD(String valueD) {
    this.valueD = valueD;
  }
}
