import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SummaryPge extends StatefulWidget {
  const SummaryPge({super.key});

  @override
  State<SummaryPge> createState() => _SummaryPgeState();
}

class _SummaryPgeState extends State<SummaryPge> {

  List names =[" Present this appointment slip in claiming your Digital ID Card","This is an electronically-generated slip","This is NOT a SomID Card"];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xff4189DD),
        elevation: 0.2,
        title: Text("Logo",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white),),
      actions: [Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container( width: 80,height: 10,decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(6) ), child:Center(child: Text("Logout",style: TextStyle(fontSize: 13,color: Colors.white),)),),
      )],
      ),
      body: SingleChildScrollView(
        child: Column( 
         
          children: [
            SizedBox(height: 10,),
      
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(width: double.infinity, height: 650, decoration: BoxDecoration( borderRadius: BorderRadius.circular(15), color: Colors.white,boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 202, 200, 200),
              spreadRadius: 0.3,
              blurRadius: 0.1,
              offset: const Offset(1, 1)
            )
          ]), child: Column( crossAxisAlignment: CrossAxisAlignment.start, children: [
      
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(width: double.infinity, height: 230, decoration: BoxDecoration(gradient: LinearGradient(
              colors: [
                // Instead of two different colors here I want to have the two other Linear gradients
                // with each having two other different colors that go from top to bottom
                Color(0xffE9E9E9),
                Color(0xffffffff),
              ],
              stops: [0.5,0.5],
              tileMode: TileMode.clamp,
            ),
          
           borderRadius: BorderRadius.circular(8), color: Colors.white,boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 202, 200, 200),
                spreadRadius: 0.3,
                blurRadius: 0.1,
                offset: const Offset(1, 1)
              )
                    ]), child:Column( mainAxisAlignment: MainAxisAlignment.start, children: [
      
                      SizedBox(height: 20,),
                      ListRow(title: "First Name ",value: "MOHAMED",),
                      SizedBox(height: 5,),
                      
                      ListRow(title: "Middle Name ",value: "Abdirahman",),
                         SizedBox(height: 5,),
                    
                      ListRow(title: "Last Name  ",value: "AHMED",),
                         SizedBox(height: 5,),
                   
                      ListRow(title: "Blood Type ",value: "B+",),
                         SizedBox(height: 5,),
                    
                      ListRow(title: "Phone ",value: "613838299IW22",),
                   
                      ListRow(title: "Email",value: "MOHAMED@GMAIL.COM",),
                    
                      ListRow(title: "Date ",value: "Monday, Jun 10, 2023",),
                   
                      ListRow(title: "Time ",value: "2:00 PM",),
                   
                     
                    ],)),
            ),
            SizedBox(height: 20,),
      
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Information",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xff4189DD)),),
            ),
      
      
            SizedBox(height: 20,),
            ListDont(title: "Present this appointment slip in claiming your Digital ID Card",) ,
             ListDont(title: " This is an electronically-generated slip",) ,
              ListDont(title: "This is NOT a SomID Card",) ,
      
              SizedBox(height: 6,),
      
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Text("Remainder",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Color(0xff4189DD)),),
            ),




       Listnum(title: "Present this appointment slip in claiming your printed eSomID.", num: "1."),
       SizedBox(height: 5,),
           
             Listnum(title: "You must personally appear during pur appointment to claim your printed eSomID.", num: "2."),
              SizedBox(height: 5,),
              Listnum(title: "Minors-(below 18 years old)must accompanied by parents or legal guardians in claiming their printed eSomID.", num: "3."),
               SizedBox(height: 5,),
               Listnum(title: "This is an electronically generated slip.", num: "4."),
      
      
         
         SizedBox(height: 30,),
         Container(width: 380, height: 40, decoration: BoxDecoration( color: Colors.blue,borderRadius: BorderRadius.circular(8)),child: Center(child: Text("Print an appointment form ",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w600),)),)
      
      
      
      
      
      
          ],),),
          )
      
        ],),
      ),
    );
  }
}




class ListRow extends StatefulWidget {
  ListRow({super.key ,required this.title,required this.value});

  String title;
  String value;
  @override
  State<ListRow> createState() => _ListRowState();
}

class _ListRowState extends State<ListRow> {
  @override
  Widget build(BuildContext context) {
    return Row(  children: [
      Padding(
        padding: const EdgeInsets.only(left: 60,bottom: 2),
        child: Container( width: 80, child: Text(widget.title,style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),)),
      ),


 Padding(
        padding: const EdgeInsets.only(left: 50, bottom: 2),
        child: Container( width: 140, child: Text(widget.value,style: TextStyle(fontSize: 13,),)),
      ),
      
      
    ],);
  }
}


class ListDont extends StatefulWidget {
   ListDont({super.key, required this.title});


  String title;

  @override
  State<ListDont> createState() => _ListDontState();
}

class _ListDontState extends State<ListDont> {
  @override
  Widget build(BuildContext context) {
    return    Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Transform.translate(
          offset: const Offset(0, -8),
          child: const Text(
            '•',
            style: TextStyle(fontSize: 30),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            widget.title,
            style: TextStyle(fontSize: 10),
           
          ),
        ),
      ],
    );
  }
}




class Listnum extends StatefulWidget {
   Listnum({super.key, required this.title,required this.num});


  String title;
  String num;

  @override
  State<Listnum> createState() => _ListnumState();
}

class _ListnumState extends State<Listnum> {
  @override
  Widget build(BuildContext context) {
    return   Row(children: [

  Padding(
    padding: const EdgeInsets.all(1.0),
    child: Text(widget.num,style: TextStyle(fontSize: 13),),
  ),
  Container(
    width: 360,
    child: Padding(
      padding: const EdgeInsets.all(1.0),
      child: Text(widget.title,style: TextStyle(fontSize: 10),),
    ),
  ),
],);
     
  }
}