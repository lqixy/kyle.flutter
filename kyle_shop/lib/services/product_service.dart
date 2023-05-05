import 'dart:convert';

import 'package:kyle_shop/models/product.dart';

class ProductService {
  List<Product> getYisilie() {
    var list = json.decode(seamantikaStr);

    var result = (list as List<dynamic>)
        .map((e) => Product.fromJson(e as Map<String, dynamic>))
        .toList();
    return result;
  }

  List<Product> getBaby() {
    var list = json.decode(babyStr);

    var result = (list as List<dynamic>)
        .map((e) => Product.fromJson(e as Map<String, dynamic>))
        .toList();
    return result;
  }

  List<Product> getFangyi() {
    var list = json.decode(fangyiStr);

    var result = (list as List<dynamic>)
        .map((e) => Product.fromJson(e as Map<String, dynamic>))
        .toList();
    return result;
  }
}

String seamantikaStr =
    '[{"args":"915f5ea8-2047-4a22-b438-37e94a0ac855","click":"1","cmtcount":"0","goodcmtcount":"0","goodsid":"915f5ea8-2047-4a22-b438-37e94a0ac855","video":"","intro":"","link":"goodsinfo","modetrade":"1","originalprice":"249.00","pic":"https://timgs-v1.tongtongmall.com/565a2ab082d6467a8c2b60f8601689ea?imageView2/4/quality/30","sales":"1","sellprice":"169.00","stock":"1","label":[],"title":"以色列Seamantika保湿面霜-乳木果油40ml","other":"","brandname":"Seamantika","brandlogo":""},{"args":"cf61f263-d121-4dd8-af9f-5c7900a1a29e","click":"1","cmtcount":"0","goodcmtcount":"0","goodsid":"cf61f263-d121-4dd8-af9f-5c7900a1a29e","video":"","intro":"","link":"goodsinfo","modetrade":"1","originalprice":"479.00","pic":"https://timgs-v1.tongtongmall.com/35bea94df3bc47cc8aa1b0d479cfd3cb?imageView2/4/quality/30","sales":"0","sellprice":"329.00","stock":"0","label":[],"title":"以色列Seamantika磁力美容面膜-甜杏仁油50ml","other":"","brandname":"Seamantika","brandlogo":""},{"args":"25c87a4d-fba7-42d0-a411-97e2525a3d2d","click":"1","cmtcount":"0","goodcmtcount":"0","goodsid":"25c87a4d-fba7-42d0-a411-97e2525a3d2d","video":"","intro":"","link":"goodsinfo","modetrade":"1","originalprice":"429.00","pic":"https://timgs-v1.tongtongmall.com/d51313b76c9e432891ab29775a370f88?imageView2/4/quality/30","sales":"2","sellprice":"299.00","stock":"7","label":[],"title":"以色列Seamantika浮肿眼部护理霜-绿茶提取物25ml","other":"","brandname":"Seamantika","brandlogo":""},{"args":"a7ae9f3b-0322-4d1b-935c-c2058edd0ed8","click":"1","cmtcount":"0","goodcmtcount":"0","goodsid":"a7ae9f3b-0322-4d1b-935c-c2058edd0ed8","video":"","intro":"","link":"goodsinfo","modetrade":"1","originalprice":"499.00","pic":"https://timgs-v1.tongtongmall.com/6cc172c4b9c24378a4b2fbdc85fc67ab?imageView2/4/quality/30","sales":"0","sellprice":"349.00","stock":"7","label":[],"title":"以色列Seamantika60秒矿物质面膜-富含罗勒叶提取物40ml","other":"","brandname":"Seamantika","brandlogo":""}]';

String fangyiStr =
    '[{"args":"6691e01d-f904-4e83-85dc-4bceb62c4b4b","click":"1","cmtcount":"0","goodcmtcount":"0","goodsid":"6691e01d-f904-4e83-85dc-4bceb62c4b4b","video":"","intro":"","link":"goodsinfo","modetrade":"1","originalprice":"","pic":"https://timgs-v1.tongtongmall.com/7fad81b7554e41148fd30f838d98ea5a?imageView2/4/quality/30","sales":"0","sellprice":"49.00","stock":"2","label":[],"title":"泰国Astonish 小象妈咪儿童免洗洗手液500ml","other":"","brandname":"小象妈咪","brandlogo":""},{"args":"02dd6808-8a39-40dd-bc99-1b3f4b29da26","click":"1","cmtcount":"0","goodcmtcount":"0","goodsid":"02dd6808-8a39-40dd-bc99-1b3f4b29da26","video":"","intro":"","link":"goodsinfo","modetrade":"1","originalprice":"","pic":"https://timgs-v1.tongtongmall.com/33237cabb92d4ed481e106a3b8b0eb20?imageView2/4/quality/30","sales":"0","sellprice":"65.00","stock":"0","label":[],"title":"日本 VINYL一次性PVC手套XL盒（100支）","other":"","brandname":"VINYL","brandlogo":""},{"args":"aec6cf01-c6ce-493e-882a-103d7d8c45b5","click":"1","cmtcount":"0","goodcmtcount":"0","goodsid":"aec6cf01-c6ce-493e-882a-103d7d8c45b5","video":"","intro":"","link":"goodsinfo","modetrade":"1","originalprice":"","pic":"https://timgs-v1.tongtongmall.com/ea5397cc958e44d0a60acba38d5f44f8?imageView2/4/quality/30","sales":"5","sellprice":"79.00","stock":"0","label":[],"title":"日本TOAMIT除菌卡防病毒儿童孕妇可用随身携带l","other":"","brandname":"TOAMIT","brandlogo":""},{"args":"25911b62-09f0-43dc-9c31-142c12881441","click":"1","cmtcount":"0","goodcmtcount":"0","goodsid":"25911b62-09f0-43dc-9c31-142c12881441","video":"","intro":"","link":"goodsinfo","modetrade":"1","originalprice":"399.00","pic":"https://timgs-v1.tongtongmall.com/3f8ceb6f5d4740cb914ab1f4ac103066?imageView2/4/quality/30","sales":"0","sellprice":"249.00","stock":"51","label":[],"title":"法国娇兰（Guerlain）熬夜霜深夜焕肤乳15ml","other":"","brandname":"娇兰","brandlogo":""}]';

String babyStr =
    '[{"args":"883bd1ea-c9c9-492b-96e7-8d944fb30f12","click":"1","cmtcount":"3","goodcmtcount":"3","goodsid":"883bd1ea-c9c9-492b-96e7-8d944fb30f12","video":"","intro":"","link":"goodsinfo","modetrade":"1","originalprice":"156.00","pic":"https://timgs-v1.tongtongmall.com/81b98fb1ab9348d1a243166623973b7f?imageView2/4/quality/30","sales":"27","sellprice":"145.00","stock":"0","label":[],"title":"日本花王纸尿裤尿不湿M64 (6-11kg)","other":"","brandname":"花王妙而舒","brandlogo":"https://timgs-v1.tongtongmall.com/d4a8a806a88e43899ee7b56470ac5b1f?imageView2/4/quality/30"},{"args":"4b12bde3-e69d-4e10-843b-206fec09199a","click":"1","cmtcount":"0","goodcmtcount":"0","goodsid":"4b12bde3-e69d-4e10-843b-206fec09199a","video":"","intro":"","link":"goodsinfo","modetrade":"2","originalprice":"","pic":"https://timgs-v1.tongtongmall.com/70058451ed704adcac827e1baf4d00a2?imageView2/4/quality/30","sales":"0","sellprice":"158.00","stock":"55","label":[],"title":"美国加州宝宝金盏花 镇静保湿面霜57g","other":"","brandname":"加州宝宝 CALIFORNIA BABY","brandlogo":""},{"args":"a389c1eb-7b51-4d48-a7dc-6f2fc0a77c1c","click":"1","cmtcount":"4","goodcmtcount":"4","goodsid":"a389c1eb-7b51-4d48-a7dc-6f2fc0a77c1c","video":"","intro":"","link":"goodsinfo","modetrade":"1","originalprice":"195.00","pic":"https://timgs-v1.tongtongmall.com/1e10d417ca1d410dae376b3e0375cb73?imageView2/4/quality/30","sales":"8","sellprice":"149.00","stock":"0","label":[],"title":"美国Comotomo可么多么全硅胶宽口奶瓶150ml绿色","other":"","brandname":"Comotomo可么多么","brandlogo":"https://timgs-v1.tongtongmall.com/8e5a208ac0434605bcb78163f974e71d?imageView2/4/quality/30"},{"args":"889d8c81-2afc-4a83-b828-04f65d0e3b13","click":"1","cmtcount":"0","goodcmtcount":"0","goodsid":"889d8c81-2afc-4a83-b828-04f65d0e3b13","video":"","intro":"","link":"goodsinfo","modetrade":"1","originalprice":"89.00","pic":"https://timgs-v1.tongtongmall.com/14174019929d41c1bace024a1ab8c710?imageView2/4/quality/30","sales":"4","sellprice":"68.00","stock":"1","label":[],"title":"美国AVEENO艾惟诺 婴儿燕麦保湿润肤乳 227g","other":"","brandname":"Aveeno","brandlogo":""}]';