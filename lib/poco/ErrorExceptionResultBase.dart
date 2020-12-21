import 'package:json_annotation/json_annotation.dart';

import 'package:hypertools/poco/enum_values.dart';

enum ErrorExceptionResultType {
  none,
  notConnectedToInternet,
  hasUpdate,
  hasUpdateForce
}

class ErrorExceptionResultBase {
  ErrorExceptionResultBase(
      {this.status,
      this.title,
      this.traceId,
      this.errorMessage,
      this.errorType,
      this.linkFile,
      this.uiResultType,
      this.isSuccess,
      this.isConnectedToInternet});

  @JsonKey(name: 'Status')
  int status;

  @JsonKey(name: 'Title')
  String title;

  @JsonKey(name: 'traceId')
  String traceId;

  @JsonKey(name: 'ErrorMessage')
  String errorMessage;

  @JsonKey(name: 'ErrorType')
  ResultErrorType errorType;

  @JsonKey(name: 'LinkFile')
  String linkFile;

  @JsonKey(name: 'IsSuccess')
  bool isSuccess;

  @JsonKey(ignore: true)
  bool isConnectedToInternet = true;
  // DataAccessModel access;

  @JsonKey(ignore: true)
  ErrorExceptionResultType uiResultType = ErrorExceptionResultType.none;

  static ErrorExceptionResultBase fail(String error,
      {ErrorExceptionResultType errCode}) {
    return ErrorExceptionResultBase(
        isSuccess: false, errorMessage: error, uiResultType: errCode);
  }

  static ErrorExceptionResultBase success({ErrorExceptionResultType errCode}) {
    return ErrorExceptionResultBase(isSuccess: true, uiResultType: errCode);
  }

  ErrorExceptionResultBase fromJson(Map<String, dynamic> json) =>
      ErrorExceptionResultBase(
        status: json['Status'] as int,
        title: json['Title'] as String,
        traceId: json['traceId'] as String,
        errorMessage: json['ErrorMessage'] as String,
        errorType:
            _$enumDecodeError(_$ResultErrorTypeEnumMapBase, json['ErrorType']),
        linkFile: json['LinkFile'] as String,
        isSuccess: json['IsSuccess'] as bool,
      );

  T _$enumDecodeError<T>(
    Map<T, dynamic> enumValues,
    dynamic source, {
    T unknownValue,
  }) {
    if (source == null) {
      throw ArgumentError('A value must be provided. Supported values: '
          '${enumValues.values.join(', ')}');
    }

    final value = enumValues.entries
        .singleWhere((e) => e.value == source, orElse: () => null)
        ?.key;

    if (value == null && unknownValue == null) {
      throw ArgumentError('`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}');
    }
    return value ?? unknownValue;
  }
}

const _$ResultErrorTypeEnumMapBase = {
  ResultErrorType.None: 'None',
  ResultErrorType.UserAuthenticationFail: 'UserAuthenticationFail',
  ResultErrorType.BusinessFail: 'BusinessFail',
  ResultErrorType.ApplicationError: 'ApplicationError',
  ResultErrorType.NotFound: 'NotFound',
  ResultErrorType.ValueInjected: 'ValueInjected',
  ResultErrorType.SaveChangesisZero: 'SaveChangesisZero',
  ResultErrorType.CurrentSiteId: 'CurrentSiteId',
  ResultErrorType.BusinessFailAccessRowAdd: 'BusinessFailAccessRowAdd',
  ResultErrorType.BusinessFailAccessRowDelete: 'BusinessFailAccessRowDelete',
  ResultErrorType.BusinessFailAccessRowEdit: 'BusinessFailAccessRowEdit',
  ResultErrorType.BusinessFailAccessRowWatch: 'BusinessFailAccessRowWatch',
  ResultErrorType.BusinessFailDemoAccessRowAdd: 'BusinessFailDemoAccessRowAdd',
  ResultErrorType.BusinessFailDemoAccessRowDelete:
      'BusinessFailDemoAccessRowDelete',
  ResultErrorType.BusinessFailDemoAccessRowUpdate:
      'BusinessFailDemoAccessRowUpdate',
  ResultErrorType.DeleteContentByChildForbid: 'DeleteContentByChildForbid',
  ResultErrorType.SaveChangesisError: 'SaveChangesisError',
  ResultErrorType.IPAddressAccessDinay: 'IPAddressAccessDinay',
  ResultErrorType.File_handlingfile: 'File_handlingfile',
  ResultErrorType.Core_ErrorId_edit_pagemaster: 'Core_ErrorId_edit_pagemaster',
  ResultErrorType.Core_Loop_creation_error_between_parent_and_child:
      'Core_Loop_creation_error_between_parent_and_child',
  ResultErrorType.Core_This_module_has_already_been_dedicated_to_this_site:
      'Core_This_module_has_already_been_dedicated_to_this_site',
  ResultErrorType.Core_Page_disabled: 'Core_Page_disabled',
  ResultErrorType.Article_LinkContentId_null: 'Article_LinkContentId_null',
  ResultErrorType.Article_LinkCategoryId_Is_Null_Or_Zero:
      'Article_LinkCategoryId_Is_Null_Or_Zero',
  ResultErrorType.Core_Serial_number_is_duplicate:
      'Core_Serial_number_is_duplicate',
  ResultErrorType.Core_Domain_has_already_been_registered:
      'Core_Domain_has_already_been_registered',
  ResultErrorType.Core_Domain_name_or_subdomain_has_been_created:
      'Core_Domain_name_or_subdomain_has_been_created',
  ResultErrorType.Core_Duplicate: 'Core_Duplicate',
  ResultErrorType.Core_Your_file_has_not_been_uploaded_to_Template:
      'Core_Your_file_has_not_been_uploaded_to_Template',
  ResultErrorType
          .Advertisement_This_ad_has_already_been_registered_for_this_property:
      'Advertisement_This_ad_has_already_been_registered_for_this_property',
  ResultErrorType.Core__Site_User_Already_Exists:
      'Core__Site_User_Already_Exists',
  ResultErrorType.Core_Username_has_been_used_for_another_user:
      'Core_Username_has_been_used_for_another_user',
  ResultErrorType.Core_Only_Admin_Can_Delete_User:
      'Core_Only_Admin_Can_Delete_User',
  ResultErrorType.Core_Enter_username: 'Core_Enter_username',
  ResultErrorType.Core_Enter_the_password: 'Core_Enter_the_password',
  ResultErrorType.Core_Acceess_to_register_this_site:
      'Core_Acceess_to_register_this_site',
  ResultErrorType.Core_User_group_not_found: 'Core_User_group_not_found',
  ResultErrorType.Core_The_username_has_already_been_registered_in_the_system:
      'Core_The_username_has_already_been_registered_in_the_system',
  ResultErrorType.Core_ErrorService_Entity_Check_Decision_Before_Add:
      'Core_ErrorService_Entity_Check_Decision_Before_Add',
  ResultErrorType.Service_Content_not_selected_correctly:
      'Service_Content_not_selected_correctly',
  ResultErrorType.Service_LinkCategoryId_Is_Null_Or_Zero:
      'Service_LinkCategoryId_Is_Null_Or_Zero',
  ResultErrorType.ApiTelegram_Your_access_number_for_making_baht_has_expired:
      'ApiTelegram_Your_access_number_for_making_baht_has_expired',
  ResultErrorType.ApiTelegram_This_profile_has_already_been_registered:
      'ApiTelegram_This_profile_has_already_been_registered',
  ResultErrorType.Shop_There_is_a_duplicate_item:
      'Shop_There_is_a_duplicate_item',
  ResultErrorType.ImageGallery_Content_not_selected_correctly:
      'ImageGallery_Content_not_selected_correctly',
  ResultErrorType.Biography_Content_not_selected_correctly:
      'Biography_Content_not_selected_correctly',
  ResultErrorType.Blog_Content_not_selected_correctly:
      'Blog_Content_not_selected_correctly',
  ResultErrorType.Chart_Content_not_selected_correctly:
      'Chart_Content_not_selected_correctly',
  ResultErrorType.MovieGallery_Content_not_selected_correctly:
      'MovieGallery_Content_not_selected_correctly',
  ResultErrorType.Product_Content_not_selected_correctly:
      'Product_Content_not_selected_correctly',
  ResultErrorType.MusicGallery_Content_not_selected_correctly:
      'MusicGallery_Content_not_selected_correctly',
  ResultErrorType.Biography_LinkCategoryId_Is_Null_Or_Zero:
      'Biography_LinkCategoryId_Is_Null_Or_Zero',
  ResultErrorType.Blog_LinkCategoryId_Is_Null_Or_Zero:
      'Blog_LinkCategoryId_Is_Null_Or_Zero',
  ResultErrorType.Chart_LinkCategoryId_Is_Null_Or_Zero:
      'Chart_LinkCategoryId_Is_Null_Or_Zero',
  ResultErrorType.ImageGallery_The_file_is_duplicate:
      'ImageGallery_The_file_is_duplicate',
  ResultErrorType.ImageGallery_The_relevant_category_was_not_found:
      'ImageGallery_The_relevant_category_was_not_found',
  ResultErrorType.MovieGallery_The_file_is_duplicate:
      'MovieGallery_The_file_is_duplicate',
  ResultErrorType.MovieGallery_The_relevant_category_was_not_found:
      'MovieGallery_The_relevant_category_was_not_found',
  ResultErrorType.News_Content_not_selected_correctly:
      'News_Content_not_selected_correctly',
  ResultErrorType.Product_LinkCategoryId_Is_Null_Or_Zero:
      'Product_LinkCategoryId_Is_Null_Or_Zero',
  ResultErrorType
          .Polling_The_number_of_votes_allowed_for_a_poll_can_not_exceed_the_number_of_votes:
      'Polling_The_number_of_votes_allowed_for_a_poll_can_not_exceed_the_number_of_votes',
  ResultErrorType.Polling_The_relevant_category_was_not_found:
      'Polling_The_relevant_category_was_not_found',
  ResultErrorType.News_LinkCategoryId_Is_Null_Or_Zero:
      'News_LinkCategoryId_Is_Null_Or_Zero',
  ResultErrorType.Shop_The_relevant_category_was_not_found:
      'Shop_The_relevant_category_was_not_found',
  ResultErrorType.Job_This_ad_has_already_been_registered_for_this_property:
      'Job_This_ad_has_already_been_registered_for_this_property',
  ResultErrorType.Ticket_Dupplicate_Data: 'Ticket_Dupplicate_Data',
  ResultErrorType.Job_LinkParentId_is_invalid: 'Job_LinkParentId_is_invalid',
  ResultErrorType
          .Shop_To_create_an_invoice_the_site_user_or_system_user_must_be_specified:
      'Shop_To_create_an_invoice_the_site_user_or_system_user_must_be_specified',
  ResultErrorType.Shop_It_is_not_known_to_create_a_vendor_website_invoice:
      'Shop_It_is_not_known_to_create_a_vendor_website_invoice',
  ResultErrorType.Member_Vertical_values_are_empty:
      'Member_Vertical_values_are_empty',
  ResultErrorType
          .bankPeyment_The_unit_factor_of_the_store_should_be_greater_than_zero:
      'bankPeyment_The_unit_factor_of_the_store_should_be_greater_than_zero',
  ResultErrorType.Vehicle_This_ad_has_already_been_registered_for_this_property:
      'Vehicle_This_ad_has_already_been_registered_for_this_property',
  ResultErrorType.UniversalMenu_LinkParentId_is_not_from_the_current_site:
      'UniversalMenu_LinkParentId_is_not_from_the_current_site',
  ResultErrorType.Resrvation_Please_enter_the_date:
      'Resrvation_Please_enter_the_date',
  ResultErrorType.Resrvation_This_has_already_been_booked:
      'Resrvation_This_has_already_been_booked',
  ResultErrorType
          .Resrvation_The_expiration_date_of_this_reservation_has_expired:
      'Resrvation_The_expiration_date_of_this_reservation_has_expired',
  ResultErrorType.News_Entries_can_not_be_connected:
      'News_Entries_can_not_be_connected',
  ResultErrorType.Estate_This_ad_has_already_been_registered_for_this_property:
      'Estate_This_ad_has_already_been_registered_for_this_property',
  ResultErrorType.Discount_DiscountGroup_Is_Null:
      'Discount_DiscountGroup_Is_Null',
  ResultErrorType.Discount_This_Card_Deactivated:
      'Discount_This_Card_Deactivated',
  ResultErrorType.Discount_This_Card_Has_Sold: 'Discount_This_Card_Has_Sold',
  ResultErrorType.Discount_This_Owner_Card_Is_Diffrent:
      'Discount_This_Owner_Card_Is_Diffrent',
  ResultErrorType.Reservation_The_date_has_already_been_registered:
      'Reservation_The_date_has_already_been_registered',
  ResultErrorType.Discount_Duplicate_PersonSeller:
      'Discount_Duplicate_PersonSeller',
  ResultErrorType.Discount_Please_Enter_Person_Information:
      'Discount_Please_Enter_Person_Information',
  ResultErrorType.Chat_Vertical_values_are_empty:
      'Chat_Vertical_values_are_empty',
  ResultErrorType.File_Loop_creation_error_between_parent_and_child:
      'File_Loop_creation_error_between_parent_and_child',
  ResultErrorType.Application_Your_access_number_for_making_baht_has_expired:
      'Application_Your_access_number_for_making_baht_has_expired',
  ResultErrorType.ExpireDateValue: 'ExpireDateValue',
  ResultErrorType.UserTicketIsNull: 'UserTicketIsNull',
  ResultErrorType.InputEntityIsNull: 'InputEntityIsNull',
  ResultErrorType.The_site_can_not_be_your_parent:
      'The_site_can_not_be_your_parent',
  ResultErrorType.ErrorMessage_Reached_Maximum_Capacity:
      'ErrorMessage_Reached_Maximum_Capacity',
  ResultErrorType.The_site_link_is_empty: 'The_site_link_is_empty',
  ResultErrorType.Folder_not_found: 'Folder_not_found',
  ResultErrorType.Error_Creating_Folder: 'Error_Creating_Folder',
  ResultErrorType.File_Not_Find: 'File_Not_Find',
  ResultErrorType.Your_new_file_has_not_been_uploaded_correctly:
      'Your_new_file_has_not_been_uploaded_correctly',
  ResultErrorType.Shop_Invoice_not_found: 'Shop_Invoice_not_found',
  ResultErrorType.FilteringQuery_Force_To_Null_query_Incorect_FilterModel:
      'FilteringQuery_Force_To_Null_query_Incorect_FilterModel',
  ResultErrorType.You_do_not_have_enough_access_to_this_operation:
      'You_do_not_have_enough_access_to_this_operation',
  ResultErrorType
          .You_do_not_have_access_levels_for_serial_registration_of_other_sites:
      'You_do_not_have_access_levels_for_serial_registration_of_other_sites',
  ResultErrorType.Error_replacing_file_on_server:
      'Error_replacing_file_on_server',
  ResultErrorType.Section_not_found_for_get_tickets:
      'Section_not_found_for_get_tickets',
  ResultErrorType.This_series_has_already_been_activated_for_you:
      'This_series_has_already_been_activated_for_you',
  ResultErrorType.This_serial_is_disabled: 'This_serial_is_disabled',
  ResultErrorType.The_duration_of_the_use_of_this_series_has_been_completed:
      'The_duration_of_the_use_of_this_series_has_been_completed',
  ResultErrorType.The_allowed_number_of_this_series_is_over:
      'The_allowed_number_of_this_series_is_over',
  ResultErrorType.Site_not_selected: 'Site_not_selected',
  ResultErrorType.Modules_list_is_empty: 'Modules_list_is_empty',
  ResultErrorType.Website_Specifications_is_empty:
      'Website_Specifications_is_empty',
  ResultErrorType.Website_domain_Specification_is_empty:
      'Website_domain_Specification_is_empty',
  ResultErrorType.Website_type_not_selected: 'Website_type_not_selected',
  ResultErrorType.Web_management_properties_are_empty:
      'Web_management_properties_are_empty',
  ResultErrorType.Username_is_not_logged_in_webmaster:
      'Username_is_not_logged_in_webmaster',
  ResultErrorType.Web_admin_password_not_logged:
      'Web_admin_password_not_logged',
  ResultErrorType.Your_requested_access_type_was_not_found:
      'Your_requested_access_type_was_not_found',
  ResultErrorType.Your_requested_website_type_was_not_found:
      'Your_requested_website_type_was_not_found',
  ResultErrorType.This_domain_has_already_been_registered_with_this_subdomain:
      'This_domain_has_already_been_registered_with_this_subdomain',
  ResultErrorType.This_domain_has_already_been_registered:
      'This_domain_has_already_been_registered',
  ResultErrorType
          .This_domain_has_already_been_registered_with_Alice_Domain_with_this_subdomain:
      'This_domain_has_already_been_registered_with_Alice_Domain_with_this_subdomain',
  ResultErrorType.This_domain_has_already_been_registered_with_Alice_Damien:
      'This_domain_has_already_been_registered_with_Alice_Damien',
  ResultErrorType.User_not_found: 'User_not_found',
  ResultErrorType.The_account_has_expired_Contact_management:
      'The_account_has_expired_Contact_management',
  ResultErrorType.The_account_is_inactive_status_Contact_management:
      'The_account_is_inactive_status_Contact_management',
  ResultErrorType.The_account_is_in_the_status_of_deletion_Contact_management:
      'The_account_is_in_the_status_of_deletion_Contact_management',
  ResultErrorType.A_link_to_your_email_address_has_been_sent:
      'A_link_to_your_email_address_has_been_sent',
  ResultErrorType.Core_oldPassword_IsNullOrEmpty:
      'Core_oldPassword_IsNullOrEmpty',
  ResultErrorType.Core_newPassword_IsNullOrEmpty:
      'Core_newPassword_IsNullOrEmpty',
  ResultErrorType.Core_userTicket_Notfound: 'Core_userTicket_Notfound',
  ResultErrorType.Core_userTicket_RecordStatus_NotAvailable:
      'Core_userTicket_RecordStatus_NotAvailable',
  ResultErrorType.Core_Password_with_old_password_is_not_equal:
      'Core_Password_with_old_password_is_not_equal',
  ResultErrorType.Core_User_information_not_found:
      'Core_User_information_not_found',
  ResultErrorType.Core_Link_password_reminder_not_found:
      'Core_Link_password_reminder_not_found',
  ResultErrorType.Core_Reminder_link_used_previously_apply_again:
      'Core_Reminder_link_used_previously_apply_again',
  ResultErrorType.Core_User_not_found: 'Core_User_not_found',
  ResultErrorType.Core_The_account_has_expired_Contact_management:
      'Core_The_account_has_expired_Contact_management',
  ResultErrorType
          .Core_The_account_is_in_the_status_of_deletion_Contact_management:
      'Core_The_account_is_in_the_status_of_deletion_Contact_management',
  ResultErrorType.Core_The_account_is_inactive_status_Contact_management:
      'Core_The_account_is_inactive_status_Contact_management',
  ResultErrorType.Core_This_site_is_not_in_your_collection:
      'Core_This_site_is_not_in_your_collection',
  ResultErrorType
          .Core_This_user_has_high_access_and_you_do_not_have_permission_to_login:
      'Core_This_user_has_high_access_and_you_do_not_have_permission_to_login',
  ResultErrorType.Core_Your_account_has_been_disabled_for_1_hour:
      'Core_Your_account_has_been_disabled_for_1_hour',
  ResultErrorType.Core_Username_Or_Password_Incorrect:
      'Core_Username_Or_Password_Incorrect',
  ResultErrorType
          .Core_Your_account_on_this_website_is_disabled_by_contacting_the_management:
      'Core_Your_account_on_this_website_is_disabled_by_contacting_the_management',
  ResultErrorType
          .Core_You_have_another_access_type_on_this_website_and_your_requested_access_is_not_possible:
      'Core_You_have_another_access_type_on_this_website_and_your_requested_access_is_not_possible',
  ResultErrorType
          .Core_This_type_of_access_can_not_be_automatically_added_to_the_sites:
      'Core_This_type_of_access_can_not_be_automatically_added_to_the_sites',
  ResultErrorType.Core_Your_requested_access_type_was_not_found:
      'Core_Your_requested_access_type_was_not_found',
  ResultErrorType.Core_Your_requested_access_type_was_not_added_to_the_system:
      'Core_Your_requested_access_type_was_not_added_to_the_system',
  ResultErrorType.Core_You_do_not_have_an_account_on_this_website:
      'Core_You_do_not_have_an_account_on_this_website',
  ResultErrorType.Core_Activation_Code_is_invalid:
      'Core_Activation_Code_is_invalid',
  ResultErrorType.Core_FilteringQuery_Force_To_Null_query_Incorect_FilterModel:
      'Core_FilteringQuery_Force_To_Null_query_Incorect_FilterModel',
  ResultErrorType.bankPeyment_WebServiceUrl_IsNullOrEmpty:
      'bankPeyment_WebServiceUrl_IsNullOrEmpty',
  ResultErrorType.bankPeyment_ResCode: 'bankPeyment_ResCode',
  ResultErrorType.bankPeyment_webServiceTimestamp:
      'bankPeyment_webServiceTimestamp',
  ResultErrorType.bankPeyment_bankPeymentPayRequest:
      'bankPeyment_bankPeymentPayRequest',
  ResultErrorType.bankPeyment_Error_RedirectInterfaceUrl_IsNullOrEmpty:
      'bankPeyment_Error_RedirectInterfaceUrl_IsNullOrEmpty',
  ResultErrorType.bankPeyment_successful: 'bankPeyment_successful',
  ResultErrorType.bankPeyment_saleReferenceId_smaller_than_1000:
      'bankPeyment_saleReferenceId_smaller_than_1000',
  ResultErrorType.bankPeyment_RefId_IsNullOrEmpty:
      'bankPeyment_RefId_IsNullOrEmpty',
  ResultErrorType.bankPeyment_saleReferenceId_Is_Ziro:
      'bankPeyment_saleReferenceId_Is_Ziro',
  ResultErrorType.bankPeyment_saleOrderId_Is_Ziro:
      'bankPeyment_saleOrderId_Is_Ziro',
  ResultErrorType.bankPeyment_stampValues_ResCode_not_0:
      'bankPeyment_stampValues_ResCode_not_0',
  ResultErrorType.bankPeyment_requestSaleOrderId_not_stampValuesOrderId:
      'bankPeyment_requestSaleOrderId_not_stampValuesOrderId',
  ResultErrorType.bankPeyment_requestRefId_not_stampValuesRefId:
      'bankPeyment_requestRefId_not_stampValuesRefId',
  ResultErrorType.bankPeyment_WebServiceCheck_is_not_0:
      'bankPeyment_WebServiceCheck_is_not_0',
  ResultErrorType.bankPeyment_TransactionComplete_Is_OK:
      'bankPeyment_TransactionComplete_Is_OK',
  ResultErrorType.bankPeyment_WebServiceComplete:
      'bankPeyment_WebServiceComplete',
  ResultErrorType.bankPeyment_WebServiceTimestamp_Is_O:
      'bankPeyment_WebServiceTimestamp_Is_O',
  ResultErrorType.bankPeyment_WebCallBackUrl_IsNullOrEmpty:
      'bankPeyment_WebCallBackUrl_IsNullOrEmpty',
  ResultErrorType.bankPeyment_TransactionCheck_Is_Ok:
      'bankPeyment_TransactionCheck_Is_Ok',
  ResultErrorType.bankPeyment_RedirectInterfaceUrl_IsNullOrEmpty:
      'bankPeyment_RedirectInterfaceUrl_IsNullOrEmpty',
  ResultErrorType.bankPeyment_request_ResNum_isnot_stampValues_ResNum:
      'bankPeyment_request_ResNum_isnot_stampValues_ResNum',
  ResultErrorType.bankPeyment_RefNum_IsNullOrEmpty:
      'bankPeyment_RefNum_IsNullOrEmpty',
  ResultErrorType.bankPeyment_inputClass_State_Is_Not_Ok:
      'bankPeyment_inputClass_State_Is_Not_Ok',
  ResultErrorType.bankPeyment_verifyTransaction_Value_Differnt_By_Amount:
      'bankPeyment_verifyTransaction_Value_Differnt_By_Amount',
  ResultErrorType.bankPeyment_WebServiceCheck_smaller_than_0:
      'bankPeyment_WebServiceCheck_smaller_than_0',
  ResultErrorType.bankPeyment_inputClass_State_Not_equal_to_100:
      'bankPeyment_inputClass_State_Not_equal_to_100',
  ResultErrorType.bankPeyment_requestStatus_not_ok:
      'bankPeyment_requestStatus_not_ok',
  ResultErrorType.bankPeyment_requestAuthority_not_stampValuesAuthority:
      'bankPeyment_requestAuthority_not_stampValuesAuthority',
  ResultErrorType.bankPeyment_IsNullOrEmpty_inputClassAuthority:
      'bankPeyment_IsNullOrEmpty_inputClassAuthority',
  ResultErrorType.bankPeyment_WebServiceCheck_is_not_100:
      'bankPeyment_WebServiceCheck_is_not_100',
  ResultErrorType.bankPeyment_Success_RefId: 'bankPeyment_Success_RefId',
  ResultErrorType.bankPeyment_You_do_not_have_enough_access_to_this_operation:
      'bankPeyment_You_do_not_have_enough_access_to_this_operation',
  ResultErrorType.bankPeyment_NTK_Custom_Error_Render_Type_Error:
      'bankPeyment_NTK_Custom_Error_Render_Type_Error',
  ResultErrorType.bankPeyment_NTK_Custom_Error_Render_Cast_Error:
      'bankPeyment_NTK_Custom_Error_Render_Cast_Error',
  ResultErrorType.bankPeyment_Transaction_details_are_empty:
      'bankPeyment_Transaction_details_are_empty',
  ResultErrorType.bankPeyment_Input_value_is_empty:
      'bankPeyment_Input_value_is_empty',
  ResultErrorType.bankPeyment_Bank_profile_is_empty:
      'bankPeyment_Bank_profile_is_empty',
  ResultErrorType.Email_Send_Sucessfull: 'Email_Send_Sucessfull',
  ResultErrorType.Email_Send_Not_Sucessfull: 'Email_Send_Not_Sucessfull',
  ResultErrorType.Email_You_do_not_have_enough_access_to_this_operation:
      'Email_You_do_not_have_enough_access_to_this_operation',
  ResultErrorType.Email_Send_path_is_not_specified:
      'Email_Send_path_is_not_specified',
  ResultErrorType.Email_Api_Item_is_null: 'Email_Api_Item_is_null',
  ResultErrorType.Email_Your_request_is_not_valid:
      'Email_Your_request_is_not_valid',
  ResultErrorType.Email_EmailTask_PrivateSiteConfig_is_null:
      'Email_EmailTask_PrivateSiteConfig_is_null',
  ResultErrorType.Email_EmailTask_PublicConfig_is_null:
      'Email_EmailTask_PublicConfig_is_null',
  ResultErrorType.Email_NTK_Custom_Error_Render_Type_Error:
      'Email_NTK_Custom_Error_Render_Type_Error',
  ResultErrorType.Email_NTK_Custom_Error_Render_Cast_Error:
      'Email_NTK_Custom_Error_Render_Cast_Error',
  ResultErrorType.Application_You_do_not_have_enough_access_to_this_operation:
      'Application_You_do_not_have_enough_access_to_this_operation',
  ResultErrorType.Object_Vertical_values_are_empty:
      'Object_Vertical_values_are_empty',
  ResultErrorType.Shop_There_is_not_enough_inventory:
      'Shop_There_is_not_enough_inventory',
  ResultErrorType.Shop_Invalid_commodity_system_code:
      'Shop_Invalid_commodity_system_code',
  ResultErrorType.ContentBlocked: 'ContentBlocked',
  ResultErrorType.ContentNeedAdminControl: 'ContentNeedAdminControl',
  ResultErrorType.ContentNotAvailable: 'ContentNotAvailable',
  ResultErrorType.ForbidDateSendStart: 'ForbidDateSendStart',
  ResultErrorType.ForbidDateSendEnd: 'ForbidDateSendEnd',
  ResultErrorType.NotFoundPrivateSiteConfig: 'NotFoundPrivateSiteConfig',
  ResultErrorType.TaskScheduler_You_do_not_have_enough_access_to_this_operation:
      'TaskScheduler_You_do_not_have_enough_access_to_this_operation',
  ResultErrorType
          .CoreSite_Access_to_this_section_is_limited_to_the_entire_system_management:
      'CoreSite_Access_to_this_section_is_limited_to_the_entire_system_management',
  ResultErrorType.Email_Entries_can_not_be_connected:
      'Email_Entries_can_not_be_connected',
  ResultErrorType.Member_LinkMemberUserId_Is_Null:
      'Member_LinkMemberUserId_Is_Null',
  ResultErrorType.Object_LinkMemberUserId_Is_Null:
      'Object_LinkMemberUserId_Is_Null',
  ResultErrorType.Shop_You_do_not_have_enough_access_to_this_operation:
      'Shop_You_do_not_have_enough_access_to_this_operation',
  ResultErrorType.Reservation_Content_not_selected_correctly:
      'Reservation_Content_not_selected_correctly',
  ResultErrorType.Reservation_LinkCategoryId_Is_Null_Or_Zero:
      'Reservation_LinkCategoryId_Is_Null_Or_Zero',
  ResultErrorType.Reservation_Entries_can_not_be_connected:
      'Reservation_Entries_can_not_be_connected',
  ResultErrorType.PermissionIsAuthenticatedFail:
      'PermissionIsAuthenticatedFail',
  ResultErrorType.PermissionIsAuthenticatedDeviceIdFail:
      'PermissionIsAuthenticatedDeviceIdFail',
  ResultErrorType.AntiInjectionToken: 'AntiInjectionToken',
  ResultErrorType.ErrorLoopContent: 'ErrorLoopContent',
  ResultErrorType.bankPeyment_Bank_token_is_empty:
      'bankPeyment_Bank_token_is_empty',
  ResultErrorType.LinkManagement_The_site_link_is_empty:
      'LinkManagement_The_site_link_is_empty',
  ResultErrorType
          .LinkManagement_The_URL_is_not_in_accordance_with_the_URL_format:
      'LinkManagement_The_URL_is_not_in_accordance_with_the_URL_format',
  ResultErrorType.Error_was_successfully_logged:
      'Error_was_successfully_logged',
  ResultErrorType.MemBer_This_Item_has_already_been_registered:
      'MemBer_This_Item_has_already_been_registered',
  ResultErrorType
          .Member_The_ability_to_move_access_from_a_website_to_another_website_is_not_possible:
      'Member_The_ability_to_move_access_from_a_website_to_another_website_is_not_possible',
  ResultErrorType.Shop_Content_not_selected_correctly:
      'Shop_Content_not_selected_correctly',
  ResultErrorType.Please_Login: 'Please_Login',
  ResultErrorType.Comment_LinkContentId_null: 'Comment_LinkContentId_null',
  ResultErrorType.Comment_Text_null: 'Comment_Text_null',
  ResultErrorType.Comment_Writer_null: 'Comment_Writer_null',
  ResultErrorType.Content_LinkCategoryId_Is_Null_Or_Zero:
      'Content_LinkCategoryId_Is_Null_Or_Zero',
  ResultErrorType.WebDesigner_The_site_link_is_empty:
      'WebDesigner_The_site_link_is_empty',
  ResultErrorType.WebDesigner_The_URL_is_not_in_accordance_with_the_URL_format:
      'WebDesigner_The_URL_is_not_in_accordance_with_the_URL_format',
  ResultErrorType.Core_Email_Is_Null: 'Core_Email_Is_Null',
  ResultErrorType.Core_Email_Confermed: 'Core_Email_Confermed',
  ResultErrorType.Core_Mobile_Is_Null: 'Core_Mobile_Is_Null',
  ResultErrorType.Core_Mobile_Confermed: 'Core_Mobile_Confermed',
  ResultErrorType.Core_ActivateCode_Is_Null: 'Core_ActivateCode_Is_Null',
  ResultErrorType.Exist_Similar_Data: 'Exist_Similar_Data',
  ResultErrorType.EmptyData: 'EmptyData',
};
