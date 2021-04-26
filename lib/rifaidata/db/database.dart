//
// import 'dart:io';
// import 'package:dio/dio.dart';
// import 'package:flutter/services.dart';
// import 'package:http/http.dart';
// import 'package:image_downloader/image_downloader.dart';
// import 'package:intl/intl.dart';
// import 'package:materialx_flutter/data/img.dart';
// import 'package:materialx_flutter/model/Disciplines.dart';
// import 'package:materialx_flutter/model/DocumentCustomFields.dart';
// import 'package:materialx_flutter/model/Projects.dart';
// import 'package:materialx_flutter/model/RelatedItems.dart';
// import 'package:materialx_flutter/model/document_dm.dart';
// import 'package:materialx_flutter/networking/api_list.dart';
// import 'package:materialx_flutter/networking/network_api.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';
//
// import 'onsite_table.dart';
// import 'package:path/path.dart' as p;
//
//
//
//
//
// class PersistentStore {
//
//   Database db;
//
// static PersistentStore defaultStore =  PersistentStore();
//
//   Future<Database> get database async {
//     if (db != null) {
//       return db;
//     }
//     SharedPreferences _prefs = await SharedPreferences.getInstance();
//   //  finishLoading=false;
//    // PersistentStore db=PersistentStore();
//     String b=_prefs.getInt("ProjectId").toString();
//       // if _database is null we instantiate it
//       // if _database is null we instantiate it
//       db = await initDB(b);
//       return db;
//   }
//   Future<List<documenteventlogging>> getalldocumentationloggingevent(Documents a) async {
//     try{
//       //await
// print(a.ID);
// print("*****************");
//       Database db=await this.database ;
//       var query;
// if(a.ID==0)
//      query  = await  db.rawQuery("SELECT * FROM ${Tables.kdocumentloggingevent}");
// else
//   query  = await  db.rawQuery("SELECT * FROM ${Tables.kdocumentloggingevent} WHERE ObjectID=${a.ID}");
//       //List<String>= await Documents.get
//       List<Map> result=query;
//       print(result.length);
//       print("befor from map");
//       List<documenteventlogging> ldc=[];
//       for( var dc in result)
//       {
//         print("mario");
//         print(dc[DocumentRegisterKeys.kId]);
//         // DateTime todayDate=DateTime.parse(dc[DocumentRegisterKeys.kCreatedDate]);
//         //  String formater=DateFormat('yyyy-MM-dd – kk:mm').format(todayDate);
//         //   print("convert");
//         //  print(formater);
//         //  final dateTimeFromStr = formater.parse(dc[DocumentRegisterKeys.kCreatedDate]);
//         //  dc[DocumentRegisterKeys.kCreatedDate]=formater;
//         //   formatDate(todayDate);
//         //  if(dc[DocumentRegisterKeys.kThumbnail]!="")
//         ldc.add(documenteventlogging.fromMapLogging(dc));
//       }
//       print(ldc);
//       print("fetch ll documentationlogging");
//       print(result.length);
//       // for()
//       return ldc;
//
//
//
//     }catch(e){
//       print("have error "+e.toString());
// //return new
//     }
//   }
//   Future<List<RelatedItems>> getreleateditem(int id) async{
//     try{
//       //await
//       Database db=await this.database ;
//
//       var query = await  db.rawQuery("SELECT * FROM RELATEDDOC WHERE ObjectID=${id}");
//       //List<String>= await Documents.get
//       List<Map> result=query;
//       print(result);
//       print("mefti dryan");
//      List<RelatedItems> ldc=[];
//       for( var dc in result)
//       {
//         //  print(dc[DocumentRegisterKeys.kId]);
//         // DateTime todayDate=DateTime.parse(dc[DocumentRegisterKeys.kCreatedDate]);
//         //  String formater=DateFormat('yyyy-MM-dd – kk:mm').format(todayDate);
//         //   print("convert");
//         //  print(formater);
//         //  final dateTimeFromStr = formater.parse(dc[DocumentRegisterKeys.kCreatedDate]);
//         //  dc[DocumentRegisterKeys.kCreatedDate]=formater;
//         //   formatDate(todayDate);
//         //  if(dc[DocumentRegisterKeys.kThumbnail]!="")
//         ldc.add(RelatedItems.fromJsonparse(dc));
//       }
//       print(ldc);
//       print("fetch ll documentation");
//       //  print(result.length);
//       // for()
//       return ldc;
//
//
//
//     }catch(e){
//       print("have error "+e.toString());
// //return new
//     }
//
//   }
//   Future<Disciplines> getalldisciplinesbyid(int id) async{
//     try{
//       //await
//       Database db=await this.database ;
//
//       var query = await  db.rawQuery("SELECT * FROM DISCIPLINES WHERE ID=${id}");
//       //List<String>= await Documents.get
//       List<Map> result=query;
//       print(result);
//       print("befor from map");
//     Disciplines ldc;
//       for( var dc in result)
//       {
//         //  print(dc[DocumentRegisterKeys.kId]);
//         // DateTime todayDate=DateTime.parse(dc[DocumentRegisterKeys.kCreatedDate]);
//         //  String formater=DateFormat('yyyy-MM-dd – kk:mm').format(todayDate);
//         //   print("convert");
//         //  print(formater);
//         //  final dateTimeFromStr = formater.parse(dc[DocumentRegisterKeys.kCreatedDate]);
//         //  dc[DocumentRegisterKeys.kCreatedDate]=formater;
//         //   formatDate(todayDate);
//         //  if(dc[DocumentRegisterKeys.kThumbnail]!="")
//         ldc=Disciplines.fromJson(dc);
//       }
//       print(ldc);
//       print("fetch ll documentation");
//     //  print(result.length);
//       // for()
//       return ldc;
//
//
//
//     }catch(e){
//       print("have error "+e.toString());
// //return new
//     }
//
//   }
//
//   Future<List<Disciplines>> getalldisciplines() async{
//     try{
//       //await
//       Database db=await this.database ;
//
//       var query = await  db.rawQuery("SELECT * FROM DISCIPLINES");
//       //List<String>= await Documents.get
//       List<Map> result=query;
//       print(result);
//       print("befor from map");
//       List<Disciplines> ldc=[];
//       for( var dc in result)
//       {
//       //  print(dc[DocumentRegisterKeys.kId]);
//         // DateTime todayDate=DateTime.parse(dc[DocumentRegisterKeys.kCreatedDate]);
//         //  String formater=DateFormat('yyyy-MM-dd – kk:mm').format(todayDate);
//         //   print("convert");
//         //  print(formater);
//         //  final dateTimeFromStr = formater.parse(dc[DocumentRegisterKeys.kCreatedDate]);
//         //  dc[DocumentRegisterKeys.kCreatedDate]=formater;
//         //   formatDate(todayDate);
//       //  if(dc[DocumentRegisterKeys.kThumbnail]!="")
//           ldc.add(Disciplines.fromJson(dc));
//       }
//       print(ldc);
//       print("fetch ll documentation");
//       print(result.length);
//       // for()
//       return ldc;
//
//
//
//     }catch(e){
//       print("have error "+e.toString());
// //return new
//     }
//
//   }
//
//   Future<List<Documents>> getalldocumentationforlogging() async {
//     try{
//       //await
//       Database db=await this.database ;
//
//       var query = await  db.rawQuery("SELECT * FROM ${Tables.kdocument}");
//       //List<String>= await Documents.get
//       List<Map> result=query;
//       print(result);
//       print("befor from map");
//       List<Documents> ldc=[];
//       for( var dc in result)
//       {
//         print(dc[DocumentRegisterKeys.kId]);
//         // DateTime todayDate=DateTime.parse(dc[DocumentRegisterKeys.kCreatedDate]);
//         //  String formater=DateFormat('yyyy-MM-dd – kk:mm').format(todayDate);
//         //   print("convert");
//         //  print(formater);
//         //  final dateTimeFromStr = formater.parse(dc[DocumentRegisterKeys.kCreatedDate]);
//         //  dc[DocumentRegisterKeys.kCreatedDate]=formater;
//         //   formatDate(todayDate);
//         if(dc[DocumentRegisterKeys.kThumbnail]!="")
//           ldc.add(Documents.fromMap(dc));
//       }
//       print(ldc);
//       print("fetch ll documentation");
//       print(result.length);
//       // for()
//       return ldc;
//
//
//
//     }catch(e){
//       print("have error "+e.toString());
// //return new
//     }
//   }
//
//   Future<List<Projects>> getallProject() async {
//     try{
//       //await
//       Database db=await this.database ;
//
//       var query = await  db.rawQuery("SELECT * FROM ${Tables.kProjects}");
//       //List<String>= await Documents.get
//       List<Map> result=query;
//       print(result);
//       print("befor from map ");
//       List<Projects> ldc=[];
//       for( var dc in result)
//       {
//       //  print(dc[DocumentRegisterKeys.kId]);
//         // DateTime todayDate=DateTime.parse(dc[DocumentRegisterKeys.kCreatedDate]);
//         //  String formater=DateFormat('yyyy-MM-dd – kk:mm').format(todayDate);
//         //   print("convert");
//         //  print(formater);
//         //  final dateTimeFromStr = formater.parse(dc[DocumentRegisterKeys.kCreatedDate]);
//         //  dc[DocumentRegisterKeys.kCreatedDate]=formater;
//         //   formatDate(todayDate);
//        // if(dc[ProjectsKeys.kThumbnail]!="")
//           ldc.add(Projects.fromMap(dc));
//       }
//       print(ldc);
//       print("fetch Project ");
//       print(result.length);
//       // for()
//       return ldc;
//
//
//
//     }catch(e){
//       print("have error "+e.toString());
// //return new
//     }
//   }
//
//  Future<List<DocumentCustomFieldsOption>> getalldocumentationoption(int a) async {
//     try{
//       //await
//       Database db=await this.database ;
//
//       var query = await  db.rawQuery("SELECT * FROM ${Tables.kDocumentCustomFieldsOption} where FieldID=${a}");
//       //List<String>= await Documents.get
//       List<Map> result=query;
//       print(result);
//       print("befor from custom");
//       List<DocumentCustomFieldsOption> ldc=[];
//       for( var dc in result)
//       {
//
//           ldc.add(DocumentCustomFieldsOption.fromMap(dc));
//       }
//       print(ldc);
//       print("fetch ll custom option");
//       print(result.length);
//       // for()
//       return ldc;
//
//
//
//     }catch(e){
//       print("have error "+e.toString());
// //return new
//     }
//   }
//   Future<List<Documents>> getalldocumentationhistory(int a ) async {
//     try{
//       //await
//     //
//       Database db=await this.database ;
//
//       var query = await  db.rawQuery("SELECT * FROM ${Tables.kdocument} WHERE IsHistory =${a}");
//
//       //List<String>= await Documents.get
//       List<Map> result=query;
//       print(result);
//       print("befor from map");
//       List<Documents> ldc=[];
//       for( var dc in result)
//       {
//         print(dc[DocumentRegisterKeys.kId]);
//         // DateTime todayDate=DateTime.parse(dc[DocumentRegisterKeys.kCreatedDate]);
//         //  String formater=DateFormat('yyyy-MM-dd – kk:mm').format(todayDate);
//         //   print("convert");
//         //  print(formater);
//         //  final dateTimeFromStr = formater.parse(dc[DocumentRegisterKeys.kCreatedDate]);
//         //  dc[DocumentRegisterKeys.kCreatedDate]=formater;
//         //   formatDate(todayDate);
//         print("thunbmail is"+dc[DocumentRegisterKeys.kThumbnail]);
//        // if(dc[DocumentRegisterKeys.kThumbnail]!="")
//       //  {
//           print("what path");
//
//
//           // files.add(File(path));
//           ldc.add(Documents.fromMap(dc));
//
//       //  }
//       }
//       print(ldc);
//       print("fetch ll documentation");
//     //  print(result.length);
//       //  DateTime tempDate = new DateFormat("yyyy-MM-dd hh:mm:ss").parse( a.LastUpdatedDate);
//       //for(int i=0;i<ldc.length;i++)
//       ldc.sort((b,a) =>
//
//           DateTime.parse( a.LastUpdatedDate).compareTo(DateTime.parse( b.LastUpdatedDate))
//       );
// //ldc.
//       // for()
//       return ldc;
//
//
//
//     }catch(e){
//       print("have error "+e.toString());
// //return new
//     }
//   }
//   Future<List<Documents>> getalldocumentation( String a,int b) async {
//     try{
//      //await
//       print("TET document");
//       print(b);
//
//       Database db=await this.database ;
// //AND IsHistory=${b}
//       var query;
//       if(b==0)
//       query= await  db.rawQuery("SELECT * FROM ${Tables.kdocument} WHERE Tab ="+"'${a}' ");
//       else
//         query= await  db.rawQuery("SELECT * FROM ${Tables.kdocument} WHERE Tab ="+"'${a}' AND IsHistory=${b}");
//       //List<String>= await Documents.get
//       List<Map> result=query;
//       print(result);
//       print("befor from map");
//       List<Documents> ldc=[];
//       List<Documents> ldcwith=[];
//       for( var dc in result)
//       {
//       print(dc["IsHistory"]);
//       print("/12/////////");
//    //   print();
//     //  print("thunbmail is"+dc[DocumentRegisterKeys.kThumbnail]);
//       if(dc[DocumentRegisterKeys.kThumbnail]!="")
//         {
//
//           ldc.add(Documents.fromMap(dc));
//         }
//       }
//       ldc.sort((a,b){
//         return b.LastUpdatedDate.compareTo(a.LastUpdatedDate);
//       });
//       for(var i=0;i<ldc.length;i++)
//         {
//           if(!ldc[i].IsHistory) {
//             ldcwith.add(ldc[i]);
//             for (var j = 0; j < ldc.length; j++) {
//               if (ldc[j].IsHistory && ldc[j].DocumentNumber == ldc[i].DocumentNumber )
//                 ldcwith.add(ldc[j]);
//             }
//           }
//
//         }
//
//       print(ldc);
//      print("fetch ll documentation");
//       return ldcwith;
//
//     }catch(e){
//       print("have error "+e.toString());
// //return new
//     }
//   }
//
//   Future<Documents> getdocumentationbyid( int a) async {
//     try{
//       //await
//       print("gett logging object");
//       Database db=await this.database ;
//
//       var query = await  db.rawQuery("SELECT * FROM ${Tables.kdocument} where ID=${a}");
//       //List<String>= await Documents.get
//       List<Map> result=query;
//       print(result);
//       print("befor from map");
//    //   List<Documents> ldc=[];
//       for( var dc in result)
//       {
//         print("//////////////////////");
//         print(dc[DocumentRegisterKeys.kId]);
//         // DateTime todayDate=DateTime.parse(dc[DocumentRegisterKeys.kCreatedDate]);
//         //  String formater=DateFormat('yyyy-MM-dd – kk:mm').format(todayDate);
//         //   print("convert");
//         //  print(formater);
//         //  final dateTimeFromStr = formater.parse(dc[DocumentRegisterKeys.kCreatedDate]);
//         //  dc[DocumentRegisterKeys.kCreatedDate]=formater;
//         //   formatDate(todayDate);
//         if(dc[DocumentRegisterKeys.kThumbnail]!="")
//           return Documents.fromMap(dc);
//       }
//
//       // for()
//   //    ldc;
//
//
//
//     }catch(e){
//       print("have error "+e.toString());
// //return new
//     }
//   }
//   Future<List<DocumentCustomFieldsdatajoin> >getdocumentationcustomfieldbyid( int a) async {
//     try{
//       //await
//       //print("gett logging object");
//       Database db=await this.database ;
//
//       var query = await  db.rawQuery("SELECT  ${Tables.kDocumentCustomFields}.ID, ${Tables.kDocumentCustomFields}.FormId,"+
//          " ${Tables.kDocumentCustomFields}.Name, ${Tables.kDocumentCustomFields}.Type,"+
//          "${Tables.kDocumentCustomFields}.Label,"+
//           "${Tables.kDocumentCustomFieldsData}.DocumentCustomFieldID,${Tables.kDocumentCustomFieldsData}.Value,"+
//           "${Tables.kDocumentCustomFieldsData}.LabelValue,${Tables.kDocumentCustomFieldsData}.LastUpdatedDate,"+
//           "${Tables.kDocumentCustomFieldsData}.FormInstanceId FROM ${Tables.kDocumentCustomFieldsData} inner join "+
//           "${Tables.kDocumentCustomFields} ON ${Tables.kDocumentCustomFieldsData}.DocumentCustomFieldID = ${Tables.kDocumentCustomFields}.ID "+
//               "where ${Tables.kDocumentCustomFieldsData}.FormInstanceId=${a}");
//       //List<String>= await Documents.get
//       List<Map> result=query;
//       print(result);
//       print("befor from map custom data");
//       List<DocumentCustomFieldsdatajoin> ldc=[];
//       print(a);
//       //   List<Documents> ldc=[];
//       for( var dc in result)
//       {
//         print("//////////////////////");
//         print(a);
//         print(DocumentCustomFieldsdatajoin.fromMap(dc));
//         ldc.add(DocumentCustomFieldsdatajoin.fromMap(dc));
//        // print(dc[DocumentRegisterKeys.kId]);
//
//         //if(dc[DocumentRegisterKeys.kThumbnail]!="")
//
//       }
//       return ldc;
//       // for()
//       //    ldc;
//
//
//
//     }catch(e){
//       print("have error "+e.toString());
//
// //return new
//     }
//   }
//
//
//
//
//
//   Future<List<String>> getdocumentationtypestatus( int a,int b) async {
//     try{
//       print("***************************");
//       print(a);
//       print(b);
//       List<String >statyp=[];
//       Database db=await this.database ;
//
//       var query = await  db.rawQuery("SELECT * FROM ${Tables.kdocumentid} where ${DocumentTypekey.kID} ==${a}");
//       var queryy = await  db.rawQuery("SELECT * FROM ${Tables.kdocumentstatus} where ${documentStatuskey.kID} ==${b}");
//       List<Map> result=query;
//       List<Map> resultt=queryy;
//
//
//       print(result);
//       print("befor from map type status");
//       List<DocumentType> ldc=[];
//       for( var dc in result)
//       {
//         print(dc[DocumentTypekey.kID]);
//       statyp.add(dc[DocumentTypekey.kTypeName]);
//       //  return Documents.fromMaptype(dc);
//       }
//       for( var dc in resultt)
//       {
// print(dc[documentStatuskey.kStatus]);
//         statyp.add(dc[documentStatuskey.kStatus]);
//
//       }
//       return statyp;
//
//
//
//     }catch(e){
//       print("have error "+e.toString());
// //return new
//     }
//   }
//
//
//   initDB(String id) async {
//     Database qeMobileDB = await openDatabase(
//         await dbPath(id),
//         version: 38,
//         onCreate: _onCreate,
//        onUpgrade: _onUpgrade);
//     return qeMobileDB;
//   }
//
//   static Future<String>  dbPath(String id) async {
//     Directory documentsDirectory = await getApplicationDocumentsDirectory();
//     String path = join(documentsDirectory.path, "ONSPMSDB${id}.db");
//     print('DB Path: $path');
//     return path;
//   }
//   void _onCreate(Database db, int version) async {
//     // All Table creation
//    // await db.execute(userTableCreateQuery);
//     await db.execute(documentTableCreateQuery);
//     await db.execute(documenthisTableCreateQuery);
//     await db.execute(documenttypeTableCreateQuery);
//     await db.execute(documenttypehisTableCreateQuery);
//     await db.execute(documentStatusTableCreateQuery);
//     await db.execute(documentStatushisTableCreateQuery);
//     await db.execute(documentcustomfields);
//     await db.execute(documentcustomfileddata);
//     await db.execute(documentcustomfiledOption);
//     await db.execute(ProjectsTableCreateQuery);
//     await db.execute(documentloggingevent);
//     await db.execute(mailscreatequery);
//     await db.execute(Disciplinestable);
//     await db.execute(relatedItens);
//
//
//
//   }
//   Future<void> _onUpgrade(Database db, int oldVersion, int newVersion) async {
//   //  db.execute("ALTER TABLE tabEmployee ADD COLUMN newCol TEXT;");
//
//  // await db.execute("DROP TABLE IF EXISTS ");
//   await db.execute("DROP TABLE IF EXISTS DOCUMENTLOGGINGEVENT ");
//   await db.execute("DROP TABLE IF EXISTS DOCUMENT ");
//
// /*    await db.execute("ALTER TABLE IF EXISTS DOCUMENTID ADD COLUMN newCol TEXT");
//     await db.execute("ALTER TABLE IF EXISTS DOCUMENTHISID ADD COLUMN newCol TEXT");
//     await db.execute("ALTER TABLE IF EXISTS EXICONS ADD COLUMN newCol TEXT");
//     await db.execute("ALTER TABLE IF EXISTS DOCUMENTSTATUS ADD COLUMN newCol TEXT");
//     await db.execute("ALTER TABLE IF EXISTS DOCUMENTHISSTATUS ADD COLUMN newCol TEXT");
//     await db.execute("ALTER TABLE IF EXISTS Projects");
//     await db.execute("ALTER TABLE IF EXISTS DOCUMENTHIS");
//     await db.execute("ALTER TABLE IF EXISTS ${Tables.kdocumentloggingevent}");*/
//
//     _onCreate(db, newVersion);
//
//   }
// }
//
// class Tables {
//   static const kUsers = 'USERS';
//   static const kdocument = 'DOCUMENT';
//   static const kdocumentloggingevent = 'DOCUMENTLOGGINGEVENT';
//   static const kdocumenthis = 'DOCUMENTHIS';
//   static const kdocumentid = 'DOCUMENTID';
//   static const kdocumenthisid = 'DOCUMENTHISID';
//   static const kexIcon = 'EXICONS';
//   static const kdocumentstatus = 'DOCUMENTSTATUS';
//   static const kdocumenthisstatus = 'DOCUMENTHISSTATUS';
//   static const kProjects = 'Projects';
//   static const kWorkflow = 'Workflows';
//  // static const kWorkflowforms = 'Workflowforms';
//   static const kMails= 'Mails';
//   static const kDocumentCustomFields= 'DocumentCustomFields';
//   static const kDocumentCustomFieldsData= 'DocumentCustomFieldsdata';
//   static const kDocumentCustomFieldsOption= 'DocumentCustomFieldsoption';
//
// }
