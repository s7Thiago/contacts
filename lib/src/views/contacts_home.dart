import 'package:flutter/material.dart';

import '../data/contacts_mock.dart';
import '../model/contact.dart';
import '../widgets/contact_list_item.dart';

class ContactsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Contacts',
          style: TextStyle(color: Theme.of(context).textTheme.headline6.color),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView.separated(
          physics: BouncingScrollPhysics(),
          separatorBuilder: (_, __) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(),
              ),
          itemCount: 0, //TODO: especificar o tamalho da lista de contatos
          itemBuilder: (ctx, index) => null //TODO: Colocar o ContactListItem
          ),
    );
  }
}
