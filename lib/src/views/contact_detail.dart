import 'package:flutter/material.dart';

import '../model/contact.dart';
import '../widgets/custom_action_button.dart';
import '../widgets/profile_pricture.dart';
import '../util/routes.dart';

class ContactDetailScreen extends StatefulWidget {
  @override
  _ContactDetailScreenState createState() => _ContactDetailScreenState();
}

class _ContactDetailScreenState extends State<ContactDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              // TODO: ir para a tela de edição passando o contato que será editado
            },
          ),
        ],
        title: Text(
          '', // TODO: receber o nome do contato
          style: Theme.of(context).textTheme.headline5,
        ),
        iconTheme: IconThemeData(
          color: Theme.of(context).iconTheme.color,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          padding: const EdgeInsets.all(14),
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 35),
              padding: const EdgeInsets.only(left: 2),
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height / 6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Hero(
                    tag: '', //TODO: Colocar uma tag unica (nome + email)
                    child: ProfilePicture(
                        contact: null), //TODO: Referenciar um contato
                  ),
                  Text(
                    '', //TODO: Receber o nome de um contato (colocar apenas o primeiro nome)
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            ...List.generate(
              5, //TODO: Receber o tamanho da lista de números do contato atual
              (index) => Row(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * .88,
                    child: ListTile(
                      title: Text(
                        'Nada', //TODO: pagar uma string número phoneNumbers[index]['phone']
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      subtitle: Text('operator'),
                      trailing: Container(
                        width: 110,
                        child: Row(
                          children: <Widget>[
                            CustomButton(Icons.call, color: Colors.green),
                            SizedBox(width: 10),
                            CustomButton(Icons.message),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Divider(),
            ),
            ListTile(
              title: Text('nada'), //TODO: passar o email do contato atual
              subtitle: Text('email'),
            ),
            ListTile(
              title: Text('nada'), //TODO: passar a empresa(company)
              subtitle: Text('company'),
            ),
          ],
        ),
      ),
    );
  }
}
