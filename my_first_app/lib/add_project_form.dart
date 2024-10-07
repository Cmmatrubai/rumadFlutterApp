import 'package:flutter/material.dart';

class AddProjectForm extends StatefulWidget {
  final String? initialTitle;
  final String? initialDescription;

  const AddProjectForm({super.key, this.initialDescription, this.initialTitle});

  @override
  State<AddProjectForm> createState() => _AddProjectForm();
}

class _AddProjectForm extends State<AddProjectForm> {
  final _formkey = GlobalKey<FormState>();

  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _titleController.text = widget.initialTitle ?? '';
    _descriptionController.text = widget.initialDescription ?? '';
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text(widget.initialTitle == null ? "Add Project" : "Edit Project"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(labelText: "Project Title"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a project title';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _descriptionController,
                decoration:
                    const InputDecoration(labelText: "Project Description"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a project description';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    _formkey.currentState!.save();
                    Navigator.pop(context, {
                      "title": _titleController.text,
                      "description": _descriptionController.text,
                    });
                  }
                },
                child: Text(widget.initialTitle == null
                    ? 'Add Project'
                    : "Save Changes"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
