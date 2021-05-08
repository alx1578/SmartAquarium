import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
double _valor = 0.00;

class ContructorPhWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ContructorPhWidgetState();
  }
}

class ContructorPhWidgetState extends State<ContructorPhWidget>{


  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      axes: <RadialAxis>[
        RadialAxis(
          minimum: 1,
          maximum: 14,
          interval: 1,
          ranges: <GaugeRange>[
            GaugeRange(
                startValue: 1,
                endValue: 14,
                startWidth: 0.1,
                sizeUnit: GaugeSizeUnit.factor,
                endWidth: 0.1,
                gradient: SweepGradient(
                    stops: <double>[0.2, 0.5, 0.75],
                    colors: <Color>[Colors.lightBlueAccent, Colors.blueAccent, Colors.blueGrey]))
          ],
          pointers: <GaugePointer>[
            NeedlePointer(
              value: _getPh(),
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
                widget: Text( _valor.toString() +
                    ' pH',
                  style:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                positionFactor: 0.8,
                angle: 90)
          ],
        ),
      ],
    );
  }
}

double _getPh(){
  _valor = 1.4;
  return _valor;
}