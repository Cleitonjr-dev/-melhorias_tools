// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DashColumn extends StatefulWidget {
  DashColumn({Key? key}) : super(key: key);

  @override
  _DashColumnState createState() => _DashColumnState();
}

class _DashColumnState extends State<DashColumn> {
  late List<ExpenseData> _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * .20,
        height: MediaQuery.of(context).size.height * .25,
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
      child: SfCartesianChart(
        legend: Legend(isVisible: true,
        overflowMode: LegendItemOverflowMode.wrap,
        ),
        tooltipBehavior: _tooltipBehavior,
        series: <ChartSeries>[
      StackedBar100Series<ExpenseData, String>(
          dataSource: _chartData,
          xValueMapper: (ExpenseData exp, _) => exp.expenseCategory,
          yValueMapper: (ExpenseData exp, _) => exp.dados1,
          name: 'Info1',
          
          markerSettings: MarkerSettings(
            
            
          )),
      StackedBar100Series<ExpenseData, String>(
          dataSource: _chartData,
          xValueMapper: (ExpenseData exp, _) => exp.expenseCategory,
          yValueMapper: (ExpenseData exp, _) => exp.dados2,
          name: 'Info2',
          markerSettings: MarkerSettings(
            
          )),
      StackedBar100Series<ExpenseData, String>(
          dataSource: _chartData,
          xValueMapper: (ExpenseData exp, _) => exp.expenseCategory,
          yValueMapper: (ExpenseData exp, _) => exp.dados3,
          name: 'Info3',
          markerSettings: MarkerSettings(
            
          )),
      StackedBar100Series<ExpenseData, String>(
          dataSource: _chartData,
          xValueMapper: (ExpenseData exp, _) => exp.expenseCategory,
          yValueMapper: (ExpenseData exp, _) => exp.dados4,
          name: 'Info4',
          markerSettings: MarkerSettings(
            
            /*color: Colors.green,
            borderColor: Colors.green,*/
          )),
        ],
        primaryXAxis: CategoryAxis(),
      ),
    );
  }

  List<ExpenseData> getChartData() {
    final List<ExpenseData> chartData = [
      ExpenseData('Jun', 55, 40, 45, 48),
      ExpenseData('Mai', 33, 45, 54, 28),
      ExpenseData('Abr', 43, 23, 20, 34),
      ExpenseData('Mar', 32, 54, 23, 54),
      ExpenseData('Fev', 56, 18, 43, 55),
      ExpenseData('Jan', 23, 54, 33, 56),
    ];
    return chartData;
  }
}

class ExpenseData {
  ExpenseData(
      this.expenseCategory, this.dados1, this.dados2, this.dados3, this.dados4);
  final String expenseCategory;
  final num dados1;
  final num dados2;
  final num dados3;
  final num dados4;
  
}