import 'package:flutter/material.dart';
import 'package:tubitak_1/volunteer_form.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Deneme 1"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Acil Yardım ve"),
          const SizedBox(
            height: 10,
          ),
          const Text("İhtiyaç Koordinasyonu"),
          const SizedBox(
            height: 120,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    showAlertDialog(context);
                  },
                  child: Text("Yardım Et"),
                ),
              ),
              Container(
                  alignment: Alignment.centerRight,
                  child: const ElevatedButton(
                      onPressed: null, child: Text("Yardım İste"))),
            ],
          )
        ],
      )),
    );
  }
}

showAlertDialog(BuildContext context) {
  AlertDialog alert = AlertDialog(
    title: Text("Nasıl bir yardım da bulunacaksınız ?"),
    actions: [
      TextButton(
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyForm())),
          child: Text("Gönüllü olarak")),
      TextButton(onPressed: null, child: Text("Maddi Yardım")),
    ],
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
