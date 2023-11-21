import 'Quote.dart';

class Data {
  Data({
      this.id, 
      this.name, 
      this.symbol, 
      this.slug, 
      this.numMarketPairs, 
      this.dateAdded, 
      this.tags, 
      this.maxSupply, 
      this.circulatingSupply, 
      this.totalSupply, 
      this.infiniteSupply, 
      this.platform, 
      this.cmcRank, 
      this.selfReportedCirculatingSupply, 
      this.selfReportedMarketCap, 
      this.tvlRatio, 
      this.lastUpdated, 
      this.quote,});

  Data.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    symbol = json['symbol'];
    slug = json['slug'];
    numMarketPairs = json['num_market_pairs'];
    dateAdded = json['date_added'];
    tags = json['tags'] != null ? json['tags'].cast<String>() : [];
    maxSupply = json['max_supply'];
    circulatingSupply = json['circulating_supply'];
    totalSupply = json['total_supply'];
    infiniteSupply = json['infinite_supply'];
    platform = json['platform'];
    cmcRank = json['cmc_rank'];
    selfReportedCirculatingSupply = json['self_reported_circulating_supply'];
    selfReportedMarketCap = json['self_reported_market_cap'];
    tvlRatio = json['tvl_ratio'];
    lastUpdated = json['last_updated'];
    quote = json['quote'] != null ? Quote.fromJson(json['quote']) : null;
  }
  dynamic? id;
  String? name;
  String? symbol;
  String? slug;
  dynamic? numMarketPairs;
  String? dateAdded;
  List<String>? tags;
  dynamic? maxSupply;
  dynamic? circulatingSupply;
  dynamic? totalSupply;
  bool? infiniteSupply;
  dynamic platform;
  dynamic? cmcRank;
  dynamic selfReportedCirculatingSupply;
  dynamic selfReportedMarketCap;
  dynamic tvlRatio;
  String? lastUpdated;
  Quote? quote;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['symbol'] = symbol;
    map['slug'] = slug;
    map['num_market_pairs'] = numMarketPairs;
    map['date_added'] = dateAdded;
    map['tags'] = tags;
    map['max_supply'] = maxSupply;
    map['circulating_supply'] = circulatingSupply;
    map['total_supply'] = totalSupply;
    map['infinite_supply'] = infiniteSupply;
    map['platform'] = platform;
    map['cmc_rank'] = cmcRank;
    map['self_reported_circulating_supply'] = selfReportedCirculatingSupply;
    map['self_reported_market_cap'] = selfReportedMarketCap;
    map['tvl_ratio'] = tvlRatio;
    map['last_updated'] = lastUpdated;
    if (quote != null) {
      map['quote'] = quote?.toJson();
    }
    return map;
  }

}