import 'package:flutter/widgets.dart';

class EmbeddedContainer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return EmbeddedContainerState();
  }
}

class EmbeddedContainerState extends State<EmbeddedContainer> {
  Widget _currentWidget = Container();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _currentWidget;
  }

  void _handleRouteChange(Widget widget) async {
    setState(() async {  
      _currentWidget = widget;
    });
  }
}