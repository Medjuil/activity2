import 'package:flutter/material.dart';
import 'package:person/components/todo_btn.dart';
import 'package:person/features/users/data/models/user.dart';
import 'package:person/pages/todo_page.dart';

class UserDetails extends StatelessWidget {
  final User user;

  const UserDetails({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'USERNAME',
                      ),
                      Text(
                        '${user.username}',
                      ),
                    ],
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'EMAIL',
                      ),
                      Text(
                        '${user.email}',
                      ),
                    ],
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'PHONE',
                      ),
                      Text(
                        '${user.phone}',
                      ),
                    ],
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'COMPANY',
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${user.company?.name}',
                          ),
                          Text(
                            '${user.company?.catchPhrase}',
                          ),
                          Text(
                            '${user.company?.bs}',
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'ADDRESS',
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${user.address?.street}',
                          ),
                          Text(
                            '${user.address?.street}, ${user.address?.city}, ${user.address?.zipcode}',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'COORDINATES',
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Lat : ',
                          ),
                          Text(
                            '${user.address?.geo?.lat}',
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Lng : ',
                          ),
                          Text(
                            '${user.address?.geo?.lng}',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'WEBSITE',
                      ),
                      Text(
                        '${user.website}',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TodoBtn(onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ToDos(),
                    ),
                  );
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
