import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:peliculas_new/src/models/pelicula_model.dart';

class CardSwiper extends StatelessWidget {
  final List<Pelicula> peliculas;
  CardSwiper({required this.peliculas});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.only(top: 10.0),
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: FadeInImage(
                image: NetworkImage(peliculas[index].getPosterImg()),
                placeholder: const AssetImage('assets/img/no-image.jpg'),
                fit: BoxFit.cover,
              ));
        },
        itemCount: peliculas.length,
        //pagination: new SwiperPagination(),
        //control: new SwiperControl(),
        layout: SwiperLayout.STACK,
        itemWidth: screenSize.width * 0.6,
        itemHeight: screenSize.height * 0.5,
      ),
    );
    ;
  }
}
