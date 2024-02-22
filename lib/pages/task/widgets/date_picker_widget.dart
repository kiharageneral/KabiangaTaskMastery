import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DatePickerWidget extends StatelessWidget {
  const DatePickerWidget({
    super.key,
    required Rx<DateTime> selectedDate,
  }) : _selectedDate = selectedDate;

  final Rx<DateTime> _selectedDate;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: TextEditingController(
        text: _selectedDate.value.toString(),
      ),
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: const Icon(Icons.calendar_today),
          onPressed: () async {
            final date = await showDatePicker(
              context: context,
              initialDate: _selectedDate.value,
              firstDate: DateTime(1900),
              lastDate: DateTime(2100),
            );
            if (date != null) {
              _selectedDate.value = date;
            }
          },
        ),
      ),
      keyboardType: TextInputType.datetime,
      onChanged: (value) {
        final date = DateTime.tryParse(value);
        if (date != null) {
          _selectedDate.value = date;
        }
      },
    );
  }
}
