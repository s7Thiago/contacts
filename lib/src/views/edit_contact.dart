import 'package:contacts/src/data/contacts_mock.dart';
import 'package:flutter/material.dart';

import '../model/contact.dart';
import '../widgets/profile_pricture.dart';
import '../util/routes.dart';

class EditContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: Receber o objeto por parâmetro para usar nessa classe

    TextEditingController nameController = TextEditingController(
      text:
          '', //TODO: O valor inicial deve ser o nome atual do contato alvo da edição
    );
    TextEditingController emailController = TextEditingController(
      text:
          '', //TODO: O valor inicial deve ser o email atual do contato alvo da edição
    );

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Hero(
                tag: '', // TODO: Especificar uma tag unica (pode ser o nome)
                child: CircleAvatar(
                    child: ProfilePicture(
                  contact: null, //TODO: Passar o contato pra cá
                ))),
            SizedBox(width: 15),
            RichText(
              text: TextSpan(
                text: 'Edit ',
                style: TextStyle(
                  color: Theme.of(context).textTheme.headline6.color,
                ),
                children: [
                  TextSpan(
                    text: '', //TODO: Passar o primeiro nome do contato
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Theme.of(context).iconTheme.color,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Name',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'E-mail',
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.save),
        onPressed: () {
          // TODO: Voltar para a tela de detalhes com o contato devidamente editado
        },
      ),
    );
  }
}
