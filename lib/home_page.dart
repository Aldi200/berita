import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Berita Terbaru'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildNewsItem('Politik', 'Presiden Jokowi Kunjungi Asean-China Expo di Nanning'),
            _buildNewsItem('Ekonomi', 'Kementerian Pariwisata Tawarkan 3 Destinasi Pariwisata di Kalimantan Barat'),
            _buildNewsItem('Olahraga', 'Pekan Olahraga Nasional Papua Tambah Cabang Angkat Besi'),
            _buildNewsItem('Hiburan', 'Konser BCL di Singapura Banjir Dukungan Fans'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Tombol keluar ditekan
          Navigator.pop(context);
        },
        child: Icon(Icons.exit_to_app),
      ),
    );
  }

  Widget _buildNewsItem(String category, String title) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            category,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Klik untuk baca lebih lengkap',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 16),
          Divider(height: 1),
        ],
      ),
    );
  }
}
