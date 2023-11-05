

class Image{
  String ? image;

  Image(this.image);
}

List movie =carosalimage.map((b) => Image (b["image"])).toList();

var carosalimage=[
  {"image":"assets/avatar.jpeg"},
  {"image":"assets/skyfall.jpeg"},
  {"image":"assets/brave.jpeg"},
  {"image":"assets/oppen.jpeg"},
  {"image":"assets/olddad2.jpeg"},
  {"image":"assets/20182.jpeg"},



];
///

class Listmov
{
  String ? image;

  Listmov(this.image);
}

List listmovie =listimage.map((a) => Listmov (a["image"])).toList();

var listimage=[

  {"image":"assets/bheeshma2.jpg"},
  {"image":"assets/kannursquad2.jpg"},
  {"image":"assets/vikram2.jpeg"},
  {"image":"assets/bheeshma2.jpg"},
  {"image":"assets/kannursquad2.jpg"},
  {"image":"assets/vikram2.jpeg"}


];
///fiestone
// {"image":"assets/killer2.jpeg"},
// {"image":"assets/olddads2.jpg"},
// {"image":"assets/20182.jpg"},
// {"image":"assets/bheeshma2.jpg"},
// {"image":"assets/kannursquad2.jpg"},
//{"image":"assets/vikram2.jpg"}
///
///for trending now
class trendmov{
  String ? image;

  trendmov(this.image);
}

List trendmovie =trendimage.map((d) => trendmov (d["image"])).toList();

var trendimage=[

  {"image":"assets/bheeshma.jpg"},
  {"image":"assets/kannursquad.jpg"},
  {"image":"assets/vikram.jpg"},
  {"image":"assets/bheeshma.jpg"},
  {"image":"assets/kannursquad.jpg"},
  {"image":"assets/vikram.jpeg"}


];
/// Downloadlist
class download{
  String ? image;
  String ? text;
  String ? icon;

  download(this.image,this.text,this.icon);
}
List downloadlist = downloadimages.map((c) => download(c["image"], c["text"], c["icon"])).toList();

var downloadimages=[

  {"image":"assets/killer.jpeg","text":"Killers of the Flower Moon", "icon": 'downloading'},
  {"image":"assets/olddads.jpg","text":"Old Dads", "icon":'downloading' },
  {"image":"assets/2018.jpg","text":"2018","icon": 'downloading'},
  {"image":"assets/bheeshma2.jpg","text":"Bheeshma","icon": 'downloadcompleted'},
  {"image":"assets/kannursquad2.jpg","text":"Kannur Squad","icon": 'downloadcompleted'},
  {"image":"assets/vikram.jpg","text":"Vikram","icon": 'downloadcompleted'},
];
///
/// you may like
class youmaylike{
  String ? image;

  youmaylike(this.image);
}

List youmaylikelist =youmaylikeimage.map((e) => youmaylike (e["image"])).toList();

var youmaylikeimage=[

  {"image":"assets/kaithi.jpeg"},
  {"image":"assets/sholay.jpeg"},
  {"image":"assets/javan.png"},
  {"image":"assets/jailer.jpg"},
  {"image":"assets/inception.jpeg"},
  {"image":"assets/vikram.jpg"}
];

