import 'package:flutter/material.dart';

void main() {
  runApp(MarvelVillain());
}

class MarvelVillain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "Marvel Villain";

    List<Choice> choices = const <Choice>[
      const Choice(
          title: 'Dormammu',
          description:
              'Dormammu adalah salah satu musuh terkuat di Marvel. Dia lahir jutaan tahun yang lalu dalam dimensi energi yang sangat kuat disebut Faltine. Dormammu merupakan musuh bebuyutan Dr. Strange dan memiliki kekuatan mistik yang sangat besar dan murni. Bahkan kekuatan yang ia miliki melebihi dari Mephisto, Satannish dan Hela. Dormammu memulai kemunculan pertamanya dalam film Doctor Strange pada 2016 lalu.',
          imglink:
              'https://cdn-brilio-net.akamaized.net/news/2018/05/04/142382/771940-1000xauto-musuh-marvel.jpg'),
      const Choice(
          title: 'Doctor Doom',
          description:
              'Doctor Doom merupakan musuh bebuyutan dari Fantastic Four sekaligus pemimpin bangsa Latveria. Musuh yang memiliki nama lengkap Victor von Doom ini dikenal jenius dengan pemahaman teknologi dan kekuatan mistis yang nggak tertandingi. Nggak salah kalau doi bisa menghadapi semua superhero Marvel.',
          imglink:
              'https://cdn-brilio-net.akamaized.net/news/2018/05/04/142382/771939-1000xauto-musuh-marvel.jpg'),
      const Choice(
          title: 'Franklin Richards',
          description:
              'Franklin Richards adalah anak dari pemimpin Fantastic Four yaitu Reed Richards dan Sue Storm. Ia juga seorang mutan namun nggak seperti mutan dalam X-Men. Franklin ini juga punya julukan sebagai Omega Level Mutan, istilah yang digunakan untuk mutan paling kuat di jagat Marvel Universe. Ia juga menjadikan dirinya sebagai Tuhan yang mampu mendaur ulang material dan molekul yang bisa mewujudkan impian masa kecilnya.',
          imglink:
              'https://cdn-brilio-net.akamaized.net/news/2018/05/04/142382/771941-1000xauto-musuh-marvel.jpg'),
      const Choice(
          title: 'Galactus.',
          description:
              'Galactus merupakan karakter tertua di Marvel Universe, yang digambarkan dengan tubuh besar dan mengenakan kostum berwarna ungu sama seperti Thanos. Tubuhnya akan semakin kuat dan besar jika memakan planet. Ia juga merupakan salah satu musuh dari Fantastic Four.',
          imglink:
              'https://cdn-brilio-net.akamaized.net/news/2018/05/04/142382/771943-musuh-marvel.jpg'),
      const Choice(
          title: 'Death',
          description:
              'Death merupakan karakter berjenis kelamin perempuan. Ia adalah perwujudan kematian dalam Marvel Universe. Death jarang terlibat pertarungan dengan para superhero Marvel. Death memanipulasi Thanos yang mencintai dan mengaguminya. Thanos bahkan pernah menggunakan infinity stones untuk mengorbankan kehidupan di alam semesta hanya untuk membuktikan cintanya pada Death.',
          imglink:
              'https://cdn-brilio-net.akamaized.net/news/2018/05/04/142382/771942-musuh-marvel.jpg'),
    ];

    return MaterialApp(
        title: title,
        home: Scaffold(
            appBar: AppBar(
              title: Text(title),
            ),
            body: new ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(20.0),
                children: List.generate(choices.length, (index) {
                  return Center(
                    child: ChoiceCard(
                        choice: choices[index], item: choices[index]),
                  );
                }))));
  }
}

class Choice {
  final String title;
  final String description;
  final String imglink;

  const Choice({this.title, this.description, this.imglink});
}

class ChoiceCard extends StatelessWidget {
  const ChoiceCard(
      {Key key,
      this.choice,
      this.onTap,
      @required this.item,
      this.selected: false})
      : super(key: key);

  final Choice choice;
  final VoidCallback onTap;
  final Choice item;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.display1;
    if (selected)
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
    return Card(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            new Container(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(choice.imglink)),
            new Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(choice.title, style: Theme.of(context).textTheme.title),
                  Text(choice.description),
                ],
              ),
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ));
  }
}
