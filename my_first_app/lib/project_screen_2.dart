import 'package:flutter/material.dart';

class ProjectScreen2 extends StatefulWidget {
  List<Map<String, dynamic>> projects;
  ProjectScreen2({super.key, required this.projects});
  @override
  State<ProjectScreen2> createState() => _ProjectScreen2state();
}

class _ProjectScreen2state extends State<ProjectScreen2> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Projects Screen")),
        body: ListView.builder(
          itemCount: widget.projects.length,
          itemBuilder: (context, index) {
            final project = widget.projects[index];
            return ListTile(title: Text((project["title"])));
          },
        ));
  }
}
