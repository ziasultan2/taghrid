import 'package:app/service/ApiProvider.dart';
import 'package:dart_ipify/dart_ipify.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrayerController extends GetxController {
  ApiProvider api = ApiProvider();

  final prayers = {}.obs;

  index() async {
    final ipv4 = await Ipify.ipv4();
    api
        .get(
            "https://www.islamicfinder.us/index.php/api/prayer_times?timezone=&user_ip=" +
                ipv4)
        .then((result) {
      print(result);
      print(result['results']);
      prayers.value = result['results'];
      print(prayers.value['Maghrib']);
    });
  }
}

class Prayer {
  String imsak;
  String sunrise;
  String fajr;
  String dhuhr;
  String asr;
  String sunset;
  String maghrib;
  String isha;
  String midnight;

  Prayer(
      {this.imsak,
      this.sunrise,
      this.fajr,
      this.dhuhr,
      this.asr,
      this.sunset,
      this.maghrib,
      this.isha,
      this.midnight});

  Prayer.fromJson(Map<String, dynamic> json) {
    imsak = json['Imsak'];
    sunrise = json['Sunrise'];
    fajr = json['Fajr'];
    dhuhr = json['Dhuhr'];
    asr = json['Asr'];
    sunset = json['Sunset'];
    maghrib = json['Maghrib'];
    isha = json['Isha'];
    midnight = json['Midnight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Imsak'] = this.imsak;
    data['Sunrise'] = this.sunrise;
    data['Fajr'] = this.fajr;
    data['Dhuhr'] = this.dhuhr;
    data['Asr'] = this.asr;
    data['Sunset'] = this.sunset;
    data['Maghrib'] = this.maghrib;
    data['Isha'] = this.isha;
    data['Midnight'] = this.midnight;
    return data;
  }
}
