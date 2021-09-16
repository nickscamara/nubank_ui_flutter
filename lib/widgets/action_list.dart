import 'package:flutter/material.dart';
import 'package:nubank_ui/models/action.dart';
import 'package:nubank_ui/util/styles.dart';

List<ActionBtn> actions = [
  new ActionBtn(
      Icon(
        Icons.model_training_outlined,
        color: Colors.black,
      ),
      "Pix"),
  new ActionBtn(
      Icon(
        Icons.qr_code,
        color: Colors.black,
      ),
      "Pagar"),
  new ActionBtn(
      Icon(
        Icons.money_off,
        color: Colors.black,
      ),
      "Transferir"),
  new ActionBtn(
      Icon(
        Icons.attach_money,
        color: Colors.black,
      ),
      "Depositar"),
  new ActionBtn(
      Icon(
        Icons.mobile_friendly,
        color: Colors.black,
      ),
      "Recarga"),
];

class ActionList extends StatelessWidget {
  const ActionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          itemCount: actions.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: index == 0 ? EdgeInsets.all(15.0) : EdgeInsets.all(10.0),
              child: Container(
                width: 80,
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey.withOpacity(.2),
                      radius: 40,
                      child: actions[index].icon,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      actions[index].text,
                      style: normalTxt,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
