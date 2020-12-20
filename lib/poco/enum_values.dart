enum EnumManageUserAccessControllerTypes{
  None,
  AccessDenay,
  All,
  SystemFullAccess,
  SystemPayment,
  SystemRender,
  SystemAppBuilder,
  SystemOptimizer,
  SystemSchedule,
  AdminMainCms,
  SupportMainCms,
  MonitoringMainCms,
  DemoMainCms,
  AdminResellerCms,
  SupportResellerCms,
  MonitoringResellerCms,
  DemoResellerCms,
  AdminCpSite,
  SupportCpSite,
  MonitoringCpSite,
  DemoCpSite,
  GuestViewerWebSite,
  UserLoginWebSite,
  DemoUserLoginWebSite
}
class EnumMapper$EnumManageUserAccessControllerTypesConverter {
  static EnumManageUserAccessControllerTypes fromJson(Object sender){
    if (sender==null) return EnumManageUserAccessControllerTypes.DemoUserLoginWebSite;
    var sr=sender.toString().trim().toLowerCase();
    if (sr=='none' || sr=='0')
      return EnumManageUserAccessControllerTypes.None;
    else if (sr=='accessdenay' || sr=='0')
      return EnumManageUserAccessControllerTypes.AccessDenay;
    else if (sr=='all' || sr=='99')
      return EnumManageUserAccessControllerTypes.All;
    else if (sr=='systemfullaccess' || sr=='100')
      return EnumManageUserAccessControllerTypes.SystemFullAccess;
    else if (sr=='systempayment' || sr=='101')
      return EnumManageUserAccessControllerTypes.SystemPayment;
    else if (sr=='systemrender' || sr=='102')
      return EnumManageUserAccessControllerTypes.SystemRender;
    else if (sr=='systemappbuilder' || sr=='103')
      return EnumManageUserAccessControllerTypes.SystemAppBuilder;
    else if (sr=='systemoptimizer' || sr=='104')
      return EnumManageUserAccessControllerTypes.SystemOptimizer;
    else if (sr=='systemschedule' || sr=='105')
      return EnumManageUserAccessControllerTypes.SystemSchedule;
    else if (sr=='adminmaincms' || sr=='1')
      return EnumManageUserAccessControllerTypes.AdminMainCms;
    else if (sr=='supportmaincms' || sr=='2')
      return EnumManageUserAccessControllerTypes.SupportMainCms;
    else if (sr=='monitoringmaincms' || sr=='3')
      return EnumManageUserAccessControllerTypes.MonitoringMainCms;
    else if (sr=='demomaincms' || sr=='4')
      return EnumManageUserAccessControllerTypes.DemoMainCms;
    else if (sr=='adminresellercms' || sr=='31')
      return EnumManageUserAccessControllerTypes.AdminResellerCms;
    else if (sr=='supportresellercms' || sr=='32')
      return EnumManageUserAccessControllerTypes.SupportResellerCms;
    else if (sr=='monitoringresellercms' || sr=='33')
      return EnumManageUserAccessControllerTypes.MonitoringResellerCms;
    else if (sr=='demoresellercms' || sr=='34')
      return EnumManageUserAccessControllerTypes.DemoResellerCms;
    else if (sr=='admincpsite' || sr=='11')
      return EnumManageUserAccessControllerTypes.AdminCpSite;
    else if (sr=='supportcpsite' || sr=='12')
      return EnumManageUserAccessControllerTypes.SupportCpSite;
    else if (sr=='monitoringcpsite' || sr=='13')
      return EnumManageUserAccessControllerTypes.MonitoringCpSite;
    else if (sr=='democpsite' || sr=='14')
      return EnumManageUserAccessControllerTypes.DemoCpSite;
    else if (sr=='guestviewerwebsite' || sr=='21')
      return EnumManageUserAccessControllerTypes.GuestViewerWebSite;
    else if (sr=='userloginwebsite' || sr=='22')
      return EnumManageUserAccessControllerTypes.UserLoginWebSite;
    else if (sr=='demouserloginwebsite' || sr=='23')
      return EnumManageUserAccessControllerTypes.DemoUserLoginWebSite;
  return EnumManageUserAccessControllerTypes.DemoUserLoginWebSite;
  }

  static int toJson(EnumManageUserAccessControllerTypes sender){
    switch (sender) {
      case EnumManageUserAccessControllerTypes.None: return 0;
      case EnumManageUserAccessControllerTypes.AccessDenay: return 0;
      case EnumManageUserAccessControllerTypes.All: return 99;
      case EnumManageUserAccessControllerTypes.SystemFullAccess: return 100;
      case EnumManageUserAccessControllerTypes.SystemPayment: return 101;
      case EnumManageUserAccessControllerTypes.SystemRender: return 102;
      case EnumManageUserAccessControllerTypes.SystemAppBuilder: return 103;
      case EnumManageUserAccessControllerTypes.SystemOptimizer: return 104;
      case EnumManageUserAccessControllerTypes.SystemSchedule: return 105;
      case EnumManageUserAccessControllerTypes.AdminMainCms: return 1;
      case EnumManageUserAccessControllerTypes.SupportMainCms: return 2;
      case EnumManageUserAccessControllerTypes.MonitoringMainCms: return 3;
      case EnumManageUserAccessControllerTypes.DemoMainCms: return 4;
      case EnumManageUserAccessControllerTypes.AdminResellerCms: return 31;
      case EnumManageUserAccessControllerTypes.SupportResellerCms: return 32;
      case EnumManageUserAccessControllerTypes.MonitoringResellerCms: return 33;
      case EnumManageUserAccessControllerTypes.DemoResellerCms: return 34;
      case EnumManageUserAccessControllerTypes.AdminCpSite: return 11;
      case EnumManageUserAccessControllerTypes.SupportCpSite: return 12;
      case EnumManageUserAccessControllerTypes.MonitoringCpSite: return 13;
      case EnumManageUserAccessControllerTypes.DemoCpSite: return 14;
      case EnumManageUserAccessControllerTypes.GuestViewerWebSite: return 21;
      case EnumManageUserAccessControllerTypes.UserLoginWebSite: return 22;
      case EnumManageUserAccessControllerTypes.DemoUserLoginWebSite: return 23;
      default: return 0;
    }
  }
}


enum ManageUserAccessAreaTypesEnum{
  None,
  All,
  BackgroundSystem,
  WindowsService,
  ControlPanel,
  Website,
  WebService,
  Application,
  BackgroundTaskScheduler
}
class EnumMapper$ManageUserAccessAreaTypesEnumConverter {
  static ManageUserAccessAreaTypesEnum fromJson(Object sender){
    if (sender==null) return ManageUserAccessAreaTypesEnum.BackgroundTaskScheduler;
    var sr=sender.toString().trim().toLowerCase();
    if (sr=='none' || sr=='0')
      return ManageUserAccessAreaTypesEnum.None;
    else if (sr=='all' || sr=='1')
      return ManageUserAccessAreaTypesEnum.All;
    else if (sr=='backgroundsystem' || sr=='2')
      return ManageUserAccessAreaTypesEnum.BackgroundSystem;
    else if (sr=='windowsservice' || sr=='3')
      return ManageUserAccessAreaTypesEnum.WindowsService;
    else if (sr=='controlpanel' || sr=='4')
      return ManageUserAccessAreaTypesEnum.ControlPanel;
    else if (sr=='website' || sr=='5')
      return ManageUserAccessAreaTypesEnum.Website;
    else if (sr=='webservice' || sr=='6')
      return ManageUserAccessAreaTypesEnum.WebService;
    else if (sr=='application' || sr=='7')
      return ManageUserAccessAreaTypesEnum.Application;
    else if (sr=='backgroundtaskscheduler' || sr=='8')
      return ManageUserAccessAreaTypesEnum.BackgroundTaskScheduler;
  return ManageUserAccessAreaTypesEnum.BackgroundTaskScheduler;
  }

  static int toJson(ManageUserAccessAreaTypesEnum sender){
    switch (sender) {
      case ManageUserAccessAreaTypesEnum.None: return 0;
      case ManageUserAccessAreaTypesEnum.All: return 1;
      case ManageUserAccessAreaTypesEnum.BackgroundSystem: return 2;
      case ManageUserAccessAreaTypesEnum.WindowsService: return 3;
      case ManageUserAccessAreaTypesEnum.ControlPanel: return 4;
      case ManageUserAccessAreaTypesEnum.Website: return 5;
      case ManageUserAccessAreaTypesEnum.WebService: return 6;
      case ManageUserAccessAreaTypesEnum.Application: return 7;
      case ManageUserAccessAreaTypesEnum.BackgroundTaskScheduler: return 8;
      default: return 0;
    }
  }
}


enum EnumOperatingSystemType{
  none,
  Windows,
  AppleMacOS,
  Linux,
  AppleIOS,
  GoogleAndroid,
  OxygenOS,
  Chromium
}
class EnumMapper$EnumOperatingSystemTypeConverter {
  static EnumOperatingSystemType fromJson(Object sender){
    if (sender==null) return EnumOperatingSystemType.Chromium;
    var sr=sender.toString().trim().toLowerCase();
    if (sr=='none' || sr=='0')
      return EnumOperatingSystemType.none;
    else if (sr=='windows' || sr=='1')
      return EnumOperatingSystemType.Windows;
    else if (sr=='applemacos' || sr=='2')
      return EnumOperatingSystemType.AppleMacOS;
    else if (sr=='linux' || sr=='3')
      return EnumOperatingSystemType.Linux;
    else if (sr=='appleios' || sr=='4')
      return EnumOperatingSystemType.AppleIOS;
    else if (sr=='googleandroid' || sr=='5')
      return EnumOperatingSystemType.GoogleAndroid;
    else if (sr=='oxygenos' || sr=='6')
      return EnumOperatingSystemType.OxygenOS;
    else if (sr=='chromium' || sr=='7')
      return EnumOperatingSystemType.Chromium;
  return EnumOperatingSystemType.Chromium;
  }

  static int toJson(EnumOperatingSystemType sender){
    switch (sender) {
      case EnumOperatingSystemType.none: return 0;
      case EnumOperatingSystemType.Windows: return 1;
      case EnumOperatingSystemType.AppleMacOS: return 2;
      case EnumOperatingSystemType.Linux: return 3;
      case EnumOperatingSystemType.AppleIOS: return 4;
      case EnumOperatingSystemType.GoogleAndroid: return 5;
      case EnumOperatingSystemType.OxygenOS: return 6;
      case EnumOperatingSystemType.Chromium: return 7;
      default: return 0;
    }
  }
}


enum EnumDeviceType{
  none,
  WebSite,
  Windows,
  Android,
  AppleIOS
}
class EnumMapper$EnumDeviceTypeConverter {
  static EnumDeviceType fromJson(Object sender){
    if (sender==null) return EnumDeviceType.AppleIOS;
    var sr=sender.toString().trim().toLowerCase();
    if (sr=='none' || sr=='0')
      return EnumDeviceType.none;
    else if (sr=='website' || sr=='1')
      return EnumDeviceType.WebSite;
    else if (sr=='windows' || sr=='2')
      return EnumDeviceType.Windows;
    else if (sr=='android' || sr=='3')
      return EnumDeviceType.Android;
    else if (sr=='appleios' || sr=='4')
      return EnumDeviceType.AppleIOS;
  return EnumDeviceType.AppleIOS;
  }

  static int toJson(EnumDeviceType sender){
    switch (sender) {
      case EnumDeviceType.none: return 0;
      case EnumDeviceType.WebSite: return 1;
      case EnumDeviceType.Windows: return 2;
      case EnumDeviceType.Android: return 3;
      case EnumDeviceType.AppleIOS: return 4;
      default: return 0;
    }
  }
}


enum SortType{
  Descending,
  Ascending,
  Random
}
class EnumMapper$SortTypeConverter {
  static SortType fromJson(Object sender){
    if (sender==null) return SortType.Random;
    var sr=sender.toString().trim().toLowerCase();
    if (sr=='descending' || sr=='0')
      return SortType.Descending;
    else if (sr=='ascending' || sr=='1')
      return SortType.Ascending;
    else if (sr=='random' || sr=='2')
      return SortType.Random;
  return SortType.Random;
  }

  static int toJson(SortType sender){
    switch (sender) {
      case SortType.Descending: return 0;
      case SortType.Ascending: return 1;
      case SortType.Random: return 2;
      default: return 0;
    }
  }
}


enum EnumExportFileType{
  None,
  Excel,
  PDF,
  Text
}
class EnumMapper$EnumExportFileTypeConverter {
  static EnumExportFileType fromJson(Object sender){
    if (sender==null) return EnumExportFileType.Text;
    var sr=sender.toString().trim().toLowerCase();
    if (sr=='none' || sr=='0')
      return EnumExportFileType.None;
    else if (sr=='excel' || sr=='1')
      return EnumExportFileType.Excel;
    else if (sr=='pdf' || sr=='2')
      return EnumExportFileType.PDF;
    else if (sr=='text' || sr=='3')
      return EnumExportFileType.Text;
  return EnumExportFileType.Text;
  }

  static int toJson(EnumExportFileType sender){
    switch (sender) {
      case EnumExportFileType.None: return 0;
      case EnumExportFileType.Excel: return 1;
      case EnumExportFileType.PDF: return 2;
      case EnumExportFileType.Text: return 3;
      default: return 0;
    }
  }
}


enum EnumExportReceiveMethod{
  Now,
  Email,
  FileManeger
}
class EnumMapper$EnumExportReceiveMethodConverter {
  static EnumExportReceiveMethod fromJson(Object sender){
    if (sender==null) return EnumExportReceiveMethod.FileManeger;
    var sr=sender.toString().trim().toLowerCase();
    if (sr=='now' || sr=='0')
      return EnumExportReceiveMethod.Now;
    else if (sr=='email' || sr=='1')
      return EnumExportReceiveMethod.Email;
    else if (sr=='filemaneger' || sr=='2')
      return EnumExportReceiveMethod.FileManeger;
  return EnumExportReceiveMethod.FileManeger;
  }

  static int toJson(EnumExportReceiveMethod sender){
    switch (sender) {
      case EnumExportReceiveMethod.Now: return 0;
      case EnumExportReceiveMethod.Email: return 1;
      case EnumExportReceiveMethod.FileManeger: return 2;
      default: return 0;
    }
  }
}


enum ClauseType{
  Or,
  And
}
class EnumMapper$ClauseTypeConverter {
  static ClauseType fromJson(Object sender){
    if (sender==null) return ClauseType.And;
    var sr=sender.toString().trim().toLowerCase();
    if (sr=='or' || sr=='1')
      return ClauseType.Or;
    else if (sr=='and' || sr=='2')
      return ClauseType.And;
  return ClauseType.And;
  }

  static int toJson(ClauseType sender){
    switch (sender) {
      case ClauseType.Or: return 1;
      case ClauseType.And: return 2;
      default: return 1;
    }
  }
}


enum FilterDataModelSearchTypes{
  Equal,
  NotEqual,
  LessThan,
  GreaterThan,
  Between,
  Contains,
  NotContains,
  BeginsWith,
  EndsWith,
  LessThanOrEqualTo,
  GreaterThanOrEqualTo
}
class EnumMapper$FilterDataModelSearchTypesConverter {
  static FilterDataModelSearchTypes fromJson(Object sender){
    if (sender==null) return FilterDataModelSearchTypes.GreaterThanOrEqualTo;
    var sr=sender.toString().trim().toLowerCase();
    if (sr=='equal' || sr=='0')
      return FilterDataModelSearchTypes.Equal;
    else if (sr=='notequal' || sr=='1')
      return FilterDataModelSearchTypes.NotEqual;
    else if (sr=='lessthan' || sr=='2')
      return FilterDataModelSearchTypes.LessThan;
    else if (sr=='greaterthan' || sr=='3')
      return FilterDataModelSearchTypes.GreaterThan;
    else if (sr=='between' || sr=='4')
      return FilterDataModelSearchTypes.Between;
    else if (sr=='contains' || sr=='5')
      return FilterDataModelSearchTypes.Contains;
    else if (sr=='notcontains' || sr=='6')
      return FilterDataModelSearchTypes.NotContains;
    else if (sr=='beginswith' || sr=='7')
      return FilterDataModelSearchTypes.BeginsWith;
    else if (sr=='endswith' || sr=='8')
      return FilterDataModelSearchTypes.EndsWith;
    else if (sr=='lessthanorequalto' || sr=='9')
      return FilterDataModelSearchTypes.LessThanOrEqualTo;
    else if (sr=='greaterthanorequalto' || sr=='10')
      return FilterDataModelSearchTypes.GreaterThanOrEqualTo;
  return FilterDataModelSearchTypes.GreaterThanOrEqualTo;
  }

  static int toJson(FilterDataModelSearchTypes sender){
    switch (sender) {
      case FilterDataModelSearchTypes.Equal: return 0;
      case FilterDataModelSearchTypes.NotEqual: return 1;
      case FilterDataModelSearchTypes.LessThan: return 2;
      case FilterDataModelSearchTypes.GreaterThan: return 3;
      case FilterDataModelSearchTypes.Between: return 4;
      case FilterDataModelSearchTypes.Contains: return 5;
      case FilterDataModelSearchTypes.NotContains: return 6;
      case FilterDataModelSearchTypes.BeginsWith: return 7;
      case FilterDataModelSearchTypes.EndsWith: return 8;
      case FilterDataModelSearchTypes.LessThanOrEqualTo: return 9;
      case FilterDataModelSearchTypes.GreaterThanOrEqualTo: return 10;
      default: return 0;
    }
  }
}


enum ResultErrorType{
  None,
  UserAuthenticationFail,
  BusinessFail,
  ApplicationError,
  NotFound,
  ValueInjected,
  SaveChangesisZero,
  CurrentSiteId,
  BusinessFailAccessRowAdd,
  BusinessFailAccessRowDelete,
  BusinessFailAccessRowEdit,
  BusinessFailAccessRowWatch,
  BusinessFailDemoAccessRowAdd,
  BusinessFailDemoAccessRowDelete,
  BusinessFailDemoAccessRowUpdate,
  DeleteContentByChildForbid,
  SaveChangesisError,
  IPAddressAccessDinay,
  File_handlingfile,
  Core_ErrorId_edit_pagemaster,
  Core_Loop_creation_error_between_parent_and_child,
  Core_This_module_has_already_been_dedicated_to_this_site,
  Core_Page_disabled,
  Article_LinkContentId_null,
  Article_LinkCategoryId_Is_Null_Or_Zero,
  Core_Serial_number_is_duplicate,
  Core_Domain_has_already_been_registered,
  Core_Domain_name_or_subdomain_has_been_created,
  Core_Duplicate,
  Core_Your_file_has_not_been_uploaded_to_Template,
  Advertisement_This_ad_has_already_been_registered_for_this_property,
  Core__Site_User_Already_Exists,
  Core_Username_has_been_used_for_another_user,
  Core_Only_Admin_Can_Delete_User,
  Core_Enter_username,
  Core_Enter_the_password,
  Core_Acceess_to_register_this_site,
  Core_User_group_not_found,
  Core_The_username_has_already_been_registered_in_the_system,
  Core_ErrorService_Entity_Check_Decision_Before_Add,
  Service_Content_not_selected_correctly,
  Service_LinkCategoryId_Is_Null_Or_Zero,
  ApiTelegram_Your_access_number_for_making_baht_has_expired,
  ApiTelegram_This_profile_has_already_been_registered,
  Shop_There_is_a_duplicate_item,
  ImageGallery_Content_not_selected_correctly,
  Biography_Content_not_selected_correctly,
  Blog_Content_not_selected_correctly,
  Chart_Content_not_selected_correctly,
  MovieGallery_Content_not_selected_correctly,
  Product_Content_not_selected_correctly,
  MusicGallery_Content_not_selected_correctly,
  Biography_LinkCategoryId_Is_Null_Or_Zero,
  Blog_LinkCategoryId_Is_Null_Or_Zero,
  Chart_LinkCategoryId_Is_Null_Or_Zero,
  ImageGallery_The_file_is_duplicate,
  ImageGallery_The_relevant_category_was_not_found,
  MovieGallery_The_file_is_duplicate,
  MovieGallery_The_relevant_category_was_not_found,
  News_Content_not_selected_correctly,
  Product_LinkCategoryId_Is_Null_Or_Zero,
  Polling_The_number_of_votes_allowed_for_a_poll_can_not_exceed_the_number_of_votes,
  Polling_The_relevant_category_was_not_found,
  News_LinkCategoryId_Is_Null_Or_Zero,
  Shop_The_relevant_category_was_not_found,
  Job_This_ad_has_already_been_registered_for_this_property,
  Ticket_Dupplicate_Data,
  Job_LinkParentId_is_invalid,
  Shop_To_create_an_invoice_the_site_user_or_system_user_must_be_specified,
  Shop_It_is_not_known_to_create_a_vendor_website_invoice,
  Member_Vertical_values_are_empty,
  bankPeyment_The_unit_factor_of_the_store_should_be_greater_than_zero,
  Vehicle_This_ad_has_already_been_registered_for_this_property,
  UniversalMenu_LinkParentId_is_not_from_the_current_site,
  Resrvation_Please_enter_the_date,
  Resrvation_This_has_already_been_booked,
  Resrvation_The_expiration_date_of_this_reservation_has_expired,
  News_Entries_can_not_be_connected,
  Estate_This_ad_has_already_been_registered_for_this_property,
  Discount_DiscountGroup_Is_Null,
  Discount_This_Card_Deactivated,
  Discount_This_Card_Has_Sold,
  Discount_This_Owner_Card_Is_Diffrent,
  Reservation_The_date_has_already_been_registered,
  Discount_Duplicate_PersonSeller,
  Discount_Please_Enter_Person_Information,
  Chat_Vertical_values_are_empty,
  File_Loop_creation_error_between_parent_and_child,
  Application_Your_access_number_for_making_baht_has_expired,
  ExpireDateValue,
  UserTicketIsNull,
  InputEntityIsNull,
  The_site_can_not_be_your_parent,
  ErrorMessage_Reached_Maximum_Capacity,
  The_site_link_is_empty,
  Folder_not_found,
  Error_Creating_Folder,
  File_Not_Find,
  Your_new_file_has_not_been_uploaded_correctly,
  Shop_Invoice_not_found,
  FilteringQuery_Force_To_Null_query_Incorect_FilterModel,
  You_do_not_have_enough_access_to_this_operation,
  You_do_not_have_access_levels_for_serial_registration_of_other_sites,
  Error_replacing_file_on_server,
  Section_not_found_for_get_tickets,
  This_series_has_already_been_activated_for_you,
  This_serial_is_disabled,
  The_duration_of_the_use_of_this_series_has_been_completed,
  The_allowed_number_of_this_series_is_over,
  Site_not_selected,
  Modules_list_is_empty,
  Website_Specifications_is_empty,
  Website_domain_Specification_is_empty,
  Website_type_not_selected,
  Web_management_properties_are_empty,
  Username_is_not_logged_in_webmaster,
  Web_admin_password_not_logged,
  Your_requested_access_type_was_not_found,
  Your_requested_website_type_was_not_found,
  This_domain_has_already_been_registered_with_this_subdomain,
  This_domain_has_already_been_registered,
  This_domain_has_already_been_registered_with_Alice_Domain_with_this_subdomain,
  This_domain_has_already_been_registered_with_Alice_Damien,
  User_not_found,
  The_account_has_expired_Contact_management,
  The_account_is_inactive_status_Contact_management,
  The_account_is_in_the_status_of_deletion_Contact_management,
  A_link_to_your_email_address_has_been_sent,
  Core_oldPassword_IsNullOrEmpty,
  Core_newPassword_IsNullOrEmpty,
  Core_userTicket_Notfound,
  Core_userTicket_RecordStatus_NotAvailable,
  Core_Password_with_old_password_is_not_equal,
  Core_User_information_not_found,
  Core_Link_password_reminder_not_found,
  Core_Reminder_link_used_previously_apply_again,
  Core_User_not_found,
  Core_The_account_has_expired_Contact_management,
  Core_The_account_is_in_the_status_of_deletion_Contact_management,
  Core_The_account_is_inactive_status_Contact_management,
  Core_This_site_is_not_in_your_collection,
  Core_This_user_has_high_access_and_you_do_not_have_permission_to_login,
  Core_Your_account_has_been_disabled_for_1_hour,
  Core_Username_Or_Password_Incorrect,
  Core_Your_account_on_this_website_is_disabled_by_contacting_the_management,
  Core_You_have_another_access_type_on_this_website_and_your_requested_access_is_not_possible,
  Core_This_type_of_access_can_not_be_automatically_added_to_the_sites,
  Core_Your_requested_access_type_was_not_found,
  Core_Your_requested_access_type_was_not_added_to_the_system,
  Core_You_do_not_have_an_account_on_this_website,
  Core_Activation_Code_is_invalid,
  Core_FilteringQuery_Force_To_Null_query_Incorect_FilterModel,
  bankPeyment_WebServiceUrl_IsNullOrEmpty,
  bankPeyment_ResCode,
  bankPeyment_webServiceTimestamp,
  bankPeyment_bankPeymentPayRequest,
  bankPeyment_Error_RedirectInterfaceUrl_IsNullOrEmpty,
  bankPeyment_successful,
  bankPeyment_saleReferenceId_smaller_than_1000,
  bankPeyment_RefId_IsNullOrEmpty,
  bankPeyment_saleReferenceId_Is_Ziro,
  bankPeyment_saleOrderId_Is_Ziro,
  bankPeyment_stampValues_ResCode_not_0,
  bankPeyment_requestSaleOrderId_not_stampValuesOrderId,
  bankPeyment_requestRefId_not_stampValuesRefId,
  bankPeyment_WebServiceCheck_is_not_0,
  bankPeyment_TransactionComplete_Is_OK,
  bankPeyment_WebServiceComplete,
  bankPeyment_WebServiceTimestamp_Is_O,
  bankPeyment_WebCallBackUrl_IsNullOrEmpty,
  bankPeyment_TransactionCheck_Is_Ok,
  bankPeyment_RedirectInterfaceUrl_IsNullOrEmpty,
  bankPeyment_request_ResNum_isnot_stampValues_ResNum,
  bankPeyment_RefNum_IsNullOrEmpty,
  bankPeyment_inputClass_State_Is_Not_Ok,
  bankPeyment_verifyTransaction_Value_Differnt_By_Amount,
  bankPeyment_WebServiceCheck_smaller_than_0,
  bankPeyment_inputClass_State_Not_equal_to_100,
  bankPeyment_requestStatus_not_ok,
  bankPeyment_requestAuthority_not_stampValuesAuthority,
  bankPeyment_IsNullOrEmpty_inputClassAuthority,
  bankPeyment_WebServiceCheck_is_not_100,
  bankPeyment_Success_RefId,
  bankPeyment_You_do_not_have_enough_access_to_this_operation,
  bankPeyment_NTK_Custom_Error_Render_Type_Error,
  bankPeyment_NTK_Custom_Error_Render_Cast_Error,
  bankPeyment_Transaction_details_are_empty,
  bankPeyment_Input_value_is_empty,
  bankPeyment_Bank_profile_is_empty,
  Email_Send_Sucessfull,
  Email_Send_Not_Sucessfull,
  Email_You_do_not_have_enough_access_to_this_operation,
  Email_Send_path_is_not_specified,
  Email_Api_Item_is_null,
  Email_Your_request_is_not_valid,
  Email_EmailTask_PrivateSiteConfig_is_null,
  Email_EmailTask_PublicConfig_is_null,
  Email_NTK_Custom_Error_Render_Type_Error,
  Email_NTK_Custom_Error_Render_Cast_Error,
  Application_You_do_not_have_enough_access_to_this_operation,
  Object_Vertical_values_are_empty,
  Shop_There_is_not_enough_inventory,
  Shop_Invalid_commodity_system_code,
  ContentBlocked,
  ContentNeedAdminControl,
  ContentNotAvailable,
  ForbidDateSendStart,
  ForbidDateSendEnd,
  NotFoundPrivateSiteConfig,
  TaskScheduler_You_do_not_have_enough_access_to_this_operation,
  CoreSite_Access_to_this_section_is_limited_to_the_entire_system_management,
  Email_Entries_can_not_be_connected,
  Member_LinkMemberUserId_Is_Null,
  Object_LinkMemberUserId_Is_Null,
  Shop_You_do_not_have_enough_access_to_this_operation,
  Reservation_Content_not_selected_correctly,
  Reservation_LinkCategoryId_Is_Null_Or_Zero,
  Reservation_Entries_can_not_be_connected,
  PermissionIsAuthenticatedFail,
  PermissionIsAuthenticatedDeviceIdFail,
  AntiInjectionToken,
  ErrorLoopContent,
  bankPeyment_Bank_token_is_empty,
  LinkManagement_The_site_link_is_empty,
  LinkManagement_The_URL_is_not_in_accordance_with_the_URL_format,
  Error_was_successfully_logged,
  MemBer_This_Item_has_already_been_registered,
  Member_The_ability_to_move_access_from_a_website_to_another_website_is_not_possible,
  Shop_Content_not_selected_correctly,
  Please_Login,
  Comment_LinkContentId_null,
  Comment_Text_null,
  Comment_Writer_null,
  Content_LinkCategoryId_Is_Null_Or_Zero,
  WebDesigner_The_site_link_is_empty,
  WebDesigner_The_URL_is_not_in_accordance_with_the_URL_format,
  Core_Email_Is_Null,
  Core_Email_Confermed,
  Core_Mobile_Is_Null,
  Core_Mobile_Confermed,
  Core_ActivateCode_Is_Null,
  Exist_Similar_Data,
  EmptyData
}
class EnumMapper$ResultErrorTypeConverter {
  static ResultErrorType fromJson(Object sender){
    if (sender==null) return ResultErrorType.EmptyData;
    var sr=sender.toString().trim().toLowerCase();
    if (sr=='none' || sr=='0')
      return ResultErrorType.None;
    else if (sr=='userauthenticationfail' || sr=='1')
      return ResultErrorType.UserAuthenticationFail;
    else if (sr=='businessfail' || sr=='2')
      return ResultErrorType.BusinessFail;
    else if (sr=='applicationerror' || sr=='3')
      return ResultErrorType.ApplicationError;
    else if (sr=='notfound' || sr=='4')
      return ResultErrorType.NotFound;
    else if (sr=='valueinjected' || sr=='5')
      return ResultErrorType.ValueInjected;
    else if (sr=='savechangesiszero' || sr=='6')
      return ResultErrorType.SaveChangesisZero;
    else if (sr=='currentsiteid' || sr=='7')
      return ResultErrorType.CurrentSiteId;
    else if (sr=='businessfailaccessrowadd' || sr=='8')
      return ResultErrorType.BusinessFailAccessRowAdd;
    else if (sr=='businessfailaccessrowdelete' || sr=='9')
      return ResultErrorType.BusinessFailAccessRowDelete;
    else if (sr=='businessfailaccessrowedit' || sr=='10')
      return ResultErrorType.BusinessFailAccessRowEdit;
    else if (sr=='businessfailaccessrowwatch' || sr=='11')
      return ResultErrorType.BusinessFailAccessRowWatch;
    else if (sr=='businessfaildemoaccessrowadd' || sr=='12')
      return ResultErrorType.BusinessFailDemoAccessRowAdd;
    else if (sr=='businessfaildemoaccessrowdelete' || sr=='13')
      return ResultErrorType.BusinessFailDemoAccessRowDelete;
    else if (sr=='businessfaildemoaccessrowupdate' || sr=='14')
      return ResultErrorType.BusinessFailDemoAccessRowUpdate;
    else if (sr=='deletecontentbychildforbid' || sr=='15')
      return ResultErrorType.DeleteContentByChildForbid;
    else if (sr=='savechangesiserror' || sr=='16')
      return ResultErrorType.SaveChangesisError;
    else if (sr=='ipaddressaccessdinay' || sr=='17')
      return ResultErrorType.IPAddressAccessDinay;
    else if (sr=='file_handlingfile' || sr=='18')
      return ResultErrorType.File_handlingfile;
    else if (sr=='core_errorid_edit_pagemaster' || sr=='19')
      return ResultErrorType.Core_ErrorId_edit_pagemaster;
    else if (sr=='core_loop_creation_error_between_parent_and_child' || sr=='20')
      return ResultErrorType.Core_Loop_creation_error_between_parent_and_child;
    else if (sr=='core_this_module_has_already_been_dedicated_to_this_site' || sr=='21')
      return ResultErrorType.Core_This_module_has_already_been_dedicated_to_this_site;
    else if (sr=='core_page_disabled' || sr=='22')
      return ResultErrorType.Core_Page_disabled;
    else if (sr=='article_linkcontentid_null' || sr=='23')
      return ResultErrorType.Article_LinkContentId_null;
    else if (sr=='article_linkcategoryid_is_null_or_zero' || sr=='24')
      return ResultErrorType.Article_LinkCategoryId_Is_Null_Or_Zero;
    else if (sr=='core_serial_number_is_duplicate' || sr=='25')
      return ResultErrorType.Core_Serial_number_is_duplicate;
    else if (sr=='core_domain_has_already_been_registered' || sr=='26')
      return ResultErrorType.Core_Domain_has_already_been_registered;
    else if (sr=='core_domain_name_or_subdomain_has_been_created' || sr=='27')
      return ResultErrorType.Core_Domain_name_or_subdomain_has_been_created;
    else if (sr=='core_duplicate' || sr=='28')
      return ResultErrorType.Core_Duplicate;
    else if (sr=='core_your_file_has_not_been_uploaded_to_template' || sr=='29')
      return ResultErrorType.Core_Your_file_has_not_been_uploaded_to_Template;
    else if (sr=='advertisement_this_ad_has_already_been_registered_for_this_property' || sr=='30')
      return ResultErrorType.Advertisement_This_ad_has_already_been_registered_for_this_property;
    else if (sr=='core__site_user_already_exists' || sr=='31')
      return ResultErrorType.Core__Site_User_Already_Exists;
    else if (sr=='core_username_has_been_used_for_another_user' || sr=='32')
      return ResultErrorType.Core_Username_has_been_used_for_another_user;
    else if (sr=='core_only_admin_can_delete_user' || sr=='33')
      return ResultErrorType.Core_Only_Admin_Can_Delete_User;
    else if (sr=='core_enter_username' || sr=='34')
      return ResultErrorType.Core_Enter_username;
    else if (sr=='core_enter_the_password' || sr=='35')
      return ResultErrorType.Core_Enter_the_password;
    else if (sr=='core_acceess_to_register_this_site' || sr=='36')
      return ResultErrorType.Core_Acceess_to_register_this_site;
    else if (sr=='core_user_group_not_found' || sr=='37')
      return ResultErrorType.Core_User_group_not_found;
    else if (sr=='core_the_username_has_already_been_registered_in_the_system' || sr=='38')
      return ResultErrorType.Core_The_username_has_already_been_registered_in_the_system;
    else if (sr=='core_errorservice_entity_check_decision_before_add' || sr=='39')
      return ResultErrorType.Core_ErrorService_Entity_Check_Decision_Before_Add;
    else if (sr=='service_content_not_selected_correctly' || sr=='40')
      return ResultErrorType.Service_Content_not_selected_correctly;
    else if (sr=='service_linkcategoryid_is_null_or_zero' || sr=='41')
      return ResultErrorType.Service_LinkCategoryId_Is_Null_Or_Zero;
    else if (sr=='apitelegram_your_access_number_for_making_baht_has_expired' || sr=='42')
      return ResultErrorType.ApiTelegram_Your_access_number_for_making_baht_has_expired;
    else if (sr=='apitelegram_this_profile_has_already_been_registered' || sr=='43')
      return ResultErrorType.ApiTelegram_This_profile_has_already_been_registered;
    else if (sr=='shop_there_is_a_duplicate_item' || sr=='44')
      return ResultErrorType.Shop_There_is_a_duplicate_item;
    else if (sr=='imagegallery_content_not_selected_correctly' || sr=='45')
      return ResultErrorType.ImageGallery_Content_not_selected_correctly;
    else if (sr=='biography_content_not_selected_correctly' || sr=='46')
      return ResultErrorType.Biography_Content_not_selected_correctly;
    else if (sr=='blog_content_not_selected_correctly' || sr=='47')
      return ResultErrorType.Blog_Content_not_selected_correctly;
    else if (sr=='chart_content_not_selected_correctly' || sr=='48')
      return ResultErrorType.Chart_Content_not_selected_correctly;
    else if (sr=='moviegallery_content_not_selected_correctly' || sr=='49')
      return ResultErrorType.MovieGallery_Content_not_selected_correctly;
    else if (sr=='product_content_not_selected_correctly' || sr=='50')
      return ResultErrorType.Product_Content_not_selected_correctly;
    else if (sr=='musicgallery_content_not_selected_correctly' || sr=='51')
      return ResultErrorType.MusicGallery_Content_not_selected_correctly;
    else if (sr=='biography_linkcategoryid_is_null_or_zero' || sr=='52')
      return ResultErrorType.Biography_LinkCategoryId_Is_Null_Or_Zero;
    else if (sr=='blog_linkcategoryid_is_null_or_zero' || sr=='53')
      return ResultErrorType.Blog_LinkCategoryId_Is_Null_Or_Zero;
    else if (sr=='chart_linkcategoryid_is_null_or_zero' || sr=='54')
      return ResultErrorType.Chart_LinkCategoryId_Is_Null_Or_Zero;
    else if (sr=='imagegallery_the_file_is_duplicate' || sr=='55')
      return ResultErrorType.ImageGallery_The_file_is_duplicate;
    else if (sr=='imagegallery_the_relevant_category_was_not_found' || sr=='56')
      return ResultErrorType.ImageGallery_The_relevant_category_was_not_found;
    else if (sr=='moviegallery_the_file_is_duplicate' || sr=='57')
      return ResultErrorType.MovieGallery_The_file_is_duplicate;
    else if (sr=='moviegallery_the_relevant_category_was_not_found' || sr=='58')
      return ResultErrorType.MovieGallery_The_relevant_category_was_not_found;
    else if (sr=='news_content_not_selected_correctly' || sr=='59')
      return ResultErrorType.News_Content_not_selected_correctly;
    else if (sr=='product_linkcategoryid_is_null_or_zero' || sr=='60')
      return ResultErrorType.Product_LinkCategoryId_Is_Null_Or_Zero;
    else if (sr=='polling_the_number_of_votes_allowed_for_a_poll_can_not_exceed_the_number_of_votes' || sr=='61')
      return ResultErrorType.Polling_The_number_of_votes_allowed_for_a_poll_can_not_exceed_the_number_of_votes;
    else if (sr=='polling_the_relevant_category_was_not_found' || sr=='62')
      return ResultErrorType.Polling_The_relevant_category_was_not_found;
    else if (sr=='news_linkcategoryid_is_null_or_zero' || sr=='63')
      return ResultErrorType.News_LinkCategoryId_Is_Null_Or_Zero;
    else if (sr=='shop_the_relevant_category_was_not_found' || sr=='64')
      return ResultErrorType.Shop_The_relevant_category_was_not_found;
    else if (sr=='job_this_ad_has_already_been_registered_for_this_property' || sr=='65')
      return ResultErrorType.Job_This_ad_has_already_been_registered_for_this_property;
    else if (sr=='ticket_dupplicate_data' || sr=='66')
      return ResultErrorType.Ticket_Dupplicate_Data;
    else if (sr=='job_linkparentid_is_invalid' || sr=='67')
      return ResultErrorType.Job_LinkParentId_is_invalid;
    else if (sr=='shop_to_create_an_invoice_the_site_user_or_system_user_must_be_specified' || sr=='68')
      return ResultErrorType.Shop_To_create_an_invoice_the_site_user_or_system_user_must_be_specified;
    else if (sr=='shop_it_is_not_known_to_create_a_vendor_website_invoice' || sr=='69')
      return ResultErrorType.Shop_It_is_not_known_to_create_a_vendor_website_invoice;
    else if (sr=='member_vertical_values_are_empty' || sr=='70')
      return ResultErrorType.Member_Vertical_values_are_empty;
    else if (sr=='bankpeyment_the_unit_factor_of_the_store_should_be_greater_than_zero' || sr=='71')
      return ResultErrorType.bankPeyment_The_unit_factor_of_the_store_should_be_greater_than_zero;
    else if (sr=='vehicle_this_ad_has_already_been_registered_for_this_property' || sr=='72')
      return ResultErrorType.Vehicle_This_ad_has_already_been_registered_for_this_property;
    else if (sr=='universalmenu_linkparentid_is_not_from_the_current_site' || sr=='73')
      return ResultErrorType.UniversalMenu_LinkParentId_is_not_from_the_current_site;
    else if (sr=='resrvation_please_enter_the_date' || sr=='74')
      return ResultErrorType.Resrvation_Please_enter_the_date;
    else if (sr=='resrvation_this_has_already_been_booked' || sr=='75')
      return ResultErrorType.Resrvation_This_has_already_been_booked;
    else if (sr=='resrvation_the_expiration_date_of_this_reservation_has_expired' || sr=='76')
      return ResultErrorType.Resrvation_The_expiration_date_of_this_reservation_has_expired;
    else if (sr=='news_entries_can_not_be_connected' || sr=='77')
      return ResultErrorType.News_Entries_can_not_be_connected;
    else if (sr=='estate_this_ad_has_already_been_registered_for_this_property' || sr=='78')
      return ResultErrorType.Estate_This_ad_has_already_been_registered_for_this_property;
    else if (sr=='discount_discountgroup_is_null' || sr=='79')
      return ResultErrorType.Discount_DiscountGroup_Is_Null;
    else if (sr=='discount_this_card_deactivated' || sr=='80')
      return ResultErrorType.Discount_This_Card_Deactivated;
    else if (sr=='discount_this_card_has_sold' || sr=='81')
      return ResultErrorType.Discount_This_Card_Has_Sold;
    else if (sr=='discount_this_owner_card_is_diffrent' || sr=='82')
      return ResultErrorType.Discount_This_Owner_Card_Is_Diffrent;
    else if (sr=='reservation_the_date_has_already_been_registered' || sr=='83')
      return ResultErrorType.Reservation_The_date_has_already_been_registered;
    else if (sr=='discount_duplicate_personseller' || sr=='84')
      return ResultErrorType.Discount_Duplicate_PersonSeller;
    else if (sr=='discount_please_enter_person_information' || sr=='85')
      return ResultErrorType.Discount_Please_Enter_Person_Information;
    else if (sr=='chat_vertical_values_are_empty' || sr=='86')
      return ResultErrorType.Chat_Vertical_values_are_empty;
    else if (sr=='file_loop_creation_error_between_parent_and_child' || sr=='87')
      return ResultErrorType.File_Loop_creation_error_between_parent_and_child;
    else if (sr=='application_your_access_number_for_making_baht_has_expired' || sr=='88')
      return ResultErrorType.Application_Your_access_number_for_making_baht_has_expired;
    else if (sr=='expiredatevalue' || sr=='89')
      return ResultErrorType.ExpireDateValue;
    else if (sr=='userticketisnull' || sr=='90')
      return ResultErrorType.UserTicketIsNull;
    else if (sr=='inputentityisnull' || sr=='91')
      return ResultErrorType.InputEntityIsNull;
    else if (sr=='the_site_can_not_be_your_parent' || sr=='92')
      return ResultErrorType.The_site_can_not_be_your_parent;
    else if (sr=='errormessage_reached_maximum_capacity' || sr=='93')
      return ResultErrorType.ErrorMessage_Reached_Maximum_Capacity;
    else if (sr=='the_site_link_is_empty' || sr=='94')
      return ResultErrorType.The_site_link_is_empty;
    else if (sr=='folder_not_found' || sr=='95')
      return ResultErrorType.Folder_not_found;
    else if (sr=='error_creating_folder' || sr=='96')
      return ResultErrorType.Error_Creating_Folder;
    else if (sr=='file_not_find' || sr=='97')
      return ResultErrorType.File_Not_Find;
    else if (sr=='your_new_file_has_not_been_uploaded_correctly' || sr=='98')
      return ResultErrorType.Your_new_file_has_not_been_uploaded_correctly;
    else if (sr=='shop_invoice_not_found' || sr=='99')
      return ResultErrorType.Shop_Invoice_not_found;
    else if (sr=='filteringquery_force_to_null_query_incorect_filtermodel' || sr=='100')
      return ResultErrorType.FilteringQuery_Force_To_Null_query_Incorect_FilterModel;
    else if (sr=='you_do_not_have_enough_access_to_this_operation' || sr=='101')
      return ResultErrorType.You_do_not_have_enough_access_to_this_operation;
    else if (sr=='you_do_not_have_access_levels_for_serial_registration_of_other_sites' || sr=='102')
      return ResultErrorType.You_do_not_have_access_levels_for_serial_registration_of_other_sites;
    else if (sr=='error_replacing_file_on_server' || sr=='103')
      return ResultErrorType.Error_replacing_file_on_server;
    else if (sr=='section_not_found_for_get_tickets' || sr=='104')
      return ResultErrorType.Section_not_found_for_get_tickets;
    else if (sr=='this_series_has_already_been_activated_for_you' || sr=='105')
      return ResultErrorType.This_series_has_already_been_activated_for_you;
    else if (sr=='this_serial_is_disabled' || sr=='106')
      return ResultErrorType.This_serial_is_disabled;
    else if (sr=='the_duration_of_the_use_of_this_series_has_been_completed' || sr=='107')
      return ResultErrorType.The_duration_of_the_use_of_this_series_has_been_completed;
    else if (sr=='the_allowed_number_of_this_series_is_over' || sr=='108')
      return ResultErrorType.The_allowed_number_of_this_series_is_over;
    else if (sr=='site_not_selected' || sr=='109')
      return ResultErrorType.Site_not_selected;
    else if (sr=='modules_list_is_empty' || sr=='110')
      return ResultErrorType.Modules_list_is_empty;
    else if (sr=='website_specifications_is_empty' || sr=='111')
      return ResultErrorType.Website_Specifications_is_empty;
    else if (sr=='website_domain_specification_is_empty' || sr=='112')
      return ResultErrorType.Website_domain_Specification_is_empty;
    else if (sr=='website_type_not_selected' || sr=='113')
      return ResultErrorType.Website_type_not_selected;
    else if (sr=='web_management_properties_are_empty' || sr=='114')
      return ResultErrorType.Web_management_properties_are_empty;
    else if (sr=='username_is_not_logged_in_webmaster' || sr=='115')
      return ResultErrorType.Username_is_not_logged_in_webmaster;
    else if (sr=='web_admin_password_not_logged' || sr=='116')
      return ResultErrorType.Web_admin_password_not_logged;
    else if (sr=='your_requested_access_type_was_not_found' || sr=='117')
      return ResultErrorType.Your_requested_access_type_was_not_found;
    else if (sr=='your_requested_website_type_was_not_found' || sr=='118')
      return ResultErrorType.Your_requested_website_type_was_not_found;
    else if (sr=='this_domain_has_already_been_registered_with_this_subdomain' || sr=='119')
      return ResultErrorType.This_domain_has_already_been_registered_with_this_subdomain;
    else if (sr=='this_domain_has_already_been_registered' || sr=='120')
      return ResultErrorType.This_domain_has_already_been_registered;
    else if (sr=='this_domain_has_already_been_registered_with_alice_domain_with_this_subdomain' || sr=='121')
      return ResultErrorType.This_domain_has_already_been_registered_with_Alice_Domain_with_this_subdomain;
    else if (sr=='this_domain_has_already_been_registered_with_alice_damien' || sr=='122')
      return ResultErrorType.This_domain_has_already_been_registered_with_Alice_Damien;
    else if (sr=='user_not_found' || sr=='123')
      return ResultErrorType.User_not_found;
    else if (sr=='the_account_has_expired_contact_management' || sr=='124')
      return ResultErrorType.The_account_has_expired_Contact_management;
    else if (sr=='the_account_is_inactive_status_contact_management' || sr=='125')
      return ResultErrorType.The_account_is_inactive_status_Contact_management;
    else if (sr=='the_account_is_in_the_status_of_deletion_contact_management' || sr=='126')
      return ResultErrorType.The_account_is_in_the_status_of_deletion_Contact_management;
    else if (sr=='a_link_to_your_email_address_has_been_sent' || sr=='127')
      return ResultErrorType.A_link_to_your_email_address_has_been_sent;
    else if (sr=='core_oldpassword_isnullorempty' || sr=='128')
      return ResultErrorType.Core_oldPassword_IsNullOrEmpty;
    else if (sr=='core_newpassword_isnullorempty' || sr=='129')
      return ResultErrorType.Core_newPassword_IsNullOrEmpty;
    else if (sr=='core_userticket_notfound' || sr=='130')
      return ResultErrorType.Core_userTicket_Notfound;
    else if (sr=='core_userticket_recordstatus_notavailable' || sr=='131')
      return ResultErrorType.Core_userTicket_RecordStatus_NotAvailable;
    else if (sr=='core_password_with_old_password_is_not_equal' || sr=='132')
      return ResultErrorType.Core_Password_with_old_password_is_not_equal;
    else if (sr=='core_user_information_not_found' || sr=='133')
      return ResultErrorType.Core_User_information_not_found;
    else if (sr=='core_link_password_reminder_not_found' || sr=='134')
      return ResultErrorType.Core_Link_password_reminder_not_found;
    else if (sr=='core_reminder_link_used_previously_apply_again' || sr=='135')
      return ResultErrorType.Core_Reminder_link_used_previously_apply_again;
    else if (sr=='core_user_not_found' || sr=='136')
      return ResultErrorType.Core_User_not_found;
    else if (sr=='core_the_account_has_expired_contact_management' || sr=='137')
      return ResultErrorType.Core_The_account_has_expired_Contact_management;
    else if (sr=='core_the_account_is_in_the_status_of_deletion_contact_management' || sr=='138')
      return ResultErrorType.Core_The_account_is_in_the_status_of_deletion_Contact_management;
    else if (sr=='core_the_account_is_inactive_status_contact_management' || sr=='139')
      return ResultErrorType.Core_The_account_is_inactive_status_Contact_management;
    else if (sr=='core_this_site_is_not_in_your_collection' || sr=='140')
      return ResultErrorType.Core_This_site_is_not_in_your_collection;
    else if (sr=='core_this_user_has_high_access_and_you_do_not_have_permission_to_login' || sr=='141')
      return ResultErrorType.Core_This_user_has_high_access_and_you_do_not_have_permission_to_login;
    else if (sr=='core_your_account_has_been_disabled_for_1_hour' || sr=='142')
      return ResultErrorType.Core_Your_account_has_been_disabled_for_1_hour;
    else if (sr=='core_username_or_password_incorrect' || sr=='143')
      return ResultErrorType.Core_Username_Or_Password_Incorrect;
    else if (sr=='core_your_account_on_this_website_is_disabled_by_contacting_the_management' || sr=='144')
      return ResultErrorType.Core_Your_account_on_this_website_is_disabled_by_contacting_the_management;
    else if (sr=='core_you_have_another_access_type_on_this_website_and_your_requested_access_is_not_possible' || sr=='145')
      return ResultErrorType.Core_You_have_another_access_type_on_this_website_and_your_requested_access_is_not_possible;
    else if (sr=='core_this_type_of_access_can_not_be_automatically_added_to_the_sites' || sr=='146')
      return ResultErrorType.Core_This_type_of_access_can_not_be_automatically_added_to_the_sites;
    else if (sr=='core_your_requested_access_type_was_not_found' || sr=='147')
      return ResultErrorType.Core_Your_requested_access_type_was_not_found;
    else if (sr=='core_your_requested_access_type_was_not_added_to_the_system' || sr=='148')
      return ResultErrorType.Core_Your_requested_access_type_was_not_added_to_the_system;
    else if (sr=='core_you_do_not_have_an_account_on_this_website' || sr=='149')
      return ResultErrorType.Core_You_do_not_have_an_account_on_this_website;
    else if (sr=='core_activation_code_is_invalid' || sr=='150')
      return ResultErrorType.Core_Activation_Code_is_invalid;
    else if (sr=='core_filteringquery_force_to_null_query_incorect_filtermodel' || sr=='151')
      return ResultErrorType.Core_FilteringQuery_Force_To_Null_query_Incorect_FilterModel;
    else if (sr=='bankpeyment_webserviceurl_isnullorempty' || sr=='152')
      return ResultErrorType.bankPeyment_WebServiceUrl_IsNullOrEmpty;
    else if (sr=='bankpeyment_rescode' || sr=='153')
      return ResultErrorType.bankPeyment_ResCode;
    else if (sr=='bankpeyment_webservicetimestamp' || sr=='154')
      return ResultErrorType.bankPeyment_webServiceTimestamp;
    else if (sr=='bankpeyment_bankpeymentpayrequest' || sr=='155')
      return ResultErrorType.bankPeyment_bankPeymentPayRequest;
    else if (sr=='bankpeyment_error_redirectinterfaceurl_isnullorempty' || sr=='156')
      return ResultErrorType.bankPeyment_Error_RedirectInterfaceUrl_IsNullOrEmpty;
    else if (sr=='bankpeyment_successful' || sr=='157')
      return ResultErrorType.bankPeyment_successful;
    else if (sr=='bankpeyment_salereferenceid_smaller_than_1000' || sr=='158')
      return ResultErrorType.bankPeyment_saleReferenceId_smaller_than_1000;
    else if (sr=='bankpeyment_refid_isnullorempty' || sr=='159')
      return ResultErrorType.bankPeyment_RefId_IsNullOrEmpty;
    else if (sr=='bankpeyment_salereferenceid_is_ziro' || sr=='160')
      return ResultErrorType.bankPeyment_saleReferenceId_Is_Ziro;
    else if (sr=='bankpeyment_saleorderid_is_ziro' || sr=='161')
      return ResultErrorType.bankPeyment_saleOrderId_Is_Ziro;
    else if (sr=='bankpeyment_stampvalues_rescode_not_0' || sr=='162')
      return ResultErrorType.bankPeyment_stampValues_ResCode_not_0;
    else if (sr=='bankpeyment_requestsaleorderid_not_stampvaluesorderid' || sr=='163')
      return ResultErrorType.bankPeyment_requestSaleOrderId_not_stampValuesOrderId;
    else if (sr=='bankpeyment_requestrefid_not_stampvaluesrefid' || sr=='164')
      return ResultErrorType.bankPeyment_requestRefId_not_stampValuesRefId;
    else if (sr=='bankpeyment_webservicecheck_is_not_0' || sr=='165')
      return ResultErrorType.bankPeyment_WebServiceCheck_is_not_0;
    else if (sr=='bankpeyment_transactioncomplete_is_ok' || sr=='166')
      return ResultErrorType.bankPeyment_TransactionComplete_Is_OK;
    else if (sr=='bankpeyment_webservicecomplete' || sr=='167')
      return ResultErrorType.bankPeyment_WebServiceComplete;
    else if (sr=='bankpeyment_webservicetimestamp_is_o' || sr=='168')
      return ResultErrorType.bankPeyment_WebServiceTimestamp_Is_O;
    else if (sr=='bankpeyment_webcallbackurl_isnullorempty' || sr=='169')
      return ResultErrorType.bankPeyment_WebCallBackUrl_IsNullOrEmpty;
    else if (sr=='bankpeyment_transactioncheck_is_ok' || sr=='170')
      return ResultErrorType.bankPeyment_TransactionCheck_Is_Ok;
    else if (sr=='bankpeyment_redirectinterfaceurl_isnullorempty' || sr=='171')
      return ResultErrorType.bankPeyment_RedirectInterfaceUrl_IsNullOrEmpty;
    else if (sr=='bankpeyment_request_resnum_isnot_stampvalues_resnum' || sr=='172')
      return ResultErrorType.bankPeyment_request_ResNum_isnot_stampValues_ResNum;
    else if (sr=='bankpeyment_refnum_isnullorempty' || sr=='173')
      return ResultErrorType.bankPeyment_RefNum_IsNullOrEmpty;
    else if (sr=='bankpeyment_inputclass_state_is_not_ok' || sr=='174')
      return ResultErrorType.bankPeyment_inputClass_State_Is_Not_Ok;
    else if (sr=='bankpeyment_verifytransaction_value_differnt_by_amount' || sr=='175')
      return ResultErrorType.bankPeyment_verifyTransaction_Value_Differnt_By_Amount;
    else if (sr=='bankpeyment_webservicecheck_smaller_than_0' || sr=='176')
      return ResultErrorType.bankPeyment_WebServiceCheck_smaller_than_0;
    else if (sr=='bankpeyment_inputclass_state_not_equal_to_100' || sr=='177')
      return ResultErrorType.bankPeyment_inputClass_State_Not_equal_to_100;
    else if (sr=='bankpeyment_requeststatus_not_ok' || sr=='178')
      return ResultErrorType.bankPeyment_requestStatus_not_ok;
    else if (sr=='bankpeyment_requestauthority_not_stampvaluesauthority' || sr=='179')
      return ResultErrorType.bankPeyment_requestAuthority_not_stampValuesAuthority;
    else if (sr=='bankpeyment_isnullorempty_inputclassauthority' || sr=='180')
      return ResultErrorType.bankPeyment_IsNullOrEmpty_inputClassAuthority;
    else if (sr=='bankpeyment_webservicecheck_is_not_100' || sr=='181')
      return ResultErrorType.bankPeyment_WebServiceCheck_is_not_100;
    else if (sr=='bankpeyment_success_refid' || sr=='182')
      return ResultErrorType.bankPeyment_Success_RefId;
    else if (sr=='bankpeyment_you_do_not_have_enough_access_to_this_operation' || sr=='183')
      return ResultErrorType.bankPeyment_You_do_not_have_enough_access_to_this_operation;
    else if (sr=='bankpeyment_ntk_custom_error_render_type_error' || sr=='184')
      return ResultErrorType.bankPeyment_NTK_Custom_Error_Render_Type_Error;
    else if (sr=='bankpeyment_ntk_custom_error_render_cast_error' || sr=='185')
      return ResultErrorType.bankPeyment_NTK_Custom_Error_Render_Cast_Error;
    else if (sr=='bankpeyment_transaction_details_are_empty' || sr=='186')
      return ResultErrorType.bankPeyment_Transaction_details_are_empty;
    else if (sr=='bankpeyment_input_value_is_empty' || sr=='187')
      return ResultErrorType.bankPeyment_Input_value_is_empty;
    else if (sr=='bankpeyment_bank_profile_is_empty' || sr=='188')
      return ResultErrorType.bankPeyment_Bank_profile_is_empty;
    else if (sr=='email_send_sucessfull' || sr=='189')
      return ResultErrorType.Email_Send_Sucessfull;
    else if (sr=='email_send_not_sucessfull' || sr=='190')
      return ResultErrorType.Email_Send_Not_Sucessfull;
    else if (sr=='email_you_do_not_have_enough_access_to_this_operation' || sr=='191')
      return ResultErrorType.Email_You_do_not_have_enough_access_to_this_operation;
    else if (sr=='email_send_path_is_not_specified' || sr=='192')
      return ResultErrorType.Email_Send_path_is_not_specified;
    else if (sr=='email_api_item_is_null' || sr=='193')
      return ResultErrorType.Email_Api_Item_is_null;
    else if (sr=='email_your_request_is_not_valid' || sr=='194')
      return ResultErrorType.Email_Your_request_is_not_valid;
    else if (sr=='email_emailtask_privatesiteconfig_is_null' || sr=='195')
      return ResultErrorType.Email_EmailTask_PrivateSiteConfig_is_null;
    else if (sr=='email_emailtask_publicconfig_is_null' || sr=='196')
      return ResultErrorType.Email_EmailTask_PublicConfig_is_null;
    else if (sr=='email_ntk_custom_error_render_type_error' || sr=='197')
      return ResultErrorType.Email_NTK_Custom_Error_Render_Type_Error;
    else if (sr=='email_ntk_custom_error_render_cast_error' || sr=='198')
      return ResultErrorType.Email_NTK_Custom_Error_Render_Cast_Error;
    else if (sr=='application_you_do_not_have_enough_access_to_this_operation' || sr=='199')
      return ResultErrorType.Application_You_do_not_have_enough_access_to_this_operation;
    else if (sr=='object_vertical_values_are_empty' || sr=='200')
      return ResultErrorType.Object_Vertical_values_are_empty;
    else if (sr=='shop_there_is_not_enough_inventory' || sr=='201')
      return ResultErrorType.Shop_There_is_not_enough_inventory;
    else if (sr=='shop_invalid_commodity_system_code' || sr=='202')
      return ResultErrorType.Shop_Invalid_commodity_system_code;
    else if (sr=='contentblocked' || sr=='203')
      return ResultErrorType.ContentBlocked;
    else if (sr=='contentneedadmincontrol' || sr=='204')
      return ResultErrorType.ContentNeedAdminControl;
    else if (sr=='contentnotavailable' || sr=='205')
      return ResultErrorType.ContentNotAvailable;
    else if (sr=='forbiddatesendstart' || sr=='206')
      return ResultErrorType.ForbidDateSendStart;
    else if (sr=='forbiddatesendend' || sr=='207')
      return ResultErrorType.ForbidDateSendEnd;
    else if (sr=='notfoundprivatesiteconfig' || sr=='208')
      return ResultErrorType.NotFoundPrivateSiteConfig;
    else if (sr=='taskscheduler_you_do_not_have_enough_access_to_this_operation' || sr=='209')
      return ResultErrorType.TaskScheduler_You_do_not_have_enough_access_to_this_operation;
    else if (sr=='coresite_access_to_this_section_is_limited_to_the_entire_system_management' || sr=='210')
      return ResultErrorType.CoreSite_Access_to_this_section_is_limited_to_the_entire_system_management;
    else if (sr=='email_entries_can_not_be_connected' || sr=='211')
      return ResultErrorType.Email_Entries_can_not_be_connected;
    else if (sr=='member_linkmemberuserid_is_null' || sr=='212')
      return ResultErrorType.Member_LinkMemberUserId_Is_Null;
    else if (sr=='object_linkmemberuserid_is_null' || sr=='213')
      return ResultErrorType.Object_LinkMemberUserId_Is_Null;
    else if (sr=='shop_you_do_not_have_enough_access_to_this_operation' || sr=='214')
      return ResultErrorType.Shop_You_do_not_have_enough_access_to_this_operation;
    else if (sr=='reservation_content_not_selected_correctly' || sr=='215')
      return ResultErrorType.Reservation_Content_not_selected_correctly;
    else if (sr=='reservation_linkcategoryid_is_null_or_zero' || sr=='216')
      return ResultErrorType.Reservation_LinkCategoryId_Is_Null_Or_Zero;
    else if (sr=='reservation_entries_can_not_be_connected' || sr=='217')
      return ResultErrorType.Reservation_Entries_can_not_be_connected;
    else if (sr=='permissionisauthenticatedfail' || sr=='218')
      return ResultErrorType.PermissionIsAuthenticatedFail;
    else if (sr=='permissionisauthenticateddeviceidfail' || sr=='219')
      return ResultErrorType.PermissionIsAuthenticatedDeviceIdFail;
    else if (sr=='antiinjectiontoken' || sr=='220')
      return ResultErrorType.AntiInjectionToken;
    else if (sr=='errorloopcontent' || sr=='221')
      return ResultErrorType.ErrorLoopContent;
    else if (sr=='bankpeyment_bank_token_is_empty' || sr=='222')
      return ResultErrorType.bankPeyment_Bank_token_is_empty;
    else if (sr=='linkmanagement_the_site_link_is_empty' || sr=='223')
      return ResultErrorType.LinkManagement_The_site_link_is_empty;
    else if (sr=='linkmanagement_the_url_is_not_in_accordance_with_the_url_format' || sr=='224')
      return ResultErrorType.LinkManagement_The_URL_is_not_in_accordance_with_the_URL_format;
    else if (sr=='error_was_successfully_logged' || sr=='225')
      return ResultErrorType.Error_was_successfully_logged;
    else if (sr=='member_this_item_has_already_been_registered' || sr=='226')
      return ResultErrorType.MemBer_This_Item_has_already_been_registered;
    else if (sr=='member_the_ability_to_move_access_from_a_website_to_another_website_is_not_possible' || sr=='227')
      return ResultErrorType.Member_The_ability_to_move_access_from_a_website_to_another_website_is_not_possible;
    else if (sr=='shop_content_not_selected_correctly' || sr=='228')
      return ResultErrorType.Shop_Content_not_selected_correctly;
    else if (sr=='please_login' || sr=='229')
      return ResultErrorType.Please_Login;
    else if (sr=='comment_linkcontentid_null' || sr=='230')
      return ResultErrorType.Comment_LinkContentId_null;
    else if (sr=='comment_text_null' || sr=='231')
      return ResultErrorType.Comment_Text_null;
    else if (sr=='comment_writer_null' || sr=='232')
      return ResultErrorType.Comment_Writer_null;
    else if (sr=='content_linkcategoryid_is_null_or_zero' || sr=='233')
      return ResultErrorType.Content_LinkCategoryId_Is_Null_Or_Zero;
    else if (sr=='webdesigner_the_site_link_is_empty' || sr=='234')
      return ResultErrorType.WebDesigner_The_site_link_is_empty;
    else if (sr=='webdesigner_the_url_is_not_in_accordance_with_the_url_format' || sr=='235')
      return ResultErrorType.WebDesigner_The_URL_is_not_in_accordance_with_the_URL_format;
    else if (sr=='core_email_is_null' || sr=='236')
      return ResultErrorType.Core_Email_Is_Null;
    else if (sr=='core_email_confermed' || sr=='237')
      return ResultErrorType.Core_Email_Confermed;
    else if (sr=='core_mobile_is_null' || sr=='238')
      return ResultErrorType.Core_Mobile_Is_Null;
    else if (sr=='core_mobile_confermed' || sr=='239')
      return ResultErrorType.Core_Mobile_Confermed;
    else if (sr=='core_activatecode_is_null' || sr=='240')
      return ResultErrorType.Core_ActivateCode_Is_Null;
    else if (sr=='exist_similar_data' || sr=='241')
      return ResultErrorType.Exist_Similar_Data;
    else if (sr=='emptydata' || sr=='242')
      return ResultErrorType.EmptyData;
  return ResultErrorType.EmptyData;
  }

  static int toJson(ResultErrorType sender){
    switch (sender) {
      case ResultErrorType.None: return 0;
      case ResultErrorType.UserAuthenticationFail: return 1;
      case ResultErrorType.BusinessFail: return 2;
      case ResultErrorType.ApplicationError: return 3;
      case ResultErrorType.NotFound: return 4;
      case ResultErrorType.ValueInjected: return 5;
      case ResultErrorType.SaveChangesisZero: return 6;
      case ResultErrorType.CurrentSiteId: return 7;
      case ResultErrorType.BusinessFailAccessRowAdd: return 8;
      case ResultErrorType.BusinessFailAccessRowDelete: return 9;
      case ResultErrorType.BusinessFailAccessRowEdit: return 10;
      case ResultErrorType.BusinessFailAccessRowWatch: return 11;
      case ResultErrorType.BusinessFailDemoAccessRowAdd: return 12;
      case ResultErrorType.BusinessFailDemoAccessRowDelete: return 13;
      case ResultErrorType.BusinessFailDemoAccessRowUpdate: return 14;
      case ResultErrorType.DeleteContentByChildForbid: return 15;
      case ResultErrorType.SaveChangesisError: return 16;
      case ResultErrorType.IPAddressAccessDinay: return 17;
      case ResultErrorType.File_handlingfile: return 18;
      case ResultErrorType.Core_ErrorId_edit_pagemaster: return 19;
      case ResultErrorType.Core_Loop_creation_error_between_parent_and_child: return 20;
      case ResultErrorType.Core_This_module_has_already_been_dedicated_to_this_site: return 21;
      case ResultErrorType.Core_Page_disabled: return 22;
      case ResultErrorType.Article_LinkContentId_null: return 23;
      case ResultErrorType.Article_LinkCategoryId_Is_Null_Or_Zero: return 24;
      case ResultErrorType.Core_Serial_number_is_duplicate: return 25;
      case ResultErrorType.Core_Domain_has_already_been_registered: return 26;
      case ResultErrorType.Core_Domain_name_or_subdomain_has_been_created: return 27;
      case ResultErrorType.Core_Duplicate: return 28;
      case ResultErrorType.Core_Your_file_has_not_been_uploaded_to_Template: return 29;
      case ResultErrorType.Advertisement_This_ad_has_already_been_registered_for_this_property: return 30;
      case ResultErrorType.Core__Site_User_Already_Exists: return 31;
      case ResultErrorType.Core_Username_has_been_used_for_another_user: return 32;
      case ResultErrorType.Core_Only_Admin_Can_Delete_User: return 33;
      case ResultErrorType.Core_Enter_username: return 34;
      case ResultErrorType.Core_Enter_the_password: return 35;
      case ResultErrorType.Core_Acceess_to_register_this_site: return 36;
      case ResultErrorType.Core_User_group_not_found: return 37;
      case ResultErrorType.Core_The_username_has_already_been_registered_in_the_system: return 38;
      case ResultErrorType.Core_ErrorService_Entity_Check_Decision_Before_Add: return 39;
      case ResultErrorType.Service_Content_not_selected_correctly: return 40;
      case ResultErrorType.Service_LinkCategoryId_Is_Null_Or_Zero: return 41;
      case ResultErrorType.ApiTelegram_Your_access_number_for_making_baht_has_expired: return 42;
      case ResultErrorType.ApiTelegram_This_profile_has_already_been_registered: return 43;
      case ResultErrorType.Shop_There_is_a_duplicate_item: return 44;
      case ResultErrorType.ImageGallery_Content_not_selected_correctly: return 45;
      case ResultErrorType.Biography_Content_not_selected_correctly: return 46;
      case ResultErrorType.Blog_Content_not_selected_correctly: return 47;
      case ResultErrorType.Chart_Content_not_selected_correctly: return 48;
      case ResultErrorType.MovieGallery_Content_not_selected_correctly: return 49;
      case ResultErrorType.Product_Content_not_selected_correctly: return 50;
      case ResultErrorType.MusicGallery_Content_not_selected_correctly: return 51;
      case ResultErrorType.Biography_LinkCategoryId_Is_Null_Or_Zero: return 52;
      case ResultErrorType.Blog_LinkCategoryId_Is_Null_Or_Zero: return 53;
      case ResultErrorType.Chart_LinkCategoryId_Is_Null_Or_Zero: return 54;
      case ResultErrorType.ImageGallery_The_file_is_duplicate: return 55;
      case ResultErrorType.ImageGallery_The_relevant_category_was_not_found: return 56;
      case ResultErrorType.MovieGallery_The_file_is_duplicate: return 57;
      case ResultErrorType.MovieGallery_The_relevant_category_was_not_found: return 58;
      case ResultErrorType.News_Content_not_selected_correctly: return 59;
      case ResultErrorType.Product_LinkCategoryId_Is_Null_Or_Zero: return 60;
      case ResultErrorType.Polling_The_number_of_votes_allowed_for_a_poll_can_not_exceed_the_number_of_votes: return 61;
      case ResultErrorType.Polling_The_relevant_category_was_not_found: return 62;
      case ResultErrorType.News_LinkCategoryId_Is_Null_Or_Zero: return 63;
      case ResultErrorType.Shop_The_relevant_category_was_not_found: return 64;
      case ResultErrorType.Job_This_ad_has_already_been_registered_for_this_property: return 65;
      case ResultErrorType.Ticket_Dupplicate_Data: return 66;
      case ResultErrorType.Job_LinkParentId_is_invalid: return 67;
      case ResultErrorType.Shop_To_create_an_invoice_the_site_user_or_system_user_must_be_specified: return 68;
      case ResultErrorType.Shop_It_is_not_known_to_create_a_vendor_website_invoice: return 69;
      case ResultErrorType.Member_Vertical_values_are_empty: return 70;
      case ResultErrorType.bankPeyment_The_unit_factor_of_the_store_should_be_greater_than_zero: return 71;
      case ResultErrorType.Vehicle_This_ad_has_already_been_registered_for_this_property: return 72;
      case ResultErrorType.UniversalMenu_LinkParentId_is_not_from_the_current_site: return 73;
      case ResultErrorType.Resrvation_Please_enter_the_date: return 74;
      case ResultErrorType.Resrvation_This_has_already_been_booked: return 75;
      case ResultErrorType.Resrvation_The_expiration_date_of_this_reservation_has_expired: return 76;
      case ResultErrorType.News_Entries_can_not_be_connected: return 77;
      case ResultErrorType.Estate_This_ad_has_already_been_registered_for_this_property: return 78;
      case ResultErrorType.Discount_DiscountGroup_Is_Null: return 79;
      case ResultErrorType.Discount_This_Card_Deactivated: return 80;
      case ResultErrorType.Discount_This_Card_Has_Sold: return 81;
      case ResultErrorType.Discount_This_Owner_Card_Is_Diffrent: return 82;
      case ResultErrorType.Reservation_The_date_has_already_been_registered: return 83;
      case ResultErrorType.Discount_Duplicate_PersonSeller: return 84;
      case ResultErrorType.Discount_Please_Enter_Person_Information: return 85;
      case ResultErrorType.Chat_Vertical_values_are_empty: return 86;
      case ResultErrorType.File_Loop_creation_error_between_parent_and_child: return 87;
      case ResultErrorType.Application_Your_access_number_for_making_baht_has_expired: return 88;
      case ResultErrorType.ExpireDateValue: return 89;
      case ResultErrorType.UserTicketIsNull: return 90;
      case ResultErrorType.InputEntityIsNull: return 91;
      case ResultErrorType.The_site_can_not_be_your_parent: return 92;
      case ResultErrorType.ErrorMessage_Reached_Maximum_Capacity: return 93;
      case ResultErrorType.The_site_link_is_empty: return 94;
      case ResultErrorType.Folder_not_found: return 95;
      case ResultErrorType.Error_Creating_Folder: return 96;
      case ResultErrorType.File_Not_Find: return 97;
      case ResultErrorType.Your_new_file_has_not_been_uploaded_correctly: return 98;
      case ResultErrorType.Shop_Invoice_not_found: return 99;
      case ResultErrorType.FilteringQuery_Force_To_Null_query_Incorect_FilterModel: return 100;
      case ResultErrorType.You_do_not_have_enough_access_to_this_operation: return 101;
      case ResultErrorType.You_do_not_have_access_levels_for_serial_registration_of_other_sites: return 102;
      case ResultErrorType.Error_replacing_file_on_server: return 103;
      case ResultErrorType.Section_not_found_for_get_tickets: return 104;
      case ResultErrorType.This_series_has_already_been_activated_for_you: return 105;
      case ResultErrorType.This_serial_is_disabled: return 106;
      case ResultErrorType.The_duration_of_the_use_of_this_series_has_been_completed: return 107;
      case ResultErrorType.The_allowed_number_of_this_series_is_over: return 108;
      case ResultErrorType.Site_not_selected: return 109;
      case ResultErrorType.Modules_list_is_empty: return 110;
      case ResultErrorType.Website_Specifications_is_empty: return 111;
      case ResultErrorType.Website_domain_Specification_is_empty: return 112;
      case ResultErrorType.Website_type_not_selected: return 113;
      case ResultErrorType.Web_management_properties_are_empty: return 114;
      case ResultErrorType.Username_is_not_logged_in_webmaster: return 115;
      case ResultErrorType.Web_admin_password_not_logged: return 116;
      case ResultErrorType.Your_requested_access_type_was_not_found: return 117;
      case ResultErrorType.Your_requested_website_type_was_not_found: return 118;
      case ResultErrorType.This_domain_has_already_been_registered_with_this_subdomain: return 119;
      case ResultErrorType.This_domain_has_already_been_registered: return 120;
      case ResultErrorType.This_domain_has_already_been_registered_with_Alice_Domain_with_this_subdomain: return 121;
      case ResultErrorType.This_domain_has_already_been_registered_with_Alice_Damien: return 122;
      case ResultErrorType.User_not_found: return 123;
      case ResultErrorType.The_account_has_expired_Contact_management: return 124;
      case ResultErrorType.The_account_is_inactive_status_Contact_management: return 125;
      case ResultErrorType.The_account_is_in_the_status_of_deletion_Contact_management: return 126;
      case ResultErrorType.A_link_to_your_email_address_has_been_sent: return 127;
      case ResultErrorType.Core_oldPassword_IsNullOrEmpty: return 128;
      case ResultErrorType.Core_newPassword_IsNullOrEmpty: return 129;
      case ResultErrorType.Core_userTicket_Notfound: return 130;
      case ResultErrorType.Core_userTicket_RecordStatus_NotAvailable: return 131;
      case ResultErrorType.Core_Password_with_old_password_is_not_equal: return 132;
      case ResultErrorType.Core_User_information_not_found: return 133;
      case ResultErrorType.Core_Link_password_reminder_not_found: return 134;
      case ResultErrorType.Core_Reminder_link_used_previously_apply_again: return 135;
      case ResultErrorType.Core_User_not_found: return 136;
      case ResultErrorType.Core_The_account_has_expired_Contact_management: return 137;
      case ResultErrorType.Core_The_account_is_in_the_status_of_deletion_Contact_management: return 138;
      case ResultErrorType.Core_The_account_is_inactive_status_Contact_management: return 139;
      case ResultErrorType.Core_This_site_is_not_in_your_collection: return 140;
      case ResultErrorType.Core_This_user_has_high_access_and_you_do_not_have_permission_to_login: return 141;
      case ResultErrorType.Core_Your_account_has_been_disabled_for_1_hour: return 142;
      case ResultErrorType.Core_Username_Or_Password_Incorrect: return 143;
      case ResultErrorType.Core_Your_account_on_this_website_is_disabled_by_contacting_the_management: return 144;
      case ResultErrorType.Core_You_have_another_access_type_on_this_website_and_your_requested_access_is_not_possible: return 145;
      case ResultErrorType.Core_This_type_of_access_can_not_be_automatically_added_to_the_sites: return 146;
      case ResultErrorType.Core_Your_requested_access_type_was_not_found: return 147;
      case ResultErrorType.Core_Your_requested_access_type_was_not_added_to_the_system: return 148;
      case ResultErrorType.Core_You_do_not_have_an_account_on_this_website: return 149;
      case ResultErrorType.Core_Activation_Code_is_invalid: return 150;
      case ResultErrorType.Core_FilteringQuery_Force_To_Null_query_Incorect_FilterModel: return 151;
      case ResultErrorType.bankPeyment_WebServiceUrl_IsNullOrEmpty: return 152;
      case ResultErrorType.bankPeyment_ResCode: return 153;
      case ResultErrorType.bankPeyment_webServiceTimestamp: return 154;
      case ResultErrorType.bankPeyment_bankPeymentPayRequest: return 155;
      case ResultErrorType.bankPeyment_Error_RedirectInterfaceUrl_IsNullOrEmpty: return 156;
      case ResultErrorType.bankPeyment_successful: return 157;
      case ResultErrorType.bankPeyment_saleReferenceId_smaller_than_1000: return 158;
      case ResultErrorType.bankPeyment_RefId_IsNullOrEmpty: return 159;
      case ResultErrorType.bankPeyment_saleReferenceId_Is_Ziro: return 160;
      case ResultErrorType.bankPeyment_saleOrderId_Is_Ziro: return 161;
      case ResultErrorType.bankPeyment_stampValues_ResCode_not_0: return 162;
      case ResultErrorType.bankPeyment_requestSaleOrderId_not_stampValuesOrderId: return 163;
      case ResultErrorType.bankPeyment_requestRefId_not_stampValuesRefId: return 164;
      case ResultErrorType.bankPeyment_WebServiceCheck_is_not_0: return 165;
      case ResultErrorType.bankPeyment_TransactionComplete_Is_OK: return 166;
      case ResultErrorType.bankPeyment_WebServiceComplete: return 167;
      case ResultErrorType.bankPeyment_WebServiceTimestamp_Is_O: return 168;
      case ResultErrorType.bankPeyment_WebCallBackUrl_IsNullOrEmpty: return 169;
      case ResultErrorType.bankPeyment_TransactionCheck_Is_Ok: return 170;
      case ResultErrorType.bankPeyment_RedirectInterfaceUrl_IsNullOrEmpty: return 171;
      case ResultErrorType.bankPeyment_request_ResNum_isnot_stampValues_ResNum: return 172;
      case ResultErrorType.bankPeyment_RefNum_IsNullOrEmpty: return 173;
      case ResultErrorType.bankPeyment_inputClass_State_Is_Not_Ok: return 174;
      case ResultErrorType.bankPeyment_verifyTransaction_Value_Differnt_By_Amount: return 175;
      case ResultErrorType.bankPeyment_WebServiceCheck_smaller_than_0: return 176;
      case ResultErrorType.bankPeyment_inputClass_State_Not_equal_to_100: return 177;
      case ResultErrorType.bankPeyment_requestStatus_not_ok: return 178;
      case ResultErrorType.bankPeyment_requestAuthority_not_stampValuesAuthority: return 179;
      case ResultErrorType.bankPeyment_IsNullOrEmpty_inputClassAuthority: return 180;
      case ResultErrorType.bankPeyment_WebServiceCheck_is_not_100: return 181;
      case ResultErrorType.bankPeyment_Success_RefId: return 182;
      case ResultErrorType.bankPeyment_You_do_not_have_enough_access_to_this_operation: return 183;
      case ResultErrorType.bankPeyment_NTK_Custom_Error_Render_Type_Error: return 184;
      case ResultErrorType.bankPeyment_NTK_Custom_Error_Render_Cast_Error: return 185;
      case ResultErrorType.bankPeyment_Transaction_details_are_empty: return 186;
      case ResultErrorType.bankPeyment_Input_value_is_empty: return 187;
      case ResultErrorType.bankPeyment_Bank_profile_is_empty: return 188;
      case ResultErrorType.Email_Send_Sucessfull: return 189;
      case ResultErrorType.Email_Send_Not_Sucessfull: return 190;
      case ResultErrorType.Email_You_do_not_have_enough_access_to_this_operation: return 191;
      case ResultErrorType.Email_Send_path_is_not_specified: return 192;
      case ResultErrorType.Email_Api_Item_is_null: return 193;
      case ResultErrorType.Email_Your_request_is_not_valid: return 194;
      case ResultErrorType.Email_EmailTask_PrivateSiteConfig_is_null: return 195;
      case ResultErrorType.Email_EmailTask_PublicConfig_is_null: return 196;
      case ResultErrorType.Email_NTK_Custom_Error_Render_Type_Error: return 197;
      case ResultErrorType.Email_NTK_Custom_Error_Render_Cast_Error: return 198;
      case ResultErrorType.Application_You_do_not_have_enough_access_to_this_operation: return 199;
      case ResultErrorType.Object_Vertical_values_are_empty: return 200;
      case ResultErrorType.Shop_There_is_not_enough_inventory: return 201;
      case ResultErrorType.Shop_Invalid_commodity_system_code: return 202;
      case ResultErrorType.ContentBlocked: return 203;
      case ResultErrorType.ContentNeedAdminControl: return 204;
      case ResultErrorType.ContentNotAvailable: return 205;
      case ResultErrorType.ForbidDateSendStart: return 206;
      case ResultErrorType.ForbidDateSendEnd: return 207;
      case ResultErrorType.NotFoundPrivateSiteConfig: return 208;
      case ResultErrorType.TaskScheduler_You_do_not_have_enough_access_to_this_operation: return 209;
      case ResultErrorType.CoreSite_Access_to_this_section_is_limited_to_the_entire_system_management: return 210;
      case ResultErrorType.Email_Entries_can_not_be_connected: return 211;
      case ResultErrorType.Member_LinkMemberUserId_Is_Null: return 212;
      case ResultErrorType.Object_LinkMemberUserId_Is_Null: return 213;
      case ResultErrorType.Shop_You_do_not_have_enough_access_to_this_operation: return 214;
      case ResultErrorType.Reservation_Content_not_selected_correctly: return 215;
      case ResultErrorType.Reservation_LinkCategoryId_Is_Null_Or_Zero: return 216;
      case ResultErrorType.Reservation_Entries_can_not_be_connected: return 217;
      case ResultErrorType.PermissionIsAuthenticatedFail: return 218;
      case ResultErrorType.PermissionIsAuthenticatedDeviceIdFail: return 219;
      case ResultErrorType.AntiInjectionToken: return 220;
      case ResultErrorType.ErrorLoopContent: return 221;
      case ResultErrorType.bankPeyment_Bank_token_is_empty: return 222;
      case ResultErrorType.LinkManagement_The_site_link_is_empty: return 223;
      case ResultErrorType.LinkManagement_The_URL_is_not_in_accordance_with_the_URL_format: return 224;
      case ResultErrorType.Error_was_successfully_logged: return 225;
      case ResultErrorType.MemBer_This_Item_has_already_been_registered: return 226;
      case ResultErrorType.Member_The_ability_to_move_access_from_a_website_to_another_website_is_not_possible: return 227;
      case ResultErrorType.Shop_Content_not_selected_correctly: return 228;
      case ResultErrorType.Please_Login: return 229;
      case ResultErrorType.Comment_LinkContentId_null: return 230;
      case ResultErrorType.Comment_Text_null: return 231;
      case ResultErrorType.Comment_Writer_null: return 232;
      case ResultErrorType.Content_LinkCategoryId_Is_Null_Or_Zero: return 233;
      case ResultErrorType.WebDesigner_The_site_link_is_empty: return 234;
      case ResultErrorType.WebDesigner_The_URL_is_not_in_accordance_with_the_URL_format: return 235;
      case ResultErrorType.Core_Email_Is_Null: return 236;
      case ResultErrorType.Core_Email_Confermed: return 237;
      case ResultErrorType.Core_Mobile_Is_Null: return 238;
      case ResultErrorType.Core_Mobile_Confermed: return 239;
      case ResultErrorType.Core_ActivateCode_Is_Null: return 240;
      case ResultErrorType.Exist_Similar_Data: return 241;
      case ResultErrorType.EmptyData: return 242;
      default: return 0;
    }
  }
}


enum EnumBuildStatusType{
  BuildOrder,
  BuildMSMQAdd,
  BuildMSMQAddError,
  BuildMSMQRead,
  BuildMSMQRun,
  BuildError,
  BuildSuccessfully,
  BuildUnsuccessfully,
  BuildMSMQRunNowBuildTempPathCreate,
  BuildMSMQRunNowFiledownloaded,
  BuildMSMQRunNowGitPull,
  BuildMSMQRunNowBuildStart,
  BuildMSMQRunNowBuildEnd,
  BuildMSMQRunNowFileCopy,
  CopyAppReleaseToExportApplication,
  BuildMSMQRunNowBuildDownloadFiles,
  BuildGitError,
  BuildUnsuccessfullyButFileNotExist,
  BuildSuccessfullyAndCopyAppReleaseToExportApplicationfully
}
class EnumMapper$EnumBuildStatusTypeConverter {
  static EnumBuildStatusType fromJson(Object sender){
    if (sender==null) return EnumBuildStatusType.BuildSuccessfullyAndCopyAppReleaseToExportApplicationfully;
    var sr=sender.toString().trim().toLowerCase();
    if (sr=='buildorder' || sr=='1')
      return EnumBuildStatusType.BuildOrder;
    else if (sr=='buildmsmqadd' || sr=='2')
      return EnumBuildStatusType.BuildMSMQAdd;
    else if (sr=='buildmsmqadderror' || sr=='3')
      return EnumBuildStatusType.BuildMSMQAddError;
    else if (sr=='buildmsmqread' || sr=='4')
      return EnumBuildStatusType.BuildMSMQRead;
    else if (sr=='buildmsmqrun' || sr=='5')
      return EnumBuildStatusType.BuildMSMQRun;
    else if (sr=='builderror' || sr=='6')
      return EnumBuildStatusType.BuildError;
    else if (sr=='buildsuccessfully' || sr=='7')
      return EnumBuildStatusType.BuildSuccessfully;
    else if (sr=='buildunsuccessfully' || sr=='8')
      return EnumBuildStatusType.BuildUnsuccessfully;
    else if (sr=='buildmsmqrunnowbuildtemppathcreate' || sr=='9')
      return EnumBuildStatusType.BuildMSMQRunNowBuildTempPathCreate;
    else if (sr=='buildmsmqrunnowfiledownloaded' || sr=='10')
      return EnumBuildStatusType.BuildMSMQRunNowFiledownloaded;
    else if (sr=='buildmsmqrunnowgitpull' || sr=='11')
      return EnumBuildStatusType.BuildMSMQRunNowGitPull;
    else if (sr=='buildmsmqrunnowbuildstart' || sr=='12')
      return EnumBuildStatusType.BuildMSMQRunNowBuildStart;
    else if (sr=='buildmsmqrunnowbuildend' || sr=='12')
      return EnumBuildStatusType.BuildMSMQRunNowBuildEnd;
    else if (sr=='buildmsmqrunnowfilecopy' || sr=='13')
      return EnumBuildStatusType.BuildMSMQRunNowFileCopy;
    else if (sr=='copyappreleasetoexportapplication' || sr=='14')
      return EnumBuildStatusType.CopyAppReleaseToExportApplication;
    else if (sr=='buildmsmqrunnowbuilddownloadfiles' || sr=='15')
      return EnumBuildStatusType.BuildMSMQRunNowBuildDownloadFiles;
    else if (sr=='buildgiterror' || sr=='16')
      return EnumBuildStatusType.BuildGitError;
    else if (sr=='buildunsuccessfullybutfilenotexist' || sr=='17')
      return EnumBuildStatusType.BuildUnsuccessfullyButFileNotExist;
    else if (sr=='buildsuccessfullyandcopyappreleasetoexportapplicationfully' || sr=='20')
      return EnumBuildStatusType.BuildSuccessfullyAndCopyAppReleaseToExportApplicationfully;
  return EnumBuildStatusType.BuildSuccessfullyAndCopyAppReleaseToExportApplicationfully;
  }

  static int toJson(EnumBuildStatusType sender){
    switch (sender) {
      case EnumBuildStatusType.BuildOrder: return 1;
      case EnumBuildStatusType.BuildMSMQAdd: return 2;
      case EnumBuildStatusType.BuildMSMQAddError: return 3;
      case EnumBuildStatusType.BuildMSMQRead: return 4;
      case EnumBuildStatusType.BuildMSMQRun: return 5;
      case EnumBuildStatusType.BuildError: return 6;
      case EnumBuildStatusType.BuildSuccessfully: return 7;
      case EnumBuildStatusType.BuildUnsuccessfully: return 8;
      case EnumBuildStatusType.BuildMSMQRunNowBuildTempPathCreate: return 9;
      case EnumBuildStatusType.BuildMSMQRunNowFiledownloaded: return 10;
      case EnumBuildStatusType.BuildMSMQRunNowGitPull: return 11;
      case EnumBuildStatusType.BuildMSMQRunNowBuildStart: return 12;
      case EnumBuildStatusType.BuildMSMQRunNowBuildEnd: return 12;
      case EnumBuildStatusType.BuildMSMQRunNowFileCopy: return 13;
      case EnumBuildStatusType.CopyAppReleaseToExportApplication: return 14;
      case EnumBuildStatusType.BuildMSMQRunNowBuildDownloadFiles: return 15;
      case EnumBuildStatusType.BuildGitError: return 16;
      case EnumBuildStatusType.BuildUnsuccessfullyButFileNotExist: return 17;
      case EnumBuildStatusType.BuildSuccessfullyAndCopyAppReleaseToExportApplicationfully: return 20;
      default: return 1;
    }
  }
}


enum RecordStatusEnum{
  Available,
  Deleted,
  Pending,
  Confirmed,
  DeniedConfirmed,
  AvailableArchive
}
class EnumMapper$RecordStatusEnumConverter {
  static RecordStatusEnum fromJson(Object sender){
    if (sender==null) return RecordStatusEnum.AvailableArchive;
    var sr=sender.toString().trim().toLowerCase();
    if (sr=='available' || sr=='1')
      return RecordStatusEnum.Available;
    else if (sr=='deleted' || sr=='2')
      return RecordStatusEnum.Deleted;
    else if (sr=='pending' || sr=='3')
      return RecordStatusEnum.Pending;
    else if (sr=='confirmed' || sr=='4')
      return RecordStatusEnum.Confirmed;
    else if (sr=='deniedconfirmed' || sr=='5')
      return RecordStatusEnum.DeniedConfirmed;
    else if (sr=='availablearchive' || sr=='6')
      return RecordStatusEnum.AvailableArchive;
  return RecordStatusEnum.AvailableArchive;
  }

  static int toJson(RecordStatusEnum sender){
    switch (sender) {
      case RecordStatusEnum.Available: return 1;
      case RecordStatusEnum.Deleted: return 2;
      case RecordStatusEnum.Pending: return 3;
      case RecordStatusEnum.Confirmed: return 4;
      case RecordStatusEnum.DeniedConfirmed: return 5;
      case RecordStatusEnum.AvailableArchive: return 6;
      default: return 1;
    }
  }
}


enum EnumImagePlace{
  None,
  MainImage,
  ThumbnailImage,
  Icon
}
class EnumMapper$EnumImagePlaceConverter {
  static EnumImagePlace fromJson(Object sender){
    if (sender==null) return EnumImagePlace.Icon;
    var sr=sender.toString().trim().toLowerCase();
    if (sr=='none' || sr=='0')
      return EnumImagePlace.None;
    else if (sr=='mainimage' || sr=='1')
      return EnumImagePlace.MainImage;
    else if (sr=='thumbnailimage' || sr=='2')
      return EnumImagePlace.ThumbnailImage;
    else if (sr=='icon' || sr=='3')
      return EnumImagePlace.Icon;
  return EnumImagePlace.Icon;
  }

  static int toJson(EnumImagePlace sender){
    switch (sender) {
      case EnumImagePlace.None: return 0;
      case EnumImagePlace.MainImage: return 1;
      case EnumImagePlace.ThumbnailImage: return 2;
      case EnumImagePlace.Icon: return 3;
      default: return 0;
    }
  }
}


