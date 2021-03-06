// import dart and flutter resources
import 'package:flutter/material.dart';

// import package resources
import 'package:flutter_mobx/flutter_mobx.dart';

// import local package resources

// mobx
import 'package:calc_testing/store/data.dart';

class Data extends StatefulWidget {
  Data({Key key, this.title, this.lite}) : super(key: key);

  final String title;
  final bool lite;

  // Data({this.title, this.lite,});

  @override
  _DataState createState() => _DataState();
}

class _DataState extends State<Data> {
  // widget.title;

  @override
  void initState() {
    super.initState();

    // dataStore.getAltitude();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // double vh = MediaQuery.of(context).size.height / 100;

    return Observer(
      builder: (_) => Container(
        padding: EdgeInsets.all(16.0),
        // width: MediaQuery.of(context).size.width,
        width: 400,
        // height: double.maxFinite,
        // color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // SizedBox(
            //   height: 24.0,
            // ),
            Text('Parametri:', style: Theme.of(context).textTheme.headline2),
            Divider(color: Colors.black),
            FittedBox(
              child: Wrap(
                direction: Axis.horizontal,
                crossAxisAlignment: WrapCrossAlignment.start,
                verticalDirection: VerticalDirection.down,
                alignment: WrapAlignment.start,
                runAlignment: WrapAlignment.start,
                runSpacing: 32.0,
                spacing: 32.0,
                children: [
                  Text(
                    'Lat: ${dataStore.latitude}°',
                  ),
                  Text(
                    'Long: ${dataStore.longitude}°',
                  ),
                  Text(
                    'Alt: ${dataStore.altitude}m',
                  ),
                ],
              ),
            ),
            FittedBox(
              child: Wrap(
                direction: Axis.horizontal,
                crossAxisAlignment: WrapCrossAlignment.start,
                verticalDirection: VerticalDirection.down,
                alignment: WrapAlignment.start,
                runAlignment: WrapAlignment.start,
                runSpacing: 32.0,
                spacing: 32.0,
                children: [
                  Text(
                    'Timezone: ${dataStore.timezone}',
                  ),
                  Text(
                    'Fajr angle: ${dataStore.fajrAngle}°',
                  ),
                  Text(
                    'Isha angle: ${dataStore.ishaAngle}°',
                  ),
                ],
              ),
            ),
            FittedBox(
              child: Wrap(
                direction: Axis.horizontal,
                crossAxisAlignment: WrapCrossAlignment.start,
                verticalDirection: VerticalDirection.down,
                alignment: WrapAlignment.start,
                runAlignment: WrapAlignment.start,
                runSpacing: 32.0,
                spacing: 32.0,
                children: [
                  Text(
                    'Asr: Shaafi',
                  ),
                  Text(
                    'Summertime: auto',
                  ),
                  Text(
                    'Sec precision: true',
                  ),
                ],
              ),
            ),
            Divider(color: Colors.black),
          ],
        ),
      ),
    );
  }
}
