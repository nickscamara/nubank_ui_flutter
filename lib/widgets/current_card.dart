import 'package:flutter/material.dart';
import 'package:nubank_ui/util/styles.dart';

class CurrentCard extends StatelessWidget {
  const CurrentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Icon(Icons.credit_card),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Cartão de Crédito",
              style: bigText,
            ),
            Icon(Icons.keyboard_arrow_right),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Text("Fatura Atual",
            style: normalTxt.copyWith(color: Colors.grey[600])),
        SizedBox(
          height: 5,
        ),
        Text("R\$ 0,00",
            style: biggerText),
        SizedBox(
          height: 5,
        ),
        Text("Limite disponível de R\$ 200,00",
            style: smallTxt.copyWith(color: Colors.grey[600])),
      ]),
    );
  }
}
