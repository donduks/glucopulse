/* import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../home_page/shared/providers.dart';

class InfoPage extends ConsumerStatefulWidget {
  const InfoPage({super.key});

  @override
  ConsumerState<InfoPage> createState() => _InfoPageState();
}

TextEditingController nameController = TextEditingController();

class _InfoPageState extends ConsumerState<InfoPage> {
  @override
  Widget build(BuildContext context) {
    final name = ref.watch(nameProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome $name'),
        actions: [
          TextButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Your User Name'),
                      content: TextField(
                        controller: nameController,
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              ref
                                  .read(nameProvider.notifier)
                                  .addName(nameController.text);

                              Navigator.pop(context);
                              nameController.clear();
                            },
                            child: const Text('Save'))
                      ],
                    );
                  });
            },
            child: const Text('click to enter name'),
          ),
        ],
      ),
      body: const SafeArea(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
 */