class GlobalData {
  GlobalData({
    this.results,
  });

  List<Result> results;

  factory GlobalData.fromJson(Map<String, dynamic> json) => GlobalData(
        results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}

class Result {
  Result({
    this.totalCases,
    this.totalRecovered,
    this.totalUnresolved,
    this.totalDeaths,
    this.totalNewCasesToday,
    this.totalNewDeathsToday,
    this.totalActiveCases,
    this.totalSeriousCases,
    this.totalAffectedCountries,
  });

  int totalCases;
  int totalRecovered;
  int totalUnresolved;
  int totalDeaths;
  int totalNewCasesToday;
  int totalNewDeathsToday;
  int totalActiveCases;
  int totalSeriousCases;
  int totalAffectedCountries;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        totalCases: json["total_cases"],
        totalRecovered: json["total_recovered"],
        totalUnresolved: json["total_unresolved"],
        totalDeaths: json["total_deaths"],
        totalNewCasesToday: json["total_new_cases_today"],
        totalNewDeathsToday: json["total_new_deaths_today"],
        totalActiveCases: json["total_active_cases"],
        totalSeriousCases: json["total_serious_cases"],
        totalAffectedCountries: json["total_affected_countries"],
      );

  Map<String, dynamic> toJson() => {
        "total_cases": totalCases,
        "total_recovered": totalRecovered,
        "total_unresolved": totalUnresolved,
        "total_deaths": totalDeaths,
        "total_new_cases_today": totalNewCasesToday,
        "total_new_deaths_today": totalNewDeathsToday,
        "total_active_cases": totalActiveCases,
        "total_serious_cases": totalSeriousCases,
        "total_affected_countries": totalAffectedCountries,
      };
}
