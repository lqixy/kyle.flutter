import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

String productToJson(Product data) => json.encode(data.toJson());

class Product {
  Product({
    required this.args,
    required this.click,
    required this.cmtcount,
    required this.goodcmtcount,
    required this.goodsid,
    required this.video,
    required this.intro,
    required this.link,
    required this.modetrade,
    required this.originalprice,
    required this.pic,
    required this.sales,
    required this.sellprice,
    required this.stock,
    required this.title,
    required this.other,
    required this.brandname,
    required this.brandlogo,
  });

  final String args;
  final String click;
  final String cmtcount;
  final String goodcmtcount;
  final String goodsid;
  final String video;
  final String intro;
  final String link;
  final String modetrade;
  final String originalprice;
  final String pic;
  final String sales;
  final String sellprice;
  final String stock;
  final String title;
  final String other;
  final String brandname;
  final String brandlogo;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        args: json["args"],
        click: json["click"],
        cmtcount: json["cmtcount"],
        goodcmtcount: json["goodcmtcount"],
        goodsid: json["goodsid"],
        video: json["video"],
        intro: json["intro"],
        link: json["link"],
        modetrade: json["modetrade"],
        originalprice: json["originalprice"],
        pic: json["pic"],
        sales: json["sales"],
        sellprice: json["sellprice"],
        stock: json["stock"],
        title: json["title"],
        other: json["other"],
        brandname: json["brandname"],
        brandlogo: json["brandlogo"],
      );

  Map<String, dynamic> toJson() => {
        "args": args,
        "click": click,
        "cmtcount": cmtcount,
        "goodcmtcount": goodcmtcount,
        "goodsid": goodsid,
        "video": video,
        "intro": intro,
        "link": link,
        "modetrade": modetrade,
        "originalprice": originalprice,
        "pic": pic,
        "sales": sales,
        "sellprice": sellprice,
        "stock": stock,
        "title": title,
        "other": other,
        "brandname": brandname,
        "brandlogo": brandlogo,
      };
}
