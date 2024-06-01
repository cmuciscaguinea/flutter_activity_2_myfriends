import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
        title: const Text('My Friends'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => friend_1()));
                },
                style:
                    ElevatedButton.styleFrom(minimumSize: const Size(250, 60)),
                child: const Text('Chad Duezell C. Lamutay',)),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => friend_2()));
                },
                style:
                    ElevatedButton.styleFrom(minimumSize: const Size(250, 60)),
                child: const Text('Dg Brian A. Guayan',)),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => friend_3()));
                },
                style:
                    ElevatedButton.styleFrom(minimumSize: const Size(250, 60)),
                child: const Text('Kahlil Ross M. Pascual',)),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => friend_4()));
                },
                style:
                    ElevatedButton.styleFrom(minimumSize: const Size(250, 60)),
                child: const Text('Kian Patrick S. Sarausa',)),
          ),
          Container(
            margin: const EdgeInsets.all(30),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MyProfile()));
                },
                style:
                    ElevatedButton.styleFrom(minimumSize: const Size(250, 60)),
                child: const Text('My Profile',)),
          ),
        ],
      )),
    );
  }
}

class friend_1 extends StatelessWidget {
  final double coverHeight = 280;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Toppage(),
            Content(),
          ],
        ),
      ),
    );
  }

  Widget Toppage() {
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 2;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: Coverpage(),
        ),
        Positioned(
          top: top,
          child: ProfileImage(),
        ),
      ],
    );
  }

  Widget Coverpage() => Container(
    color: Colors.white,
    child: Image.asset(
      
      'images/chad2.jpg',
      width: 400,
      height: coverHeight,
      fit: BoxFit.cover,
    ),
  );

  Widget ProfileImage() => CircleAvatar(
    radius: profileHeight / 2,
    backgroundColor: Colors.grey.shade100,
    backgroundImage: AssetImage(
       
        'images/chad.jpg'
    ),
  );

  Widget Content() => Column(
    children: [
      const SizedBox(height: 10),
      Text(
        'Lamutay, Chad Duezell C.',
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 5),
      Text(
        'Software Developer',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
      ),
      const SizedBox(height: 16),
      const SizedBox(height: 16),
      Divider(),
      const SizedBox(height: 16),
      Padding(
        padding: EdgeInsets.all(48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('About',
                style:
                TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            Text(
              'A Bachelor of Science in Information Technology student and an aspiring Game Developer.',
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
          ],
        ),
      )
    ],
  );
  Widget SocialIcon(IconData icon) => CircleAvatar(
    radius: 25,
    child: Material(
      shape: CircleBorder(),
      clipBehavior: Clip.hardEdge,
      color: Colors.pinkAccent,
      child: InkWell(
        onTap: () {},
        child: Center(child: Icon(icon, size: 32)),
      ),
    ),
  );
}

class friend_2 extends StatelessWidget {
  final double coverHeight = 280;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Toppage(),
            Content(),
          ],
        ),
      ),
    );
  }

  Widget Toppage() {
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 2;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: Coverpage(),
        ),
        Positioned(
          top: top,
          child: ProfileImage(),
        ),
      ],
    );
  }

  Widget Coverpage() => Container(
    color: Colors.white,
    child: Image.asset(
      'images/dg2.jpg',
      width: 400,
      height: coverHeight,
      fit: BoxFit.cover,
    ),
  );

  Widget ProfileImage() => CircleAvatar(
    radius: profileHeight / 2,
    backgroundColor: Colors.grey.shade100,
    backgroundImage: AssetImage(
        'images/dg.jpg'
    ),
  );

  Widget Content() => Column(
    children: [
      const SizedBox(height: 10),
      Text(
        'Guayan, Dg Brian A.',
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 5),
      Text(
        'BS Information Technology',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
      ),
      const SizedBox(height: 16),
      const SizedBox(height: 16),
      Divider(),
      const SizedBox(height: 16),
      Padding(
        padding: EdgeInsets.all(48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('About',
                style:
                TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            Text(
              'Guayan, Dg Brian A., 3rd year BSIT student at Central Mindanao University. He live in Dologon, Maramag, Bukidnon. His hobby is to play video games specially Genshin Impact.',
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
          ],
        ),
      )
    ],
  );
  Widget SocialIcon(IconData icon) => CircleAvatar(
    radius: 25,
    child: Material(
      shape: CircleBorder(),
      clipBehavior: Clip.hardEdge,
      color: Colors.pinkAccent,
      child: InkWell(
        onTap: () {},
        child: Center(child: Icon(icon, size: 32)),
      ),
    ),
  );
}

class friend_3 extends StatelessWidget {
  final double coverHeight = 280;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Toppage(),
            Content(),
          ],
        ),
      ),
    );
  }

  Widget Toppage() {
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 2;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: Coverpage(),
        ),
        Positioned(
          top: top,
          child: ProfileImage(),
        ),
      ],
    );
  }

  Widget Coverpage() => Container(
    color: Colors.white,
    child: Image.asset(
      'images/khalil2.jpg',
      width: 400,
      height: coverHeight,
      fit: BoxFit.cover,
    ),
  );

  Widget ProfileImage() => CircleAvatar(
    radius: profileHeight / 2,
    backgroundColor: Colors.grey.shade100,
    backgroundImage: AssetImage(
        'images/khalil.jpg'
    ),
  );

  Widget Content() => Column(
    children: [
      const SizedBox(height: 10),
      Text(
        'Pascual, Kahlil Ross M.',
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 5),
      Text(
        'Software Developer',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
      ),
      const SizedBox(height: 16),
      const SizedBox(height: 16),
      Divider(),
      const SizedBox(height: 16),
      Padding(
        padding: EdgeInsets.all(48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('About',
                style:
                TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            Text(
              'I am a BS Information Technology Student at Central Mindanao University and I am in my 3rd Year now. ',
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
          ],
        ),
      )
    ],
  );
  Widget SocialIcon(IconData icon) => CircleAvatar(
    radius: 25,
    child: Material(
      shape: CircleBorder(),
      clipBehavior: Clip.hardEdge,
      color: Colors.pinkAccent,
      child: InkWell(
        onTap: () {},
        child: Center(child: Icon(icon, size: 32)),
      ),
    ),
  );
}

class friend_4 extends StatelessWidget {
  final double coverHeight = 280;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Toppage(),
            Content(),
          ],
        ),
      ),
    );
  }

  Widget Toppage() {
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 2;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: Coverpage(),
        ),
        Positioned(
          top: top,
          child: ProfileImage(),
        ),
      ],
    );
  }

  Widget Coverpage() => Container(
    color: Colors.white,
    child: Image.asset(
      'images/kian2.jpg',
      width: 400,
      height: coverHeight,
      fit: BoxFit.cover,
    ),
  );

  Widget ProfileImage() => CircleAvatar(
    radius: profileHeight / 2,
    backgroundColor: Colors.grey.shade100,
    backgroundImage: AssetImage(
        'images/kian.jpg'
    ),
  );

  Widget Content() => Column(
    children: [
      const SizedBox(height: 10),
      Text(
        'Sarausa, Kian Patrick S.',
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 5),
      Text(
        'BS Information Technology',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
      ),
      const SizedBox(height: 16),
      const SizedBox(height: 16),
      Divider(),
      const SizedBox(height: 16),
      Padding(
        padding: EdgeInsets.all(48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('About',
                style:
                TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            Text(
              'Sarausa, Kian Patrick S., currently studying at Central Mindanao University taking the course of IT. He is good at web developer.',
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
          ],
        ),
      )
    ],
  );
  Widget SocialIcon(IconData icon) => CircleAvatar(
    radius: 25,
    child: Material(
      shape: CircleBorder(),
      clipBehavior: Clip.hardEdge,
      color: Colors.pinkAccent,
      child: InkWell(
        onTap: () {},
        child: Center(child: Icon(icon, size: 32)),
      ),
    ),
  );
}

class MyProfile extends StatelessWidget {
  final double coverHeight = 280;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Toppage(),
            Content(),
          ],
        ),
      ),
    );
  }

  Widget Toppage() {
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 2;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: Coverpage(),
        ),
        Positioned(
          top: top,
          child: ProfileImage(),
        ),
      ],
    );
  }

  Widget Coverpage() => Container(
    color: Colors.white,
    child: Image.asset(
      'images/jma2.jpg',
      width: 400,
      height: coverHeight,
      fit: BoxFit.cover,
    ),
  );

  Widget ProfileImage() => CircleAvatar(
    radius: profileHeight / 2,
    backgroundColor: Colors.grey.shade100,
    backgroundImage: AssetImage(
        'images/jma.jpg'
    ),
  );

  Widget Content() => Column(
    children: [
      const SizedBox(height: 10),
      Text(
        'Aguinea, Joemar M.',
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 5),
      Text(
        'CISC Student Assitant',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
      ),
      const SizedBox(height: 16),
      const SizedBox(height: 16),
      Divider(),
      const SizedBox(height: 16),
      Padding(
        padding: EdgeInsets.all(48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('About',
                style:
                TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            Text(
              'I am Aguinea, Joemar M., I live in Maramag, Bukidnon. I am 22 years old, currently studying at Central Mindanao University pursuing the course of Bachelor of Science in Information Technology.',
              style: TextStyle(fontSize: 18, height: 1.4),
            ),
          ],
        ),
      )
    ],
  );
  Widget SocialIcon(IconData icon) => CircleAvatar(
    radius: 25,
    child: Material(
      shape: CircleBorder(),
      clipBehavior: Clip.hardEdge,
      color: Colors.pinkAccent,
      child: InkWell(
        onTap: () {},
        child: Center(child: Icon(icon, size: 32)),
      ),
    ),
  );
}
