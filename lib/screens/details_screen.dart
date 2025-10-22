import 'package:api_consume_and_persistence/controller/persisted_users_controller.dart';
import 'package:api_consume_and_persistence/model/random_user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsScreen extends GetView<PersistedUsersController> {
  final RandomUser user;

  DetailsScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tela de Detalhes')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(user.picture.large),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Gênero',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(user.gender),
            ),
            ExpansionTile(
              title: const Text('Nome'),
              children: [
                Text('Título: ${user.name.title}'),
                Text('Primeiro: ${user.name.first}'),
                Text('Último: ${user.name.last}'),
              ],
            ),
            ExpansionTile(
              title: const Text('Localização'),
              children: [
                Text(
                  'Rua: ${user.location.street.number} ${user.location.street.name}',
                ),
                Text('Cidade: ${user.location.city}'),
                Text('Estado: ${user.location.state}'),
                Text('País: ${user.location.country}'),
                Text('Código Postal: ${user.location.postcode}'),
                Text('Latitude: ${user.location.coordinates.latitude}'),
                Text('Longitude: ${user.location.coordinates.longitude}'),
                Text(
                  'Fuso Horário: ${user.location.timezone.offset} - ${user.location.timezone.description}',
                ),
              ],
            ),
            ExpansionTile(
              title: const Text('Login'),
              children: [
                Text('UUID: ${user.login.uuid}'),
                Text('Usuário: ${user.login.username}'),
                Text('Senha: ${user.login.password}'),
                Text('Salt: ${user.login.salt}'),
                Text('MD5: ${user.login.md5}'),
                Text('SHA1: ${user.login.sha1}'),
                Text('SHA256: ${user.login.sha256}'),
              ],
            ),
            ExpansionTile(
              title: const Text('Data de Nascimento'),
              children: [
                Text('Data: ${user.dob.date}'),
                Text('Idade: ${user.dob.age}'),
              ],
            ),
            ExpansionTile(
              title: const Text('Registrado'),
              children: [
                Text('Data: ${user.registered.date}'),
                Text('Anos: ${user.registered.age}'),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Telefone',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(user.phone),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Celular',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(user.cell),
            ),
            ExpansionTile(
              title: const Text('ID'),
              children: [
                Text('Nome: ${user.id.name}'),
                Text('Valor: ${user.id.value ?? 'N/A'}'),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Nacionalidade',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(user.nat),
            ),
            const SizedBox(height: 16),
            Center(
              child: FutureBuilder<bool>(
                future: controller.isPersisted(user.uuid),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  }
                  final isSaved = snapshot.data ?? false;
                  return ElevatedButton(
                    onPressed: () async {
                      if (isSaved) {
                        await controller.removeUser(user.uuid);
                      } else {
                        await controller.addUser(user);
                      }
                      Get.snackbar(
                        'Ação',
                        isSaved ? 'Usuário removido' : 'Usuário salvo',
                      );
                    },
                    child: Text(isSaved ? 'Remover' : 'Salvar'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
