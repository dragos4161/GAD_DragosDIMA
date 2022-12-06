import 'package:flutter/material.dart';
import 'package:gad_tema2/meeting7/src/models/photo.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    final Photo photo = ModalRoute.of(context)!.settings.arguments! as Photo;
    return Scaffold(
      appBar: AppBar(
        title: Text('${photo.user.name} shot this'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width,
            child: Image.network(
              photo.urls.regular,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Text(
                textAlign: TextAlign.center,
                '${photo.user.name} has ${photo.user.likes} ',
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
              const Icon(
                Icons.heart_broken_rounded,
                color: Colors.red,
              ),
            ],
          )
        ],
      ),
    );
  }
}
