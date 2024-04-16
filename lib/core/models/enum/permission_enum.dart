// ignore_for_file: prefer_single_quotes

enum Permission {
  userManagementAccess,
  permissionCreate,
  permissionEdit,
  permissionShow,
  permissionDelete,
  permissionAccess,
  roleCreate,
  roleEdit,
  roleShow,
  roleDelete,
  roleAccess,
  userCreate,
  userEdit,
  userShow,
  userDelete,
  userAccess,
  statusCreate,
  statusEdit,
  statusShow,
  statusDelete,
  statusAccess,
  priorityCreate,
  priorityEdit,
  priorityShow,
  priorityDelete,
  priorityAccess,
  categoryCreate,
  categoryEdit,
  categoryShow,
  categoryDelete,
  categoryAccess,
  ticketCreate,
  ticketEdit,
  ticketShow,
  ticketDelete,
  ticketAccess,
  commentCreate,
  commentEdit,
  commentShow,
  commentDelete,
  commentAccess,
  auditLogShow,
  auditLogAccess,
  dashboardAccess,
  clientDetailCreate,
  clientDetailEdit,
  clientDetailShow,
  clientDetailDelete,
  clientDetailAccess,
  packageCreate,
  packageEdit,
  packageShow,
  packageDelete,
  packageAccess,
  branchDetailCreate,
  branchDetailEdit,
  branchDetailShow,
  branchDetailDelete,
  branchDetailAccess,
  configurationCreate,
  configurationEdit,
  configurationShow,
  configurationDelete,
  configurationAccess,
  operationalTierCreate,
  operationalTierEdit,
  operationalTierShow,
  operationalTierDelete,
  operationalTierAccess,
  assignToCreate,
  assignToEdit,
  assignToShow,
  assignToDelete,
  assignToAccess,
  agreementCreate,
  agreementEdit,
  agreementShow,
  agreementDelete,
  agreementAccess,
  trainingCreate,
  trainingEdit,
  trainingShow,
  trainingDelete,
  trainingAccess,
  phoneCreate,
  phoneEdit,
  phoneShow,
  phoneDelete,
  phoneAccess,
  marketingStatusCreate,
  marketingStatusEdit,
  marketingStatusShow,
  marketingStatusDelete,
  marketingStatusAccess,
  marketingClientCreate,
  marketingClientEdit,
  marketingClientShow,
  marketingClientDelete,
  marketingClientAccess,
  marketingDetailCreate,
  marketingDetailEdit,
  marketingDetailShow,
  marketingDetailDelete,
  marketingDetailAccess,
  marketingManagementAccess,
  ticketManagementAccess,
  accountManagementAccess,
  newAgreementCreate,
  newAgreementEdit,
  newAgreementShow,
  newAgreementDelete,
  newAgreementAccess,
  newAgreementManagementAccess,
  problemCreate,
  problemEdit,
  problemShow,
  problemDelete,
  problemAccess,
  dashboard,
  ticketSystem,
  projectManagementSystem,
  buttonAccess,
  auditCreate,
  auditEdit,
  auditDelete,
  auditAccess,
  ticketFollowup,
  trainingClientDetailAccess,
  trainingClientDetailCreate,
  trainingClientDetailEdit,
  trainingClientDetailShow,
  trainingClientDetailDelete,
  trainingManagementAccess,
  clientManagementSystem,
  projectAccess,
  projectCreate,
  projectEdit,
  projectShow,
  projectDelete,
  visitorAccess,
  visitorCreate,
  visitorEdit,
  visitorShow,
  visitorDelete,
  trainingRequestAccess,
  trainingRequestCreate,
  trainingRequestEdit,
  trainingRequestShow,
  trainingRequestDelete,
  migrationDetailAccess,
  migrationDetailCreate,
  migrationDetailEdit,
  migrationDetailShow,
  migrationDetailDelete,
  leaveTypeAccess,
  leaveTypeCreate,
  leaveTypeEdit,
  leaveTypeShow,
  leaveTypeDelete,
  leaveAccess,
  leaveCreate,
  leaveEdit,
  leaveShow,
  leaveDelete,
  attendanceAccess,
  attendanceCreate,
  attendanceEdit,
  attendanceShow,
  attendanceDelete,
  leaveUpdateStatus,
  shiftAccess,
  shiftCreate,
  shiftEdit,
  shiftShow,
  shiftDelete,
  employeeDelete,
  employeeShow,
  employeeEdit,
  employeeAccess,
  resignationAccess,
  resignationCreate,
  resignationEdit,
  resignationShow,
  resignationDelete,
  designationAccess,
  designationCreate,
  designationEdit,
  designationShow,
  designationDelete,
  complaintAccess,
  complaintCreate,
  complaintEdit,
  complaintShow,
  complaintDelete,
  terminationAccess,
  terminationCreate,
  terminationEdit,
  terminationShow,
  terminationDelete,
  holidayAccess,
  holidayCreate,
  holidayEdit,
  holidayShow,
  holidayDelete,
  departmentAccess,
  departmentCreate,
  departmentEdit,
  departmentShow,
  departmentDelete,
  meetingAccess,
  meetingCreate,
  meetingEdit,
  meetingShow,
  meetingDelete,
  companyPolicyAccess,
  companyPolicyCreate,
  companyPolicyEdit,
  companyPolicyShow,
  companyPolicyDelete,
  jobTypeAccess,
  jobTypeCreate,
  jobTypeEdit,
  jobTypeShow,
  jobTypeDelete,
  jobCategoryAccess,
  jobCategoryCreate,
  jobCategoryEdit,
  jobCategoryShow,
  jobCategoryDelete,
  jobAccess,
  jobCreate,
  jobEdit,
  jobShow,
  jobDelete,
  meetingHallAccess,
  meetingHallCreate,
  meetingHallEdit,
  meetingHallShow,
  meetingHallDelete,
  meetingTypeAccess,
  meetingTypeCreate,
  meetingTypeEdit,
  meetingTypeShow,
  meetingTypeDelete,
  meetingPlatformAccess,
  meetingPlatformCreate,
  meetingPlatformEdit,
  meetingPlatformShow,
  meetingPlatformDelete,
  settingAccess,
  settingCreate,
  settingEdit,
  settingShow,
  settingDelete,
  announcementTypeAccess,
  announcementTypeCreate,
  announcementTypeEdit,
  announcementTypeShow,
  announcementTypeDelete,
  announcementAccess,
  announcementCreate,
  announcementEdit,
  announcementShow,
  announcementDelete,
  branchAccess,
  branchCreate,
  branchEdit,
  branchShow,
  branchDelete,
  promotionAccess,
  promotionCreate,
  promotionEdit,
  promotionShow,
  promotionDelete,
  tripAccess,
  tripCreate,
  tripEdit,
  tripShow,
  tripDelete,
  reportAttendanceAccess,
  reportDailyAttendanceLogAccess,
  reportMonthlyLedgerAccess,
  reportAttendanceLeaveCompensationAccess,
  reportLeaveAccess,
  onSiteHourAccess,
  onSiteHourCreate,
  onSiteHourEdit,
  onSiteHourShow,
  onSiteHourDelete,
  onSiteHourVerify,
  terminationTypeAccess,
  terminationTypeCreate,
  terminationTypeEdit,
  terminationTypeShow,
  terminationTypeDelete,
  attendancePullFromDevice,
  fieldVisitAccess,
  fieldVisitCreate,
  fieldVisitEdit,
  fieldVisitShow,
  fieldVisitDelete,
  reportAttendanceLogAccess,
  activityDelete,
  activityStore,
  earnedLeaveAccess,
  earnedLeaveCreate,
  earnedLeaveEdit,
  earnedLeaveShow,
  earnedLeaveDelete,
  fiscalYearAccess,
  fiscalYearCreate,
  fiscalYearEdit,
  fiscalYearShow,
  fiscalYearDelete,
  forwardedLeaveAccess,
  timeAdditionAccess,
  timeAdditionCreate,
  timeAdditionEdit,
  timeAdditionShow,
  timeAdditionDelete,
  attendanceDeviceAccess,
  attendanceDeviceCreate,
  attendanceDeviceEdit,
  attendanceDeviceShow,
  attendanceDeviceDelete,
}

Permission permissionFromString(String permissionString) {
  switch (permissionString) {
    case "user_management_access":
      return Permission.userManagementAccess;
    case "permission_create":
      return Permission.permissionCreate;
    case "permission_edit":
      return Permission.permissionEdit;
    case "permission_show":
      return Permission.permissionShow;
    case "permission_delete":
      return Permission.permissionDelete;
    case "permission_access":
      return Permission.permissionAccess;
    case "role_create":
      return Permission.roleCreate;
    case "role_edit":
      return Permission.roleEdit;
    case "role_show":
      return Permission.roleShow;
    case "role_delete":
      return Permission.roleDelete;
    case "role_access":
      return Permission.roleAccess;
    case "user_create":
      return Permission.userCreate;
    case "user_edit":
      return Permission.userEdit;
    case "user_show":
      return Permission.userShow;
    case "user_delete":
      return Permission.userDelete;
    case "user_access":
      return Permission.userAccess;
    case "status_create":
      return Permission.statusCreate;
    case "status_edit":
      return Permission.statusEdit;
    case "status_show":
      return Permission.statusShow;
    case "status_delete":
      return Permission.statusDelete;
    case "status_access":
      return Permission.statusAccess;
    case "priority_create":
      return Permission.priorityCreate;
    case "priority_edit":
      return Permission.priorityEdit;
    case "priority_show":
      return Permission.priorityShow;
    case "priority_delete":
      return Permission.priorityDelete;
    case "priority_access":
      return Permission.priorityAccess;
    case "category_create":
      return Permission.categoryCreate;
    case "category_edit":
      return Permission.categoryEdit;
    case "category_show":
      return Permission.categoryShow;
    case "category_delete":
      return Permission.categoryDelete;
    case "category_access":
      return Permission.categoryAccess;
    case "ticket_create":
      return Permission.ticketCreate;
    case "ticket_edit":
      return Permission.ticketEdit;
    case "ticket_show":
      return Permission.ticketShow;
    case "ticket_delete":
      return Permission.ticketDelete;
    case "ticket_access":
      return Permission.ticketAccess;
    case "comment_create":
      return Permission.commentCreate;
    case "comment_edit":
      return Permission.commentEdit;
    case "comment_show":
      return Permission.commentShow;
    case "comment_delete":
      return Permission.commentDelete;
    case "comment_access":
      return Permission.commentAccess;
    case "audit_log_show":
      return Permission.auditLogShow;
    case "audit_log_access":
      return Permission.auditLogAccess;
    case "dashboard_access":
      return Permission.dashboardAccess;
    case "client_detail_create":
      return Permission.clientDetailCreate;
    case "client_detail_edit":
      return Permission.clientDetailEdit;
    case "client_detail_show":
      return Permission.clientDetailShow;
    case "client_detail_delete":
      return Permission.clientDetailDelete;
    case "client_detail_access":
      return Permission.clientDetailAccess;
    case "package_create":
      return Permission.packageCreate;
    case "package_edit":
      return Permission.packageEdit;
    case "package_show":
      return Permission.packageShow;
    case "package_delete":
      return Permission.packageDelete;
    case "package_access":
      return Permission.packageAccess;
    case "branch_detail_create":
      return Permission.branchDetailCreate;
    case "branch_detail_edit":
      return Permission.branchDetailEdit;
    case "branch_detail_show":
      return Permission.branchDetailShow;
    case "branch_detail_delete":
      return Permission.branchDetailDelete;
    case "branch_detail_access":
      return Permission.branchDetailAccess;
    case "configuration_create":
      return Permission.configurationCreate;
    case "configuration_edit":
      return Permission.configurationEdit;
    case "configuration_show":
      return Permission.configurationShow;
    case "configuration_delete":
      return Permission.configurationDelete;
    case "configuration_access":
      return Permission.configurationAccess;
    case "operational_tier_create":
      return Permission.operationalTierCreate;
    case "operational_tier_edit":
      return Permission.operationalTierEdit;
    case "operational_tier_show":
      return Permission.operationalTierShow;
    case "operational_tier_delete":
      return Permission.operationalTierDelete;
    case "operational_tier_access":
      return Permission.operationalTierAccess;
    case "assign_to_create":
      return Permission.assignToCreate;
    case "assign_to_edit":
      return Permission.assignToEdit;
    case "assign_to_show":
      return Permission.assignToShow;
    case "assign_to_delete":
      return Permission.assignToDelete;
    case "assign_to_access":
      return Permission.assignToAccess;
    case "agreement_create":
      return Permission.agreementCreate;
    case "agreement_edit":
      return Permission.agreementEdit;
    case "agreement_show":
      return Permission.agreementShow;
    case "agreement_delete":
      return Permission.agreementDelete;
    case "agreement_access":
      return Permission.agreementAccess;
    case "training_create":
      return Permission.trainingCreate;
    case "training_edit":
      return Permission.trainingEdit;
    case "training_show":
      return Permission.trainingShow;
    case "training_delete":
      return Permission.trainingDelete;
    case "training_access":
      return Permission.trainingAccess;
    case "phone_create":
      return Permission.phoneCreate;
    case "phone_edit":
      return Permission.phoneEdit;
    case "phone_show":
      return Permission.phoneShow;
    case "phone_delete":
      return Permission.phoneDelete;
    case "phone_access":
      return Permission.phoneAccess;
    case "marketingstatus_create":
      return Permission.marketingStatusCreate;
    case "marketingstatus_edit":
      return Permission.marketingStatusEdit;
    case "marketingstatus_show":
      return Permission.marketingStatusShow;
    case "marketingstatus_delete":
      return Permission.marketingStatusDelete;
    case "marketingstatus_access":
      return Permission.marketingStatusAccess;
    case "marketingclient_create":
      return Permission.marketingClientCreate;
    case "marketingclient_edit":
      return Permission.marketingClientEdit;
    case "marketingclient_show":
      return Permission.marketingClientShow;
    case "marketingclient_delete":
      return Permission.marketingClientDelete;
    case "marketingclient_access":
      return Permission.marketingClientAccess;
    case "marketingdetail_create":
      return Permission.marketingDetailCreate;
    case "marketingdetail_edit":
      return Permission.marketingDetailEdit;
    case "marketingdetail_show":
      return Permission.marketingDetailShow;
    case "marketingdetail_delete":
      return Permission.marketingDetailDelete;
    case "marketingdetail_access":
      return Permission.marketingDetailAccess;
    case "marketing_management_access":
      return Permission.marketingManagementAccess;
    case "ticket_management_access":
      return Permission.ticketManagementAccess;
    case "account_management_access":
      return Permission.accountManagementAccess;
    case "new_agreement_create":
      return Permission.newAgreementCreate;
    case "new_agreement_edit":
      return Permission.newAgreementEdit;
    case "new_agreement_show":
      return Permission.newAgreementShow;
    case "new_agreement_delete":
      return Permission.newAgreementDelete;
    case "new_agreement_access":
      return Permission.newAgreementAccess;
    case "newagreement_management_access":
      return Permission.newAgreementManagementAccess;
    case "problem_create":
      return Permission.problemCreate;
    case "problem_edit":
      return Permission.problemEdit;
    case "problem_show":
      return Permission.problemShow;
    case "problem_delete":
      return Permission.problemDelete;
    case "problem_access":
      return Permission.problemAccess;
    case "dashboard":
      return Permission.dashboard;
    case "ticket_system":
      return Permission.ticketSystem;
    case "project_management_system":
      return Permission.projectManagementSystem;
    case "button_access":
      return Permission.buttonAccess;
    case "audit_create":
      return Permission.auditCreate;
    case "audit_edit":
      return Permission.auditEdit;
    case "audit_delete":
      return Permission.auditDelete;
    case "audit_access":
      return Permission.auditAccess;
    case "ticket_followup":
      return Permission.ticketFollowup;
    case "training_clientdetail_access":
      return Permission.trainingClientDetailAccess;
    case "training_clientdetail_create":
      return Permission.trainingClientDetailCreate;
    case "training_clientdetail_edit":
      return Permission.trainingClientDetailEdit;
    case "training_clientdetail_show":
      return Permission.trainingClientDetailShow;
    case "training_clientdetail_delete":
      return Permission.trainingClientDetailDelete;
    case "training_management_access":
      return Permission.trainingManagementAccess;
    case "client_management_system":
      return Permission.clientManagementSystem;
    case "project_access":
      return Permission.projectAccess;
    case "project_create":
      return Permission.projectCreate;
    case "project_edit":
      return Permission.projectEdit;
    case "project_show":
      return Permission.projectShow;
    case "project_delete":
      return Permission.projectDelete;
    case "visitor_access":
      return Permission.visitorAccess;
    case "visitor_create":
      return Permission.visitorCreate;
    case "visitor_edit":
      return Permission.visitorEdit;
    case "visitor_show":
      return Permission.visitorShow;
    case "visitor_delete":
      return Permission.visitorDelete;
    case "training_request_access":
      return Permission.trainingRequestAccess;
    case "training_request_create":
      return Permission.trainingRequestCreate;
    case "training_request_edit":
      return Permission.trainingRequestEdit;
    case "training_request_show":
      return Permission.trainingRequestShow;
    case "training_request_delete":
      return Permission.trainingRequestDelete;
    case "migration_detail_access":
      return Permission.migrationDetailAccess;
    case "migration_detail_create":
      return Permission.migrationDetailCreate;
    case "migration_detail_edit":
      return Permission.migrationDetailEdit;
    case "migration_detail_show":
      return Permission.migrationDetailShow;
    case "migration_detail_delete":
      return Permission.migrationDetailDelete;
    case "leave_type_access":
      return Permission.leaveTypeAccess;
    case "leave_type_create":
      return Permission.leaveTypeCreate;
    case "leave_type_edit":
      return Permission.leaveTypeEdit;
    case "leave_type_show":
      return Permission.leaveTypeShow;
    case "leave_type_delete":
      return Permission.leaveTypeDelete;
    case "leave_access":
      return Permission.leaveAccess;
    case "leave_create":
      return Permission.leaveCreate;
    case "leave_edit":
      return Permission.leaveEdit;
    case "leave_show":
      return Permission.leaveShow;
    case "leave_delete":
      return Permission.leaveDelete;
    case "attendance_access":
      return Permission.attendanceAccess;
    case "attendance_create":
      return Permission.attendanceCreate;
    case "attendance_edit":
      return Permission.attendanceEdit;
    case "attendance_show":
      return Permission.attendanceShow;
    case "attendance_delete":
      return Permission.attendanceDelete;
    case "leave_update_status":
      return Permission.leaveUpdateStatus;
    case "shift_access":
      return Permission.shiftAccess;
    case "shift_create":
      return Permission.shiftCreate;
    case "shift_edit":
      return Permission.shiftEdit;
    case "shift_show":
      return Permission.shiftShow;
    case "shift_delete":
      return Permission.shiftDelete;
    case "employee_delete":
      return Permission.employeeDelete;
    case "employee_show":
      return Permission.employeeShow;
    case "employee_edit":
      return Permission.employeeEdit;
    case "employee_access":
      return Permission.employeeAccess;
    case "resignation_access":
      return Permission.resignationAccess;
    case "resignation_create":
      return Permission.resignationCreate;
    case "resignation_edit":
      return Permission.resignationEdit;
    case "resignation_show":
      return Permission.resignationShow;
    case "resignation_delete":
      return Permission.resignationDelete;
    case "designation_access":
      return Permission.designationAccess;
    case "designation_create":
      return Permission.designationCreate;
    case "designation_edit":
      return Permission.designationEdit;
    case "designation_show":
      return Permission.designationShow;
    case "designation_delete":
      return Permission.designationDelete;
    case "complaint_access":
      return Permission.complaintAccess;
    case "complaint_create":
      return Permission.complaintCreate;
    case "complaint_edit":
      return Permission.complaintEdit;
    case "complaint_show":
      return Permission.complaintShow;
    case "complaint_delete":
      return Permission.complaintDelete;
    case "termination_access":
      return Permission.terminationAccess;
    case "termination_create":
      return Permission.terminationCreate;
    case "termination_edit":
      return Permission.terminationEdit;
    case "termination_show":
      return Permission.terminationShow;
    case "termination_delete":
      return Permission.terminationDelete;
    case "holiday_access":
      return Permission.holidayAccess;
    case "holiday_create":
      return Permission.holidayCreate;
    case "holiday_edit":
      return Permission.holidayEdit;
    case "holiday_show":
      return Permission.holidayShow;
    case "holiday_delete":
      return Permission.holidayDelete;
    case "department_access":
      return Permission.departmentAccess;
    case "department_create":
      return Permission.departmentCreate;
    case "department_edit":
      return Permission.departmentEdit;
    case "department_show":
      return Permission.departmentShow;
    case "department_delete":
      return Permission.departmentDelete;
    case "meeting_access":
      return Permission.meetingAccess;
    case "meeting_create":
      return Permission.meetingCreate;
    case "meeting_edit":
      return Permission.meetingEdit;
    case "meeting_show":
      return Permission.meetingShow;
    case "meeting_delete":
      return Permission.meetingDelete;
    case "company_policy_access":
      return Permission.companyPolicyAccess;
    case "company_policy_create":
      return Permission.companyPolicyCreate;
    case "company_policy_edit":
      return Permission.companyPolicyEdit;
    case "company_policy_show":
      return Permission.companyPolicyShow;
    case "company_policy_delete":
      return Permission.companyPolicyDelete;
    case "job_type_access":
      return Permission.jobTypeAccess;
    case "job_type_create":
      return Permission.jobTypeCreate;
    case "job_type_edit":
      return Permission.jobTypeEdit;
    case "job_type_show":
      return Permission.jobTypeShow;
    case "job_type_delete":
      return Permission.jobTypeDelete;
    case "job_category_access":
      return Permission.jobCategoryAccess;
    case "job_category_create":
      return Permission.jobCategoryCreate;
    case "job_category_edit":
      return Permission.jobCategoryEdit;
    case "job_category_show":
      return Permission.jobCategoryShow;
    case "job_category_delete":
      return Permission.jobCategoryDelete;
    case "job_access":
      return Permission.jobAccess;
    case "job_create":
      return Permission.jobCreate;
    case "job_edit":
      return Permission.jobEdit;
    case "job_show":
      return Permission.jobShow;
    case "job_delete":
      return Permission.jobDelete;
    case "meeting_hall_access":
      return Permission.meetingHallAccess;
    case "meeting_hall_create":
      return Permission.meetingHallCreate;
    case "meeting_hall_edit":
      return Permission.meetingHallEdit;
    case "meeting_hall_show":
      return Permission.meetingHallShow;
    case "meeting_hall_delete":
      return Permission.meetingHallDelete;
    case "meeting_type_access":
      return Permission.meetingTypeAccess;
    case "meeting_type_create":
      return Permission.meetingTypeCreate;
    case "meeting_type_edit":
      return Permission.meetingTypeEdit;
    case "meeting_type_show":
      return Permission.meetingTypeShow;
    case "meeting_type_delete":
      return Permission.meetingTypeDelete;
    case "meeting_platform_access":
      return Permission.meetingPlatformAccess;
    case "meeting_platform_create":
      return Permission.meetingPlatformCreate;
    case "meeting_platform_edit":
      return Permission.meetingPlatformEdit;
    case "meeting_platform_show":
      return Permission.meetingPlatformShow;
    case "meeting_platform_delete":
      return Permission.meetingPlatformDelete;
    case "setting_access":
      return Permission.settingAccess;
    case "setting_create":
      return Permission.settingCreate;
    case "setting_edit":
      return Permission.settingEdit;
    case "setting_show":
      return Permission.settingShow;
    case "setting_delete":
      return Permission.settingDelete;
    case "announcement_type_access":
      return Permission.announcementTypeAccess;
    case "announcement_type_create":
      return Permission.announcementTypeCreate;
    case "announcement_type_edit":
      return Permission.announcementTypeEdit;
    case "announcement_type_show":
      return Permission.announcementTypeShow;
    case "announcement_type_delete":
      return Permission.announcementTypeDelete;
    case "announcement_access":
      return Permission.announcementAccess;
    case "announcement_create":
      return Permission.announcementCreate;
    case "announcement_edit":
      return Permission.announcementEdit;
    case "announcement_show":
      return Permission.announcementShow;
    case "announcement_delete":
      return Permission.announcementDelete;
    case "branch_access":
      return Permission.branchAccess;
    case "branch_create":
      return Permission.branchCreate;
    case "branch_edit":
      return Permission.branchEdit;
    case "branch_show":
      return Permission.branchShow;
    case "branch_delete":
      return Permission.branchDelete;
    case "promotion_access":
      return Permission.promotionAccess;
    case "promotion_create":
      return Permission.promotionCreate;
    case "promotion_edit":
      return Permission.promotionEdit;
    case "promotion_show":
      return Permission.promotionShow;
    case "promotion_delete":
      return Permission.promotionDelete;
    case "trip_access":
      return Permission.tripAccess;
    case "trip_create":
      return Permission.tripCreate;
    case "trip_edit":
      return Permission.tripEdit;
    case "trip_show":
      return Permission.tripShow;
    case "trip_delete":
      return Permission.tripDelete;
    case "report_attendance_access":
      return Permission.reportAttendanceAccess;
    case "report_daily_attendance_log_access":
      return Permission.reportDailyAttendanceLogAccess;
    case "report_monthly_ledger_access":
      return Permission.reportMonthlyLedgerAccess;
    case "report_attendance_leave_compensation_access":
      return Permission.reportAttendanceLeaveCompensationAccess;
    case "report_leave_access":
      return Permission.reportLeaveAccess;
    case "on_site_hour_access":
      return Permission.onSiteHourAccess;
    case "on_site_hour_create":
      return Permission.onSiteHourCreate;
    case "on_site_hour_edit":
      return Permission.onSiteHourEdit;
    case "on_site_hour_show":
      return Permission.onSiteHourShow;
    case "on_site_hour_delete":
      return Permission.onSiteHourDelete;
    case "on_site_hour_verify":
      return Permission.onSiteHourVerify;
    case "termination_type_access":
      return Permission.terminationTypeAccess;
    case "termination_type_create":
      return Permission.terminationTypeCreate;
    case "termination_type_edit":
      return Permission.terminationTypeEdit;
    case "termination_type_show":
      return Permission.terminationTypeShow;
    case "termination_type_delete":
      return Permission.terminationTypeDelete;
    case "attendance_pull_from_device":
      return Permission.attendancePullFromDevice;
    case "field_visit_access":
      return Permission.fieldVisitAccess;
    case "field_visit_create":
      return Permission.fieldVisitCreate;
    case "field_visit_edit":
      return Permission.fieldVisitEdit;
    case "field_visit_show":
      return Permission.fieldVisitShow;
    case "field_visit_delete":
      return Permission.fieldVisitDelete;
    case "report_attendance_log_access":
      return Permission.reportAttendanceLogAccess;
    case "activity_delete":
      return Permission.activityDelete;
    case "activity_store":
      return Permission.activityStore;
    case "earned_leave_access":
      return Permission.earnedLeaveAccess;
    case "earned_leave_create":
      return Permission.earnedLeaveCreate;
    case "earned_leave_edit":
      return Permission.earnedLeaveEdit;
    case "earned_leave_show":
      return Permission.earnedLeaveShow;
    case "earned_leave_delete":
      return Permission.earnedLeaveDelete;
    case "fiscal_year_access":
      return Permission.fiscalYearAccess;
    case "fiscal_year_create":
      return Permission.fiscalYearCreate;
    case "fiscal_year_edit":
      return Permission.fiscalYearEdit;
    case "fiscal_year_show":
      return Permission.fiscalYearShow;
    case "fiscal_year_delete":
      return Permission.fiscalYearDelete;
    case "forwarded_leave_access":
      return Permission.forwardedLeaveAccess;
    case "time_addition_access":
      return Permission.timeAdditionAccess;
    case "time_addition_create":
      return Permission.timeAdditionCreate;
    case "time_addition_edit":
      return Permission.timeAdditionEdit;
    case "time_addition_show":
      return Permission.timeAdditionShow;
    case "time_addition_delete":
      return Permission.timeAdditionDelete;
    case "attendance_device_access":
      return Permission.attendanceDeviceAccess;
    case "attendance_device_create":
      return Permission.attendanceDeviceCreate;
    case "attendance_device_edit":
      return Permission.attendanceDeviceEdit;
    case "attendance_device_show":
      return Permission.attendanceDeviceShow;
    case "attendance_device_delete":
      return Permission.attendanceDeviceDelete;
    default:
      {
        throw ArgumentError("Unknown permission string: $permissionString");
      }
  }
}
