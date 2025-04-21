import 'package:biolo_app/layers/presentation/ui/pages/home/principal.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import '../../../components/colors_const.dart';


class PaginaInicial extends StatefulWidget {
  const PaginaInicial({
    super.key,
  });

  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
PageController controlllerPage = PageController();
int controllerCountPage =0;

static List<Widget> _pageList =<Widget>[

  const Principal(),
     
     Container(color: Colors.black,),
     Container(color: Colors.white,),
     Container(color: Colors.white,),

];
int _seletedIndexGnav=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_pageList.elementAt(_seletedIndexGnav
        ),
       bottomNavigationBar:Padding(
         padding: const EdgeInsets.all(20.0),
         child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blueGrey,
            boxShadow: [
              BoxShadow(
                blurRadius: 40,
                color: Colors.black.withOpacity(.1),
              )
            ],
         ),
               child: SafeArea(  
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
         
                rippleColor: Colors.grey[700]!,
                hoverColor: Colors.grey[100]!,
                gap: 8,
                activeColor: Colors.black,
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: Duration(milliseconds: 400),
                tabBackgroundColor: Colors.grey[100]!,
                color: Colors.black,
                 selectedIndex: _seletedIndexGnav,
                onTabChange: (index) {
                  setState(() {
                    _seletedIndexGnav = index;
                  });
                },
                tabs: [
                  GButton(
               icon: LineIcons.home,
               text: 'Home',
             ),
             GButton(
               icon: LineIcons.heart,
               text: 'Likes',
             ),
             GButton(
               icon: LineIcons.search,
               text: 'Search',
             ),
             GButton(
               icon: LineIcons.user,
               text: 'Profile',
                  ),
                ],
               
              ),
            ),
          ),
               ),
       ),
    );
  }
}
