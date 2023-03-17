import 'package:flutter/material.dart';

class SlideToRegisterButton extends StatefulWidget {
  final VoidCallback onRegistered;

  SlideToRegisterButton({required this.onRegistered});

  @override
  _SlideToRegisterButtonState createState() => _SlideToRegisterButtonState();
}

class _SlideToRegisterButtonState extends State<SlideToRegisterButton> {
  bool _isDragging = false;
  double _dragPercent = 0.0;

  void _onDragStart(DragStartDetails details) {
    setState(() {
      _isDragging = true;
    });
  }

  void _onDragUpdate(DragUpdateDetails details) {
    setState(() {
      _dragPercent += details.primaryDelta! / context.size!.width;
      if (_dragPercent > 1.0) {
        _dragPercent = 1.0;
      } else if (_dragPercent < 0.0) {
        _dragPercent = 0.0;
      }
    });
  }

  void _onDragEnd(DragEndDetails details) {
    setState(() {
      _isDragging = false;
      _dragPercent = 0.0;
    });
    if (_dragPercent == 1.0) {
      widget.onRegistered();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onHorizontalDragStart: _onDragStart,
        onHorizontalDragUpdate: _onDragUpdate,
        onHorizontalDragEnd: _onDragEnd,
        child: Container(
          width: double.infinity,
          height: 20.0,
          decoration: BoxDecoration(
            color: _isDragging ? Colors.green : Colors.grey,
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Stack(
            children: <Widget>[
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text(
                    'Let\'s Start',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: _dragPercent *
                          (MediaQuery.of(context).size.width - 50)),
                  child: Container(
                    width: 30.0,
                    height: 30.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          body: Center(child: SlideToRegisterButton(onRegistered: () {})))));
}
