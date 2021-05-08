import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_aquarium_app/http/webclient.dart';
import 'package:smart_aquarium_app/models/temperatureValue.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import 'constructor_progress.dart';

class ContructorWidgetTemperature extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ContructorWidgetTemperatureState();
  }
}

Future<GetTemperatureValue> ValorTemp(BuildContext context) {
  GetTemperatureValue temperatureValue;
  FutureBuilder<List<GetTemperatureValue>>(
    future: GetTemperature(),
    builder: (context, snapshot) {
      switch (snapshot.connectionState) {
        case ConnectionState.none:
        // TODO: Handle this case.
          break;
        case ConnectionState.waiting:
        // TODO: Handle this case.
          break;
        case ConnectionState.active:
        // TODO: Handle this case.
          break;
        case ConnectionState.done:
          final List<GetTemperatureValue> temperatures = snapshot.data;
          GetTemperatureValue getTemperatureValue = temperatures[0];
          temperatureValue = getTemperatureValue;
          break;
      }
      return Text('Unkown Error');
    },
    
  );
}


class ContructorWidgetTemperatureState
    extends State<ContructorWidgetTemperature> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<GetTemperatureValue>>(
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
            final List<GetTemperatureValue> temperatures = snapshot.data;
            GetTemperatureValue getTemperatureValue = temperatures[0];
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
                        gradient: SweepGradient(
                            stops: <double>[0.2, 0.5, 0.75],
                            colors: <Color>[
                              Colors.green,
                              Colors.yellow,
                              Colors.red
                            ]))
                  ],
                  pointers: <GaugePointer>[
                    NeedlePointer(
                      value: double.tryParse(ValorTemp(context).then((GetTemperatureValue) => getTemperatureValue.valor).toString()),
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
                        widget: Text(
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
            break;
        }
        return Text('Unkown Error');
      },
    );
  }

}
