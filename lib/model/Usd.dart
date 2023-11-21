class Usd {
  Usd({
      this.price, 
      this.volume24h, 
      this.volumeChange24h, 
      this.percentChange1h, 
      this.percentChange24h, 
      this.percentChange7d, 
      this.percentChange30d, 
      this.percentChange60d, 
      this.percentChange90d, 
      this.marketCap, 
      this.marketCapDominance, 
      this.fullyDilutedMarketCap, 
      this.tvl, 
      this.lastUpdated,});

  Usd.fromJson(dynamic json) {
    price = json['price'];
    volume24h = json['volume_24h'];
    volumeChange24h = json['volume_change_24h'];
    percentChange1h = json['percent_change_1h'];
    percentChange24h = json['percent_change_24h'];
    percentChange7d = json['percent_change_7d'];
    percentChange30d = json['percent_change_30d'];
    percentChange60d = json['percent_change_60d'];
    percentChange90d = json['percent_change_90d'];
    marketCap = json['market_cap'];
    marketCapDominance = json['market_cap_dominance'];
    fullyDilutedMarketCap = json['fully_diluted_market_cap'];
    tvl = json['tvl'];
    lastUpdated = json['last_updated'];
  }
  dynamic? price;
  dynamic? volume24h;
  dynamic? volumeChange24h;
  dynamic? percentChange1h;
  dynamic? percentChange24h;
  dynamic? percentChange7d;
  dynamic? percentChange30d;
  dynamic? percentChange60d;
  dynamic? percentChange90d;
  dynamic? marketCap;
  dynamic? marketCapDominance;
  dynamic? fullyDilutedMarketCap;
  dynamic tvl;
  String? lastUpdated;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['price'] = price;
    map['volume_24h'] = volume24h;
    map['volume_change_24h'] = volumeChange24h;
    map['percent_change_1h'] = percentChange1h;
    map['percent_change_24h'] = percentChange24h;
    map['percent_change_7d'] = percentChange7d;
    map['percent_change_30d'] = percentChange30d;
    map['percent_change_60d'] = percentChange60d;
    map['percent_change_90d'] = percentChange90d;
    map['market_cap'] = marketCap;
    map['market_cap_dominance'] = marketCapDominance;
    map['fully_diluted_market_cap'] = fullyDilutedMarketCap;
    map['tvl'] = tvl;
    map['last_updated'] = lastUpdated;
    return map;
  }

}