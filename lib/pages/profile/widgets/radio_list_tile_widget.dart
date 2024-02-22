import 'package:flutter/material.dart';

class RadioListTileWidget extends StatelessWidget {
  const RadioListTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Radio(value: 1, groupValue: 'null', onChanged: (index) {}),
                  const Expanded(
                    child: Text('Private'),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Radio(value: 1, groupValue: 'null', onChanged: (index) {}),
                  const Expanded(child: Text(' public'))
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Radio(value: 1, groupValue: 'null', onChanged: (index) {}),
                  const Expanded(child: Text('Secret'))
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
