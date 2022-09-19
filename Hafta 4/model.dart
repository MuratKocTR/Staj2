class VeriModel {
  String? oid;
  String? firma;
  String? cihazMarka;
  String? cihazModel;
  String? sayacMarka;
  String? sayacModel;
  String? devEUI;
  String? appEUI;
  String? appKey;
  String? devAddr;
  String? appSKey;
  String? nwkSKey;
  String? fSKKey;
  String? jsondata;
  bool? caktif;
  int? optimisticLockField;
  String? seri;
  bool? sayacuygun;
  bool? manyetikswitch;
  bool? cihazok;

  VeriModel(
      {this.oid,
      this.firma,
      this.cihazMarka,
      this.cihazModel,
      this.sayacMarka,
      this.sayacModel,
      this.devEUI,
      this.appEUI,
      this.appKey,
      this.devAddr,
      this.appSKey,
      this.nwkSKey,
      this.fSKKey,
      this.jsondata,
      this.caktif,
      this.optimisticLockField,
      this.seri,
      this.sayacuygun,
      this.manyetikswitch,
      this.cihazok});

  VeriModel.fromJson(Map<String, dynamic> json) {
    oid = json['Oid'];
    firma = json['firma'];
    cihazMarka = json['cihaz_marka'];
    cihazModel = json['cihaz_model'];
    sayacMarka = json['sayac_marka'];
    sayacModel = json['sayac_model'];
    devEUI = json['DevEUI'];
    appEUI = json['AppEUI'];
    appKey = json['AppKey'];
    devAddr = json['DevAddr'];
    appSKey = json['AppSKey'];
    nwkSKey = json['NwkSKey'];
    fSKKey = json['FSKKey'];
    jsondata = json['jsondata'];
    caktif = json['caktif'];
    optimisticLockField = json['OptimisticLockField'];
    seri = json['seri'];
    sayacuygun = json['sayacuygun'];
    manyetikswitch = json['manyetikswitch'];
    cihazok = json['cihazok'];
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['Oid'] = this.oid;
  //   data['firma'] = this.firma;
  //   data['cihaz_marka'] = this.cihazMarka;
  //   data['cihaz_model'] = this.cihazModel;
  //   data['sayac_marka'] = this.sayacMarka;
  //   data['sayac_model'] = this.sayacModel;
  //   data['DevEUI'] = this.devEUI;
  //   data['AppEUI'] = this.appEUI;
  //   data['AppKey'] = this.appKey;
  //   data['DevAddr'] = this.devAddr;
  //   data['AppSKey'] = this.appSKey;
  //   data['NwkSKey'] = this.nwkSKey;
  //   data['FSKKey'] = this.fSKKey;
  //   data['jsondata'] = this.jsondata;
  //   data['caktif'] = this.caktif;
  //   data['OptimisticLockField'] = this.optimisticLockField;
  //   data['seri'] = this.seri;
  //   data['sayacuygun'] = this.sayacuygun;
  //   data['manyetikswitch'] = this.manyetikswitch;
  //   data['cihazok'] = this.cihazok;
  //   return data;
  // }
}
