import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  _card() {
    return Container(
        margin: EdgeInsets.only(top: 20),
        width: double.infinity,
        height: 240,
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: Colors.white,
        ),
        child: Column(
          children: [
            _head(),
          ],
        ));
  }

  _head() {
    return Container(
        width: double.infinity,
        height: 140,
        padding: EdgeInsets.only(
          left: 20,
        ),
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: Colors.lightBlue[300],
        ),
        child: Row(
          children: [_titulo(), _porcentagem()],
        ));
  }

  _titulo() {
    return Container(
      width: 250,
      margin: EdgeInsets.only(
        top: 45,
      ),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Desenvolvimento de Sistemas Móveis',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            Spacer(),
            Text(
              'Turma: 0658-A-51N - Graduação',
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            Spacer(flex: 5)
          ],
        ),
      ),
    );
  }

  _porcentagem() {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 3.0, color: Colors.yellow),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('100%',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold))
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [_card()],
    );
  }
}
