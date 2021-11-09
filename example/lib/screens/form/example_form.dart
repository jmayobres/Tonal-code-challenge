import 'package:flutter/material.dart';
import 'package:metrics_bubble/metrics_bubble.dart';

class ExampleFormWidget extends StatefulWidget {
  const ExampleFormWidget({Key? key}) : super(key: key);

  @override
  _ExampleFormWidgetState createState() => _ExampleFormWidgetState();
}

class _ExampleFormWidgetState extends State<ExampleFormWidget> {
  late int weightBubble;
  late TextEditingController textController;
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    //Initialize label and weight values
    textController = TextEditingController(text: 'Upper Body');
    weightBubble = 0;
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20),
        constraints: const BoxConstraints(maxWidth: 350, maxHeight: 600),
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 20,
              ),
              MetricsBubble(
                label: textController.text.trim(),
                weight: weightBubble,
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      // Update widget value of Weight
                      Slider(
                          label: 'Weight: $weightBubble',
                          value: weightBubble.toDouble(),
                          divisions: 200,
                          min: 0,
                          max: 350,
                          onChanged: (value) => setState(() {
                                weightBubble = value.toInt();
                              })),
                      const SizedBox(
                        height: 20,
                      ),
                      //Update widget value of Bubble Label
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: TextFormField(
                          maxLength: 12,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Bubble Label',
                              hintText: 'Core'),
                          autovalidateMode: AutovalidateMode.always,
                          onChanged: (value) => setState(() {}),
                          keyboardType: TextInputType.text,
                          controller: textController,
                          validator: (text) {
                            if (text!.isEmpty) {
                              return "Label is empty";
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
