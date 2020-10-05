import 'package:flutter/material.dart';
import 'package:kota_padang/detail.dart';
import 'package:kota_padang/model/data_pulau.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kota Padang'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
            children: dataPulauList.map((place) {
              return FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreen(
                      place: place,
                    );
                  }));
                },
                child: Card(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Image.asset(
                          place.foto,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                place.name,
                                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(place.kecamatan),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }).toList()),
      ),
    );
  }
}

var dataPulauList = [
  DataPulau(
    name: 'Pulau Pasumpahan',
    kecamatan: 'Kec. Bungus Teluk Kabung',
    description:
    'Pulau Pasumpahan terletak sekitar 200 meter dari Pulau Sikuai. Pulau ini memiliki objek wisata pantai pasir putih dengan terumbu karang yang masih terjaga. Pulau ini terletak di sebelah barat Pulau Setan Kecil, untuk menempuh pulau ini memakan waktu 10 menit dari Sungai Pisang dengan mesin 45 PK.',
    koordinat: '‎-1.118217, 100.367746',
    area: 'Luas: 16,9 Ha',
    foto: 'images/1pasumpahan.jpg',
    imagePulaus: [
      'images/1pasumpahan/1.jpg',
      'images/1pasumpahan/2.jpg',
      'images/1pasumpahan/3.jpg',
      'images/1pasumpahan/4.jpg'
    ],
  ),
  DataPulau(
    name: 'Pulau Sikuai',
    kecamatan: 'Kec. Bungus Teluk Kabung',
    description:
    'Pulau ini terletak sekitar setengah mil laut dari pusat kota dan dapat dicapai dengan menggunakan transportasi laut seperti kapal, melalui pelabuhan Muara dalam waktu tempuh sekitar 45 menit dan dari dermaga Airud Bungus dalam waktu tempuh sekitar 35 menit. Sekitar 2.4 Ha dari luas pulau ini telah digunakan sebagai kawasan resort sedangkan sisanya masih berupa kawasan hutan dan pantai. Hotel resort di pulau ini menyediakan 54 buah cottage, restoran, ruangan untuk rapat, dan kolam renang',
    koordinat: '-1.127519, 100.352528',
    area: 'Luas: 44,4 Ha',
    foto: 'images/2sikuai.jpg',
    imagePulaus: [
      'images/2sikuai/1.jpg',
      'images/2sikuai/2.jpg',
      'images/2sikuai/3.jpg',
      'images/2sikuai/4.jpg',
      'images/2sikuai/5.jpg'
    ],
  ),
  DataPulau(
    name: 'Pulau Sirandah',
    kecamatan: 'Kec. Bungus Teluk Kabung',
    description:
    'Kata Sirandah memiliki arti rendah. Kondisi umum Pulau Sirandah merupakan pulau berbukit dengan pantai berpasir putih yang ditumbuhi beberapa jenis pohon tingkat tinggi seperti kelapa, semak dan bakau.',
    koordinat: '-1.1222948, 100.3403764',
    area: 'Luas: 19,18 Ha',
    foto: 'images/3sirandah.jpg',
    imagePulaus: [
      'images/3sirandah/1.jpg',
      'images/3sirandah/2.jpg',
      'images/3sirandah/3.jpg',
      'images/3sirandah/4.jpg'
    ],
  ),
  DataPulau(
    name: 'Pulau Pamutusan',
    kecamatan: 'Kec. Bungus Teluk Kabung',
    description:
    'Pulau Pamutusan terletak di Bungus Teluk Kabung atau sekitar satu jam perjalanan dari Kota Padang.  Pulau Pamutusan bisa ditempuh menggunakan kapal kecil dari Pelabuhan Muara Kota Padang sekitar satu jam perjalanan laut. Pulau ini dinamakan "Pamutusan" karena terdapat semenanjung yang berubah menjadi daratan berpasir putih ketika air laut surut.',
    koordinat: '-1.1629401, 100.3546257',
    area: 'Luas sekitar 8 Ha',
    foto: 'images/4pamutusan.jpg',
    imagePulaus: [
      'images/4pamutusan/1.jpg',
      'images/4pamutusan/2.jpg',
      'images/4pamutusan/3.jpg',
      'images/4pamutusan/4.jpg'
    ],
  ),
  DataPulau(
    name: 'Pulau Pandan',
    kecamatan: 'Kec. Padang Barat',
    description:
    'Pulau Pandan memiliki topografi yang relatif datar, pantai berpasir putih, ditumbuhi kelapa dan semak belukar serta tumbuhan tingkat tinggi. Di Pulau Pandan ini juga terdapat bangunan peninggalan Belanda dan juga ditempatkan seorang penjaga dan sebuah bangunan. Disini juga tersedia air bersih dan cocok untuk wisatawan yang ingin berkemah. Jarak terdekat untuk mencapai pulau ini adalah dari Kota Padang dan bisa ditempuh menggunakan speedboat selama satu jam perjalanan atau menyewa perahu nelayan.',
    koordinat: '-0.949525, 100.141030',
    area: 'Luas sekitar 4,6 Ha',
    foto: 'images/5pandan.jpg',
    imagePulaus: [
      'images/5pandan/1.jpg',
      'images/5pandan/2.jpg',
      'images/5pandan/3.jpg',
      'images/5pandan/4.jpg'
    ],
  ),
  DataPulau(
    name: 'Pulau Toran',
    kecamatan: 'Kec. Padang Selatan',
    description:
    'Secara topografi pulau ini relatif datar dengan pantai berpasir putih, ditumbuhi kelapa dan semak belukar serta kelapa. Dan biasanya manfaatkan oleh nelayan setempat sebagai tempat persinggahan bagi dan tempat pengolahan kopra.',
    koordinat: '-1.038078, 100.173593',
    area: 'Luas: 33,67 ha',
    foto: 'images/6toran.jpg',
    imagePulaus: [
      'images/6toran/1.jpg',
      'images/6toran/2.jpg',
      'images/6toran/3.jpg',
    ],
  ),
  DataPulau(
    name: 'Pulau Pisang Ketek',
    kecamatan: 'Kec. Padang Selatan',
    description:
    'Pulau Pisang Ketek mempunyai letak sangat dekat dari Pantai Aie Manih, dengan jarak lebih kurang 1 km dari Pantai Air Manis, tumbuhan yang mendominasi adalah kelapa, kelandaian permukaan 0-15 meter dari permukaan laut. Kondisi ombak sedang di sebelah selatan. Pada saat air surut wisatawan dapat berjalan kaki dari Pantai Air Manis. Kegiatan yang sesuai dilakukan di wilayah ini antara lain: panorama alam, petualangan, legenda, berlayar, berenang, surfing untuk para pemula dan camping.',
    koordinat: '-0.991000, 100.353687',
    area: 'Luas sekitar 2,8 Ha',
    foto: 'images/7pisangketek.jpg',
    imagePulaus: [
      'images/7pisangketek/1.jpg',
      'images/7pisangketek/2.jpg',
      'images/7pisangketek/3.jpg',
    ],
  ),
  DataPulau(
    name: 'Pulau Pisang Gadang',
    kecamatan: 'Kec. Padang Selatan',
    description:
    'Pulau ini tidak berpenduduk, secara topografi pulau ini merupakan pulau berbukit dengan pantai berpasir putih cukup indah, ditumbuhi kelapa dan semak belukar serta tumbuhan tingkat tinggi. Kata pisang gadang memiliki arti pisang besar.',
    koordinat: '-0.992390, 100.340780',
    area: 'Luas: 148,82 Ha',
    foto: 'images/8pisanggadang.jpg',
    imagePulaus: [
      'images/8pisanggadang/1.jpg',
      'images/8pisanggadang/2.jpg',
      'images/8pisanggadang/3.jpg',
    ],
  ),
  DataPulau(
    name: 'Pulau Sao',
    kecamatan: 'Kec. Koto Tangah',
    description:
    'Kata Sao berasal dari arti sejenis buah sawo. Topografi Pulau Sao relatif datar, pantai berpasir putih cukup indah, ditumbuhi kelapa dan semak belukar serta tumbuhan tingkat tinggi.',
    koordinat: '-0.858367, 100.302352',
    area: 'Luas: 12,46 ha',
    foto: 'images/9sao.jpg',
    imagePulaus: [
      'images/9sao/1.jpg',
      'images/9sao/2.jpg',
      'images/9sao/3.jpg',
      'images/9sao/4.jpg'
    ],
  ),
  DataPulau(
    name: 'Pulau Sibonta',
    kecamatan: 'Kec. Koto Tangah',
    description:
    'Kata Sao berasal dari arti sejenis buah sawo. Topografi Pulau Sao relatif datar, pantai berpasir putih cukup indah, ditumbuhi kelapa dan semak belukar serta tumbuhan tingkat tinggi.',
    koordinat: '-0.955899, 100.230673',
    area: 'Luas: 13,18 Ha',
    foto: 'images/10sibonta.jpg',
    imagePulaus: [
      'images/10sibonta/1.jpg',
      'images/10sibonta/2.jpg',
      'images/10sibonta/3.jpg',
    ],
  ),
];
