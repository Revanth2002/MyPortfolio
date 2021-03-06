
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:portfolio/components/responsive.dart';
import 'package:url_launcher/url_launcher.dart';


class NeumorphicContainer extends StatefulWidget {
  final Widget child;
  final double bevel;
  final Offset blurOffset;
  final Color color;
  final int index;
  final Function press;
  final String url;
  NeumorphicContainer({
    Key key,
    this.child,
    this.bevel = 10.0,
    this.color, this.index, this.press, this.url,
  })  : this.blurOffset = Offset(bevel / 2, bevel / 2),
        super(key: key);

  @override
  _NeumorphicContainerState createState() => _NeumorphicContainerState();
}

class _NeumorphicContainerState extends State<NeumorphicContainer> {
  bool _isPressed = false;

  void _onPointerDown(PointerDownEvent event) {
    setState(() {
      _isPressed = true;
    });
  }

  void _onPointerUp(PointerUpEvent event) {
    setState(() {
      _isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final color = this.widget.color ?? Colors.white;//Theme.of(context).backgroundColor;

    return Listener(
      onPointerDown: _onPointerDown,
      onPointerUp: _onPointerUp,
      child: GestureDetector(
        onTap: ()async{
             await launch(widget.url);
        },
              child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          padding: const EdgeInsets.all(24.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.bevel * 10),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  _isPressed ? color : color.mix(Colors.white, .1),
                  _isPressed ? color.mix(Colors.black, .05) : color,
                  _isPressed ? color.mix(Colors.black, .05) : color,
                  color.mix(Colors.white, _isPressed ? .2 : .5),
                ],
                stops: [  
                  0.0,
                  .3,
                  .6,
                  1.0,
                ]),
            boxShadow: _isPressed ? null : [
              BoxShadow(
                blurRadius: widget.bevel,
                offset: -widget.blurOffset,
                color: color.mix(Colors.white, .6),
              ),
              BoxShadow(
                blurRadius: widget.bevel,
                offset: widget.blurOffset,
                color: color.mix(Colors.black, .3),
              )
            ],
          ),
          child:widget.child,
        ),
      ),
    );
  }
}

extension ColorUtils on Color {
  Color mix(Color another, double amount) {
    return Color.lerp(this, another, amount);
  }
}