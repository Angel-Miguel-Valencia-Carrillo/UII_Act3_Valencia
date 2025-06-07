import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String productName;
  final String productDescription;
  final String productPrice;
  final String productId;
  final String productTipo;
  final String productCant;

  const Details({
    Key? key,
    required this.productId,
    required this.productName,
    required this.productTipo,
    required this.productDescription,
    required this.productPrice,
    required this.productCant,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 55, 130, 191),
        centerTitle: true,
        title: const Text("Detalles"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ListTile(
              leading: const Icon(Icons.qr_code,color: Color.fromARGB(255, 72, 117, 194)),
              title: const Text("ID"),
              subtitle: Text(productId),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.label,color: Colors.blueAccent),
              title: const Text("Nombre"),
              subtitle: Text(productName),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.description,color: Colors.blueAccent),
              title: const Text("Descripción"),
              subtitle: Text(productDescription),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.attach_money,color: Colors.blueAccent),
              title: const Text("Precio"),
              subtitle: Text(productPrice),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.category,color: Color.fromARGB(255, 49, 95, 174)),
              title: const Text("Tipo"),
              subtitle: Text(productTipo),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.inventory_2,color: Colors.blueAccent),
              title: const Text("Cantidad"),
              subtitle: Text(productCant),
            ),
          ],
        ),
      ),
    );
  }
}
