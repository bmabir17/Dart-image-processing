import 'dart:io' as Io;
import 'package:image/image.dart';
void main(){
  //Read an image from file
  //You can also use other file format like jpeg, webp,TIFF, PSD, GIF
  var imageFile = new Io.File('test.png').readAsBytesSync();
  //decodeImage will identify the format of the image and 
  // decode the image accordingly
  Image image = decodeImage(imageFile);

//----One liner ---//
  //  Image image = decodeImage(new Io.File('test.png').readAsBytesSync());

  // Resize the image
  Image thumbnail = copyResize(image,120);

  //save the resized image as png
  //Can also be saved as jpeg, gif
  new Io.File('thumbnail.png').writeAsBytesSync(encodePng(thumbnail));
}