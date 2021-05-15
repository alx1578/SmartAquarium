import 'package:flutter/material.dart';
import 'package:smart_aquarium_app/http/webclient.dart';
import 'package:smart_aquarium_app/models/temperatureValue.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import 'constructor_progress.dart';

double tempValue = 0.0;

class ContructorWidgetTemperature extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ContructorWidgetTemperatureState();
  }
}



Future<double> ValorTemp(BuildContext context) async {
  double temp;
  await FutureBuilder<GetTemperatureValue>(
      future: GetTemperature(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            break;
          case ConnectionState.waiting:
            return Progress();
            break;
          case ConnectionState.active:
            break;
          case ConnectionState.done:
            final GetTemperatureValue temperatureValue = snapshot.data;
            temp = temperatureValue.valor;
            print('valor temp' + '${temp}');
            break;
        }
        return Text("(data)");
      });
  return temp;
}

class ContructorWidgetTemperatureState
    extends State<ContructorWidgetTemperature> {
  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      axes: <RadialAxis>[
        RadialAxis(
          minimum: 0,
          maximum: 120,
          interval: 10,
          ranges: <GaugeRange>[
            GaugeRange(
                startValue: 0,
                endValue: 120,
                startWidth: 0.1,
                sizeUnit: GaugeSizeUnit.factor,
                endWidth: 0.1,
                gradient: SweepGradient(stops: <double>[
                  0.2,
                  0.5,
                  0.75
                ], colors: <Color>[
                  Colors.green,
                  Colors.yellow,
                  Colors.red
                ]))
          ],
          pointers: <GaugePointer>[
            NeedlePointer(
              value: double.tryParse(ValorTemp(context).then((value) => double).toString()),
              enableAnimation: true,
              needleColor: Colors.black,
              tailStyle: TailStyle(
                  length: 0.18,
                  width: 8,
                  color: Colors.black,
                  lengthUnit: GaugeSizeUnit.factor),
              needleLength: 0.68,
              needleStartWidth: 1,
              needleEndWidth: 8,
              knobStyle: KnobStyle(
                  knobRadius: 0.07,
                  color: Colors.white,
                  borderWidth: 0.05,
                  borderColor: Colors.black),
              lengthUnit: GaugeSizeUnit.factor,
            ),
          ],
          annotations: <GaugeAnnotation>[
            GaugeAnnotation(
                widget: Text('50.0'+
                    '°C',
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w600),
                ),
                positionFactor: 0.8,
                angle: 90)
          ],
        ),
      ],
    );
  }
}
