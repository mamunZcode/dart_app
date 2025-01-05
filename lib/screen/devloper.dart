import 'package:flutter/material.dart';
import '';

class Developer extends StatefulWidget {
  static const id = 'developer_screen';

  const Developer({super.key});

  @override
  State<Developer> createState() => _DeveloperState();
}

class _DeveloperState extends State<Developer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'About page',
          style: TextStyle(
              fontSize: 15.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                color: Colors.black87,
                height: 120.0,
                width: 80.0,
                margin: const EdgeInsets.only(left: 50.0, right: 50.0),
                child: const Image(
                  image: AssetImage('assets/mamun.jpeg'),
                ),
              ),
             const Divider(
                height: 10.0,
                color: Colors.red,
                thickness: 1.5,
              ),
             const headtitle(
                text: 'Details',
              ),
            const  SizedBox(
                height: 8.0,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 8.0, left: 8.0),
                    child: Icon(Icons.drive_file_rename_outline),
                  ),
                  Text('MD:Muntasir Mamun'),
                ],
              ),
            const  SizedBox(
                height: 5.0,
              ),
            const  Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                    child: Icon(Icons.phone),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text('01765698686'),
                ],
              ),
              const SizedBox(
                height: 5.0,
              ),
             const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                    child: Icon(Icons.email_outlined),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text('mamun10.dj@gmail.com'),
                ],
              ),
            const  Divider(
                color: Colors.red,
                thickness: 1.5,
              ),
             const headtitle(text: 'Bio'),
             const SizedBox(
                height: 8.0,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: Text(
                    'A paragraph is a series of sentences that are organized and coherent, and are all related to a single topic. Almost every piece of writing you do that is longer than a few sentences should be organized into paragrap'
                    'A paragraph is a series of sentences that are organized and coherent, and are all related to a single to'),
              ),
             const Divider(
                color: Colors.red,
                thickness: 1.5,
              ),
              const headtitle(text: 'Ratings This app'),
              const SizedBox(
                height: 8.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/resultScreen');
                },
                child: const Text(
                  'click here',
                  style: TextStyle(
                      color: Colors.yellowAccent,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
              ),
             const SizedBox(
                height: 150.0,
              ),
              const Row(
               mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Text('@CopyRights',
                      style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.redAccent,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: 5.0,
                  ),
                  Flexible(
                    child: Text(
                      '@This is copy Rights As a application by Developed by mamun',
                      style: TextStyle(fontSize: 10.0),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class headtitle extends StatelessWidget {
  const headtitle({required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          text,
          style:const TextStyle(
              fontSize: 20.0,
              color: Colors.redAccent,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
