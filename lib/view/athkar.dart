import 'package:flutter/material.dart';

class Adhkar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Adhkar')),
      body: Container(
        child: ListView(
          children: [
            ListTile(
              title: Text(
                  'بسم الله الذي لا يضر مع اسمه شيء في الأرض ولا في السماء وهو السميع العليم'),
              subtitle: Text(
                  'In the name of Allah with whose nothing is harmful on Earth nor in the Heavens and He is '),
            ),
            ListTile(
              title: Text('أعوذ بكلمات الله التامات من شر ما خلق'),
              subtitle: Text(
                  'I seek refuge in the perfect words of Allah from the Evil of what He has created '),
            ),
            ListTile(
              title: Text(
                  'اللهم بك أصبحنا وبك أمسينا وبك نحيا وبك نموت وإليك النشور'),
              subtitle: Text(
                  'O  Allah, by your leave we have reached the morning and by Your leave we have reached the evening, and by Your leave we live and by Your leave we die and unto You is our '),
            ),
            ListTile(
              title: Text(
                  'اللهم عالم الغيب والشهادة ؛ فاطر السماوات والأرض ؛ رب كل شيء ومليكه ؛ أشهد أن لا إله إلا أنت ، أعوذ بك من شر نفسي ومن شر الشيطان وشركه وأن أقترف على نفسي سوءًا أو أجره إلى مسلم'),
              subtitle: Text(
                  'O Allah, Knower of the unseen and the seen, Creator of the Heavens and the Earth, Lord and sovereign of all things, I bear witness that none has the right to be worshipped except You. I seek in You from the evil of myself and from the evil of Shytan and his call to Shirk(Polytheism), and from committing wrong against myself or bringing such upon another Muslim'),
            ),
            ListTile(
              title: Text(
                  'اللهم إني أسألك العفو والعافية في الدنيا والآخرة ؛ اللهم إني أسألك العفو والعافية في ديني ودنياي وأهلي ومالي ، اللهم استر عوراتي وآمن روعاتي ، اللهم احفظني من بين يدي ومن خلفي وعن يميني وعن شمالي ومن فوقي ، وأعوذ بعظمتك أن أغتال من تحتي'),
              subtitle: Text(
                  '“O Allah, I ask You for pardon and well-being in this life and in the Here-After. O Allah, I ask You for pardon and well-being in my religion and worldly affairs, and my family and my wealth. O Allah, veil my ‘Awrah’ (everything privet you do not want anyone to see , or your weakness) and set at ease my dismay. O Allah, preserve me from the front, the back(behind), my right, my left and from above, and I seek refuge in Your Greatness that I may be attacked from below'),
            ),
            ListTile(
              title: Text(
                  'لا إله إلا الله وحده لا شريك له ، له الملك وله الحمد وهو على كل شيء قدير'),
              subtitle: Text(
                  '“None has the right to be worshipped except Allah; He is One and has no partner. All the kingdom is for Him, and all the praises are for Hi, and He is Omnipotent'),
            ),
            ListTile(
              title: Text(
                  'يا حي يا قيوم برحمتك أستغيث ؛ أصلح لي شأني كله ولا تكلني إلى نفسي طرفة عين'),
              subtitle: Text(
                  '“O Ever Living, O self-Subsisting and supporter of all, by Your Mercy I seek help, rectify for me all of my affairs and do not leave me depend on myself, even for the blink of an eye'),
            ),
            ListTile(
              title: Text(
                  'اللهم أنت ربي لا إله إلا أن خلقتني وأنا عبدك ، وأنا على عهدك ووعدك ما استطعت ، أعوذ بك من شر ما صنعت ، أبوء لك بنعمتك علي وأبوء بذنبي ، فاغفر لي فإنه لا يغفر الذنوب إلا أنت'),
              subtitle: Text(
                  '“O Allah, You are my Lord, none has the right to be worshipped except You, You have created me and I am your servant and I abide to Your covenant and promise as best as I can, I seek refuge in You from the evil of what I have done (wrong), I acknowledge Your favor upon me and I acknowledge my sin, so forgive me, for none forgives sins except You'),
            ),
            ListTile(
              title: Text('سبحان الله وبحمده'),
              subtitle: Text('Subhan Allah Wa behamdih'),
            ),
          ],
        ),
      ),
    );
  }
}
