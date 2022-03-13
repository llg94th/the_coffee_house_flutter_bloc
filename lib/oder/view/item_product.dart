import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:thecoffeehouse_api/thecoffeehouse_api.dart';

class ItemProduct extends StatelessWidget {
  final Product product;

  const ItemProduct({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.all(Radius.circular(8));
    final numberFormat = NumberFormat('#,##0', 'vi_VN');
    return Container(
        margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(borderRadius: borderRadius),
                  height: 96,
                  child: ClipRRect(
                    borderRadius: borderRadius,
                    child: Image.network(
                      product.image,
                      errorBuilder: (bContext, error, stackStrace) =>
                          Text('Lỗi'),
                    ),
                  ),
                ),
                Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(3, 3, 3, 3),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8),
                            bottomLeft: Radius.circular(5)),
                      ),
                      child: Text(
                        '-40%',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ))
              ],
            ),
            Padding(padding: EdgeInsets.only(left: 8)),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(padding: EdgeInsets.only(top: 8)),
                  Text(
                    '${product.product_name}',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 8)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '${numberFormat.format(product.price)}đ',
                        style: TextStyle(fontSize: 14),
                      ),
                      Padding(padding: EdgeInsets.only(left: 8)),
                      Text(
                        '${numberFormat.format(product.base_price)}đ',
                        style: TextStyle(
                            fontSize: 10,
                            decoration: TextDecoration.lineThrough),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 32, 8, 0),
              child: Container(
                child: Icon(
                  Icons.add,
                  size: 16,
                  color: Colors.white,
                ),
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(12)),
              ),
            )
          ],
        ));
  }
}
