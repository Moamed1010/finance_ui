

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../core/styling/app_colors.dart';

class Chart extends StatefulWidget {
  const Chart({super.key});

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  String _range = "Monthly";

  final months = const ["Jan", "Feb", "Mar", "Apr", "May"];


  final seriesA = const [7400.0, 7500.0, 7480.0, 7520.0, 7450.0];
  final seriesB = const [4900.0, 5000.0, 4950.0, 4980.0, 5050.0];


 
  static const _grid = Color(0xFFE9ECF4);
  static const _axis = Color(0xFF97A0AF);
 

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFE6E9F2)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                "Jan 28 - May 28, 2025",
                style: TextStyle(
                  color: _axis,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Spacer(),
              _RangePill(
                value: _range,
                onChanged: (v) => setState(() => _range = v),
              ),
            ],
          ),
          const SizedBox(height: 10),

          AspectRatio(
            aspectRatio: 1.85,
            child: BarChart(
              BarChartData(
                minY: 0,
                maxY: 8000,
                groupsSpace: 28, // المسافة بين كل شهر والتاني (زي الصورة)
                barTouchData: BarTouchData(enabled: false),
                borderData: FlBorderData(show: false),

                gridData: FlGridData(
                  show: true,
                  drawVerticalLine: false,
                  horizontalInterval: 2000,
                  getDrawingHorizontalLine: (value) => FlLine(
                    color: _grid,
                    strokeWidth: 1,
                    dashArray: [4, 4], // متقطع خفيف
                  ),
                ),

                titlesData: FlTitlesData(
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 26,
                      getTitlesWidget: (value, meta) {
                        final i = value.toInt();
                        if (i < 0 || i >= months.length) {
                          return const SizedBox.shrink();
                        }
                        return Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            months[i],
                            style: const TextStyle(
                              color: _axis,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 34,
                      interval: 2000,
                      getTitlesWidget: (value, meta) {
                        // 0 / 2k / 4k / 6k / 8k
                        if (value == 0) {
                          return const Text(
                            "0",
                            style: TextStyle(color: _axis, fontSize: 11),
                          );
                        }
                        final k = (value / 1000).round();
                        return Text(
                          "${k}k",
                          style: const TextStyle(color: _axis, fontSize: 11),
                        );
                      },
                    ),
                  ),
                ),

                barGroups: List.generate(months.length, (i) {
                  return BarChartGroupData(
                    x: i,
                    barsSpace: 8, // المسافة بين البارين جوه نفس الشهر
                    barRods: [
                      BarChartRodData(
                        toY: seriesA[i],
                        width: 12,
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      BarChartRodData(
                        toY: seriesB[i],
                        width: 12,
                        color: Color(0xff303A6E),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ],
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _RangePill extends StatelessWidget {
  const _RangePill({required this.value, required this.onChanged});

  final String value;
  final ValueChanged<String> onChanged;

  static const _pill = Color(0xFFBFD0FF);
  static const _text = Color(0xFF1B2559);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: _pill,
        borderRadius: BorderRadius.circular(16),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: value,
          icon: const Icon(Icons.keyboard_arrow_down, size: 18, color: _text),
          dropdownColor: Colors.white,
          style: const TextStyle(
            color: _text,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
          items: const [
            "Monthly",
            "Weekly",
            "Daily",
          ].map((e) => DropdownMenuItem(value: e, child: Text(e))).toList(),
          onChanged: (v) {
            if (v != null) onChanged(v);
          },
        ),
      ),
    );
  }
}
