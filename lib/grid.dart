import 'package:flutter/material.dart';

class GridContainer extends StatefulWidget {
  const GridContainer({super.key});

  @override
  State<GridContainer> createState() => _GridContainerState();
}

class _GridContainerState extends State<GridContainer> {
  List<String> gridState = List.filled(9, '');
  String currentPlayer = 'X';

  void _handleTap(int index) {
    if (gridState[index].isEmpty) {
      setState(() {
        gridState[index] = currentPlayer;
        currentPlayer = currentPlayer == 'X' ? 'O' : 'X';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(44),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  _buildCell(0),
                  _buildVerticalDivider(),
                  _buildCell(1),
                  _buildVerticalDivider(),
                  _buildCell(2),
                ],
              ),
            ),
            _buildHorizontalDivider(),
            Expanded(
              child: Row(
                children: [
                  _buildCell(3),
                  _buildVerticalDivider(),
                  _buildCell(4),
                  _buildVerticalDivider(),
                  _buildCell(5),
                ],
              ),
            ),
            _buildHorizontalDivider(),
            Expanded(
              child: Row(
                children: [
                  _buildCell(6),
                  _buildVerticalDivider(),
                  _buildCell(7),
                  _buildVerticalDivider(),
                  _buildCell(8),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCell(int index) {
    return Expanded(
      child: GestureDetector(
        onTap: () => _handleTap(index),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(44),
          ),
          child: Center(
            child: gridState[index].isEmpty
                ? null
                : Image.asset(
                    gridState[index] == 'X'
                        ? 'assets/images/x.png'
                        : 'assets/images/o.png',
                  ),
          ),
        ),
      ),
    );
  }

  Widget _buildHorizontalDivider() {
    return Divider(
      color: Colors.black,
      thickness: 1,
      height: 2,
    );
  }

  Widget _buildVerticalDivider() {
    return VerticalDivider(
      color: Colors.black,
      thickness: 1,
      width: 2,
    );
  }
}
