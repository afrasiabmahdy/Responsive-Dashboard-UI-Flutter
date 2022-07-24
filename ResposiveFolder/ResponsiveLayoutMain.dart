import 'package:flutter/material.dart';

class ResponsiveLayoutMain extends StatelessWidget {
  final Widget MobilScafold;
  final Widget TabletScafold;
  final Widget WindowsScafold;

  ResponsiveLayoutMain({
    required this.MobilScafold,
    required this.TabletScafold,
    required this.WindowsScafold,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth < 600)
        {
          return MobilScafold;
        }
      else if (constraints.maxWidth < 1500)
        {
          return TabletScafold;
        }
      else{
        return WindowsScafold;
      }
    },);
  }
}
