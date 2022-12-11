import 'package:flutter/material.dart';

class AddNotes extends StatefulWidget {
  const AddNotes({Key? key}) : super(key: key);

  @override
  State<AddNotes> createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0fa),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Color(0xffF0F0FA),
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0,right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  minWidth: 35,
                  onPressed: () {
                    setState(() {
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/write.png',height: 18,color: Colors.grey,),
                      SizedBox(height: 4,),
                      const  Text(
                        'Check-List',
                        style: TextStyle(
                          color:  Colors.grey,
                          fontWeight: FontWeight.normal,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 35,
                  onPressed: () {
                    setState(() {
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/font.png',height: 18,color: Colors.grey,),
                      SizedBox(height: 4,),
                      const Text(
                        'Format',
                        style: TextStyle(
                          color:  Colors.grey,
                          fontWeight: FontWeight.normal,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 35,
                  onPressed: () {
                    setState(() {

                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/image.png',height: 18,color: Colors.grey,),
                      SizedBox(height: 4,),
                      Text(
                        'Gallery',
                        style: TextStyle(
                          color:Colors.grey,
                          fontWeight: FontWeight.normal,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 35,
                  onPressed: () {
                    setState(() {
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/pencil.png',height: 18,color: Colors.grey,),
                      SizedBox(height: 4,),
                      const Text(
                        'Handwrite',
                        style: TextStyle(
                          color:  Colors.grey,
                          fontWeight:  FontWeight.normal,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xfff0f0fa),
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
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
                    child: Image.asset('assets/images/back.png'),
                  ),
                ),
                SizedBox(width: 30,),
                Text('All Notes',style: TextStyle(
                  fontWeight: FontWeight.w900,letterSpacing: 0.5,
                  color: Colors.black,
                ),)
              ],
            ),
            Image.asset('assets/images/tick.png',height: 15,),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:const [
                Text('Title',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w900,),),
                Text('today 2:00 pm',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w900,),)
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child:const Padding(
                  padding:  EdgeInsets.all(12.0),
                  child: Text(
                    'New Project briefing',style: TextStyle(
                    fontWeight: FontWeight.w900,fontSize: 14
                  ),
                  ),
                ),
              ),
            ),
           const Text('Description',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w900,),),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(12),
                  child: Text('There’s a lot of work before they’re approved, and once they have been given the go-ahead, there’s even more planning and scheduling needed!\n\n How do you communicate that information with stakeholders and the team so they understand the project?You use a project brief, an important document that outlines what the project is about, to do just that.\n\nA project brief lets you convey the main goals of the project so that everyone understands what they’ll be doing.Read on to learn more about them, and how to make one for yourself.',
                  style: TextStyle(fontSize: 12,letterSpacing: 1,fontWeight: FontWeight.w600,
                  color: Colors.grey),
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
