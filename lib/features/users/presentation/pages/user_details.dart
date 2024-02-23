import 'package:flutter/material.dart';
import 'package:person/features/users/data/models/user.dart';

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
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 107, 107, 107),
                        ),
                      ),
                      Text(
                        '${user.username}',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 107, 107, 107),
                        ),
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
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 107, 107, 107),
                        ),
                      ),
                      Text(
                        '${user.email}',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 107, 107, 107),
                        ),
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
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 107, 107, 107),
                        ),
                      ),
                      Text(
                        '${user.phone}',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 107, 107, 107),
                        ),
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
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 107, 107, 107),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${user.company?.name}',
                            style: const TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 107, 107, 107),
                            ),
                          ),
                          Text(
                            '${user.company?.catchPhrase}',
                            style: const TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 107, 107, 107),
                            ),
                          ),
                          Text(
                            '${user.company?.bs}',
                            style: const TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 107, 107, 107),
                            ),
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
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 107, 107, 107),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${user.address?.street}',
                            style: const TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 107, 107, 107),
                            ),
                          ),
                          Text(
                            '${user.address?.street}, ${user.address?.city}, ${user.address?.zipcode}',
                            style: const TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 107, 107, 107),
                            ),
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
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 107, 107, 107),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Lat : ',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 107, 107, 107),
                            ),
                          ),
                          Text(
                            '${user.address?.geo?.lat}',
                            style: const TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 107, 107, 107),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Lng : ',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 107, 107, 107),
                            ),
                          ),
                          Text(
                            '${user.address?.geo?.lng}',
                            style: const TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 107, 107, 107),
                            ),
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
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(255, 107, 107, 107),
                        ),
                      ),
                      Text(
                        '${user.website}',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 107, 107, 107),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
