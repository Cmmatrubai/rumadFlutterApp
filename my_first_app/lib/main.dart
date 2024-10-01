import 'package:flutter/material.dart';
import 'package:my_first_app/project_screen_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: ProfileCard(),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircleAvatar(
              radius: 72,
              foregroundImage: NetworkImage(
                  "https://media.licdn.com/dms/image/v2/D4D03AQE44rAdqT2W9g/profile-displayphoto-shrink_800_800/profile-displayphoto-shrink_800_800/0/1701193488173?e=1732752000&v=beta&t=YA8hfFWMYOesqk0bdrEybpwbEAz0z6wlghf6i1ic_94"),
            ),
            const Text(
              "Chaitanya Matrubai",
              style: TextStyle(fontSize: 32),
            ),
            const Text(
              "Double Majoring in Computer and Data Science",
              style: TextStyle(fontSize: 14, color: Colors.black54),
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: [
                    Icon(Icons.work, size: 28),
                    SizedBox(height: 4),
                    Text(
                      "TipTop Technologies",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.school, size: 28),
                    SizedBox(height: 4),
                    Text(
                      "Rutgers",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.location_on, size: 28),
                    SizedBox(height: 4),
                    Text(
                      "New Jersey",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    // Add your functionality here
                  },
                  child: const Text("Github"),
                ),
                const SizedBox(width: 90),
                ElevatedButton(
                  onPressed: () {
                    // Add your functionality here
                  },
                  child: const Text("Linkden"),
                ),
              ],
            ),
            Column(
              children: [
                const SizedBox(height: 10),
                const Icon(Icons.sports_esports, size: 28),
                SizedBox(
                  width: 150, // Set the desired width
                  height: 150, // Set the desired height
                  child: Image.network(
                    'https://toppng.com/uploads/preview/warframe-logo-115629705814dk5whadj8.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Center(
                child: FilledButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  ProjectScreen2(projects: const [
                                    {
                                      "title": "Test Title",
                                      "description": "desc",
                                      "isPinned": false,
                                    },
                                    {
                                      "title": "Project Title",
                                      "description": "desc",
                                      "isPinned": false,
                                    },
                                    {
                                      "title": "Project Title",
                                      "description": "desc",
                                      "isPinned": false,
                                    },
                                  ])));
                    },
                    child: const Text("Projects")))
          ],
        ),
      ),
    );
  }
}
