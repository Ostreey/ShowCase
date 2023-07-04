class Endpoints {
  static const String GET_VEHICLES = "/vehicule-types/list";
  static const String CHECK_VEHICLE_TYPE = "/vehicule-types/check";

  static const String FREE_ESTIMATION = "/free-estimation/Calculate";

  static const String CHECK_DISTANCE = "/location/check-distance";


  //CONTRACT
  static const String GET_CUSTOMER_ACTIVE_CONTRACTS = "/customers/contracts/list/active";
  static const String GET_CUSTOMER_FINISHED_CONTRACT = "/customers/contracts/list/finished";
  static const String ADD_CUSTOMER_CONTRACT = "/customers/contracts/add";
  static const String CUSTOMER_GET_CONTRACT_DETAIL = "/customers/contracts/details";
  static const String CUSTOMER_CONTRACT_CANCEL = "/customers/contracts/cancel";
  static const String CUSTOMER_CONTRACT_CONFIRM_DELIVERY = "/customers/contracts/confirm-delivery";
  static const String CUSTOMER_CONTRACT_DETAIL = "/customers/contracts/details";

  static const String DRIVER_CONTRACT_CANCEL = "/drivers/contracts/cancel";
  static const String DRIVER_CONTRACT_DELIVERED = "/drivers/contracts/delivered";
  static const String DRIVER_CONTRACT_PICKUP = "/drivers/contracts/picked-up";
  static const String DRIVER_ACTIVE_CONTRACTS = "/drivers/contracts/list/active";
  static const String DRIVER_FINISHED_CONTRACTS = "/drivers/contracts/list/archived";
  static const String DRIVER_CONTRACT_START = "/drivers/contracts/start";
  static const String GET_DRIVER_CONTRACT_DETAIL = "/drivers/contracts/details";
  static const String CUSTOMER_FINALIZE_CONTRACT = "/customers/contracts/finalize";

  static const String CLIENT_REGISTER = "/customers/customers/register";
  static const String CUSTOMER_ACCEPT_TERMS = "/customers/customers/accept-terms";
  static const String GET_CUSTOMER_DETAIL = "/customers/customers/details";
  static const String UPLOAD_CUSTOMER_ID = "customers/customers/uload-id-document";


  //JOB
  static const String ADD_JOB = "/customers/jobs/add";
  static const String GET_ACTIVE_JOBS = "/customers/jobs/list/active";
  static const String GET_ARCHIVED_JOBS = "/customers/jobs/list/archived";
  static const String GET_CUSTOMER_JOB_DETAIL = "/customers/jobs/details";
  static const String GET_DRIVER_JOBS_ALL = "/drivers/jobs/list/all";
  static const String GET_DRIVER_JOBS_ACTIVE = "/drivers/jobs/list/active";
  static const String GET_DRIVER_FAV_JOBS = "/drivers/jobs/list/favorites";
  static const String GET_DRIVER_JOB_DETAIL = "/drivers/jobs/details";
  static const String DRIVER_ADD_JOB_FAV = "/drivers/jobs/favorites/add";
  static const String DRIVER_REMOVE_JOB_FAV = "/drivers/jobs/favorites/remove";
  static const String CUSTOMER_CLOSE_JOB = "customers/jobs/close";


  //PROPOSALS
  static const String GET_JOB_PROPOSALS = "/customers/proposals/list/all";
  static const String GET_SAVED_JOB_PROPOSALS = "/customers/proposals/list/favorites";
  static const String ADD_FAVORITE_PROPOSAL = "/customers/proposals/favorites/add";
  static const String REMOVE_FAVORITE_PROPOSAL = "/customers/proposals/favorites/remove";
  static const String DRIVER_SEND_PROPOSAL = "/drivers/proposals/add";
  static const String GET_DRIVER_ACTIVE_PROPOSALS = "/drivers/proposals/list/active";
  static const String GET_DRIVER_ARCHIVED_PROPOSALS = "/drivers/proposals/list/archived";
  static const String GET_PROPOSAL_DETAIL = "/drivers/proposals/details";
  static const String GET_CUSTOMER_PROPOSAL_DETAIL = "/customers/proposals/details";

  // Driver
  static const String DRIVER_REGISTER = "/drivers/drivers/register";
  static const String GET_DRIVER_DETAIL = "/drivers/drivers/details";
  static const String EDIT_DRIVER = "/drivers/drivers/edit";
  static const String UPLOAD_DRIVER_ID = "/drivers/drivers/uload-driving-license"; //driving-license
  static const String DRIVER_REVIEWS = "/drivers/drivers/reviews";

// AUTH
  static const String LOGIN = "/users/login";
  static const String USER_ACCEPT_TERMS = "/users/accept-terms";
  static const String USER_CHANGE_PROFILE_IMAGE = "/users/change-image";
  static const String REFRESH = "/users/refresh";
}

