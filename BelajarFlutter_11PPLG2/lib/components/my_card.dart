import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String title;
  final String? subtitle;
  final String? description;
  final String? price;      // Opsional (nullable)
  final String? rating;     // Opsional (nullable)
  final String? imageUrl;   // Opsional (nullable)
  final IconData? icon;     // Baru: Icon opsional (bisa diisi Icons.home_outlined, dll)
  final VoidCallback? onTap;

  const MyCard({
    Key? key,
    required this.title,
    this.subtitle,
    this.description,
    this.price,
    this.rating,
    this.imageUrl,
    this.icon,            // Baru: Ditambahkan ke constructor
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12.0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              // 1. Icon di Samping Kiri (Jika diisi)
              if (icon != null) ...[
                Icon(
                  icon,
                  size: 24,
                  color: Colors.grey[700],
                ),
                const SizedBox(width: 12),
              ],

              // 2. Gambar Persegi di Samping Kiri (Jika diisi)
              if (imageUrl != null) ...[
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    imageUrl!,
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      width: 70,
                      height: 70,
                      color: Colors.grey[300],
                      child: const Icon(Icons.broken_image, color: Colors.grey),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
              ],
              
              // 3. Nama di Atas, Harga di Bawah Nama
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (price != null) ...[
                      const SizedBox(height: 4),
                      Text(
                        'Rp $price',
                        style: const TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}