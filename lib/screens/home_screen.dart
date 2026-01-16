import 'package:flutter/material.dart';
import 'package:flutter_unity_widgets/widgets/unity_button.dart';
import 'package:flutter_unity_widgets/widgets/unity_icon_button.dart';
import 'package:flutter_unity_widgets/widgets/unity_panel.dart';
import 'package:flutter_unity_widgets/widgets/unity_slider.dart';
import 'package:flutter_unity_widgets/widgets/unity_text_field.dart';
import 'package:flutter_unity_widgets/widgets/unity_toggle.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool toggleValue = false;
  double sliderValue = 0.5;
  final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFF1E1E1E),
      appBar: AppBar(
        title: const Text('Unity Style Widgets'),
        // backgroundColor: const Color(0xFF2D2D2D),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            UnityPanel(
              title: 'Inspector',
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UnityTextField(
                    controller: textController,
                    label: 'Name',
                    hint: 'Enter name...',
                  ),
                  const SizedBox(height: 16),
                  UnityToggle(
                    value: toggleValue,
                    onChanged: (val) => setState(() => toggleValue = val),
                    label: 'Enabled',
                  ),
                  const SizedBox(height: 16),
                  UnitySlider(
                    value: sliderValue,
                    onChanged: (val) => setState(() => sliderValue = val),
                    label: 'Intensity',
                  ),
                  const SizedBox(height: 16),
                  UnityButton(
                    text: 'Apply',
                    onPressed: () {
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(const SnackBar(content: Text('Applied!')));
                    },
                  ),
                  Center(
                    child: UnityIconButton(
                      icon: Icons.home,
                      onPressed: () {},
                      size: 50,
                      color: Colors.blue,
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }
}
