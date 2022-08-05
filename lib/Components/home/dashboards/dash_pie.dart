// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors_in_immutables, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DashPie extends StatefulWidget {
  @override
  _DashPieState createState() => _DashPieState();
}

class _DashPieState extends State<DashPie> {
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * .25,
        height: MediaQuery.of(context).size.height * .30,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(255, 255, 255, 1),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 3,
              offset: const Offset(1, 1),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: SfCircularChart(
            legend: Legend(
              isVisible: true,
              overflowMode: LegendItemOverflowMode.wrap,
            ),
            tooltipBehavior: _tooltipBehavior,
            onDataLabelRender: (DataLabelRenderArgs args) {
              double value = double.parse(args.text);
              args.text = value.toStringAsFixed(0);
            },
            series: <CircularSeries<_SalesData, String>>[
              PieSeries<_SalesData, String>(
                selectionBehavior: SelectionBehavior(enable: true),
                explode: true,
                dataSource: _chartData,
                xValueMapper: (_SalesData sales, _) => sales.year,
                yValueMapper: (_SalesData sales, _) => sales.sales,
                name: 'Vendas',
                //dataLabelSettings: DataLabelSettings(isVisible: false),
                enableTooltip: true,
              )
            ]));
  }
}

List<_SalesData> _chartData = [
  _SalesData('Jan', 100),
  _SalesData('Fev', 100),
  _SalesData('Mar', 100),
  _SalesData('Abr', 100),
  _SalesData('Mai', 100),
  _SalesData('Jun', 100),
  
];

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
