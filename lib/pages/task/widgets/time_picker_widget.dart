import 'package:flutter/material.dart';
import 'package:kabianga_task_mastery/common/values/values.dart';

class TimePickerWidget extends StatelessWidget {
  const TimePickerWidget({
    super.key,
    required this.startTimeController,
    required this.endTimeController,
  });

  final TextEditingController startTimeController;
  final TextEditingController endTimeController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Start time',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                 SizedBox(height: Dimensions.height5),
                TextFormField(
                  controller: startTimeController,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Start Time',
                    prefixIcon: const Icon(Icons.access_time),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        startTimeController.clear();
                      },
                    ),
                  ),
                  onTap: () async {
                    final TimeOfDay? newTime = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                    );
                    if (newTime != null) {
                      startTimeController.text = newTime.format(context);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: Dimensions.width20),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Start time',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  controller: endTimeController,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'End Time',
                    prefixIcon: const Icon(Icons.access_time),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        endTimeController.clear();
                      },
                    ),
                  ),
                  onTap: () async {
                    final TimeOfDay? newTime = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                    );
                    if (newTime != null) {
                      endTimeController.text = newTime.format(context);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
