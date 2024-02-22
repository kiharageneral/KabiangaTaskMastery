import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class PieChartWidget extends StatelessWidget {
  const PieChartWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, double> dataMap = {
      'total': 55,
      'pending': 17,
      'completed': 13,
      'working on': 25,
    };
    List<Color> pieColors = [
      Colors.indigo,
      Colors.blue,
      Colors.green,
      Colors.amber,
      Colors.deepOrange,
      Colors.brown,
    ];
    return Container(
      width: 414,
      height: 250,
      margin: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.tertiary,
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            //color: Colors.white,
            height: 220,
            width: 234.15,
            child: Center(
              child: PieChart(
                dataMap: dataMap,
                colorList: pieColors,
                chartType: ChartType.ring,
                ringStrokeWidth: 34,
                legendOptions: const LegendOptions(showLegends: false),
                chartValuesOptions: const ChartValuesOptions(
                    showChartValues: true,
                    showChartValuesInPercentage: true,
                    showChartValuesOutside: false,
                    showChartValueBackground: true),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
