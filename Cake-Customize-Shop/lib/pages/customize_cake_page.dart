import 'package:flutter/material.dart';

class CustomizeCakePage extends StatefulWidget {
  const CustomizeCakePage({super.key});

  @override
  State<CustomizeCakePage> createState() => _CustomizeCakePageState();
}

class _CustomizeCakePageState extends State<CustomizeCakePage> {
  final _cakeNameController = TextEditingController();
  bool _includeCandles = false;
  bool _addDedication = false;
  String? _flavor = 'Chocolate';
  final List<String> _submittedOrders = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Customize Your Cake')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            TextField(
              controller: _cakeNameController,
              decoration:
                  const InputDecoration(labelText: 'Cake Name / Design Title'),
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField<String>(
              value: _flavor,
              items: ['Chocolate', 'Vanilla', 'Red Velvet', 'Mocha']
                  .map((flavor) =>
                      DropdownMenuItem(value: flavor, child: Text(flavor)))
                  .toList(),
              onChanged: (val) => setState(() => _flavor = val),
              decoration: const InputDecoration(labelText: 'Select Flavor'),
            ),
            CheckboxListTile(
              title: const Text('Include Candles'),
              value: _includeCandles,
              onChanged: (val) => setState(() => _includeCandles = val!),
            ),
            SwitchListTile(
              title: const Text('Add Dedication Message'),
              value: _addDedication,
              onChanged: (val) => setState(() => _addDedication = val),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _submittedOrders.add(
                      'Cake: ${_cakeNameController.text}, Flavor: $_flavor');
                });
              },
              child: const Text('Submit Custom Cake'),
            ),
            const Divider(height: 20),
            const Text('Submitted Custom Cakes:'),
            ..._submittedOrders.map((order) => ListTile(title: Text(order))),
          ],
        ),
      ),
    );
  }
}
