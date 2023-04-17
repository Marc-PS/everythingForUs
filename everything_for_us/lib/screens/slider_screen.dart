import 'package:everything_for_us/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnabler = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
         children: [
          Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            divisions: 10,
            value: _sliderValue, 
            onChanged: _sliderEnabler ? (value) {
              _sliderValue = value;
              setState(() {});
            }
            : null
          ),

          Checkbox(
            value: _sliderEnabler, 
            onChanged: (value) {
              _sliderEnabler = value ?? true;
              setState(() {});
            }
          ),

          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar slider'),
            value: _sliderEnabler, 
            onChanged: ((value) => setState(() {
              _sliderEnabler = value ?? true;
            }))),

            
          Switch(
            value: _sliderEnabler, 
            onChanged: ((value) => setState(() {
             _sliderEnabler = value;
          }))),

          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar slider'),
            value: _sliderEnabler, 
            onChanged: ((value) => setState(() {
              _sliderEnabler = value;
          }))),

          const AboutListTile(),
      
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://picsum.photos/2000/5000'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
          
         ],
      ),
    );
  }
}