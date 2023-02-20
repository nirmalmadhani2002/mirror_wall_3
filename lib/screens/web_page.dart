import 'package:flutter/material.dart';

class WebPage extends StatefulWidget {
  const WebPage({Key? key}) : super(key: key);

  @override
  State<WebPage> createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {
  Map web = <String, String>{
    "https://www.freelogovectors.net/wp-content/uploads/2021/12/sonyliv-logo-freelogovectors.net_.png":
    "https://www.sonyliv.com/",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/YouTube_full-color_icon_%282017%29.svg/800px-YouTube_full-color_icon_%282017%29.svg.png":
    "https://www.youtube.com/",
    "http://store-images.s-microsoft.com/image/apps.32357.14618985536919905.4b30e4f3-f7a1-4421-840c-2cc97b10e8e0.6e7a96f1-33ad-4447-8e2b-7de730f9a05e":
    "https://www.primevideo.com/?ref_=dvm_pds_amz_in_as_s_g_148_mkw_swaDaJpSP-dc&mrntrk=pcrid_386559717051_slid__pgrid_82649959887_pgeo_9062189_x__ptid_kwd-360266561005",
    "https://i.gadgets360cdn.com/large/disney_plus_hotstar_logo_1583901149861.jpg":
    "https://www.hotstar.com/in",
    "https://telegramzone.com/wp-content/uploads/2021/09/Screenshot_-_2021-09-21T102219.700-removebg-preview-3.png":
    "https://www.voot.com/",
    "https://pngimg.com/uploads/netflix/netflix_PNG10.png":
    "https://www.netflix.com/in/",
    "https://logos-world.net/wp-content/uploads/2021/11/ZEE5-Logo.png":
    "https://www.zee5.com/?utm_source=GoogleSearch&utm_medium=Mark_CPA&utm_campaign=Search_SVOD_ZEE5-Brand-ZEE5-Only-Ex-Performance&utm_term=zee5&utm_content=Brand-ZEE5-Only-Ex&&&gclid=Cj0KCQiArsefBhCbARIsAP98hXTsuhbwj2HbOEiQZC5Ll6ZWv1Ft5el3cT73NPqvb_2IDbm4WH95ONAaAhOtEALw_wcB&gclsrc=aw.ds",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor:  Colors.blueGrey,
        title: const Text("Web View"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: web.entries
                .map(
                  (e) => GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("web", arguments: e);
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                     // color: Colors.red.withOpacity(0.5),
                    color: Colors.purple.shade100,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(e.key),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ).toList(),
          ),
        ),
      ),
    );
  }
}