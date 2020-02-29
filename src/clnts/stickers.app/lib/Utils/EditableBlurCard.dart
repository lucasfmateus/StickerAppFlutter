import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:stickers/Pages/CreatePackeagePage.dart';

class EditableBlurCard extends StatefulWidget {
  final Widget parameter;
  final Widget editPage;
  EditableBlurCard(this.parameter, this.editPage);

  @override
  _EditableBlurCard createState() => _EditableBlurCard();
}

class _EditableBlurCard extends State<EditableBlurCard> {

  bool isVisible = false;
  double sigma = 0.0;
  void _changeVisibility() {
    setState(() {
      isVisible = !isVisible;
      sigma = (sigma == 0) ? 8.0 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Center(
            child: InkWell(
              splashColor: Colors.white,
              onDoubleTap: () async {
                _changeVisibility();
              },
              child: CardBlur(
                  context,
                  widget.parameter,
                  0
              ),
            )
        ),
        Center(
          child: Visibility(
              visible: isVisible,
              child: Stack(
                children: <Widget>[
                  Center(
                    child: InkWell(
                      splashColor: Colors.blue,
                      onTap: () async {
                        _changeVisibility();
                      },
                      child: CardBlur(
                        context,
                        Container(),
                        sigma
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.fromLTRB(0,MediaQuery.of(context).size.width * 0.6,0,0),
                          width: MediaQuery.of(context).size.width/2.5,
                          child: InkWell(
                            splashColor: Colors.white,
                            onTap: () async {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => widget.editPage
                                  )
                              );
                            },
                            child: Container(
                              color: Colors.blue.withOpacity(0.3),
                              padding: EdgeInsets.fromLTRB(50,10,50,10),
                              child: Text("Editar",
                                  style: TextStyle(fontSize: 16),
                                  textAlign: TextAlign.center),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0,0,0,0),
                          width: MediaQuery.of(context).size.width/2.5,
                          child: InkWell(
                            splashColor: Colors.white,
                            onTap: () async {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                  )
                              );
                            },
                            child: Container(
                              color: Colors.red.withOpacity(0.3),
                              padding: EdgeInsets.fromLTRB(50,10,50,10),
                              child: Text("Excluir",
                                  style: TextStyle(fontSize: 16),
                                  textAlign: TextAlign.center),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
          ),
        ),
      ],
    );
  }

  Widget CardBlur(BuildContext context, Widget child, double sigma) {
    return Border(
        Container(
            width: MediaQuery.of(context).size.width * 0.75,
            color: Colors.white.withOpacity(0.5),
            child: child
        ),
        sigma
    );
  }

  Widget Border(Widget child, double sigma) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: sigma, sigmaY: sigma),
            child: child
        )
    );
  }

}


