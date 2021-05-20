import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';


class EvningAzkar extends StatefulWidget {
  const EvningAzkar({Key key}) : super(key: key);

  @override
  _EvningAzkarState createState() => _EvningAzkarState();
}

class _EvningAzkarState extends State<EvningAzkar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EvningAzkar'.tr().toString()),
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
            children: [
              SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(5),
                child: Card(
                    elevation: 8,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Text('اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ. [آية الكرسي – البقرة 255].',style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),),
                          Text('مرة واحدة', style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic)),
                          Text('من قالها حين يصبح أجير من الجن حتى يمسي ومن قالها حين يمسي أجير من الجن حتى يصبح.', style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.blue )),

                        ],
                      ),
                    )

                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(5),
                child: Card(
                    elevation: 8,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Text('اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ. [آية الكرسي – البقرة 255].',style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),),
                          Text('مرة واحدة', style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic)),
                          Text('من قالها حين يصبح أجير من الجن حتى يمسي ومن قالها حين يمسي أجير من الجن حتى يصبح.', style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.blue )),

                        ],
                      ),
                    )

                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(5),
                child: Card(
                    elevation: 8,
                    child: Container(
                      margin: const EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Text('اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ. [آية الكرسي – البقرة 255].',style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),),
                          Text('مرة واحدة', style: TextStyle(fontWeight: FontWeight.bold , fontStyle: FontStyle.italic)),
                          Text('من قالها حين يصبح أجير من الجن حتى يمسي ومن قالها حين يمسي أجير من الجن حتى يصبح.', style: TextStyle(fontWeight: FontWeight.bold ,color: Colors.blue )),

                        ],
                      ),
                    )

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
