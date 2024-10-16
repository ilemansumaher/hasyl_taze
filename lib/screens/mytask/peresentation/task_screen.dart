import 'package:flutter/material.dart';
import 'package:hasyl2/screens/utils/app_bar.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class TaskScreen extends StatelessWidget {
  List<_SalesData> data = [
    _SalesData('Jan', 10),
    _SalesData('Feb', 15),
    _SalesData('Mar', 13),
    _SalesData('Apr', 20),
    _SalesData('May', 30),
    _SalesData('Jun', 30),
    _SalesData('Jul', 30),
    _SalesData('Agu', 30),
  ];
  List<_SalesData> data2 = [
    _SalesData('Jan', 8),
    _SalesData('Feb', 11),
    _SalesData('Mar', 30),
    _SalesData('Apr', 12),
    _SalesData('May', 5),
    _SalesData('Jun', 15),
    _SalesData('Jul', 3),
    _SalesData('Agu', 8),
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppB(),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(
                height: 350,
                padding: const EdgeInsets.all(8.0),
                child: SfCartesianChart(
                  primaryXAxis: CategoryAxis(),
                  title: ChartTitle(
                    text: "Hasabat",
                  ),
                  legend: Legend(
                    isVisible: true,
                  ),
                  tooltipBehavior: TooltipBehavior(
                    enable: true,
                  ),
                  series: <CartesianSeries<_SalesData, String>>[
                    LineSeries<_SalesData, String>(
                      dataSource: data,
                      xValueMapper: (_SalesData sales, _) => sales.year,
                      yValueMapper: (_SalesData sales, _) => sales.sales,

                      name: 'Sales',
                      // xAxisName: "a",
                      // Enable data label
                      dataLabelSettings: DataLabelSettings(isVisible: true),
                    ),
                    LineSeries<_SalesData, String>(
                        dataSource: data2,
                        xValueMapper: (_SalesData sales, _) => sales.year,
                        yValueMapper: (_SalesData sales, _) => sales.sales,
                        name: 'Sales',
                        // Enable data label
                        dataLabelSettings: DataLabelSettings(isVisible: true))
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
