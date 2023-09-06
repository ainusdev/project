import 'package:flutter/material.dart';

class ImagePageView extends StatelessWidget {
  final Iterable<Image> _imageList;

  const ImagePageView({
    super.key,
    required Iterable<Image> imageList,
  }) : _imageList = imageList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 257,
      child: Stack(
        children: [
          PageView.builder(
              itemCount: _imageList.length,
              itemBuilder: (context, index) {
                final _image = _imageList.elementAt(index);
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: AspectRatio(
                    aspectRatio: 343 / 257,
                    child: Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey,
                      ),
                      child: _image,
                    ),
                  ),
                );
              }),
          Positioned(
            bottom: 8,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Wrap(
                  spacing: 5,
                  alignment: WrapAlignment.center,
                  children: [
                    Colors.black,
                    Colors.black.withOpacity(0.22),
                    Colors.black.withOpacity(0.17),
                    Colors.black.withOpacity(0.10),
                    Colors.black.withOpacity(0.05),
                  ]
                      .map((e) => Container(
                            width: 7,
                            height: 7,
                            decoration:
                                BoxDecoration(color: e, shape: BoxShape.circle),
                          ))
                      .toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
