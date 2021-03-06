import 'package:fl_chart/fl_chart.dart';

class LineTitles {
  static getTitleData() => FlTitlesData(
    show: true,
    bottomTitles: SideTitles(
      showTitles: true,
      reservedSize: 15,
      getTitles: (value) {
        switch (value.toInt()) {
          case 2:
            return 'MAR';
          case 5:
            return 'JUN';
          case 8:
            return 'SEP';
        }
        return '';
      },
      margin: 8,
    ),
    leftTitles: SideTitles(
      showTitles: true,
      getTitles: (value) {
        switch (value.toInt()) {
          case 1:
            return '10k';
          case 3:
            return '30k';
          case 5:
            return '50k';
        }
        return '';
      },
      reservedSize: 15,
      margin: 12,
    ),
  );
}