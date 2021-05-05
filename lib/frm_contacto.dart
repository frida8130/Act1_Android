import 'package:flutter/material.dart';
import 'datos_contacto.dart';

class PaginaContacto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Mis Contactos'),
          backgroundColor: Colors.indigo,
        ),
        body: ContactList(loscontactos)); //fin de scaffold
  } //fin de widget
} //fin de pagina contacto

class ContactList extends StatelessWidget {
  final List<Contacto> _contactos;
  ContactList(this._contactos);
  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: EdgeInsets.symmetric(
          vertical: 8.0,
        ),
        children: _buildContactList());
  } //fin widget build

  List<_ContactListItem> _buildContactList() {
    return _contactos.map((contacto) => _ContactListItem(contacto)).toList();
  }
} //fin ContacList

class _ContactListItem extends ListTile {
  _ContactListItem(Contacto contacto)
      : super(
            title: Text(contacto.nombrecompleto),
            subtitle: Text(contacto.email),
            leading: CircleAvatar(
              child: Text(contacto.nombrecompleto[0]),
            ));
}