import 'package:artikel/providers/artikelproviders.dart';
import 'package:artikel/screens/detailscreens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ArtikelScreen extends StatefulWidget{
  const ArtikelScreen ({Key? key}) : super(key: key);
  @override

  _ArtikelScreenState createState()=> _ArtikelScreenState();

}

class _ArtikelScreenState extends State <ArtikelScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text ('191011401133 - Rafly Zahrandi Permana',
        style: TextStyle (color:Colors.white,fontWeight:  FontWeight.bold)
        ),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),

    body: 
    Consumer<ArtikelProvider>(
    builder: (context,ArtikelProvider,child){
      return ListView.builder(
            itemCount: ArtikelProvider.Artikel.data?.length?? 0,  
            itemBuilder:(context, index){
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(
                      builder:  (context) => DetailArtikelScreen(
                        title: ArtikelProvider.Artikel.data![index].title,
                      ),),);
                  },

                  child: Card(
                    elevation: 20,
                    child:Padding(
                      padding:const EdgeInsets.all(18) ,
                     child:Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          "${ArtikelProvider.Artikel.data![index].image}"
                        ),
                        Text(
                          "${ArtikelProvider.Artikel.data![index].title}",
                          style: const TextStyle(
                            fontSize:20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "${ArtikelProvider.Artikel.data![index].createdAt}"
                        ),
                      ],
                      )
                      )
                  ),



                );

            }

      );
    }      
    )

    );
  }
}
