import 'package:flutter/material.dart';
import 'package:i_ran/models/exercise.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _titleFocus = FocusNode();
  final _typeFocus = FocusNode();
  final _formData = Map<String, Object>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Form(
          child: ListView(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Title',
                ),
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 15),
              ExpansionTile(
                title: const Text(
                  'Type',
                ),
                children: [
                  SizedBox(
                    width: 300,
                    height: 200,
                    child: ListView.builder(
                        itemCount: type.length,
                        itemBuilder: (ctx, index) {
                          return InkWell(
                            child: ListTile(
                              title: Text(
                                type[index].toString(),
                              ),
                            ),
                            onTap: () {},
                          );
                        }),
                  ),
                ],
              ),
            ],            
          ),
        ),
      ),
      floatingActionButton: TextButton(child: Text('Teste'),onPressed: () {},),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
    );
  }
}
