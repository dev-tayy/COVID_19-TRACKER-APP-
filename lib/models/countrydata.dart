class CountryData {
  CountryData({
    this.data,
  });

  NigeriaData data;

  factory CountryData.fromJson(Map<String, dynamic> json) => CountryData(
        data: NigeriaData.fromJson(json["data"]),
      );
}

class NigeriaData {
  String totalSamplesTested;
  int totalConfirmedCases;
  int totalActiveCases;
  int discharged;
  int death;

  NigeriaData({
    this.totalSamplesTested,
    this.totalConfirmedCases,
    this.totalActiveCases,
    this.discharged,
    this.death,
  });

  factory NigeriaData.fromJson(Map<String, dynamic> json) => NigeriaData(
        totalSamplesTested: json["totalSamplesTested"],
        totalConfirmedCases: json["totalConfirmedCases"],
        totalActiveCases: json["totalActiveCases"],
        discharged: json["discharged"],
        death: json["death"],
      );
}
