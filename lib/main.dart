import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //digunakan untuk menghilangkan tulisan "DEBUG" yang muncul di pojok kanan atas aplikasi saat dijalankan dalam mode debug.
      home: Scaffold(
        appBar: AppBar(
          title: Text('Item Servis Coffe'),
        ),

        body: ListView(
          padding: EdgeInsets.all(16),
         children: [
          Container(
            decoration: BoxDecoration(
            color: Colors.brown[50],
            borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
            bottomLeft: Radius.circular(180),
            bottomRight: Radius.circular(180),
            ),
            boxShadow: [BoxShadow(
              color: Colors.brown,
              blurRadius: 6,
              offset: Offset(1, 3),
 )
     ]
        ),
        // untuk sudut gambar agar melengkung
        child: Column(
          children: [ClipRRect(
            
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              'asset/images/coffe.jpg',
              fit: BoxFit.cover,
              height: 100,
              width: 100,
            ),
          ),
          SizedBox(height: 16,),
          Text(
            'Caffè Latte', 
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.brown[900]
          ),
          ),
          SizedBox(
            height: 16,
          ),
          Text('A caffè latte is simply a shot or two of bold, tasty espresso with fresh, sweet steamed milk over it.',
          textAlign: TextAlign.center, style: TextStyle(fontSize: 12,),
          ),
          const SizedBox(height: 30),
          TextButton(
            onPressed:(){
              print('Explore More');
            },
            style: ButtonStyle(
              padding: WidgetStateProperty.resolveWith( ( State){ //Untuk mengatur jarak teks atau konten dalam tombol dari tepi tombol
                return const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 16,
                );
              }),
              backgroundColor: WidgetStateProperty.resolveWith((State){
                return Colors.brown[700];
              }),
            foregroundColor: WidgetStateProperty.resolveWith((State){
              return Colors.white;
            }),
            shape: WidgetStateProperty.resolveWith((State){
              return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              );
            })
        ),
        child: const Text('Explore With'),
          )
                ],),
            ),
          ],
        ),
      ),
    );
  }
}