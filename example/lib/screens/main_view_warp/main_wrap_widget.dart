import 'package:example/screens/form/example_form.dart';
import 'package:flutter/material.dart';

class MainWrapWidget extends StatefulWidget {
  const MainWrapWidget({Key? key}) : super(key: key);

  @override
  _MainWrapWidgetState createState() => _MainWrapWidgetState();
}

class _MainWrapWidgetState extends State<MainWrapWidget> {
  // List of widgets to test metrics bubble package
  late List<ExampleFormWidget> formList;

  @override
  void initState() {
    super.initState();
    // Creating list with one element of form widget
    formList = [const ExampleFormWidget()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example'),
      ),
      backgroundColor: Colors.grey.shade200,
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => formList
          ..add(const ExampleFormWidget())), //Add new forms to test the widget
        child: const Icon(Icons.plus_one_outlined),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Wrap(
              // Display  a collection of widget
              alignment: WrapAlignment.center,
              direction: Axis.horizontal,
              children: formList,
            ),
          ),
        ),
      ),
    );
  }
}
