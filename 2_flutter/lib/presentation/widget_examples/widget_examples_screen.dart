import 'package:flutter/material.dart';
import 'package:flutterbasics/presentation/components/custom_button.dart';
import 'package:flutterbasics/presentation/widget_examples/widgets/buttons_example.dart';
import 'package:flutterbasics/presentation/widget_examples/widgets/first_column_child.dart';
import 'package:flutterbasics/presentation/widget_examples/widgets/hello_world.dart';
import 'package:flutterbasics/presentation/widget_examples/widgets/layout_builder_example.dart';
import 'package:flutterbasics/presentation/widget_examples/widgets/max_berktold.dart';
import 'package:flutterbasics/presentation/widget_examples/widgets/max_steffen.dart';
import 'package:flutterbasics/presentation/widget_examples/widgets/media_query_example.dart';
import 'package:flutterbasics/presentation/widget_examples/widgets/row_expanded_example.dart';

class WidgetExampleScreen extends StatelessWidget {
  const WidgetExampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Basics")),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const RowEpandedExample(),
              const SizedBox(
                height: 20,
              ),
              const FirstColumnChild(),
              const SizedBox(
                height: 20,
              ),
              const HelloWorld(),
              const SizedBox(
                height: 20,
              ),
              const MaxSteffen(),
              const SizedBox(
                height: 20,
              ),
              const MaxBerktold(),
              const SizedBox(
                height: 40,
              ),
              const MediaQueryExample(),
              const SizedBox(
                height: 40,
              ),
              const LayoutBuilderExample(),
              const SizedBox(
                height: 40,
              ),
              const ButtonExamples(),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                onTap: () {
                  print("tapped");
                },
                icon: Icons.home,
                iconColor: Colors.white,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButtonGesture(
                  onTap: () {
                    print("CustomButtonGesture tapped");
                  },
                  text: "gesture button"),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => debugPrint('clicked'),
        child: const Icon(Icons.ac_unit),
      ),
    );
  }
}
