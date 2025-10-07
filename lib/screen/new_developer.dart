import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

class NewDeveloper extends StatefulWidget {
  static const id = 'New_Developer_Screen';
  const NewDeveloper({super.key});

  @override
  State<NewDeveloper> createState() => _NewDeveloperState();
}

class _NewDeveloperState extends State<NewDeveloper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //image circle on left
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    left: 15,
                    top: 15,
                  ),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('assets/mamun.jpeg'), fit: BoxFit.cover),
                    ),
                    child: SizedBox(
                      height: 120,
                      width: 120,
                    ),
                  ),
                ),
                //one text 4 button on coloum
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0, right: 25.0, bottom: 8.0),
                      child: Text(
                        'Developer \nProjects',
                        style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0, right: 8.0),
                      child: Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse('https://c-app-eight.vercel.app/'),
                        builder: (context, followLink) => ElevatedButton(
                          onPressed: followLink,
                          child: Text(
                            'C-LearningApp',
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                            Colors.white54,
                          )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0, right: 8.0),
                      child: Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse('https://play.google.com/store/apps/details?id=com.mbsoft.dart_app&hl=en'),
                        builder: (context, followLink) => ElevatedButton(
                            onPressed: followLink,
                            child: Text('Dart-LearningApp', style: TextStyle(color: Colors.black)),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                              Colors.white54,
                            ))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0, right: 8.0),
                      child: Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse('https://firebase-dashboard-six.vercel.app/'),
                        builder: (context, followLink) => ElevatedButton(
                            onPressed: followLink,
                            child: Text('DashBoard', style: TextStyle(color: Colors.black)),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                              Colors.white54,
                            ))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0, right: 8.0),
                      child: Link(
                        target: LinkTarget.blank,
                        uri: Uri.parse('https://bmi-flutter-app.vercel.app/'),
                        builder: (context, followLink) => ElevatedButton(
                            onPressed: followLink,
                            child: Text('Bmi-Calculator', style: TextStyle(color: Colors.black)),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                              Colors.white54,
                            ))),
                      ),
                    ),
                  ],
                )
              ],
            ),
            //Text on left developer info
            const Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 8.0),
              child: Text(
                'Developer \ninfo',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            //two button on Row
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: ElevatedButton(onPressed: () {}, child: Text('Developer info'))),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(child: ElevatedButton(onPressed: () {}, child: Text('Developer info'))),
                ],
              ),
            ),
            //App details on left
            const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 10.0),
              child: Text(
                'App Details',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const ItemElement(
              mainText: 'Version',
              leadingIcon: Icon(
                Icons.ac_unit,
                color: Colors.redAccent,
              ),
              trailingIcon: Icon(Icons.arrow_forward_ios_rounded),
            ),
            const ItemElement(
                mainText: 'Technology',
                leadingIcon: Icon(
                  Icons.access_time_filled_sharp,
                  color: Colors.redAccent,
                ),
                trailingIcon: Icon(Icons.arrow_forward_ios_rounded)),
            const ItemElement(
                mainText: 'Roles',
                leadingIcon: Icon(
                  Icons.ac_unit_rounded,
                  color: Colors.redAccent,
                ),
                trailingIcon: Icon(Icons.arrow_forward_ios_rounded)),
            const ItemElement(
                mainText: 'Acclomers',
                leadingIcon: Icon(
                  Icons.access_time,
                  color: Colors.redAccent,
                ),
                trailingIcon: Icon(Icons.arrow_forward_ios_rounded)),
            const ItemElement(
                mainText: 'Bidata',
                leadingIcon: Icon(
                  Icons.adb_outlined,
                  color: Colors.redAccent,
                ),
                trailingIcon: Icon(Icons.arrow_forward_ios_rounded)),

            //icon and text on card
          ],
        ),
      ),
    );
  }
}

class ItemElement extends StatelessWidget {
  final String mainText;
  final Icon trailingIcon;
  final Icon leadingIcon;
  const ItemElement({super.key, required this.mainText, required this.leadingIcon, required this.trailingIcon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.black12,
          child: leadingIcon,
        ),
        title: Text(
          mainText,
          style:const TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: trailingIcon,
      ),
    );
  }
}
