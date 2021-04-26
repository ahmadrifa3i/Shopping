// import 'database.dart';
//
//
//
//
//
//
//
//
// class WorkflowDocumentTable{
// static const kID="ID";
// static const kInitiatorID="InitiatorID";
// static const kName="Name";
// static const kWorkflowNumber="WorkflowNumber";
// static const kCustomCreatedDate="CustomCreatedDate";
// static const kNotes="Notes";
// static const kParticipants="Participants";
// static const kWorkflowTemplateType="WorkflowTemplateType";
// static const kHasStartedWorkflow="HasStartedWorkflow";
// static const kWorkflowStatusTemplateID="WorkflowStatusTemplateID";
// static const kWorkflowDiagram="WorkflowDiagram";
// static const kWorkflowStepsDiagram="WorkflowStepsDiagram";
// static const kWorkflowTemplateOption="WorkflowTemplateOption";
// static const kWorkflowTemplateSteps="WorkflowTemplateSteps";
// static const kWorkflowTemplateTransmittalRecipients="WorkflowTemplateTransmittalRecipients";
// static const kCreatedBy="CreatedBy";
// static const kCreatedDate="CreatedDate";
// static const kLastUpdatedBy="LastUpdatedBy";
// static const kLastUpdatedDate="LastUpdatedDate";
// static const kDeleted="Deleted";
// static const kActive="Active";
// static const kIsSuccess="IsSuccess";
// static const kIsBallInCourt="IsBallInCourt";
// static const kIsFailure="IsFailure";
// static const kIsTerminated="IsTerminated";
// }
//
//
// class UserTableKeys {
//   static const kUserId = 'userId';
//   static const kFirstName = 'FirstName';
//   static const kLastName = 'LastName';
//   static const kAge = 'Age';
//   static const kDateOfBirth = 'DateOfBirth';
//   static const kNationality = 'Nationality';
//   static const kIsMarried = 'IsMarried';
// }
// class DocumentTypekey {
//   static const kID = "ID";
//   static const kTypeName = "TypeName";
//   static const kCode = "Code";
//   static const kActive = "Active";
//   static const kDeleted = "Deleted";
//   static const kCreatedBy = "CreatedBy";
//   static const kCreatedDate = "CreatedDate";
// }
// class MailKey{
//
//   static const kID="ID";
//   static const kMailNumber="MailNumber";
//   static const kSubject="Subject";
//   static const kBody="Body";
//   static const kCreatedDate="CreatedDate";
//   static const kCreatedByName="CreatedByName";
//
//
// }
//
// class DocumenthisTypekey {
//   static const kID = "ID";
//   static const kTypeName = "TypeName";
//   static const kCode = "Code";
//   static const kActive = "Active";
//   static const kDeleted = "Deleted";
//   static const kCreatedBy = "CreatedBy";
//   static const kCreatedDate = "CreatedDate";
// }
// class DocumentLoggingKey{
//
//  static const kID="ID";
//      static const kProjectID="ProjectID";
//      static const kUserID="ProjectID";
//      static const kUserName="UserName";
//      static const kObjectID="ObjectID";
//      static const kObjectType="ObjectType";
//      static const kDescription="Description";
//      static const kModeOrActionTypeID="ModeOrActionTypeID";
//      static const kCreatedDate="CreatedDate";
//      static const kRevision="Revision";
//      static const kVersion="Version";
//      static const kOrganizationID="OrganizationID";
//      static const  kconstOrganizationName="constOrganizationName";
//      static const kNote="Note";
// }
// class notificationkeys{
//   static const kId= "ID";
//   static const kUserID="UserID";
// static const kTitle="Title";
//   static const kMessage="Message";
//   static const kURL="URL";
//   static const kIsRead="IsRead";
//   static const kActive="Active";
//   static const kCreatedDate="CreatedDate";
// }
// class DirectoryKeys{
//
//   static const kFullName="FullName";
//   static const kEmail="Email";
//   static const kActive="Active";
//   static const kCreatedOn="CustomCreatedDate";
// }
// class ProjectsKeys{
//  // int ID;
//  // String Name;
//
//  // String LastUpdatedDate;
//   static const kId="ID";
//   static const kName="Name";
//
//   static const kLastUpdatedDate="LastUpdatedDate";
// }
// class DocumentRegisterKeys{
//   static const kId= "ID";
//   static const kDocumentNumber= "DocumentNumber";
//   static const kMajorVersion="MajorVersion";
//   static const kMiniorVersion="MiniorVersion";
//   static const kTags= "Tags";
//   static const kRevision="Revision";
//   static const kVersion="Version";
//   static const kTitle="Title";
//   static const kfileName= "FileName";
//   static const kPath="Path";
//   static const kThumbnail= "Thumbnail";
//   static const kAuthor="Author";
//   static const kFileExtension="FileExtension";
//   static const kDocumentGUID="DocumentGUID";
//   static const kFileSizeUnit="FileSizeUnit";
//   static const kExtensionIconId="ExtensionIconID";
//   static const kDocumentTypeID="DocumentTypeID";
//   static const kfileSize= "FileSize";
//   static const kFolderID="FolderID";
//   static const kFolder= "folder";
//   static const kDescription="Description";
//   static const kCreateBy ="CreatedBy";
//   static const kCreatedByName="CreatedByName";
//   static const kCreatedDate ="CreatedDate";
//   static const kVersionComent= "VersionComment";
//   static const kPrintSizeID= "PrintSizeID";
//   static const kprintsizes="printSizes";
//   static const kCustomcolums="CustomColumns";
//   static const kOrganizationID= "OrganizationID";
//   static const kProject="project";
//   static const kStatusID="StatusID";
//   static const kDisciplineID="DisciplineID";
//   static const kdisciplines="disciplines";
//   static const kFile="File";
//   static const kPlannedSubmissionDate ="PlannedSubmissionDate";
//   static const kIsAuto="IsAuto";
//   static const kIsConfidential= "IsConfidential";
//   static const kIsLocked="IsLocked";
//   static const kPreviousVersionID="PreviousVersionID";
//   static const kLastUpdatedDate="LastUpdatedDate";
//   static const kLastUpdatedBy="LastUpdatedBy";
//   static const kPublishedDate="PublishedDate";
//   static const kExpiryDate= "ExpiryDate";
//   static const kExpiryNotificationSent="ExpiryNotificationSent";
//   static const kLastDeletedBy="LastDeletedBy";
//   static const kLastRestoredBy="LastRestoredBy";
//   static const kMailAttachmentID="MailAttachmentID";
//   static const kLastRestoredDate="LastRestoredDate";
//   static const kLastDeletedDate="LastDeletedDate";
//   static const kdocumentCustomFormFields="documentCustomFormFields";
//   static const kLastUpdatedByName="LastUpdatedByName";
//   static const  kActive="Active";
//   static const kDelected="Deleted";
//   static const kFullPath="FullPath";
//   static const kOrganizationDocumentStatus="OrganizationDocumentStatus";
//   static const kDocumentKeyWord="DocumentKeyWord";
//   static const  kDocumentKeys="DocumentKeys";
//   static const kWorkflowTempalteID="WorkflowTempalteID";
//   static const kWorkflows="Workflows";
//
//
// }
// class DocumentRegisterHisKeys{
//  static const kId= "ID";
//  static const kDocumentNumber= "DocumentNumber";
//  static const kMajorVersion="MajorVersion";
//  static const kMiniorVersion="MiniorVersion";
//  static const kTags= "Tags";
//  static const kRevision="Revision";
//  static const kVersion="Version";
//  static const kTitle="Title";
//  static const kfileName= "FileName";
//  static const kPath="Path";
//  static const kThumbnail= "Thumbnail";
//  static const kAuthor="Author";
//  static const kFileExtension="FileExtension";
//  static const kDocumentGUID="DocumentGUID";
//  static const kFileSizeUnit="FileSizeUnit";
//  static const kExtensionIconId="ExtensionIconID";
//  static const kDocumentTypeID="DocumentTypeID";
//  static const kfileSize= "FileSize";
//  static const kFolderID="FolderID";
//  static const kFolder= "folder";
//  static const kDescription="Description";
//  static const kCreateBy ="CreatedBy";
//  static const kCreatedByName="CreatedByName";
//  static const kCreatedDate ="CreatedDate";
//  static const kVersionComent= "VersionComment";
//  static const kPrintSizeID= "PrintSizeID";
//  static const kprintsizes="printSizes";
//  static const kCustomcolums="CustomColumns";
//  static const kOrganizationID= "OrganizationID";
//  static const kProject="project";
//  static const kStatusID="StatusID";
//  static const kDisciplineID="DisciplineID";
//  static const kdisciplines="disciplines";
//  static const kFile="File";
//  static const kPlannedSubmissionDate ="PlannedSubmissionDate";
//  static const kIsAuto="IsAuto";
//  static const kIsConfidential= "IsConfidential";
//  static const kIsLocked="IsLocked";
//  static const kPreviousVersionID="PreviousVersionID";
//  static const kLastUpdatedDate="LastUpdatedDate";
//  static const kLastUpdatedBy="LastUpdatedBy";
//  static const kPublishedDate="PublishedDate";
//  static const kExpiryDate= "ExpiryDate";
//  static const kExpiryNotificationSent="ExpiryNotificationSent";
//  static const kLastDeletedBy="LastDeletedBy";
//  static const kLastRestoredBy="LastRestoredBy";
//  static const kMailAttachmentID="MailAttachmentID";
//  static const kLastRestoredDate="LastRestoredDate";
//  static const kLastDeletedDate="LastDeletedDate";
//  static const kdocumentCustomFormFields="documentCustomFormFields";
//  static const kLastUpdatedByName="LastUpdatedByName";
//  static const  kActive="Active";
//  static const kDelected="Deleted";
//  static const kFullPath="FullPath";
//  static const kOrganizationDocumentStatus="OrganizationDocumentStatus";
//  static const kDocumentKeyWord="DocumentKeyWord";
//  static const  kDocumentKeys="DocumentKeys";
//  static const kWorkflowTempalteID="WorkflowTempalteID";
//  static const kWorkflows="Workflows";
//
//
// }
// class documenthisStatuskey
// {
//   static const kID= "ID";
//   static const kStatus ="Status";
//   static const kProjectID="ProjectID";
//   static const kActive="Active";
//   static const kDelected="Deleted";
//   static const kCreatedDate= "CreatedDate";
//   static const kCreatedBy= "CreatedBy";
// }
// class documentStatuskey
// {
// static const kID= "ID";
// static const kStatus ="Status";
// static const kProjectID="ProjectID";
// static const kActive="Active";
// static const kDelected="Deleted";
// static const kCreatedDate= "CreatedDate";
// static const kCreatedBy= "CreatedBy";
// }
// class ExtensionIcons{
//  // "extensionIcons": {
//  static const kId= "ID";
// static const kExtension='Extension';
//  static const kClass="Class";
//  static const kPath="Path";
//
// }
// String Disciplinestable="CREATE TABLE IF NOT EXISTS DISCIPLINES("
// 'ID INTEGER,'
// 'Discipline TEXT,'
// 'Code TEXT,'
// 'Active INTEGER,'
// 'Deleted INTEGER,'
// 'CreatedDate TEXT,'
// 'CreatedBy INTEGER,'
// 'AllowEdit INTEGER'
//     ")";
//
//  String relatedItens="CREATE TABLE IF NOT EXISTS RELATEDDOC ("
//
//      "ID INTEGER,"
//      "Note TEXT,"
//      "DocumentNumber TEXT,"
//     "Title TEXT,"
//      "Object TEXT,"
//      "ObjectID INTEGER,"
//      "CreatedDate TEXT,"
//      "CreatedBy Integer,"
//      "LastUpdatedBy Integer,"
//      "LastUpdateDate TEXT,"
//      "Active TEXT,"
//      "IsDeleted TEXT,"
//      "Deleted TEXT,"
//      "Docunent TEXT"
//      ")";
//
//
// String documentloggingevent="CREATE TABLE IF NOT EXISTS ${Tables.kdocumentloggingevent} ("
//
// "ID INTEGER PRIMARY KEY AUTOINCREMENT,"
// "ProjectID INTEGER ,"
// "UserID INTEGER ,"
// "UserName TEXT,"
// "ObjectID INTEGER ,"
// "ObjectType TEXT,"
// "Description TEXT,"
// "ModeOrActionType INTEGER,"
// "CreatedDate TEXT,"
// "Revision TEXT,"
// "Version TEXT,"
// "OrganizationID INTEGER,"
// "OrganizationName TEXT,"
// "Note TEXT"
// ")";
// String documentcustomfileddata="CREATE TABLE IF NOT EXISTS ${Tables.kDocumentCustomFieldsData} ("
//
//     "ID INTEGER PRIMARY KEY,"
//     "DocumentCustomFieldID INTEGER,"
//     "Value TEXT,"
//     "LabelValue TEXT,"
//     "LastUpdatedDate TEXT,"
//     "FormInstanceId INTEGER"
//     ")";
// String documentcustomfiledOption="CREATE TABLE IF NOT EXISTS ${Tables.kDocumentCustomFieldsOption} ("
//     "ID INTEGER PRIMARY KEY,"
//
// "Label TEXT,"
// " Value TEXT,"
// "Selected INTEGER,"
// "FieldID INTEGER,"
// "CreatedBy INTEGER,"
// "CreatedDate TEXT,"
// "LastUpdatedBy INTEGER,"
// "LastUpdatedDate TEXT,"
// "Deleted INTEGER,"
// "Active INTEGER"
//
//     ")";
// String mailscreatequery="Create TABLE IF NOT EXISTS ${Tables.kMails}("
//     "ID INTEGER PRIMARY KEY,"
//     "MailNmber INTEGER ,"
//     "Subject TEXT,"
//     "Body TEXT,"
//     "CreatedDate TEXT,"
//     "CreatedByName TEXT,"
//     "ToStg TEXT )";
//
// String documentcustomfields=
//     "CREATE TABLE IF NOT EXISTS ${Tables.kDocumentCustomFields} ("
//     "ID INTEGER PRIMARY KEY,"
//     "FormId INTEGER,"
//     "Name TEXT,"
//     "Type TEXT,"
//     "OrderNumber INTERGER,"
//     "Required INTEGER,"
//     "Label TEXT,"
//     "HelpText TEXT,"
//     "PlaceHolder TEXT,"
//     "ClassName TEXT,"
//     "Style TEXT,"
//     "DefaultValue TEXT,"
//     "Toggle INTEGER,"
//     "Inline INTEGER,"
//     "EnableOther INTEGER,"
//     "Multiple INTEGER,"
//     "MaxLength INTEGER,"
//     "MinNumber INTEGER,"
//     "MaxNumber INTEGER,"
//     "Step INTEGER,"
//     "Other INTEGER,"
//     "Subtype TEXT,"
//     "Access INTEGER,"
//     "Role TEXT,"
//     "Rows INTEGER,"
//     "CreatedDate TEXT,"
//     "LastUpdatedDate TEXT,"
//     "Active INTEGER,"
//     "Deleted INTEGER,"
//     "AutoFill INTEGER,"
//     "List INTEGER "
//     ")";
// String userTableCreateQuery =
//       "CREATE TABLE IF NOT EXISTS ${Tables.kUsers} ("
//       "${UserTableKeys.kUserId} INTEGER PRIMARY KEY,"
//       "${UserTableKeys.kFirstName} TEXT,"
//       "${UserTableKeys.kLastName} TEXT,"
//       "${UserTableKeys.kAge} INTEGER,"
//       "${UserTableKeys.kDateOfBirth} INTEGER,"
//       "${UserTableKeys.kNationality} TEXT,"
//       "${UserTableKeys.kIsMarried} INTEGER"
//       ")";
// String documenthisTableCreateQuery=
//     "CREATE TABLE IF NOT EXISTS ${Tables.kdocumenthis} ("
//     "${DocumentRegisterKeys.kId} INTEGER PRIMARY KEY,"
//     "${DocumentRegisterKeys.kDocumentNumber} TEXT,"
//     "${DocumentRegisterKeys.kMajorVersion} TEXT,"
//     "${DocumentRegisterKeys.kMiniorVersion} TEXT,"
//     "${DocumentRegisterKeys.kTags} TEXT,"
//     "${DocumentRegisterKeys.kRevision} TEXT,"
//     "${DocumentRegisterKeys.kVersion} TEXT,"
//     "${DocumentRegisterKeys.kTitle} TEXT,"
//     "${DocumentRegisterKeys.kfileName} TEXT,"
//     "${DocumentRegisterKeys.kPath} TEXT,"
//     "${DocumentRegisterKeys.kThumbnail} TEXT,"
//     "${DocumentRegisterKeys.kAuthor} TEXT,"
//     "${DocumentRegisterKeys.kFileExtension} TEXT,"
//     "${DocumentRegisterKeys.kDocumentGUID} TEXT,"
//     "${DocumentRegisterKeys.kFileSizeUnit} TEXT,"
//     "${DocumentRegisterKeys.kExtensionIconId} INTEGER,"
//     "${DocumentRegisterKeys.kDocumentTypeID} INTEGER,"
//     "${DocumentRegisterKeys.kfileSize} INTEGER,"
//     "${DocumentRegisterKeys.kFolderID} INTEGER,"
//     "${DocumentRegisterKeys.kFolder} TEXT,"
//     "${DocumentRegisterKeys.kDescription} TEXT,"
//     "${DocumentRegisterKeys.kCreateBy} INTEGER,"
//     "${DocumentRegisterKeys.kCreatedByName} TEXT,"
//     "${DocumentRegisterKeys.kCreatedDate} TEXT,"
//     "${DocumentRegisterKeys.kVersionComent} INTEGER,"
//     "${DocumentRegisterKeys.kPrintSizeID} INTEGER,"
//     "${DocumentRegisterKeys.kprintsizes} TEXT,"
//     "${DocumentRegisterKeys.kCustomcolums} INTEGER,"
//     "${DocumentRegisterKeys.kOrganizationID} INTEGER,"
//     "${DocumentRegisterKeys.kProject} INTEGER,"
//     "${DocumentRegisterKeys.kStatusID} INTEGER,"
//     "${DocumentRegisterKeys.kDisciplineID} INTEGER,"
//     "${DocumentRegisterKeys.kdisciplines} INTEGER,"
//     "${DocumentRegisterKeys.kFile} INTEGER,"
//     "${DocumentRegisterKeys.kPlannedSubmissionDate} TEXT,"
//     "${DocumentRegisterKeys.kIsAuto} INTEGER,"
//     "${DocumentRegisterKeys.kIsConfidential} INTEGER,"
//     "${DocumentRegisterKeys.kIsLocked} INTEGER,"
//     "${DocumentRegisterKeys.kPreviousVersionID} INTEGER,"
//     "${DocumentRegisterKeys.kLastUpdatedDate} TEXT,"
//     "${DocumentRegisterKeys.kLastUpdatedBy} INTEGER,"
//     "${DocumentRegisterKeys.kPublishedDate} TEXT,"
//     "${DocumentRegisterKeys.kExpiryDate} TEXT,"
//     "${DocumentRegisterKeys.kExpiryNotificationSent} TEXT,"
//     "${DocumentRegisterKeys.kLastDeletedBy} INTEGER,"
//     "${DocumentRegisterKeys.kLastRestoredBy} INTEGER,"
//     "${DocumentRegisterKeys.kMailAttachmentID} INTEGER,"
//     "${DocumentRegisterKeys.kLastRestoredDate} TEXT,"
//     "${DocumentRegisterKeys.kLastDeletedDate} TEXT,"
//     "${DocumentRegisterKeys.kdocumentCustomFormFields} TEXT,"
//     "${DocumentRegisterKeys.kLastUpdatedByName} TEXT,"
//     "${DocumentRegisterKeys.kActive} INTEGER,"
//     "${DocumentRegisterKeys.kDelected} INTEGER,"
//     "${DocumentRegisterKeys.kFullPath} TEXT,"
//     "${DocumentRegisterKeys.kOrganizationDocumentStatus} INTEGER,"
//     "${DocumentRegisterKeys.kDocumentKeyWord} TEXT,"
//     "${DocumentRegisterKeys.kDocumentKeys} TEXT,"
//     "${DocumentRegisterKeys.kWorkflowTempalteID} INTEGER,"
//     "${DocumentRegisterKeys.kWorkflows} TEXT,"
//     "saved INTEGER,"
//    // "savedthumbnail INTEGER,"
//     "projectadmin INTEGER,"
//     "issurp INTEGER,"
//     "PAthstorage TEXT)";
//   String documentTableCreateQuery=
//       "CREATE TABLE IF NOT EXISTS ${Tables.kdocument} ("
//   "${DocumentRegisterKeys.kId} INTEGER PRIMARY KEY,"
//   "${DocumentRegisterKeys.kDocumentNumber} TEXT,"
//   "${DocumentRegisterKeys.kMajorVersion} TEXT,"
//   "${DocumentRegisterKeys.kMiniorVersion} TEXT,"
//   "${DocumentRegisterKeys.kTags} TEXT,"
//   "${DocumentRegisterKeys.kRevision} TEXT,"
//   "${DocumentRegisterKeys.kVersion} TEXT,"
//   "${DocumentRegisterKeys.kTitle} TEXT,"
//   "${DocumentRegisterKeys.kfileName} TEXT,"
//   "${DocumentRegisterKeys.kPath} TEXT,"
//   "${DocumentRegisterKeys.kThumbnail} TEXT,"
//   "${DocumentRegisterKeys.kAuthor} TEXT,"
//   "${DocumentRegisterKeys.kFileExtension} TEXT,"
//   "${DocumentRegisterKeys.kDocumentGUID} TEXT,"
//   "${DocumentRegisterKeys.kFileSizeUnit} TEXT,"
//   "${DocumentRegisterKeys.kExtensionIconId} INTEGER,"
//   "${DocumentRegisterKeys.kDocumentTypeID} INTEGER,"
//   "${DocumentRegisterKeys.kfileSize} INTEGER,"
//   "${DocumentRegisterKeys.kFolderID} INTEGER,"
//   "${DocumentRegisterKeys.kFolder} TEXT,"
//   "${DocumentRegisterKeys.kDescription} TEXT,"
//   "${DocumentRegisterKeys.kCreateBy} INTEGER,"
//   "${DocumentRegisterKeys.kCreatedByName} TEXT,"
//   "${DocumentRegisterKeys.kCreatedDate} TEXT,"
//   "${DocumentRegisterKeys.kVersionComent} INTEGER,"
//   "${DocumentRegisterKeys.kPrintSizeID} INTEGER,"
//   "${DocumentRegisterKeys.kprintsizes} TEXT,"
//   "${DocumentRegisterKeys.kCustomcolums} INTEGER,"
//   "${DocumentRegisterKeys.kOrganizationID} INTEGER,"
//   "${DocumentRegisterKeys.kProject} INTEGER,"
//   "${DocumentRegisterKeys.kStatusID} INTEGER,"
//   "${DocumentRegisterKeys.kDisciplineID} INTEGER,"
//   "${DocumentRegisterKeys.kdisciplines} INTEGER,"
//   "${DocumentRegisterKeys.kFile} INTEGER,"
//   "${DocumentRegisterKeys.kPlannedSubmissionDate} TEXT,"
//   "${DocumentRegisterKeys.kIsAuto} INTEGER,"
//   "${DocumentRegisterKeys.kIsConfidential} INTEGER,"
//   "${DocumentRegisterKeys.kIsLocked} INTEGER,"
//   "${DocumentRegisterKeys.kPreviousVersionID} INTEGER,"
//   "${DocumentRegisterKeys.kLastUpdatedDate} TEXT,"
//   "${DocumentRegisterKeys.kLastUpdatedBy} INTEGER,"
//   "${DocumentRegisterKeys.kPublishedDate} TEXT,"
//   "${DocumentRegisterKeys.kExpiryDate} TEXT,"
//   "${DocumentRegisterKeys.kExpiryNotificationSent} TEXT,"
//   "${DocumentRegisterKeys.kLastDeletedBy} INTEGER,"
//   "${DocumentRegisterKeys.kLastRestoredBy} INTEGER,"
//   "${DocumentRegisterKeys.kMailAttachmentID} INTEGER,"
//   "${DocumentRegisterKeys.kLastRestoredDate} TEXT,"
//   "${DocumentRegisterKeys.kLastDeletedDate} TEXT,"
//   "${DocumentRegisterKeys.kdocumentCustomFormFields} TEXT,"
//   "${DocumentRegisterKeys.kLastUpdatedByName} TEXT,"
//   "${DocumentRegisterKeys.kActive} INTEGER,"
//   "${DocumentRegisterKeys.kDelected} INTEGER,"
//   "${DocumentRegisterKeys.kFullPath} TEXT,"
//   "${DocumentRegisterKeys.kOrganizationDocumentStatus} INTEGER,"
//   "${DocumentRegisterKeys.kDocumentKeyWord} TEXT,"
//   "${DocumentRegisterKeys.kDocumentKeys} TEXT,"
//   "${DocumentRegisterKeys.kWorkflowTempalteID} INTEGER,"
//   "${DocumentRegisterKeys.kWorkflows} TEXT,"
//       "Tab TEXT,"
// "FileSizeWithUnit INTEGER,"
// "IsHistory INTEGER,"
//   "saved INTEGER,"
//   "projectadmin INTEGER,"
//   "issurp INTEGER,"
//   "PAthstorage TEXT)";
//
//
// ////////////////////////////////////////////////////////////////////////////////
//
//   //khlik bas hon
//
//   String workflowquery="Create TABLE IF NOT EXISTS ${Tables.kWorkflow}("
// "ID INTEGER PRIMARY KEY,"
//
//
// //ru2 chwy  bdal ma t3mol copy
// "InitiatorID INTEGER,"
//  "Name TEXT"
//  "WorkflowNumber TEXT,"
//  "CustomCreatedDate TEXT,"
//  "Notes TEXT,"
// "Participants TEXT,"
//  "WorkflowTemplateType INTEGER,"
//  "HasStartedWorkflow INTEGER,"
//  "WorkflowStatusTemplateID INTEGER,"
// "WorkflowDiagram TEXT,"
//  "WorkflowStepsDiagram INTEGER,"
//  "WorkflowTemplateOption TEXT,"//STRING !!
//  "WorkflowTemplateSteps TEXT,"
// "WorkflowTemplateTransmittalRecipients TEXT,"
//  "CreatedBy INTEGER,"
// "CreatedDate TEXT,"
// "LastUpdatedBy INTEGER,"
// " LastUpdatedDate TEXT,"
// "Deleted INTEGER,"
// "Active INTEGER, "
// "IsSuccess INTEGER,"
// "IsBallInCourt INTEGER,"
// "IsFailure INTEGER,"
// "IsTerminated INTEGER,"
// "CreatedByName TEXT,"
// "FormID INTEGER,"
// " CurrentStepID INTEGER,"
// " WorkflowTemplateStatus TEXT,"
//  "status TEXT)";
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
// ////////////////////////////////////////////////////////////////////////////////
//
// String documentStatusTableCreateQuery=
//     "CREATE TABLE IF NOT EXISTS ${Tables.kdocumentstatus} ("
//     "${documentStatuskey.kID} INTEGER PRIMARY KEY,"
//     "${documentStatuskey.kStatus} TEXT,"
//     "${documentStatuskey.kProjectID} INTEGER ,"
//     "${documentStatuskey.kActive} INTEGER ,"
//     "${documentStatuskey.kDelected} INTEGER ,"
//     "${documentStatuskey.kCreatedDate} TEXT ,"
//     "${documentStatuskey.kCreatedBy} INTEGER "
//     ")";
// String documentStatushisTableCreateQuery=
//     "CREATE TABLE IF NOT EXISTS ${Tables.kdocumenthisstatus} ("
//     "${documentStatuskey.kID} INTEGER PRIMARY KEY,"
//     "${documentStatuskey.kStatus} TEXT,"
//     "${documentStatuskey.kProjectID} INTEGER ,"
//     "${documentStatuskey.kActive} INTEGER ,"
//     "${documentStatuskey.kDelected} INTEGER ,"
//     "${documentStatuskey.kCreatedDate} TEXT ,"
//     "${documentStatuskey.kCreatedBy} INTEGER "
//     ")";
// String ProjectsTableCreateQuery=
//     "CREATE TABLE IF NOT EXISTS ${Tables.kProjects} ("
//     "${ProjectsKeys.kId} INTEGER PRIMARY KEY,"
//     "${ProjectsKeys.kName} TEXT,"
//     "${ProjectsKeys.kLastUpdatedDate} TEXT"
//
//     ")";
//
// String extensionIconsTableCreateQuery=
//     "CREATE TABLE IF NOT EXISTS ${Tables.kexIcon} ("
//     "${ExtensionIcons.kId} INTEGER PRIMARY KEY,"
//     "${ExtensionIcons.kExtension} TEXT,"
//     "${ExtensionIcons.kClass} TEXT,"
//     "${ExtensionIcons.kPath} TEXT"
//     ")";
// String documenttypeTableCreateQuery=
//     "CREATE TABLE IF NOT EXISTS ${Tables.kdocumentid} ("
//     "${DocumentTypekey.kID} INTEGER PRIMARY KEY,"
//     "${DocumentTypekey.kTypeName} TEXT,"
//     "${DocumentTypekey.kCode} TEXT,"
//     "${DocumentTypekey.kActive} INTEGER,"
//     "${DocumentTypekey.kDeleted} INTEGER,"
//     "${DocumentTypekey.kCreatedBy} INTEGER,"
//     "${DocumentTypekey.kCreatedDate} TEXT"
//     ")";
// String documenttypehisTableCreateQuery=
//     "CREATE TABLE IF NOT EXISTS ${Tables.kdocumenthisid} ("
//     "${DocumentTypekey.kID} INTEGER PRIMARY KEY,"
//     "${DocumentTypekey.kTypeName} TEXT,"
//     "${DocumentTypekey.kCode} TEXT,"
//     "${DocumentTypekey.kActive} INTEGER,"
//     "${DocumentTypekey.kDeleted} INTEGER,"
//     "${DocumentTypekey.kCreatedBy} INTEGER,"
//     "${DocumentTypekey.kCreatedDate} TEXT"
//     ")";
// String mailtableCreatequery=
//     "CREATE TABLE IF NOT EXISTS ${Tables.kdocument} ("
//      "ID INTEGER PRIMARY KEY,"
//      "MailNumber TEXT,"
// " Subject TEXT,"
// "Body TEXT,"
// "CreatedDate TEXT,"
// "CreatedByName TEXT"
//     ")";
//
