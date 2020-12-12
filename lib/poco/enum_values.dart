enum EnumManageUserAccessControllerTypes {
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

enum ManageUserAccessAreaTypesEnum {
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

enum EnumOperatingSystemType {
  none,
  Windows,
  AppleMacOS,
  Linux,
  AppleIOS,
  GoogleAndroid,
  OxygenOS,
  Chromium
}

enum EnumDeviceType { none, WebSite, Windows, Android, AppleIOS }

enum SortType { Descending, Ascending, Random }

enum EnumExportFileType { None, Excel, PDF, Text }

enum EnumExportReceiveMethod { Now, Email, FileManeger }

enum ClauseType { Or, And }

enum FilterDataModelSearchTypes {
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

enum ResultErrorType {
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