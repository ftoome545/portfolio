import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  Widget buildContact(Icon icon, String info) {
    return Row(
      children: [
        icon,
        const SizedBox(
          width: 20.0,
        ),
        Expanded(
          child: Text(info,
              style: const TextStyle(
                fontSize: 20,
              )),
        ),
      ],
    );
  }

  Widget education(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
              fontFamily: 'Cairo',
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        // centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 3, 55, 98),
      ),
      endDrawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
                children: [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/FatimaLogo.jpeg'),
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  Text(
                    'Fatima Hure',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'PlayfairDisplay',
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Brief',
                      style: TextStyle(
                        fontFamily: 'PlayfairDisplay',
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // SizedBox(
                    //   height: 15.0,
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Expanded(
                        child: Text(
                          "More information about Fatima More information about Fatima...",
                          style: TextStyle(
                            fontFamily: 'PlayfairDisplay',
                            fontSize: 20,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Contact',
                      style: TextStyle(
                        fontFamily: 'PlayfairDisplay',
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    buildContact(
                        const Icon(
                          Icons.phone,
                          color: Colors.blue,
                          size: 28,
                        ),
                        '+966 295749578925'),
                    const SizedBox(
                      height: 20.0,
                    ),
                    buildContact(
                        const Icon(
                          Icons.email,
                          color: Colors.blue,
                          size: 28,
                        ),
                        'fatima@gamil.com'),
                    const SizedBox(
                      height: 20.0,
                    ),
                    buildContact(
                        const Icon(
                          Icons.location_pin,
                          color: Colors.blue,
                          size: 28,
                        ),
                        'Saudi Arabi, Taif'),
                    const SizedBox(
                      height: 20.0,
                    ),
                    buildContact(
                        const Icon(
                          Icons.web_asset,
                          color: Colors.blue,
                          size: 28,
                        ),
                        'http://Fatima/sdgf/home.com'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Education',
                      style: TextStyle(
                        fontFamily: 'PlayfairDisplay',
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    education('Taif university 2017 - 2021'),
                    education('Computer Sientce'),
                    education('with Honours'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
