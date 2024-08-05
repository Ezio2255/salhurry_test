import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:salhurry/presentation/settings/edit_screen/widgets/edit_item.dart';

class EditAccountScreen extends StatefulWidget {
  const EditAccountScreen({super.key});

  @override
  State<EditAccountScreen> createState() => _EditAccountScreenState();
}

class _EditAccountScreenState extends State<EditAccountScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
//actual editing is done
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Ionicons.chevron_back_outline),
        ),
        leadingWidth: 80,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                String name = nameController.text;
                String password = emailController.text;
                String age = ageController.text;
                // Store the values locally or do something with them
                print("Name: $name");
                print("Password: $password");
                print("Age: $age");
                Navigator.of(context).pop();
              },
              style: IconButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(45),
                ),
                fixedSize: const Size(60, 50),
                elevation: 3,
              ),
              icon: const Icon(Ionicons.checkmark, color: Colors.white),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Account",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                    flex: 2,
                    child: Text(
                      "photo",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(width: 40),
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/avatar.png",
                          height: 100,
                          width: 100,
                        ),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.lightBlueAccent,
                          ),
                          child: const Text("Upload Image"),
                        )
                      ],
                    ),
                  )
                ],
              ),
              EditItem(
                title: "Name",
                controller: nameController,
              ),
              const SizedBox(height: 40),
              const SizedBox(height: 40),
              EditItem(
                title: "Age",
                controller: ageController,
              ),
              const SizedBox(height: 40),
              EditItem(
                controller: emailController,
                title: "Email",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
