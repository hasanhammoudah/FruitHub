import 'package:flutter/material.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({
    super.key,
    required this.imageUrl,
  });

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image.network(imageUrl ??
        'https://fastly.picsum.photos/id/80/53/40.jpg?hmac=j-50ZybbMkt1IzmEDDJWpan3qQNyTq8R2qQ_OysD3Nc');
  }
}
