import 'package:flutter/material.dart';
import 'package:nubank_ui/util/colors.dart';
import 'package:nubank_ui/util/styles.dart';

import 'custom_btn.dart';
import 'main.dart';

class ContaBody extends StatelessWidget {
  const ContaBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Conta",
                style: mediumTxt.copyWith(fontSize: 20),
              ),
              Icon(Icons.keyboard_arrow_right)
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text("Falta pouco para o seu dinheiro começar a render",
              style: mediumTxt),
          SizedBox(
            height: 15,
          ),
          Text("1. Abrir sua Conta",
              style: smallTxt.copyWith(color: Colors.grey)),
          Text(
            "2. Fazer seu primeiro depósito",
            style: smallTxt,
          ),
          Text(
            "3. Ver seu dinheiro rendendo mais que poupança",
            style: smallTxt,
          ),
          SizedBox(
            height: 25,
          ),
          CustomButton(
              onTap: () {},
              label: Text("Fazer primeiro depósito",
                  style: mediumTxt.copyWith(color: Colors.white)),
              color: CustomColors.p1)
        ],
      ),
    );
  }
}
