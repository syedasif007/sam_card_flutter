library sam_card_flutter;

import 'package:flutter/material.dart';

class SamCard extends StatefulWidget {
  final bool empty;
  final bool useMarker;
  final double elevation;
  final double height;
  final EdgeInsets padding;
  final Color borderColor;
  final double borderWidth;
  final double borderRadius;
  final Color markerColor;
  final double markerWidth;
  final double markerRadius;
  final String image;
  final Color imageColor;
  final String title;
  final String subTitle;
  final String description;

  const SamCard({
    Key key,
    @required this.empty,
    @required this.useMarker,
    @required this.elevation,
    @required this.height,
    @required this.padding,
    @required this.borderColor,
    @required this.borderWidth,
    @required this.borderRadius,
    this.markerColor,
    this.markerWidth,
    this.markerRadius,
    this.image,
    this.imageColor,
    this.title,
    this.subTitle,
    this.description,
  }) : super(key: key);

  @override
  _SamCardState createState() => _SamCardState();
}

class _SamCardState extends State<SamCard> {
  @override
  Widget build(BuildContext context) {
    assert(context != null, "context is null!");
    assert(widget.empty != null, "empty is null!");
    assert(widget.useMarker != null, "useMarker is null!");
    assert(widget.elevation != null, "elevation is null!");
    assert(widget.height != null, "height is null!");
    assert(widget.padding != null, "padding is null!");
    assert(widget.borderColor != null, "borderColor is null!");
    assert(widget.borderWidth != null, "borderWidth is null!");
    assert(widget.borderRadius != null, "borderRadius is null!");
    if (!widget.empty) {
      assert(widget.image != null, "image is null!");
      assert(widget.imageColor != null, "imageColor is null!");
      assert(widget.title != null, "title is null!");
      assert(widget.subTitle != null, "subTitle is null!");
      assert(widget.description != null, "description is null!");
    }
    if (widget.useMarker) {
      assert(widget.markerColor != null, "markerColor is null!");
      assert(widget.markerWidth != null, "markerWidth is null!");
      assert(widget.markerRadius != null, "markerRadius is null!");
    }
    return Container(
      padding: widget.padding,
      height: widget.height,
      child: widget.empty
          ? Card(
              elevation: widget.elevation,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: widget.borderColor,
                  width: widget.borderWidth,
                ),
                // borderRadius: widget.borderRadius,
                borderRadius: BorderRadius.circular(widget.borderRadius),
              ),
              child: widget.useMarker
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(widget.markerRadius),
                              bottomRight: Radius.circular(widget.markerRadius),
                            ),
                            color: widget.markerColor,
                          ),
                          width: widget.markerWidth,
                        ),
                      ],
                    )
                  : Container(),
            )
          : Card(
              elevation: widget.elevation,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: widget.borderColor,
                  width: widget.borderWidth,
                ),
                // borderRadius: widget.borderRadius,
                borderRadius: BorderRadius.circular(widget.borderRadius),
              ),
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(5.0, 5.0, 20.0, 5.0),
                    child: Row(
                      children: [
                        Container(
                          // color: Colors.red,
                          width: 100,
                          // child: Image(
                          //   image: AssetImage("assets/images/holder.png"),
                          // ),
                          // Image.asset(
                          //   "assets/images/holder.png",
                          //   // height: 50,
                          // ),
                          child: Image.network(
                            // "https://cdn4.iconfinder.com/data/icons/core-ui-outlined/32/outlined_placeholder-512.png",
                            widget.image,
                            color: widget.imageColor,
                            // height: 50,
                          ),
                        ),
                        // Container(
                        //   decoration: BoxDecoration(
                        //     image: DecorationImage(
                        //       image: AssetImage("assets/images/holder.png"),
                        //       fit: BoxFit.fitWidth,
                        //       alignment: Alignment.topCenter,
                        //     ),
                        //   ),
                        // ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.title,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              widget.subTitle,
                              style: TextStyle(
                                color: Colors.black54,
                              ),
                            ),
                            Text(
                              widget.description,
                              style: TextStyle(
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  widget.useMarker
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight:
                                      Radius.circular(widget.markerRadius),
                                  bottomRight:
                                      Radius.circular(widget.markerRadius),
                                ),
                                color: widget.markerColor,
                              ),
                              width: widget.markerWidth,
                            ),
                          ],
                        )
                      : Container(),
                ],
              ),
            ),
    );
  }
}
