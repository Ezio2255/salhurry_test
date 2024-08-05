import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> skills = [
      'python',
      'Communications',
      'natural language',
      'algorithm analysis'
    ];

    void _showAddSkillDialog(BuildContext context, Function(String) addSkill) {
      final TextEditingController _skillController = TextEditingController();

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Add Skill'),
            content: TextField(
              controller: _skillController,
              decoration: const InputDecoration(hintText: 'Enter new skill'),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () {
                  if (_skillController.text.isNotEmpty) {
                    addSkill(_skillController.text);
                  }
                  Navigator.of(context).pop();
                },
                child: const Text('Add'),
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
      ),
      body: StatelessSkillManager(
        skills: skills,
        showAddSkillDialog: _showAddSkillDialog,
      ),
    );
  }
}

class StatelessSkillManager extends StatelessWidget {
  final List<String> skills;
  final void Function(BuildContext, Function(String)) showAddSkillDialog;

  const StatelessSkillManager({
    Key? key,
    required this.skills,
    required this.showAddSkillDialog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.green.withOpacity(0.2),
                child: const Text(
                  'Looking for work as : Data analyst, Datascientist, Tester',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Top Skills',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 40,
                child: StatefulBuilder(
                  builder: (BuildContext context, StateSetter setState) {
                    void addSkill(String skill) {
                      setState(() {
                        skills.add(skill);
                      });
                    }

                    return ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: skills.length + 1,
                      itemBuilder: (context, index) {
                        if (index == skills.length) {
                          return AddSkillButton(
                            onPressed: () {
                              showAddSkillDialog(context, addSkill);
                            },
                          );
                        } else {
                          return SkillChip(label: skills[index]);
                        }
                      },
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Education : Heera college of engineering kalliiyod B-tech computer science',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              InkWell(
                onTap: () {
                  // Handle website link click
                },
                child: const Text(
                  'www.tomysportfolio.in',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Interested work time',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Wrap(
                spacing: 8.0,
                children: [
                  WorkTimeButton(label: 'part time'),
                  WorkTimeButton(label: 'Weekly'),
                  WorkTimeButton(label: '3hr/day'),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Add'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Social network',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Add social network details here
            ],
          ),
        ),
        const Spacer(),
      ],
    );
  }
}

class SkillChip extends StatelessWidget {
  final String label;

  const SkillChip({required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Chip(
        label: Text(label),
        backgroundColor: Colors.blue.withOpacity(0.1),
        labelStyle: const TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class AddSkillButton extends StatelessWidget {
  final VoidCallback onPressed;

  const AddSkillButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: OutlinedButton(
        onPressed: onPressed,
        child: const Text('Add skill +'),
      ),
    );
  }
}

class WorkTimeButton extends StatelessWidget {
  final String label;

  const WorkTimeButton({required this.label});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        // Handle work time button press
      },
      child: Text(label),
    );
  }
}
