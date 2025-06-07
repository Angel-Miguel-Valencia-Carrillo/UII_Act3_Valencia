import 'package:flutter/material.dart';
import 'package:myapp/details.dart';
class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _productIdController = TextEditingController();
  final _productController = TextEditingController();
  final _productTipoController = TextEditingController();
  final _productDesController = TextEditingController();
  final _productPriceController = TextEditingController();
  final _productCantController = TextEditingController();

  @override
  void dispose() {
    _productIdController.dispose();
    _productController.dispose();
    _productTipoController.dispose();
    _productDesController.dispose();
    _productPriceController.dispose();
    _productCantController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 85, 119, 182),
            title: const Text("Producto"),
            centerTitle: true),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              MyTextField(
                  myController: _productIdController,
                  fieldName: "Id del producto",
                  myIcon: Icons.abc,
                  prefixIconColor: const Color.fromARGB(255, 76, 164, 223)),
              const SizedBox(height: 10.0),
              MyTextField(
                  myController: _productController,
                  fieldName: "Nombre del producto",
                  myIcon: Icons.add_comment,
                  prefixIconColor: const Color.fromARGB(255, 76, 164, 223)),
              const SizedBox(height: 10.0),
              //Use to add space between Textfields
              MyTextField(
                  myController: _productTipoController,
                  fieldName: "Tipo de producto",
                  myIcon: Icons.type_specimen,
                  prefixIconColor: const Color.fromARGB(255, 67, 130, 207)),
              const SizedBox(height: 10.0),

              MyTextField(
                  myController: _productDesController,
                  fieldName: "Descripcion del producto",
                  myIcon: Icons.description_outlined,
                  prefixIconColor: const Color.fromARGB(255, 76, 164, 223)),
              const SizedBox(height: 10.0),

              MyTextField(
                  myController: _productPriceController,
                  fieldName: "Precio del producto",
                  myIcon: Icons.price_change_outlined,
                  prefixIconColor: const Color.fromARGB(255, 76, 164, 223)),
              const SizedBox(height: 10.0),
              MyTextField(
                  myController: _productCantController,
                  fieldName: "cantidad del producto",
                  myIcon: Icons.more,
                  prefixIconColor: const Color.fromARGB(255, 76, 164, 223)),
              const SizedBox(height: 10.0),
              myBtn(context),
            ],
          ),
        ));
  }

  //Function that returns OutlinedButton Widget also it pass data to Details Screen
  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return Details(
              productId: _productIdController.text,
              productName: _productController.text,
              productTipo: _productTipoController.text,
              productDescription: _productDesController.text,
              productPrice: _productPriceController.text,
              productCant: _productCantController.text,
            );
          }),
        );
      },
      child: Text(
        "Registrar".toUpperCase(),
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Color.fromARGB(255, 95, 164, 217)),
      ),
    );
  }
}

//Custom STateless WIdget Class that helps re-usability
// You can learn it in Tutorial (2.13) Custom Widget in Flutter
class MyTextField extends StatelessWidget {
  MyTextField({
    Key? key,
    required this.fieldName,
    required this.myController,
    this.myIcon = Icons.verified_user_outlined,
    this.prefixIconColor = Colors.blueAccent,
  });

  final TextEditingController myController;
  String fieldName;
  final IconData myIcon;
  Color prefixIconColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
          labelText: fieldName,
          prefixIcon: Icon(myIcon, color: prefixIconColor),
          border: const OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple.shade300),
          ),
          labelStyle: const TextStyle(color: Colors.deepPurple)),
    );
  }
}
