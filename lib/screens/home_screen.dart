import 'package:api_consume_and_persistence/controller/home_controller.dart';
import 'package:api_consume_and_persistence/screens/details_screen.dart';
import 'package:api_consume_and_persistence/screens/persisted_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final HomeController controller = Get.find();

  @override
  void initState() {
    super.initState();
    controller.startTicker(this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.pause();
        },
      ),
      appBar: AppBar(
        title: const Text('Tela Inicial'),
        actions: [
          IconButton(
            icon: const Icon(Icons.storage),
            onPressed: () {
              Get.to(() => const PersistedScreen());
            },
          ),
        ],
      ),
      body: controller.obx(
        (state) => ListView.builder(
          reverse: true,
          itemCount: state?.length ?? 0,
          itemBuilder: (context, index) {
            final user = state![index];
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(user.picture.thumbnail),
              ),
              title: Text('${user.name.first} ${user.name.last}'),
              subtitle: Text(user.email),
              onTap: () {
                Get.to(() => DetailsScreen(user: user));
              },
            );
          },
        ),
        onLoading: const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
