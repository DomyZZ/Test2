<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| GLOBAL ROUTES
| -------------------------------------------------------------------------
*/
$route['404_override']         = '';
$route['translate_uri_dashes'] = FALSE;

require_once 'admin_routes.php';

/*
| -------------------------------------------------------------------------
| SITE ROUTES
| -------------------------------------------------------------------------
*/

// Non-member
$route['lang/([a-z]+)']                      = 'lang/set/$1';
$route['register']                           = 'register';
$route['activate/([a-zA-Z0-9]+)']            = 'register/activate_account/$1';
$route['login']                              = 'auth/login';
$route['login/twofa']                        = 'auth/login_twofa';
$route['login/pin']                          = 'auth/login_pin';
$route['logout']                             = 'auth/logout';
$route['contact']                            = 'contact';
$route['news']                               = 'news';
$route['news/view/([a-zA-Z0-9\-]+)']         = 'news/view/$1';
$route['testimonials']                       = 'testimonials';
$route['paidout']                            = 'paidout';
$route['representatives']                    = 'representatives';
$route['apply_representative']               = 'representative/apply';
$route['reset_password']                     = 'reset_password';
$route['reset_password/set_new/([a-z0-9]+)'] = 'reset_password/set_new_password/$1';
$route['resend_activation']                  = 'resend_activation';
$route['calculator/([0-9]+)']                = 'components/calculator/$1';
$route['past_rates/([0-9]+)']                = 'components/view_past_rates/$1';
$route['r/([a-zA-Z0-9\-]+)']                 = 'home/referral/$1';
$route['cron/([a-zA-Z0-9]+)']                = 'cron/index/$1';
$route['captcha']                            = 'components/captcha';

// Temp
$route['temp/([a-zA-Z0-9_]+)'] = 'temp/$1';

// Member
$route['dashboard']                                                                 = 'dashboard';
$route['transactions']                                                              = 'transactions';
$route['access_log']                                                                = 'access_log';
$route['pending_payments']                                                          = 'payments/pending';
$route['add_funds']                                                                 = 'add_funds';
$route['new_deposit']                                                               = 'deposit/index';
$route['deposit/([0-9]+)']                                                          = 'deposit/index/$1';
$route['deposits']                                                                  = 'deposits';
$route['deposits(?:/(active|expired))?']                                            = 'deposits/index/$1';
$route['withdraw_principal/([a-zA-Z0-9\-]+)']                                       = 'deposits/withdraw_principal/$1';
$route['change_compound/([a-zA-Z0-9\-]+)']                                          = 'deposits/change_compound/$1';
$route['deposits']                                                                  = 'deposits';
$route['withdraw']                                                                  = 'withdraw';
$route['pending_withdrawals']                                                       = 'pending_withdrawals';
$route['pending_withdrawals/cancel/([a-zA-Z0-9\-]+)']                               = 'pending_withdrawals/cancel/$1';
$route['internal_transfer']                                                         = 'internal_transfer';
$route['exchange']                                                                  = 'exchange';
$route['referrals']                                                                 = 'referrals';
$route['banners']                                                                   = 'referrals/banners';
$route['withdrawal_history/cancel/([a-zA-Z0-9\-]+)']                                = 'withdrawal_history/cancel/$1';
$route['edit_profile(?:/(wallet_accounts))?']                                       = 'edit_profile/index/$1';
$route['security(?:/(secondary_password|twofa|security_question|identity_check))?'] = 'security/index/$1';
$route['tickets']                                                                   = 'tickets/index';
$route['ticket/([a-zA-Z0-9\-]+)']                                                   = 'tickets/view_ticket/$1';
$route['new_ticket']                                                                = 'tickets/new_ticket';
$route['write_testimonial']                                                         = 'write_testimonial';
$route['invite_friend']                                                             = 'invite_friend';
$route['payment/successful']                                                        = 'payment_status/successful';
$route['payment/failed']                                                            = 'payment_status/failed';
$route['payment/status/([a-z\-]+)']                                                 = 'payment_status/status/$1';
$route['payment/crypto/([a-z0-9\-]+)']                                              = 'payment/crypto/$1';

$route['default_controller'] = 'home';
$route['(.*)']               = 'custom_pages/index/$1';

