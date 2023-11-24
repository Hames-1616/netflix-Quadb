import 'dart:convert';

import 'package:flutter/foundation.dart';

class Movie {
  double? score;
  Show? show;
  Movie({
    this.score,
    this.show,
  });


  Movie copyWith({
    double? score,
    Show? show,
  }) {
    return Movie(
      score: score ?? this.score,
      show: show ?? this.show,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(score != null){
      result.addAll({'score': score});
    }
    if(show != null){
      result.addAll({'show': show!.toMap()});
    }
  
    return result;
  }

  factory Movie.fromMap(Map<String, dynamic> map) {
    return Movie(
      score: map['score']?.toDouble(),
      show: map['show'] != null ? Show.fromMap(map['show']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Movie.fromJson(String source) => Movie.fromMap(json.decode(source));

  @override
  String toString() => 'Movie(score: $score, show: $show)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Movie &&
      other.score == score &&
      other.show == show;
  }

  @override
  int get hashCode => score.hashCode ^ show.hashCode;
}

class Show {
  int? id;
  String? url;
  String? name;
  String? type;
  String? language;
  List<String>? genres;
  String? status;
  int? runtime;
  int? averageRuntime;
  String? premiered;
  String? ended;
  String? officialSite;
  Schedule? schedule;
  Rating? rating;
  int? weight;
  Network? network;
  Externals? externals;
  Image? image;
  String? summary;
  int? updated;
  Links? lLinks;
  Show({
    this.id,
    this.url,
    this.name,
    this.type,
    this.language,
    this.genres,
    this.status,
    this.runtime,
    this.averageRuntime,
    this.premiered,
    this.ended,
    this.officialSite,
    this.schedule,
    this.rating,
    this.weight,
    this.network,
    this.externals,
    this.image,
    this.summary,
    this.updated,
    this.lLinks,
  });

  


  Show copyWith({
    int? id,
    String? url,
    String? name,
    String? type,
    String? language,
    List<String>? genres,
    String? status,
    int? runtime,
    int? averageRuntime,
    String? premiered,
    String? ended,
    String? officialSite,
    Schedule? schedule,
    Rating? rating,
    int? weight,
    Network? network,
    Externals? externals,
    Image? image,
    String? summary,
    int? updated,
    Links? lLinks,
  }) {
    return Show(
      id: id ?? this.id,
      url: url ?? this.url,
      name: name ?? this.name,
      type: type ?? this.type,
      language: language ?? this.language,
      genres: genres ?? this.genres,
      status: status ?? this.status,
      runtime: runtime ?? this.runtime,
      averageRuntime: averageRuntime ?? this.averageRuntime,
      premiered: premiered ?? this.premiered,
      ended: ended ?? this.ended,
      officialSite: officialSite ?? this.officialSite,
      schedule: schedule ?? this.schedule,
      rating: rating ?? this.rating,
      weight: weight ?? this.weight,
      network: network ?? this.network,
      externals: externals ?? this.externals,
      image: image ?? this.image,
      summary: summary ?? this.summary,
      updated: updated ?? this.updated,
      lLinks: lLinks ?? this.lLinks,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(id != null){
      result.addAll({'id': id});
    }
    if(url != null){
      result.addAll({'url': url});
    }
    if(name != null){
      result.addAll({'name': name});
    }
    if(type != null){
      result.addAll({'type': type});
    }
    if(language != null){
      result.addAll({'language': language});
    }
    if(genres != null){
      result.addAll({'genres': genres});
    }
    if(status != null){
      result.addAll({'status': status});
    }
    if(runtime != null){
      result.addAll({'runtime': runtime});
    }
    if(averageRuntime != null){
      result.addAll({'averageRuntime': averageRuntime});
    }
    if(premiered != null){
      result.addAll({'premiered': premiered});
    }
    if(ended != null){
      result.addAll({'ended': ended});
    }
    if(officialSite != null){
      result.addAll({'officialSite': officialSite});
    }
    if(schedule != null){
      result.addAll({'schedule': schedule!.toMap()});
    }
    if(rating != null){
      result.addAll({'rating': rating!.toMap()});
    }
    if(weight != null){
      result.addAll({'weight': weight});
    }
    if(network != null){
      result.addAll({'network': network!.toMap()});
    }
    if(externals != null){
      result.addAll({'externals': externals!.toMap()});
    }
    if(image != null){
      result.addAll({'image': image!.toMap()});
    }
    if(summary != null){
      result.addAll({'summary': summary});
    }
    if(updated != null){
      result.addAll({'updated': updated});
    }
    if(lLinks != null){
      result.addAll({'lLinks': lLinks!.toMap()});
    }
  
    return result;
  }

  factory Show.fromMap(Map<String, dynamic> map) {
    return Show(
      id: map['id']?.toInt(),
      url: map['url'],
      name: map['name'],
      type: map['type'],
      language: map['language'],
      genres: List<String>.from(map['genres']),
      status: map['status'],
      runtime: map['runtime']?.toInt(),
      averageRuntime: map['averageRuntime']?.toInt(),
      premiered: map['premiered'],
      ended: map['ended'],
      officialSite: map['officialSite'],
      schedule: map['schedule'] != null ? Schedule.fromMap(map['schedule']) : null,
      rating: map['rating'] != null ? Rating.fromMap(map['rating']) : null,
      weight: map['weight']?.toInt(),
      network: map['network'] != null ? Network.fromMap(map['network']) : null,
      externals: map['externals'] != null ? Externals.fromMap(map['externals']) : null,
      image: map['image'] != null ? Image.fromMap(map['image']) : null,
      summary: map['summary'],
      updated: map['updated']?.toInt(),
      lLinks: map['lLinks'] != null ? Links.fromMap(map['lLinks']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Show.fromJson(String source) => Show.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Show(id: $id, url: $url, name: $name, type: $type, language: $language, genres: $genres, status: $status, runtime: $runtime, averageRuntime: $averageRuntime, premiered: $premiered, ended: $ended, officialSite: $officialSite, schedule: $schedule, rating: $rating, weight: $weight, network: $network, externals: $externals, image: $image, summary: $summary, updated: $updated, lLinks: $lLinks)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Show &&
      other.id == id &&
      other.url == url &&
      other.name == name &&
      other.type == type &&
      other.language == language &&
      listEquals(other.genres, genres) &&
      other.status == status &&
      other.runtime == runtime &&
      other.averageRuntime == averageRuntime &&
      other.premiered == premiered &&
      other.ended == ended &&
      other.officialSite == officialSite &&
      other.schedule == schedule &&
      other.rating == rating &&
      other.weight == weight &&
      other.network == network &&
      other.externals == externals &&
      other.image == image &&
      other.summary == summary &&
      other.updated == updated &&
      other.lLinks == lLinks;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      url.hashCode ^
      name.hashCode ^
      type.hashCode ^
      language.hashCode ^
      genres.hashCode ^
      status.hashCode ^
      runtime.hashCode ^
      averageRuntime.hashCode ^
      premiered.hashCode ^
      ended.hashCode ^
      officialSite.hashCode ^
      schedule.hashCode ^
      rating.hashCode ^
      weight.hashCode ^
      network.hashCode ^
      externals.hashCode ^
      image.hashCode ^
      summary.hashCode ^
      updated.hashCode ^
      lLinks.hashCode;
  }
}

class Schedule {
  String? time;
  List<String>? days;
  Schedule({
    this.time,
    this.days,
  });


  Schedule copyWith({
    String? time,
    List<String>? days,
  }) {
    return Schedule(
      time: time ?? this.time,
      days: days ?? this.days,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(time != null){
      result.addAll({'time': time});
    }
    if(days != null){
      result.addAll({'days': days});
    }
  
    return result;
  }

  factory Schedule.fromMap(Map<String, dynamic> map) {
    return Schedule(
      time: map['time'],
      days: List<String>.from(map['days']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Schedule.fromJson(String source) => Schedule.fromMap(json.decode(source));

  @override
  String toString() => 'Schedule(time: $time, days: $days)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Schedule &&
      other.time == time &&
      listEquals(other.days, days);
  }

  @override
  int get hashCode => time.hashCode ^ days.hashCode;
}

class Rating {
  double? average;
  Rating({
    this.average,
  });



  Rating copyWith({
    double? average,
  }) {
    return Rating(
      average: average ?? this.average,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(average != null){
      result.addAll({'average': average});
    }
  
    return result;
  }

  factory Rating.fromMap(Map<String, dynamic> map) {
    return Rating(
      average: map['average']?.toDouble(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Rating.fromJson(String source) => Rating.fromMap(json.decode(source));

  @override
  String toString() => 'Rating(average: $average)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Rating &&
      other.average == average;
  }

  @override
  int get hashCode => average.hashCode;
}

class Network {
  int? id;
  String? name;
  Country? country;
  String? officialSite;
  Network({
    this.id,
    this.name,
    this.country,
    this.officialSite,
  });

  Network copyWith({
    int? id,
    String? name,
    Country? country,
    String? officialSite,
  }) {
    return Network(
      id: id ?? this.id,
      name: name ?? this.name,
      country: country ?? this.country,
      officialSite: officialSite ?? this.officialSite,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(id != null){
      result.addAll({'id': id});
    }
    if(name != null){
      result.addAll({'name': name});
    }
    if(country != null){
      result.addAll({'country': country!.toMap()});
    }
    if(officialSite != null){
      result.addAll({'officialSite': officialSite});
    }
  
    return result;
  }

  factory Network.fromMap(Map<String, dynamic> map) {
    return Network(
      id: map['id']?.toInt(),
      name: map['name'],
      country: map['country'] != null ? Country.fromMap(map['country']) : null,
      officialSite: map['officialSite'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Network.fromJson(String source) => Network.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Network(id: $id, name: $name, country: $country, officialSite: $officialSite)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Network &&
      other.id == id &&
      other.name == name &&
      other.country == country &&
      other.officialSite == officialSite;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      country.hashCode ^
      officialSite.hashCode;
  }
}

class Country {
  String? name;
  String? code;
  String? timezone;
  Country({
    this.name,
    this.code,
    this.timezone,
  });



  Country copyWith({
    String? name,
    String? code,
    String? timezone,
  }) {
    return Country(
      name: name ?? this.name,
      code: code ?? this.code,
      timezone: timezone ?? this.timezone,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(name != null){
      result.addAll({'name': name});
    }
    if(code != null){
      result.addAll({'code': code});
    }
    if(timezone != null){
      result.addAll({'timezone': timezone});
    }
  
    return result;
  }

  factory Country.fromMap(Map<String, dynamic> map) {
    return Country(
      name: map['name'],
      code: map['code'],
      timezone: map['timezone'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Country.fromJson(String source) => Country.fromMap(json.decode(source));

  @override
  String toString() => 'Country(name: $name, code: $code, timezone: $timezone)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Country &&
      other.name == name &&
      other.code == code &&
      other.timezone == timezone;
  }

  @override
  int get hashCode => name.hashCode ^ code.hashCode ^ timezone.hashCode;
}

class Externals {
  int? thetvdb;
  String? imdb;
  Externals({
    this.thetvdb,
    this.imdb,
  });



  Externals copyWith({
    int? thetvdb,
    String? imdb,
  }) {
    return Externals(
      thetvdb: thetvdb ?? this.thetvdb,
      imdb: imdb ?? this.imdb,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(thetvdb != null){
      result.addAll({'thetvdb': thetvdb});
    }
    if(imdb != null){
      result.addAll({'imdb': imdb});
    }
  
    return result;
  }

  factory Externals.fromMap(Map<String, dynamic> map) {
    return Externals(
      thetvdb: map['thetvdb']?.toInt(),
      imdb: map['imdb'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Externals.fromJson(String source) => Externals.fromMap(json.decode(source));

  @override
  String toString() => 'Externals(thetvdb: $thetvdb, imdb: $imdb)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Externals &&
      other.thetvdb == thetvdb &&
      other.imdb == imdb;
  }

  @override
  int get hashCode => thetvdb.hashCode ^ imdb.hashCode;
}

class Image {
  String? medium;
  String? original;
  Image({
    this.medium,
    this.original,
  });


  Image copyWith({
    String? medium,
    String? original,
  }) {
    return Image(
      medium: medium ?? this.medium,
      original: original ?? this.original,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(medium != null){
      result.addAll({'medium': medium});
    }
    if(original != null){
      result.addAll({'original': original});
    }
  
    return result;
  }

  factory Image.fromMap(Map<String, dynamic> map) {
    return Image(
      medium: map['medium'],
      original: map['original'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Image.fromJson(String source) => Image.fromMap(json.decode(source));

  @override
  String toString() => 'Image(medium: $medium, original: $original)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Image &&
      other.medium == medium &&
      other.original == original;
  }

  @override
  int get hashCode => medium.hashCode ^ original.hashCode;
}

class Links {
  Self? self;
  Self? previousepisode;
  Links({
    this.self,
    this.previousepisode,
  });


  Links copyWith({
    Self? self,
    Self? previousepisode,
  }) {
    return Links(
      self: self ?? this.self,
      previousepisode: previousepisode ?? this.previousepisode,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(self != null){
      result.addAll({'self': self!.toMap()});
    }
    if(previousepisode != null){
      result.addAll({'previousepisode': previousepisode!.toMap()});
    }
  
    return result;
  }

  factory Links.fromMap(Map<String, dynamic> map) {
    return Links(
      self: map['self'] != null ? Self.fromMap(map['self']) : null,
      previousepisode: map['previousepisode'] != null ? Self.fromMap(map['previousepisode']) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Links.fromJson(String source) => Links.fromMap(json.decode(source));

  @override
  String toString() => 'Links(self: $self, previousepisode: $previousepisode)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Links &&
      other.self == self &&
      other.previousepisode == previousepisode;
  }

  @override
  int get hashCode => self.hashCode ^ previousepisode.hashCode;
}

class Self {
  String? href;
  Self({
    this.href,
  });


  Self copyWith({
    String? href,
  }) {
    return Self(
      href: href ?? this.href,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    if(href != null){
      result.addAll({'href': href});
    }
  
    return result;
  }

  factory Self.fromMap(Map<String, dynamic> map) {
    return Self(
      href: map['href'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Self.fromJson(String source) => Self.fromMap(json.decode(source));

  @override
  String toString() => 'Self(href: $href)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Self &&
      other.href == href;
  }

  @override
  int get hashCode => href.hashCode;
}
