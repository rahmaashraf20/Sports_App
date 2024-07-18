class LeaguesModel {
  final String leagueKey;
  final String leagueName;
  final String countryKey;
  final String countryName;
  final String leagueLogo;
  final String countryLogo;

  LeaguesModel({
    required this.leagueKey,
    required this.leagueName,
    required this.countryKey,
    required this.countryName,
    required this.leagueLogo,
    required this.countryLogo,
  });

  factory LeaguesModel.fromJson(Map<String, dynamic> json) {
    return LeaguesModel(
      leagueKey: json['league_key'] as String,
      leagueName: json['league_name'] as String,
      countryKey: json['country_key'] as String,
      countryName: json['country_name'] as String,
      leagueLogo: json['league_logo'] as String,
      countryLogo: json['country_logo'] as String,
    );
  }
}