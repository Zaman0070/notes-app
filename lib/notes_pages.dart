import 'package:flutter/material.dart';
import 'package:flutter_tutorial/add_note.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({Key? key}) : super(key: key);

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0fa),
      appBar: AppBar(
        backgroundColor: Color(0xfff0f0fa),
        elevation: 0,
        title: Row(
          children: [
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.asset('assets/images/menu.png'),
              ),
            ),
            SizedBox(width: 30,),
            Text('All Notes',style: TextStyle(
              fontWeight: FontWeight.w900,letterSpacing: 0.5,
              color: Colors.black,
            ),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=>const AddNotes()));
        },
        child: Icon(Icons.add,size: 35,color: Colors.grey,),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search Notes',
                  hintStyle: TextStyle(color: Colors.grey)
                ),
              ),
            ),
            SizedBox(height: 25,),
            const Text('Categories',style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 16,
            ),),
            SizedBox(height: 20,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.purple.shade100.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset('assets/images/user.png',color: Colors.purple,),
                          ),
                        ),
                        SizedBox(height: 10,),
                      const  Text('Personal',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.green.shade200.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset('assets/images/suitcase.png',color: Colors.greenAccent.shade700,),
                          ),
                        ),
                        SizedBox(height: 10,),
                        const  Text('Work',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.orangeAccent.shade100.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset('assets/images/car.png',color: Colors.orangeAccent,),
                          ),
                        ),
                        SizedBox(height: 10,),
                        const  Text('Travel',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.redAccent.shade100.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset('assets/images/love.png',color: Colors.redAccent,),
                          ),
                        ),
                        SizedBox(height: 10,),
                        const  Text('Health',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: Container(
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Icon(Icons.add,size: 30,color: Colors.grey,)
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const[
                          Text('Team meeting',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 14),),
                          Text('yesterday',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 11),),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Text('Diam aenean in nisl sem phereta sed sed.',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.grey),),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const[
                          Text('Appointment',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 14),),
                          Text('24/10',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 11),),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Text('Diam aenean in nisl sem phereta sed sed.',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.grey),),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const[
                          Text('Email team for updates',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 14),),
                          Text('21/10',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 11),),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Text('Diam aenean in nisl sem phereta sed sed.',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.grey),),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const[
                          Text('Prepare investors pitch deck',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 14),),
                          Text('18/10',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 11),),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Text('Diam aenean in nisl sem phereta sed sed.',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.grey),),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
