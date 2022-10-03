import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class SheetIntervalQuestionWidget extends StatefulWidget {
  const SheetIntervalQuestionWidget({super.key});

  @override
  State<SheetIntervalQuestionWidget> createState() =>
      _SheetIntervalQuestionWidgetState();
}

class _SheetIntervalQuestionWidgetState
    extends State<SheetIntervalQuestionWidget> {
  num interval;

  _SheetIntervalQuestionWidgetState([this.interval = 10]);

  @override
  Widget build(BuildContext context) {
    return Html(data: """
    <head>
        <script src="asset:assets/js/abc.js" type="text/javascript"></script>
        </script>
    </head>
    <body>
      <div style="text-align: center;">
        <script>
          var abc = "T: Cooley's\n" +
            "M: 4/4\n" +
            "L: 1/8\n" +
            "R: reel\n" +
            "K: Emin\n" +
            "|:D2|EB{c}BA B2 EB|~B2 AB dBAG|FDAD BDAD|FDAD dAFD|\n" +
            "EBBA B2 EB|B2 AB defg|afe^c dBAF|DEFD E2:|\n" +
            "|:gf|eB B2 efge|eB B2 gedB|A2 FA DAFA|A2 FA defg|\n" +
            "eB B2 eBgB|eB B2 defg|afe^c dBAF|DEFD E2:|";

          function load() {
            ABCJS.renderAbc("paper", abc);
          }
        </script>
        <div style="font-size: 2em; font-weight: bold;">What is the interval?</div>
        <div style="font-size: 4em; font-weight: bold;">${interval}</div>
      </div>
    </body>
    """);
  }
}
