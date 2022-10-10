<?php
defined('BASEPATH') OR exit('No direct script access allowed');

// Login
$route[$this->admin_uri.'(/login)?'] = 'admin/admin_auth/login';
$route[$this->admin_uri.'/logout']   = 'admin/admin_auth/logout';

// Profile
$route[$this->admin_uri.'/profile'] = 'admin/admin_profile';

// Dashboard
$route[$this->admin_uri.'/dashboard']           = 'admin/admin_dashboard';
$route[$this->admin_uri.'/get_financial_chart'] = 'admin/admin_dashboard/get_financial_chart';

// Users
$route[$this->admin_uri.'/users']                        = 'admin/admin_users';
$route[$this->admin_uri.'/users/add']                    = 'admin/admin_users/add';
$route[$this->admin_uri.'/users/(:num)/profile']         = 'admin/admin_users/profile/$1';
$route[$this->admin_uri.'/users/(:num)/wallet_accounts'] = 'admin/admin_users/wallet_accounts/$1';
$route[$this->admin_uri.'/users/(:num)/funds']           = 'admin/admin_users/funds/$1';
$route[$this->admin_uri.'/users/(:num)/referrals']       = 'admin/admin_users/referrals/$1';
$route[$this->admin_uri.'/users/(:num)/access_log']      = 'admin/admin_users/access_log/$1';
//$route[$this->admin_uri.'/users/(:num)/delete']          = 'admin/admin_users/delete/$1';
$route[$this->admin_uri.'/users/search']                 = 'admin/admin_users/search';

// Staffs
$route[$this->admin_uri.'/staffs']               = 'admin/admin_staffs';
$route[$this->admin_uri.'/staffs/add']           = 'admin/admin_staffs/add';
$route[$this->admin_uri.'/staffs/(:num)/edit']   = 'admin/admin_staffs/edit/$1';
$route[$this->admin_uri.'/staffs/(:num)/delete'] = 'admin/admin_staffs/delete/$1';


// Bonus Penalty
$route[$this->admin_uri.'(?:/users/(:num))?/send_bonus_penalty'] = 'admin/admin_bonus_penalty/index/$1';

// Mass Mail
$route[$this->admin_uri.'(?:/users/(:num))?/mass_mail'] = 'admin/admin_mass_mail/index/$1';

// Pending Payments
$route[$this->admin_uri.'/pending_crypto_payments']                         = 'admin/admin_pending_crypto_payments';
$route[$this->admin_uri.'/pending_crypto_payments/([a-zA-Z0-9\-]+)/view']   = 'admin/admin_pending_crypto_payments/view/$1';
$route[$this->admin_uri.'/pending_crypto_payments/([a-zA-Z0-9\-]+)/update'] = 'admin/admin_pending_crypto_payments/update/$1';

// Mass Pay
$route[$this->admin_uri.'/pending_withdrawals']                                              = 'admin/admin_pending_withdrawals';
$route[$this->admin_uri.'/pending_withdrawals/action']                                       = 'admin/admin_pending_withdrawals/action';
$route[$this->admin_uri.'/pending_withdrawals/mass_pay']                                     = 'admin/admin_pending_withdrawals/mass_pay';
$route[$this->admin_uri.'/pending_withdrawals/mass_pay/status']                              = 'admin/admin_pending_withdrawals/mass_pay_status';
$route[$this->admin_uri.'/pending_withdrawals/([a-zA-Z0-9\-]+)/manual_pay']                  = 'admin/admin_pending_withdrawals/manual_pay/$1';
$route[$this->admin_uri.'/pending_withdrawals/([a-zA-Z0-9\-]+)/manual_pay/(success|failed)'] = 'admin/admin_pending_withdrawals/manual_pay_status/$1/$2';
$route[$this->admin_uri.'/pending_withdrawals/([a-zA-Z0-9\-]+)/delete']                      = 'admin/admin_pending_withdrawals/delete/$1';

// Testimonials
$route[$this->admin_uri.'/testimonials']               = 'admin/admin_testimonials';
$route[$this->admin_uri.'/testimonials/action']        = 'admin/admin_testimonials/action';
$route[$this->admin_uri.'/testimonials/(:num)/edit']   = 'admin/admin_testimonials/edit/$1';
$route[$this->admin_uri.'/testimonials/(:num)/delete'] = 'admin/admin_testimonials/delete/$1';

// Deposits
$route[$this->admin_uri.'/deposits(?:/(active|expired))?'] = 'admin/admin_deposits/index/$1';
$route[$this->admin_uri.'/deposits/([a-zA-Z0-9\-]+)/edit'] = 'admin/admin_deposits/edit/$1';

// Transactions
$route[$this->admin_uri.'/transactions']                       = 'admin/admin_transactions';
$route[$this->admin_uri.'/transactions/([a-zA-Z0-9\-]+)/view'] = 'admin/admin_transactions/view/$1';

// Tickets
$route[$this->admin_uri.'/tickets(?:/(open|answered|closed))?']          = 'admin/admin_tickets/index/$1';
$route[$this->admin_uri.'/tickets/([a-zA-Z0-9\-]+)/manage']              = 'admin/admin_tickets/manage/$1';
$route[$this->admin_uri.'/tickets/([a-zA-Z0-9\-]+)/edit']                = 'admin/admin_tickets/edit/$1';
$route[$this->admin_uri.'/tickets/([a-zA-Z0-9\-]+)/reply']               = 'admin/admin_tickets/reply/$1';
$route[$this->admin_uri.'/tickets/([a-zA-Z0-9\-]+)/msg/(:num)/delete']   = 'admin/admin_tickets/delete_msg/$1/$2';
$route[$this->admin_uri.'/tickets/([a-zA-Z0-9\-]+)/(open|close|delete)'] = 'admin/admin_tickets/status/$1/$2';

// News
$route[$this->admin_uri.'/news']                         = 'admin/admin_news';
$route[$this->admin_uri.'/news/add']                     = 'admin/admin_news/add';
$route[$this->admin_uri.'/news/([a-zA-Z0-9\-]+)/edit']   = 'admin/admin_news/edit/$1';
$route[$this->admin_uri.'/news/([a-zA-Z0-9\-]+)/delete'] = 'admin/admin_news/delete/$1';

// General Settings
$route[$this->admin_uri.'/general_settings'] = 'admin/admin_general_settings';
$route[$this->admin_uri.'/test_mail']        = 'admin/admin_general_settings/test_mail';

// Payment Gateways
$route[$this->admin_uri.'/payment_gateways']                                        = 'admin/admin_payment_gateways';
$route[$this->admin_uri.'/payment_gateways/([a-zA-Z0-9\-]+)/update']                = 'admin/admin_payment_gateways/update_proc/$1';
$route[$this->admin_uri.'/payment_gateways/([a-zA-Z0-9\-]+)/(activate|deactivate)'] = 'admin/admin_payment_gateways/update_proc_status/$1/$2';
$route[$this->admin_uri.'/payment_gateways/([a-zA-Z0-9\-]+)/test_api']              = 'admin/admin_payment_gateways/test_api/$1';
$route[$this->admin_uri.'/payment_gateways/fees_limits']                            = 'admin/admin_payment_gateways/fees_limits';

// Packages
$route[$this->admin_uri.'/packages']                           = 'admin/admin_packages';
$route[$this->admin_uri.'/packages/(:num)/position/(up|down)'] = 'admin/admin_packages/update_position/$1/$2';
$route[$this->admin_uri.'/packages/add']                       = 'admin/admin_packages/add';
$route[$this->admin_uri.'/packages/(:num)/edit']               = 'admin/admin_packages/edit/$1';
$route[$this->admin_uri.'/packages/(:num)/delete']             = 'admin/admin_packages/delete/$1';

// Holidays
$route[$this->admin_uri.'/holidays']               = 'admin/admin_holidays';
$route[$this->admin_uri.'/holidays/add']           = 'admin/admin_holidays/add';
$route[$this->admin_uri.'/holidays/(:num)/delete'] = 'admin/admin_holidays/delete/$1';

// Representatives
$route[$this->admin_uri.'/representatives(?:/(active|pending))?'] = 'admin/admin_representatives/index/$1';
$route[$this->admin_uri.'/representatives/add']                   = 'admin/admin_representatives/add';
$route[$this->admin_uri.'/representatives/action']                = 'admin/admin_representatives/action';
$route[$this->admin_uri.'/representatives/(:num)/edit']           = 'admin/admin_representatives/edit/$1';
$route[$this->admin_uri.'/representatives/(:num)/delete']         = 'admin/admin_representatives/delete/$1';

// Representative System
$route[$this->admin_uri.'/representative_system'] = 'admin/admin_representative_system';

// Referral System
$route[$this->admin_uri.'/referral_system'] = 'admin/admin_referral_system';

// Ticket Depts
$route[$this->admin_uri.'/ticket_departments']             = 'admin/admin_ticket_departments';
$route[$this->admin_uri.'/ticket_departments/add']         = 'admin/admin_ticket_departments/add';
$route[$this->admin_uri.'/ticket_departments/(:num)/edit'] = 'admin/admin_ticket_departments/edit/$1';

// Ticket Help topics
$route[$this->admin_uri.'/ticket_help_topics']               = 'admin/admin_ticket_help_topics';
$route[$this->admin_uri.'/ticket_help_topics/add']           = 'admin/admin_ticket_help_topics/add';
$route[$this->admin_uri.'/ticket_help_topics/(:num)/edit']   = 'admin/admin_ticket_help_topics/edit/$1';
$route[$this->admin_uri.'/ticket_help_topics/(:num)/delete'] = 'admin/admin_ticket_help_topics/delete/$1';

// Staff roles
$route[$this->admin_uri.'/staff_roles']                       = 'admin/admin_staff_roles';
$route[$this->admin_uri.'/staff_roles/([a-zA-Z0-9\_]+)/edit'] = 'admin/admin_staff_roles/edit/$1';

// Info Boxes
$route[$this->admin_uri.'/info_boxes'] = 'admin/admin_info_boxes';

// Exchange System
$route[$this->admin_uri.'/exchange_system'] = 'admin/admin_exchange_system';

// Email Templates
$route[$this->admin_uri.'/email_templates']             = 'admin/admin_email_templates';
$route[$this->admin_uri.'/email_templates/(:num)/edit'] = 'admin/admin_email_templates/edit/$1';

// Duplicate IP Checker
$route[$this->admin_uri.'/duplicate_ip_checker']                          = 'admin/admin_duplicate_ip_checker';
$route[$this->admin_uri.'/duplicate_ip_checker/users_by_ip_action']       = 'admin/admin_duplicate_ip_checker/users_by_ip_action';
$route[$this->admin_uri.'/duplicate_ip_checker/([0-9\.\:]+)/view_usages'] = 'admin/admin_duplicate_ip_checker/view_usages/$1';

// File Manager
$route[$this->admin_uri.'/file_manager']      = 'admin/admin_file_manager';
$route[$this->admin_uri.'/file_manager/init'] = 'admin/admin_file_manager/init';

// Access Log
$route[$this->admin_uri.'/access_log/(user|staff)'] = 'admin/admin_access_log/index/$1';