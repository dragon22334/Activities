import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedDate;
  String? _selectedTime;
  String? _cakeType;
  List<Map<String, String>> _reservations = [];

  void _pickDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2024),
      lastDate: DateTime(2030),
    );
    if (picked != null) {
      setState(() {
        _selectedDate = "${picked.year}-${picked.month}-${picked.day}";
      });
    }
  }

  void _pickTime() async {
    final picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() {
        _selectedTime = picked.format(context);
      });
    }
  }

  void _submitReservation() {
    if (_formKey.currentState!.validate() &&
        _selectedDate != null &&
        _selectedTime != null) {
      setState(() {
        _reservations.add({
          'Cake': _cakeType ?? 'Not specified',
          'Date': _selectedDate!,
          'Time': _selectedTime!,
        });
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Reservation saved!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Make a Cake Reservation'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Cake Type',
                      prefixIcon: Icon(Icons.cake),
                    ),
                    onChanged: (value) => _cakeType = value,
                    validator: (value) => value == null || value.isEmpty
                        ? 'Enter cake type'
                        : null,
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _pickDate,
                    child: const Text('Select Date'),
                  ),
                  ElevatedButton(
                    onPressed: _pickTime,
                    child: const Text('Select Time'),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    _selectedDate == null
                        ? 'No date selected'
                        : 'Selected Date: $_selectedDate',
                  ),
                  Text(
                    _selectedTime == null
                        ? 'No time selected'
                        : 'Selected Time: $_selectedTime',
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _submitReservation,
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pinkAccent),
                    child: const Text('Reserve'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Reservation Details:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _reservations.length,
                itemBuilder: (context, index) {
                  final res = _reservations[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      leading: const Icon(Icons.cake, color: Colors.pink),
                      title: Text(res['Cake']!),
                      subtitle:
                          Text("Date: ${res['Date']} | Time: ${res['Time']}"),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
