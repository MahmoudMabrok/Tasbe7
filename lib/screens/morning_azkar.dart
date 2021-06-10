import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class MorningAzkar extends StatelessWidget {
  const MorningAzkar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MorningAzkar'.tr().toString()),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/bg.jpeg'), fit: BoxFit.fill,),
          //shape: BoxShape.circle,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10,),
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.all(5),
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 8,
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(0),
                          child: Column(
                            children: [
                              Text('اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ. [آية الكرسي – البقرة 255]',style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),),
                              Text('من قالها حين يصبح أجير من الجن حتى يمسي ومن قالها حين يمسي أجير من الجن حتى يصبح.', style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.blue )),
                            ],
                          ),
                        )
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(top: 190),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Text('مرة واحدة', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontStyle: FontStyle.italic)),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.all(5),
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 8,
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Text(' قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ',style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),),
                            ],
                          ),
                        )
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(top: 80),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Text('ثلاث مرات', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontStyle: FontStyle.italic)),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.all(5),
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 8,
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(0),
                          child: Column(
                            children: [
                              Text('بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ',style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),),
                              Text('بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ',style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),),
                              Text('من قالها حين يصبح وحين يمسى كفته من كل شيء (الإخلاص والمعوذتين)', style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.blue )),
                            ],
                          ),
                        )
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(top: 180),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Text('ثلاث مرات', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontStyle: FontStyle.italic)),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.all(5),
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 8,
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(15  ),
                          child: Column(
                            children: [
                              Text('أَصْـبَحْنا وَأَصْـبَحَ المُـلْكُ لله وَالحَمدُ لله، لا إلهَ إلاّ اللّهُ وَحدَهُ لا شَريكَ لهُ، لهُ المُـلكُ ولهُ الحَمْـد، وهُوَ على كلّ شَيءٍ قدير، رَبِّ أسْـأَلُـكَ خَـيرَ ما في هـذا اليوم وَخَـيرَ ما بَعْـدَه، وَأَعـوذُ بِكَ مِنْ شَـرِّ ما في هـذا اليوم وَشَرِّ ما بَعْـدَه، رَبِّ أَعـوذُ بِكَ مِنَ الْكَسَـلِ وَسـوءِ الْكِـبَر، رَبِّ أَعـوذُ بِكَ مِنْ عَـذابٍ في النّـارِ وَعَـذابٍ في القَـبْر',style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),),
                            ],
                          ),
                        )
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(top: 190),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Text('مرة واحدة', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontStyle: FontStyle.italic)),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.all(5),
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 8,
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(0),
                          child: Column(
                            children: [
                              Text('اللّهـمَّ أَنْتَ رَبِّـي لا إلهَ إلاّ أَنْتَ، خَلَقْتَنـي وَأَنا عَبْـدُك، وَأَنا عَلـى عَهْـدِكَ وَوَعْـدِكَ ما اسْتَـطَعْـت، أَعـوذُ بِكَ مِنْ شَـرِّ ما صَنَـعْت، أَبـوءُ لَـكَ بِنِعْـمَتِـكَ عَلَـيَّ وَأَبـوءُ بِذَنْـبي فَاغْفـِرْ لي فَإِنَّـهُ لا يَغْـفِرُ الذُّنـوبَ إِلاّ أَنْتَ',style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),),
                              Text('من قالها موقنا بها حين يمسى ومات من ليلته دخل الجنة وكذلك حين يصبح', style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.blue )),
                            ],
                          ),
                        )
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(top: 138),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Text('مرة واحدة', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontStyle: FontStyle.italic)),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.all(5),
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 8,
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(0),
                          child: Column(
                            children: [
                              Text('رَضيـتُ بِاللهِ رَبَّـاً وَبِالإسْلامِ ديـناً وَبِمُحَـمَّدٍ صلى الله عليه وسلم نَبِيّـاً',style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),),
                              Text('من قالها حين يصبح وحين يمسى كان حقا على الله أن يرضيه يوم القيامة', style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.blue )),
                            ],
                          ),
                        )
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(top: 80),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Text('مرة واحدة', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontStyle: FontStyle.italic)),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.all(5),
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 8,
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Text('اللّهُـمَّ إِنِّـي أَصْبَـحْتُ أُشْـهِدُك، وَأُشْـهِدُ حَمَلَـةَ عَـرْشِـك، وَمَلَائِكَتَكَ، وَجَمـيعَ خَلْـقِك، أَنَّـكَ أَنْـتَ اللهُ لا إلهَ إلاّ أَنْـتَ وَحْـدَكَ لا شَريكَ لَـك، وَأَنَّ ُ مُحَمّـداً عَبْـدُكَ وَرَسـولُـك',style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),),
                              Text('من قالها أعتقه الله من النار', style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.blue )),
                            ],
                          ),
                        )
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(top: 140),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Text('اربع مرات', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontStyle: FontStyle.italic)),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.all(5),
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 8,
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Text('اللّهُـمَّ ما أَصْبَـَحَ بي مِـنْ نِعْـمَةٍ أَو بِأَحَـدٍ مِـنْ خَلْـقِك ، فَمِـنْكَ وَحْـدَكَ لا شريكَ لَـك ، فَلَـكَ الْحَمْـدُ وَلَـكَ الشُّكْـر',style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),),
                              Text('من قالها حين يمسى أدى شكر يومه', style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.blue )),
                            ],
                          ),
                        )
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(top: 110),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Text('مرة واحدة', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontStyle: FontStyle.italic)),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Center(
                    child: Container(
                      padding: const EdgeInsets.all(0),
                      margin: const EdgeInsets.all(10),
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          elevation: 8,
                          child: Container(
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              children: [
                                Text('حَسْبِـيَ اللّهُ لا إلهَ إلاّ هُوَ عَلَـيهِ تَوَكَّـلتُ وَهُوَ رَبُّ العَرْشِ العَظـيم',style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),),
                                Text('من قالها كفاه الله ما أهمه من أمر الدنيا والأخرة', style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.blue )),
                              ],
                            ),
                          )
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(top: 90),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Text('سبع مرات', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontStyle: FontStyle.italic)),
                    ),
                  )
                ],
              ),////////////////////
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.all(5),
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 8,
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Text('بِسـمِ اللهِ الذي لا يَضُـرُّ مَعَ اسمِـهِ شَيءٌ في الأرْضِ وَلا في السّمـاءِ وَهـوَ السّمـيعُ العَلـيم',style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),),
                              Text('لم يضره من الله شيء', style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.blue )),
                            ],
                          ),
                        )
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(top: 110),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Text('ثلاث مرات', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontStyle: FontStyle.italic)),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.all(5),
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 8,
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Text('اللّهُـمَّ بِكَ أَصْـبَحْنا وَبِكَ أَمْسَـينا، وَبِكَ نَحْـيا وَبِكَ نَمُـوتُ وَإِلَـيْكَ النُّـشُور',style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),),
                            ],
                          ),
                        )
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(top: 80),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Text('مرة واحدة', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontStyle: FontStyle.italic)),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.all(5),
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 8,
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Text('أَصْبَـحْـنا عَلَى فِطْرَةِ الإسْلاَمِ، وَعَلَى كَلِمَةِ الإِخْلاَصِ، وَعَلَى دِينِ نَبِيِّنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ، وَعَلَى مِلَّةِ أَبِينَا إبْرَاهِيمَ حَنِيفاً مُسْلِماً وَمَا كَانَ مِنَ المُشْرِكِينَ',style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),),
                            ],
                          ),
                        )
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(top: 110),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Text('مرة واحدة', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontStyle: FontStyle.italic)),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.all(5),
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 8,
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Text('سُبْحـانَ اللهِ وَبِحَمْـدِهِ عَدَدَ خَلْـقِه ، وَرِضـا نَفْسِـه ، وَزِنَـةَ عَـرْشِـه ، وَمِـدادَ كَلِمـاتِـه',style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),),
                            ],
                          ),
                        )
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(top: 80),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Text('ثلاث مرات', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontStyle: FontStyle.italic)),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.all(5),
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 8,
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Text('اللّهُـمَّ عافِـني في بَدَنـي ، اللّهُـمَّ عافِـني في سَمْـعي ، اللّهُـمَّ عافِـني في بَصَـري ، لا إلهَ إلاّ أَنْـتَ',style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),),
                            ],
                          ),
                        )
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(top: 80),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Text('ثلاث مرات', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontStyle: FontStyle.italic)),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.all(5),
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 8,
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Text('اللّهُـمَّ إِنّـي أَعـوذُ بِكَ مِنَ الْكُـفر، وَالفَـقْر، وَأَعـوذُ بِكَ مِنْ عَذابِ القَـبْر، لا إلهَ إلاّ أَنْـتَ',style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),),
                            ],
                          ),
                        )
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(top: 80),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Text('ثلاث مرات', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontStyle: FontStyle.italic)),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.all(5),
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 8,
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Text('اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَالعـافِـيةَ في الدُّنْـيا وَالآخِـرَة، اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَالعـافِـيةَ في ديني وَدُنْـيايَ وَأهْـلي وَمالـي، اللّهُـمَّ اسْتُـرْ عـوْراتي وَآمِـنْ رَوْعاتـي، اللّهُـمَّ احْفَظْـني مِن بَـينِ يَدَيَّ وَمِن خَلْفـي وَعَن يَمـيني وَعَن شِمـالي، وَمِن فَوْقـي، وَأَعـوذُ بِعَظَمَـتِكَ أَن أُغْـتالَ مِن تَحْتـي',style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),),
                            ],
                          ),
                        )
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(top: 160),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Text('مرة واحدة', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontStyle: FontStyle.italic)),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.all(5),
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 8,
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Text('يَا حَيُّ يَا قيُّومُ بِرَحْمَتِكَ أسْتَغِيثُ أصْلِحْ لِي شَأنِي كُلَّهُ وَلاَ تَكِلْنِي إلَى نَفْسِي طَـرْفَةَ عَيْنٍ',style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),),
                            ],
                          ),
                        )
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(top: 85),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Text('ثلاث مرات', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontStyle: FontStyle.italic)),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.all(5),
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 8,
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Text('أَصْبَـحْـنا وَأَصْبَـحْ المُـلكُ للهِ رَبِّ العـالَمـين، اللّهُـمَّ إِنِّـي أسْـأَلُـكَ خَـيْرَ هـذا الـيَوْم ، فَـتْحَهُ، وَنَصْـرَهُ، وَنـورَهُ وَبَـرَكَتَـهُ، وَهُـداهُ، وَأَعـوذُ بِـكَ مِـنْ شَـرِّ ما فـيهِ وَشَـرِّ ما بَعْـدَه',style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),),
                            ],
                          ),
                        )
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(top: 110),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Text('مرة واحدة', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontStyle: FontStyle.italic)),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.all(5),
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 8,
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Text('اللّهُـمَّ عالِـمَ الغَـيْبِ وَالشّـهادَةِ فاطِـرَ السّماواتِ وَالأرْضِ رَبَّ كـلِّ شَـيءٍ وَمَليـكَه ، أَشْهَـدُ أَنْ لا إِلـهَ إِلاّ أَنْت ، أَعـوذُ بِكَ مِن شَـرِّ نَفْسـي وَمِن شَـرِّ الشَّيْـطانِ وَشِرْكِهِ ، وَأَنْ أَقْتَـرِفَ عَلـى نَفْسـي سوءاً أَوْ أَجُـرَّهُ إِلـى مُسْـلِم',style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),),
                            ],
                          ),
                        )
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(top: 140),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Text('مرة واحدة', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontStyle: FontStyle.italic)),
                    ),
                  )
                ],
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.all(5),
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 8,
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Text('أَعـوذُ بِكَلِمـاتِ اللّهِ التّـامّـاتِ مِنْ شَـرِّ ما خَلَـق',style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),),
                            ],
                          ),
                        )
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(top: 85),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Text('ثلاث مرات', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontStyle: FontStyle.italic)),
                    ),
                  )
                ],
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: const EdgeInsets.all(0),
                      margin: const EdgeInsets.all(5),
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          elevation: 8,
                          child: Container(
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              children: [
                                Text('اللَّهُمَّ صَلِّ وَسَلِّمْ وَبَارِكْ على نَبِيِّنَا مُحمَّد',style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),),
                                Text('من صلى عليَّ حين يصبح عشرًا، وحين يمسي عشرًا ، أدركته شفاعتي يوم القيامة. رواه الطبراني', style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.blue )),
                              ],
                            ),
                          )
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(top: 135),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Text('عشر مرات', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontStyle: FontStyle.italic)),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.all(5),
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 8,
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Text('اللَّهُمَّ إِنَّا نَعُوذُ بِكَ مِنْ أَنْ نُشْرِكَ بِكَ شَيْئًا نَعْلَمُهُ، وَنَسْتَغْفِرُكَ لِمَا لَا نَعْلَمُهُ',style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),),
                            ],
                          ),
                        )
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(top: 85),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Text('ثلاث مرات', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontStyle: FontStyle.italic)),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.all(5),
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 8,
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Text('اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ الْهَمِّ وَالْحَزَنِ، وَأَعُوذُ بِكَ مِنْ الْعَجْزِ وَالْكَسَلِ، وَأَعُوذُ بِكَ مِنْ الْجُبْنِ وَالْبُخْلِ، وَأَعُوذُ بِكَ مِنْ غَلَبَةِ الدَّيْنِ، وَقَهْرِ الرِّجَالِ',style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),),
                            ],
                          ),
                        )
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(top: 110),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Text('ثلاث مرات', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontStyle: FontStyle.italic)),
                    ),
                  )
                ],
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.all(5),
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 8,
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Text('أسْتَغْفِرُ اللهَ العَظِيمَ الَّذِي لاَ إلَهَ إلاَّ هُوَ، الحَيُّ القَيُّومُ، وَأتُوبُ إلَيهِ',style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),),
                            ],
                          ),
                        )
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(top: 85),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Text('ثلاث مرات', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontStyle: FontStyle.italic)),
                    ),
                  )
                ],
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.all(5),
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 8,
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Text('يا رب , لَكَ الْحَمْدُ كَمَا يَنْبَغِي لِجَلَالِ وَجْهِكَ , وَلِعَظِيمِ سُلْطَانِكَ',style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),),
                            ],
                          ),
                        )
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(top: 80),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Text('ثلاث مرات', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontStyle: FontStyle.italic)),
                    ),
                  )
                ],
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.all(5),
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 8,
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Text('اللَّهُمَّ إِنِّي أَسْأَلُكَ عِلْمًا نَافِعًا، وَرِزْقًا طَيِّبًا، وَعَمَلًا مُتَقَبَّلً',style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),),
                            ],
                          ),
                        )
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(top: 70),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Text('مئه مرة', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontStyle: FontStyle.italic)),
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.all(5),
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 8,
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Text('اللَّهُمَّ أَنْتَ رَبِّي لا إِلَهَ إِلا أَنْتَ، عَلَيْكَ تَوَكَّلْتُ، وَأَنْتَ رَبُّ الْعَرْشِ الْعَظِيمِ، مَا شَاءَ اللَّهُ كَانَ، وَمَا لَمْ يَشَأْ لَمْ يَكُنْ، وَلا حَوْلَ وَلا قُوَّةَ إِلا بِاللَّهِ الْعَلِيِّ الْعَظِيمِ، أَعْلَمُ أَنَّ اللَّهَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ، وَأَنَّ اللَّهَ قَدْ أَحَاطَ بِكُلِّ شَيْءٍ عِلْمًا، اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ شَرِّ نَفْسِي، وَمِنْ شَرِّ كُلِّ دَابَّةٍ أَنْتَ آخِذٌ بِنَاصِيَتِهَا، إِنَّ رَبِّي عَلَى صِرَاطٍ مُسْتَقِيمٍ',style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),),
                            ],
                          ),
                        )
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(top: 165),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Text('مرة واحدة', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontStyle: FontStyle.italic)),
                    ),
                  )
                ],
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(0),
                    margin: const EdgeInsets.all(5),
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 8,
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Text('لا إلَهَ إلَّا اللَّهُ، وحْدَهُ لا شَرِيكَ له، له المُلْكُ وله الحَمْدُ، وهو علَى كُلِّ شيءٍ قَدِيرٌ',style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),),
                              Text('كانَتْ له عَدْلَ عَشْرِ رِقابٍ، وكُتِبَتْ له مِئَةُ حَسَنَةٍ، ومُحِيَتْ عنْه مِئَةُ سَيِّئَةٍ، وكانَتْ له حِرْزًا مِنَ الشَّيْطانِ يَومَهُ ذلكَ حتَّى يُمْسِيَ، ولَمْ يَأْتِ أحَدٌ بأَفْضَلَ ممَّا جاءَ به، إلَّا أحَدٌ عَمِلَ أكْثَرَ مِن ذلكَ',style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.blue )),
                            ],
                          ),
                        )
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(top: 170),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(
                            color: Colors.blue,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Text('مئه مرة', style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontStyle: FontStyle.italic)),
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
