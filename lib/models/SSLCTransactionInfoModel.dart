class SSLCTransactionInfoModel {
  late String aPIConnect;
  late String amount;
  late String bankTranId;
  late String baseFair;
  late String cardBrand;
  late  String cardIssuer;
  late  String cardIssuerCountry;
  late  String cardIssuerCountryCode;
  late String cardNo;
  late String cardType;
  late String currencyAmount;
  late String currencyRate;
  late String currencyType;
  late String gwVersion;
  late String riskLevel;
  late String riskTitle;
  late String sessionkey;
  late String status;
  late String storeAmount;
  late  String tranDate;
  late  String tranId;
  late String valId;
  late  String validatedOn;
  late  String valueA;
  late  String valueB;
  late  String valueC;
  late  String valueD;

  SSLCTransactionInfoModel(
      {required this.aPIConnect,
      required this.amount,
      required this.bankTranId,
      required this.baseFair,
      required this.cardBrand,
      required this.cardIssuer,
      required this.cardIssuerCountry,
      required this.cardIssuerCountryCode,
      required this.cardNo,
      required this.cardType,
      required this.currencyAmount,
      required this.currencyRate,
      required this.currencyType,
      required this.gwVersion,
      required this.riskLevel,
      required this.riskTitle,
      required this.sessionkey,
      required this.status,
      required this.storeAmount,
      required this.tranDate,
      required this.tranId,
      required this.valId,
      required this.validatedOn,
      required this.valueA,
      required this.valueB,
      required this.valueC,
      required this.valueD});

   SSLCTransactionInfoModel.fromJson(Map<String, dynamic> json) {
    aPIConnect = json['APIConnect'];
    amount = json['amount'];
    bankTranId = json['bank_tran_id'];
    baseFair = json['base_fair'];
    cardBrand = json['card_brand'];
    cardIssuer = json['card_issuer'];
    cardIssuerCountry = json['card_issuer_country'];
    cardIssuerCountryCode = json['card_issuer_country_code'];
    cardNo = json['card_no'];
    cardType = json['card_type'];
    currencyAmount = json['currency_amount'];
    currencyRate = json['currency_rate'];
    currencyType = json['currency_type'];
    gwVersion = json['gw_version'];
    riskLevel = json['risk_level'];
    riskTitle = json['risk_title'];
    sessionkey = json['sessionkey'];
    status = json['status'];
    storeAmount = json['store_amount'];
    tranDate = json['tran_date'];
    tranId = json['tran_id'];
    valId = json['val_id'];
    validatedOn = json['validated_on'];
    valueA = json['value_a'];
    valueB = json['value_b'];
    valueC = json['value_c'];
    valueD = json['value_d'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['APIConnect'] = aPIConnect;
    data['amount'] = amount;
    data['bank_tran_id'] = bankTranId;
    data['base_fair'] = baseFair;
    data['card_brand'] = cardBrand;
    data['card_issuer'] = cardIssuer;
    data['card_issuer_country'] = cardIssuerCountry;
    data['card_issuer_country_code'] = cardIssuerCountryCode;
    data['card_no'] = cardNo;
    data['card_type'] = cardType;
    data['currency_amount'] = currencyAmount;
    data['currency_rate'] = currencyRate;
    data['currency_type'] = currencyType;
    data['gw_version'] = gwVersion;
    data['risk_level'] = riskLevel;
    data['risk_title'] = riskTitle;
    data['sessionkey'] = sessionkey;
    data['status'] = status;
    data['store_amount'] = storeAmount;
    data['tran_date'] = tranDate;
    data['tran_id'] = tranId;
    data['val_id'] = valId;
    data['validated_on'] = validatedOn;
    data['value_a'] = valueA;
    data['value_b'] = valueB;
    data['value_c'] = valueC;
    data['value_d'] = valueD;
    return data;
  }
}
