import 'package:flutter/material.dart';

import '../widgets/custom_btn.dart';

class MyCards extends StatelessWidget {
  const MyCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: CustomButton(
        onTap: (){},
        color: Colors.grey.shade300,
        alignment: Alignment.centerLeft,
        borderRadius: 10,
        icon: Icon(
          Icons.credit_card,
          color: Colors.black87,
        ),
        label: Text(
          "\t \tMeus cartões",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black87),
        ),
      ),
    );
  }
}
