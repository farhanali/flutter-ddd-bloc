import 'package:flutter/material.dart';

import '../../domain/todo.dart';

class TodoItem extends StatelessWidget {
  final Todo task;

  const TodoItem({Key key, this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              _buildCheckBox(),
              SizedBox(width: 12.0),
              _buildName(),
            ],
          ),
        ),
        _buildDeleteButton(),
      ],
    );
  }

  Widget _buildCheckBox() {
    return SizedBox(
      width: 24.0,
      height: 24.0,
      child: Checkbox(
        onChanged: (value) => {
          // TODO
        },
        value: task.done,
        activeColor: Colors.black12,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }

  Widget _buildName() {
    return Text(
      task.name,
      style: TextStyle(
        color: task.done ? Colors.black38 : Colors.black87,
        fontSize: 18.0,
        decoration:
            task.done ? TextDecoration.lineThrough : TextDecoration.none,
      ),
    );
  }

  _buildDeleteButton() {
    if (!task.done) {
      return SizedBox();
    }
    return SizedBox(
      width: 20.0,
      height: 20.0,
      child: IconButton(
        padding: EdgeInsets.all(0.0),
        icon: Icon(
          Icons.delete,
          color: Colors.black38,
        ),
        onPressed: task.done ? null : null, // TODO
      ),
    );
  }
}
