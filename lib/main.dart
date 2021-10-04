import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Show Dialog GETX'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.defaultDialog(
                        barrierDismissible: false,
                        cancel: ElevatedButton.icon(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.red),
                          ),
                          onPressed: () {
                            print('cancel');
                          },
                          icon: const Icon(Icons.cancel),
                          label: const Text("Cancel"),
                        ),
                        confirm: ElevatedButton.icon(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.green),
                          ),
                          onPressed: () {
                            print('confirm');
                          },
                          icon: const Icon(Icons.confirmation_num),
                          label: const Text("confirm"),
                        ),
                        confirmTextColor: Colors.green,
                        title: "Alert",
                        middleText: "Tentukan pilihan sayang");
                  },
                  child: const Text('defaultDialog')),
              ElevatedButton(
                  onPressed: () {
                    Get.dialog(ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.add),
                        label: Text('Add')));
                  },
                  child: Text('Dialog Custom'))
            ],
          ),
        ),
      ),
    );
  }
}
