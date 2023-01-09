import 'package:flutter/material.dart';
import 'package:therapy/Helper/colors.dart';
import 'package:therapy/view/appBar/appBar.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_line/dotted_line.dart';

class InvoiceDetail extends StatefulWidget {
  final String? status;
  const InvoiceDetail({Key? key, this.status}) : super(key: key);

  @override
  State<InvoiceDetail> createState() => _InvoiceDetailState();
}

class _InvoiceDetailState extends State<InvoiceDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar('Invoice Details', context),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 70,
                width: 80,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child:  Image.asset("assets/images/therapyDetail.png",fit: BoxFit.cover,),
                )
              ),
              SizedBox(height: 10,),
               Text("Dr. Maureen Desburg",style: TextStyle(color: Theme.of(context).colorScheme.fontColor,fontWeight: FontWeight.w600,fontSize: 16),),

              Container(
                margin: EdgeInsets.only(top: 15,),
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10,),
                      Text("Client Detail",style: TextStyle(color: Theme.of(context).colorScheme.fontColor,fontSize: 18,fontWeight: FontWeight.w600),),
                       const SizedBox(height: 10,),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Patient's Name*",style: TextStyle(color: Theme.of(context).colorScheme.fontClr,fontWeight: FontWeight.w500),),
                                Text("john Wick",style: TextStyle(color: Theme.of(context).colorScheme.fontColor,fontWeight: FontWeight.w500,fontSize: 15),)
                              ],
                            ),
                           const SizedBox(height: 8,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Date of  Birth*",style: TextStyle(color: Theme.of(context).colorScheme.fontClr,fontWeight: FontWeight.w500),),
                                Text("08/07/1997",style: TextStyle(color: Theme.of(context).colorScheme.fontColor,fontWeight: FontWeight.w500,fontSize: 15),)
                              ],
                            ),
                            SizedBox(height: 8,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Email Id*",style: TextStyle(color: Theme.of(context).colorScheme.fontClr,fontWeight: FontWeight.w500),),
                                Text("johnwick@gmail.com",style: TextStyle(color: Theme.of(context).colorScheme.fontColor,fontWeight: FontWeight.w500,fontSize: 15),)
                              ],
                            ),
                            SizedBox(height: 8,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Contact No.",style: TextStyle(color: Theme.of(context).colorScheme.fontClr,fontWeight: FontWeight.w500),),
                                Text("+619686595848",style: TextStyle(color: Theme.of(context).colorScheme.fontColor,fontWeight: FontWeight.w500,fontSize: 15),)
                              ],
                            ),
                          ],
                        ),
                      ),
                      const  SizedBox(height: 12,),
                       Text("Session Details",style: TextStyle(color: Theme.of(context).colorScheme.fontColor,fontSize: 18,fontWeight: FontWeight.w600),),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Total Hours",
                                    style: TextStyle(
                                        color: Theme.of(context).colorScheme.secColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14),
                                  ),
                                  SizedBox(height: 5,),
                                  Text(
                                    "4hr",
                                    style: TextStyle(
                                        color: Theme.of(context).colorScheme.fontClr,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Hourly Rate",
                                    style: TextStyle(
                                        color: Theme.of(context).colorScheme.secColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14),
                                  ),
                                  SizedBox(height: 5,),
                                  Text(
                                    "\$10",
                                    style: TextStyle(
                                        color: Theme.of(context).colorScheme.fontClr,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  Text(
                                    "Date",
                                    style: TextStyle(
                                        color: Theme.of(context).colorScheme.secColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14),
                                  ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: [
                                      Text(
                                        "08 july 2022",
                                        style: TextStyle(
                                            color: Theme.of(context).colorScheme.fontClr,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      DottedBorder(
                        borderType: BorderType.RRect,
                        padding: EdgeInsets.all(8),
                        color: colors.activeColor.withOpacity(0.3),
                        strokeWidth: 1,
                        dashPattern: [3],
                        radius: Radius.circular(20),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child:  Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Invoice ID",style: TextStyle(color: Theme.of(context).colorScheme.fontColor,fontWeight: FontWeight.w600,fontSize: 15),),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5.0),
                                    child: Text("5266952",style: TextStyle(color: Theme.of(context).colorScheme.fontColor,fontWeight: FontWeight.w600,fontSize: 15),),
                                  )
                                ],
                              ),
                              SizedBox(height: 8,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                 Text("Invoice status",style: TextStyle(color: Theme.of(context).colorScheme.fontColor,fontWeight: FontWeight.w600,fontSize: 15),),
                                  Container(
                                    height: 25,
                                    width: 100,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: widget.status == "Paid" ?
                                        colors.activeColor :
                                        widget.status == "Pending" ?
                                            colors.primary :
                                            colors.red
                                    ),
                                    child:  Text("${widget.status}",
                                      style: const TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                     const SizedBox(
                        height: 15,
                      ),
                      Text("Therapy Charge",style: TextStyle(color: Theme.of(context).colorScheme.fontColor,fontSize: 18,fontWeight: FontWeight.w600),),
                     const SizedBox(height: 15,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Total Charge",style: TextStyle(color: Theme.of(context).colorScheme.fontColor,fontWeight: FontWeight.w500,fontSize: 14),),
                            Text("\$40",style: TextStyle(color: Theme.of(context).colorScheme.fontColor,fontSize: 14,fontWeight: FontWeight.w500),)
                          ],
                        ),
                      ),
                      SizedBox(height: 7,),
                      DottedLine(
                        direction: Axis.horizontal,
                        lineLength: double.infinity,
                        lineThickness: 1.0,
                        dashLength: 4.0,
                        dashColor: colors.activeColor.withOpacity(0.3),
                        dashRadius: 0.0,
                        dashGapLength: 4.0,
                        dashGapColor: Colors.transparent,

                        dashGapRadius: 0.0,
                      )
                    ],
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
