import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class People extends StatefulWidget {
  @override
  _PeopleState createState() => _PeopleState();
}

class _PeopleState extends State<People> {
  List people = [
    {
      'name': 'George Reda',
      'pic': 'images/George.jpg',
      'message':
          '''يا مليكة ♥ فاكر شيزوفرينيا 😂♥ كانت اول مؤة اتعامل معاك .... ماعلينا يعني كل سنة و انت طيب و مؤثر في كل اللي حواليك و دايما بتساعد و تعلم ♥ ربنا معاك في مشوارك الطويل يا دكتور و يارب يكون الابليكشن عجبك😌 انا عارف انه مش احسن حاجة بس ده اللي لحقت اعمله 😂🤦‍♂ انجوي♥''',
      'color': Colors.redAccent
    },
    {
      'name': 'George Emad',
      'pic': 'images/GeorgeEmad.png',
      'message': '''I hope you a good year full of high marks 💯
But Be careful about lecture paper 😂
Every year and you are sleeping wherever you want 😴💤 😅😅
I don't want to write more words ✋❤
Enjoy 😅♥♥''',
      'color': Colors.blueAccent
    },
    {
      'name': 'Philopater Samir',
      'pic': 'images/Philo.png',
      'message':
          ''''مليكة ❤ مبدئيآ مفيش علاقة ما بين الصورة و اللي هكتبه 😅 بس عشان بحب الصورة دي 😊 مش عارفين أحنا أيه علاقة عيد ميلادك بالبرق و الرعد و الأعاصير و المس الكهربائي و الحوادث اللي بتحصل دي 😬 ليك قدرة علي الإقناع رهيبة و مش شرط تكون صحيحة 🙂 ممثل موهوب منذ الفطرة و ليك الفضل إني أتعلمت المسرح 💛 مؤلف رائع و أفضل ما كتبت مسرحية ٣ إعدادي اللي هيا بنقرب لربنا فترة الأمتحانات و بس و أتعلمت منها كتير 😍 مخرج كويس بس أنا بقلك دايمآ ملكش دعوة 😚 محبوب من معظم اللي تعرفه 🧡 مدرس شاطر بتشرحلي و بفهم منك بسهولة 😂 كل سنة و أنت طيب و يا رب دايمآ تبقي أشطر واحد في صحابك 💟 و بأمانة أنت غالي عندي جدآ و في وقت كنت أنت اللي بتجيبني أحضر القداس بطريقة غير مباشرة أنت متعرفهاش 😉 بوستاتك عميقة عقيمة 😶 فيه كلام كتير عاوز أكتبه بس كدة خلاص كفاية 😁''',
      'color': Colors.amberAccent
    },
    {
      'name': 'Sadek Magdy',
      'pic': 'images/Sadek1.png',
      'message':
          '''هقول مليكة عشرة عمري اللي اعرفة من وحنا صغيرين دحيح الدفعة كل سنة و انت طيب ي دوك ''',
      'color': Colors.purpleAccent
    },
    {
      'name': 'Ebram Gergis',
      'pic': 'images/Ebram.jpg',
      'message':
          '''كل سنه وانت طيب يا جود بوي 😂😂😂''',
      'color': Colors.orangeAccent
    },
    {
      'name': 'Samoil Hana',
      'pic': 'images/Samoil.png',
      'message':
          '''"مليكة الشماس والخادم والدكتور والممثل وذكريات ثانوية عامة ويمكن دى كانت سبب انى أعرفك بجد ..بستمتع بجد بكل حاجة بتكون بتعملها لأنك بتعمل دورك بكل ضمير لو كانت فى المذاكرة او فى الخدمة بجد بتعلم منك حاجات كتير عقلك أكبر من سنك يا مليكة كل سنة وأنت دايما قدوة ومميز"''',
      'color': Colors.blueAccent
    },
    {
      'name': 'Keroles Fied',
      'pic': 'images/Fied.png',
      'message': '''ولى العهد ... الجولدن بوي ♥👑 كل سنة وانت صديقي😍''',
      'color': Colors.lightBlueAccent
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: people.length,
      itemBuilder: (context, i) {
        return ListTile(
          title: Text(
            '${people[i]['name']}',
            style: TextStyle(color: Color.fromRGBO(1, 190, 254, 0.8)),
          ),
          subtitle: Text('See what ${people[i]['name']} says to you!'),
          leading: CircleAvatar(
            backgroundImage: AssetImage(people[i]['pic']),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Info(
                  person: people[i]['name'],
                  color: people[i]['color'],
                  picRoute: people[i]['pic'],
                  message: people[i]['message'],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class Info extends StatelessWidget {
  // Creates the message's page
  final String person;
  final String picRoute;
  final String message;
  final Color color;

  const Info({Key key, this.person, this.picRoute, this.message, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: color,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '$person\'s Message',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
              Icon(Icons.cake)
            ],
          )),
      body: ListView(
        children: <Widget>[
          Center(
            child: Image(
              image: AssetImage(picRoute),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: Center(
              child: Text(
                message,
                style: TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
            ),
          )
        ],
      ),
    );
  }
}
