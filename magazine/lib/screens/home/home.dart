import 'package:flutter/material.dart';
import 'package:magazine/model/product.dart';
import 'package:magazine/products/products.dart';


class Home extends StatefulWidget {
  @override
  createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
            leading: Image.asset("assets/images/logo.jpg"),
            title: Text("Ofertas do dia"),
            backgroundColor: Colors.lightBlue.shade600,
           
           ),
        body:

        Column(
          
          children: [
            Image.asset("assets/images/linha.jpg"),
            Expanded(child: 
            ListView.builder(
                itemBuilder: builder,
                itemCount: listOfProducts.length),)
           
          ],
        ),
      ),
    );
  }

  Widget builder(BuildContext _, int index) {
    Product _product = listOfProducts.elementAt(index);
    return ListTile(
      title: Row(
        children: [
          Image.asset(
            _product.photo,
            width: 90,
            height: 100,
          ),
          SizedBox(
            width: 14,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 12,
              ),
              //  Expanded(child: Text(_product.name)),
              Text(_product.name,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 5,
              ),
              Text(
                _product.description,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 12,
              ),
              Text("R\$ ${_product.price}",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade800,
                  )),
              
              Text(
                    "10x de ${_product.instalment}, sem juros",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.blueAccent.shade400),
                  ),
                  Row(
                    children: [
                       IconButton(
                      icon: Icon(
                        (_product.isFavorite)
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: (_product.isFavorite) ? Colors.red : Colors.red,
                        size: 20,
                      ),
                      onPressed: () {
                        setState(() {
                          _product.isFavorite = !_product.isFavorite;
                        });
                      },
                    ),
                    ],
                  ),
                  
              Container(
              color: Colors.yellow,
              
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                   
                   
                    // IconButton(
                    //   icon: Icon(
                    //     (_product.isFavorite)
                    //         ? Icons.favorite
                    //         : Icons.favorite_border,
                    //     color: (_product.isFavorite) ? Colors.red : Colors.red,
                    //     size: 20,
                    //   ),
                    //   onPressed: () {
                    //     setState(() {
                    //       _product.isFavorite = !_product.isFavorite;
                    //     });
                    //   },
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
