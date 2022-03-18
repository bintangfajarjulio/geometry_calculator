import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Geometry Volume',
      theme: ThemeData(
        fontFamily: 'Quicksand',
        primarySwatch: Colors.green,
      ),
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Geometry Volume',
          style: TextStyle(fontFamily: 'Quicksand_Bold'),
        ),
      ),
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return BalokScreen();
                }));
              },
              child: Container(
                  child: Card(
                margin: const EdgeInsets.all(25),
                child: Center(
                  child: Image.asset(
                    'images/balok.png',
                    width: 100,
                    height: 100,
                  ),
                ),
              )),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LimasScreen();
                }));
              },
              child: Container(
                child: Card(
                  margin: const EdgeInsets.all(25),
                  child: Center(
                    child: Image.asset(
                      'images/limas.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return KubusScreen();
                }));
              },
              child: Container(
                child: Card(
                  margin: const EdgeInsets.all(25),
                  child: Center(
                    child: Image.asset(
                      'images/kubus.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PrismaScreen();
                }));
              },
              child: Container(
                child: Card(
                  margin: const EdgeInsets.all(25),
                  child: Center(
                    child: Image.asset(
                      'images/prisma.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return BolaScreen();
                }));
              },
              child: Container(
                child: Card(
                  margin: const EdgeInsets.all(25),
                  child: Center(
                    child: Image.asset(
                      'images/bola.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return KerucutScreen();
                }));
              },
              child: Container(
                child: Card(
                  margin: const EdgeInsets.all(25),
                  child: Center(
                    child: Image.asset(
                      'images/kerucut.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BalokScreen extends StatefulWidget {
  @override
  _BalokScreen createState() => _BalokScreen();
}

class _BalokScreen extends State<BalokScreen> {
  var _panjang;
  var _lebar;
  var _tinggi;
  var _volume;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Volume Balok',
          style: TextStyle(fontFamily: 'Quicksand_Bold'),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 23.0, left: 18),
                child: Text(
                  'Rumus',
                  style: TextStyle(
                      fontFamily: 'Quicksand_Bold',
                      color: Colors.green,
                      fontSize: 15.0),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 14.0, left: 18),
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 6, bottom: 6, right: 20, left: 16),
                  child: Text('V = p x l x t',
                      style: TextStyle(
                          color: Colors.green,
                          fontFamily: 'Quicksand',
                          fontSize: 15)),
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green, width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5.0, left: 18, right: 18),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Masukkan panjang balok...',
                    hintStyle: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.grey,
                        fontSize: 13.0),
                    labelText: 'Panjang',
                    labelStyle: TextStyle(
                        fontFamily: 'Quicksand_Bold',
                        color: Colors.green,
                        fontSize: 15.0),
                  ),
                  onChanged: (var value) {
                    setState(() {
                      _panjang = value;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5.0, left: 18, right: 18),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Masukkan lebar balok...',
                    hintStyle: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.grey,
                        fontSize: 13.0),
                    labelText: 'Lebar',
                    labelStyle: TextStyle(
                        fontFamily: 'Quicksand_Bold',
                        color: Colors.green,
                        fontSize: 15.0),
                  ),
                  onChanged: (var value) {
                    setState(() {
                      _lebar = value;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5.0, left: 18, right: 18),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Masukkan tinggi balok...',
                    hintStyle: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.grey,
                        fontSize: 13.0),
                    labelText: 'Tinggi',
                    labelStyle: TextStyle(
                        fontFamily: 'Quicksand_Bold',
                        color: Colors.green,
                        fontSize: 15.0),
                  ),
                  onChanged: (var value) {
                    setState(() {
                      _tinggi = value;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 18.0, left: 150),
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          try {
                            _volume = double.parse(_panjang) *
                                double.parse(_lebar) *
                                double.parse(_tinggi);

                            _volume = _volume.toStringAsFixed(2);
                            return AlertDialog(
                              content: Text(
                                'Volume Balok = $_volume',
                                style: TextStyle(
                                    fontFamily: 'Quicksand_Bold',
                                    color: Colors.green,
                                    fontSize: 15.0),
                              ),
                            );
                          } catch (e) {
                            return AlertDialog(
                              content: Text(
                                'Input tidak valid',
                                style: TextStyle(
                                    fontFamily: 'Quicksand_Bold',
                                    color: Colors.green,
                                    fontSize: 15.0),
                              ),
                            );
                          }
                        });
                  },
                  child: Text(
                    '   Hitung   ',
                    style: TextStyle(
                        fontFamily: 'Quicksand_Bold',
                        color: Colors.white,
                        fontSize: 15.0),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 23.0, left: 18),
                child: Text(
                  'Volume Bangun Lain',
                  style: TextStyle(
                      fontFamily: 'Quicksand_Bold',
                      color: Colors.green,
                      fontSize: 15.0),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return BolaScreen();
                          }));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/bola.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return KerucutScreen();
                          }));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/kerucut.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return KubusScreen();
                          }));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/kubus.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return LimasScreen();
                          }));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/limas.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return PrismaScreen();
                          }));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/prisma.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LimasScreen extends StatefulWidget {
  @override
  _LimasScreen createState() => _LimasScreen();
}

class _LimasScreen extends State<LimasScreen> {
  var _panjang;
  var _lebar;
  var _tinggi;
  var _volume;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Volume Limas',
          style: TextStyle(fontFamily: 'Quicksand_Bold'),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 23.0, left: 18),
                child: Text(
                  'Rumus',
                  style: TextStyle(
                      fontFamily: 'Quicksand_Bold',
                      color: Colors.green,
                      fontSize: 15.0),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 14.0, left: 18),
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 6, bottom: 6, right: 20, left: 16),
                  child: Text('V = 1/3 x p x l x t',
                      style: TextStyle(
                          color: Colors.green,
                          fontFamily: 'Quicksand',
                          fontSize: 15)),
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green, width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5.0, left: 18, right: 18),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Masukkan panjang limas...',
                    hintStyle: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.grey,
                        fontSize: 13.0),
                    labelText: 'Panjang',
                    labelStyle: TextStyle(
                        fontFamily: 'Quicksand_Bold',
                        color: Colors.green,
                        fontSize: 15.0),
                  ),
                  onChanged: (var value) {
                    setState(() {
                      _panjang = value;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5.0, left: 18, right: 18),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Masukkan lebar limas...',
                    hintStyle: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.grey,
                        fontSize: 13.0),
                    labelText: 'Lebar',
                    labelStyle: TextStyle(
                        fontFamily: 'Quicksand_Bold',
                        color: Colors.green,
                        fontSize: 15.0),
                  ),
                  onChanged: (var value) {
                    setState(() {
                      _lebar = value;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5.0, left: 18, right: 18),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Masukkan tinggi limas...',
                    hintStyle: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.grey,
                        fontSize: 13.0),
                    labelText: 'Tinggi',
                    labelStyle: TextStyle(
                        fontFamily: 'Quicksand_Bold',
                        color: Colors.green,
                        fontSize: 15.0),
                  ),
                  onChanged: (var value) {
                    setState(() {
                      _tinggi = value;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 18.0, left: 150),
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          try {
                            _volume = 1 /
                                3 *
                                double.parse(_panjang) *
                                double.parse(_lebar) *
                                double.parse(_tinggi);

                            _volume = _volume.toStringAsFixed(2);
                            return AlertDialog(
                              content: Text(
                                'Volume Limas = $_volume',
                                style: TextStyle(
                                    fontFamily: 'Quicksand_Bold',
                                    color: Colors.green,
                                    fontSize: 15.0),
                              ),
                            );
                          } catch (e) {
                            return AlertDialog(
                              content: Text(
                                'Input tidak valid',
                                style: TextStyle(
                                    fontFamily: 'Quicksand_Bold',
                                    color: Colors.green,
                                    fontSize: 15.0),
                              ),
                            );
                          }
                        });
                  },
                  child: Text(
                    '   Hitung   ',
                    style: TextStyle(
                        fontFamily: 'Quicksand_Bold',
                        color: Colors.white,
                        fontSize: 15.0),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 23.0, left: 18),
                child: Text(
                  'Volume Bangun Lain',
                  style: TextStyle(
                      fontFamily: 'Quicksand_Bold',
                      color: Colors.green,
                      fontSize: 15.0),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return BolaScreen();
                          }));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/bola.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return KerucutScreen();
                          }));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/kerucut.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return KubusScreen();
                          }));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/kubus.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return BalokScreen();
                          }));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/balok.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return PrismaScreen();
                          }));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/prisma.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KubusScreen extends StatefulWidget {
  @override
  _KubusScreen createState() => _KubusScreen();
}

class _KubusScreen extends State<KubusScreen> {
  var _sisi;
  var _volume;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Volume Kubus',
          style: TextStyle(
            fontFamily: 'Quicksand_Bold',
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 23.0, left: 18),
                child: Text(
                  'Rumus',
                  style: TextStyle(
                      fontFamily: 'Quicksand_Bold',
                      color: Colors.green,
                      fontSize: 15.0),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 14.0, left: 18),
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 6, bottom: 6, right: 20, left: 16),
                  child: Text('V = s³',
                      style: TextStyle(
                          color: Colors.green,
                          fontFamily: 'Quicksand',
                          fontSize: 15)),
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green, width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5.0, left: 18, right: 18),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Masukkan panjang kubus...',
                    hintStyle: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.grey,
                        fontSize: 13.0),
                    labelText: 'Sisi',
                    labelStyle: TextStyle(
                        fontFamily: 'Quicksand_Bold',
                        color: Colors.green,
                        fontSize: 15.0),
                  ),
                  onChanged: (var value) {
                    setState(() {
                      _sisi = value;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 18.0, left: 150),
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          try {
                            _volume = double.parse(_sisi) *
                                double.parse(_sisi) *
                                double.parse(_sisi);

                            _volume = _volume.toStringAsFixed(2);
                            return AlertDialog(
                              content: Text(
                                'Volume Kubus = $_volume',
                                style: TextStyle(
                                    fontFamily: 'Quicksand_Bold',
                                    color: Colors.green,
                                    fontSize: 15.0),
                              ),
                            );
                          } catch (e) {
                            return AlertDialog(
                              content: Text(
                                'Input tidak valid',
                                style: TextStyle(
                                    fontFamily: 'Quicksand_Bold',
                                    color: Colors.green,
                                    fontSize: 15.0),
                              ),
                            );
                          }
                        });
                  },
                  child: Text(
                    '   Hitung   ',
                    style: TextStyle(
                        fontFamily: 'Quicksand_Bold',
                        color: Colors.white,
                        fontSize: 15.0),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 150.0, left: 18),
                child: Text(
                  'Volume Bangun Lain',
                  style: TextStyle(
                      fontFamily: 'Quicksand_Bold',
                      color: Colors.green,
                      fontSize: 15.0),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return BolaScreen();
                          }));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/bola.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return KerucutScreen();
                          }));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/kerucut.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return BalokScreen();
                          }));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/balok.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return LimasScreen();
                          }));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/limas.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return PrismaScreen();
                          }));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/prisma.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PrismaScreen extends StatefulWidget {
  @override
  _PrismaScreen createState() => _PrismaScreen();
}

class _PrismaScreen extends State<PrismaScreen> {
  var _alas;
  var _tinggiAlas;
  var _tinggiPrisma;
  var _volume;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Volume Prisma',
          style: TextStyle(
            fontFamily: 'Quicksand_Bold',
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 23.0, left: 18),
                child: Text(
                  'Rumus',
                  style: TextStyle(
                      fontFamily: 'Quicksand_Bold',
                      color: Colors.green,
                      fontSize: 15.0),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 14.0, left: 18),
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 6, bottom: 6, right: 20, left: 16),
                  child: Text('V = 1/2 x a x t x T',
                      style: TextStyle(
                          color: Colors.green,
                          fontFamily: 'Quicksand',
                          fontSize: 15)),
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green, width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5.0, left: 18, right: 18),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Masukkan alas prisma...',
                    hintStyle: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.grey,
                        fontSize: 13.0),
                    labelText: 'Alas',
                    labelStyle: TextStyle(
                        fontFamily: 'Quicksand_Bold',
                        color: Colors.green,
                        fontSize: 15.0),
                  ),
                  onChanged: (var value) {
                    setState(() {
                      _alas = value;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5.0, left: 18, right: 18),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Masukkan tinggi alas prisma...',
                    hintStyle: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.grey,
                        fontSize: 13.0),
                    labelText: 'Tinggi Alas',
                    labelStyle: TextStyle(
                        fontFamily: 'Quicksand_Bold',
                        color: Colors.green,
                        fontSize: 15.0),
                  ),
                  onChanged: (var value) {
                    setState(() {
                      _tinggiAlas = value;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5.0, left: 18, right: 18),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Masukkan tinggi prisma...',
                    hintStyle: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.grey,
                        fontSize: 13.0),
                    labelText: 'Tinggi Prisma',
                    labelStyle: TextStyle(
                        fontFamily: 'Quicksand_Bold',
                        color: Colors.green,
                        fontSize: 15.0),
                  ),
                  onChanged: (var value) {
                    setState(() {
                      _tinggiPrisma = value;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 18.0, left: 150),
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          try {
                            _volume = 1 /
                                2 *
                                double.parse(_alas) *
                                double.parse(_tinggiAlas) *
                                double.parse(_tinggiPrisma);

                            _volume = _volume.toStringAsFixed(2);
                            return AlertDialog(
                              content: Text(
                                'Volume Prisma = $_volume',
                                style: TextStyle(
                                    fontFamily: 'Quicksand_Bold',
                                    color: Colors.green,
                                    fontSize: 15.0),
                              ),
                            );
                          } catch (e) {
                            return AlertDialog(
                              content: Text(
                                'Input tidak valid',
                                style: TextStyle(
                                    fontFamily: 'Quicksand_Bold',
                                    color: Colors.green,
                                    fontSize: 15.0),
                              ),
                            );
                          }
                        });
                  },
                  child: Text(
                    '   Hitung   ',
                    style: TextStyle(
                        fontFamily: 'Quicksand_Bold',
                        color: Colors.white,
                        fontSize: 15.0),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 23.0, left: 18),
                child: Text(
                  'Volume Bangun Lain',
                  style: TextStyle(
                      fontFamily: 'Quicksand_Bold',
                      color: Colors.green,
                      fontSize: 15.0),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return BolaScreen();
                          }));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/bola.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return KerucutScreen();
                          }));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/kerucut.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return BalokScreen();
                          }));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/balok.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return LimasScreen();
                          }));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/limas.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return KubusScreen();
                          }));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/kubus.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BolaScreen extends StatefulWidget {
  @override
  _BolaScreen createState() => _BolaScreen();
}

class _BolaScreen extends State<BolaScreen> {
  var _jari;
  var _volume;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Volume Bola',
          style: TextStyle(
            fontFamily: 'Quicksand_Bold',
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 23.0, left: 18),
                child: Text(
                  'Rumus',
                  style: TextStyle(
                      fontFamily: 'Quicksand_Bold',
                      color: Colors.green,
                      fontSize: 15.0),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 14.0, left: 18),
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 6, bottom: 6, right: 20, left: 16),
                  child: Text('V = 4/3 x π x r³',
                      style: TextStyle(
                          color: Colors.green,
                          fontFamily: 'Quicksand',
                          fontSize: 15)),
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green, width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5.0, left: 18, right: 18),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Masukkan jari-jari bola...',
                    hintStyle: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.grey,
                        fontSize: 13.0),
                    labelText: 'Jari-jari',
                    labelStyle: TextStyle(
                        fontFamily: 'Quicksand_Bold',
                        color: Colors.green,
                        fontSize: 15.0),
                  ),
                  onChanged: (var value) {
                    setState(() {
                      _jari = value;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 18.0, left: 150),
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          try {
                            _volume = 4 /
                                3 *
                                22 /
                                7 *
                                double.parse(_jari) *
                                double.parse(_jari) *
                                double.parse(_jari);

                            _volume = _volume.toStringAsFixed(2);
                            return AlertDialog(
                              content: Text(
                                'Volume Bola = $_volume',
                                style: TextStyle(
                                    fontFamily: 'Quicksand_Bold',
                                    color: Colors.green,
                                    fontSize: 15.0),
                              ),
                            );
                          } catch (e) {
                            return AlertDialog(
                              content: Text(
                                'Input tidak valid',
                                style: TextStyle(
                                    fontFamily: 'Quicksand_Bold',
                                    color: Colors.green,
                                    fontSize: 15.0),
                              ),
                            );
                          }
                        });
                  },
                  child: Text(
                    '   Hitung   ',
                    style: TextStyle(
                        fontFamily: 'Quicksand_Bold',
                        color: Colors.white,
                        fontSize: 15.0),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 150.0, left: 18),
                child: Text(
                  'Volume Bangun Lain',
                  style: TextStyle(
                      fontFamily: 'Quicksand_Bold',
                      color: Colors.green,
                      fontSize: 15.0),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return KerucutScreen();
                          }));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/kerucut.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return BalokScreen();
                          }));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/balok.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return LimasScreen();
                          }));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/limas.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return KubusScreen();
                          }));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/kubus.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return PrismaScreen();
                          }));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/prisma.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KerucutScreen extends StatefulWidget {
  @override
  _KerucutScreen createState() => _KerucutScreen();
}

class _KerucutScreen extends State<KerucutScreen> {
  var _jari;
  var _tinggi;
  var _volume;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Volume Kerucut',
          style: TextStyle(
            fontFamily: 'Quicksand_Bold',
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 23.0, left: 18),
                child: Text(
                  'Rumus',
                  style: TextStyle(
                      fontFamily: 'Quicksand_Bold',
                      color: Colors.green,
                      fontSize: 15.0),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 14.0, left: 18),
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 6, bottom: 6, right: 20, left: 16),
                  child: Text('V = 1/3 x π x r²',
                      style: TextStyle(
                          color: Colors.green,
                          fontFamily: 'Quicksand',
                          fontSize: 15)),
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green, width: 1),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5.0, left: 18, right: 18),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Masukkan jari-jari kerucut...',
                    hintStyle: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.grey,
                        fontSize: 13.0),
                    labelText: 'Jari-jari',
                    labelStyle: TextStyle(
                        fontFamily: 'Quicksand_Bold',
                        color: Colors.green,
                        fontSize: 15.0),
                  ),
                  onChanged: (var value) {
                    setState(() {
                      _jari = value;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5.0, left: 18, right: 18),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Masukkan tinggi kerucut...',
                    hintStyle: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.grey,
                        fontSize: 13.0),
                    labelText: 'Tinggi',
                    labelStyle: TextStyle(
                        fontFamily: 'Quicksand_Bold',
                        color: Colors.green,
                        fontSize: 15.0),
                  ),
                  onChanged: (var value) {
                    setState(() {
                      _tinggi = value;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 18.0, left: 150),
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          try {
                            _volume = 1 /
                                3 *
                                22 /
                                7 *
                                double.parse(_jari) *
                                double.parse(_jari) *
                                double.parse(_tinggi);

                            _volume = _volume.toStringAsFixed(2);
                            return AlertDialog(
                              content: Text(
                                'Volume Kerucut = $_volume',
                                style: TextStyle(
                                    fontFamily: 'Quicksand_Bold',
                                    color: Colors.green,
                                    fontSize: 15.0),
                              ),
                            );
                          } catch (e) {
                            return AlertDialog(
                              content: Text(
                                'Input tidak valid',
                                style: TextStyle(
                                    fontFamily: 'Quicksand_Bold',
                                    color: Colors.green,
                                    fontSize: 15.0),
                              ),
                            );
                          }
                        });
                  },
                  child: Text(
                    '   Hitung   ',
                    style: TextStyle(
                        fontFamily: 'Quicksand_Bold',
                        color: Colors.white,
                        fontSize: 15.0),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 90.0, left: 18),
                child: Text(
                  'Volume Bangun Lain',
                  style: TextStyle(
                      fontFamily: 'Quicksand_Bold',
                      color: Colors.green,
                      fontSize: 15.0),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return BolaScreen();
                          }));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/bola.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return BalokScreen();
                          }));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/balok.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return LimasScreen();
                          }));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/limas.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return KubusScreen();
                          }));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/kubus.png'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return PrismaScreen();
                          }));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset('images/prisma.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
