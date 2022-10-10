<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$config["pagination"]["num_links"]     = 2;

$config["pagination"]["full_tag_open"] = '<ul class="pagination">';
$config["pagination"]["attributes"]    = ['class' => 'page-link'];

$config["pagination"]['first_link'] = FALSE;
$config["pagination"]['last_link']  = FALSE;

$config["pagination"]['next_link']      = ">>";
$config["pagination"]['next_tag_open']  = '<li class="page-item">';
$config["pagination"]['next_tag_close'] = '</li>';

$config["pagination"]['prev_link']      = "<<";
$config["pagination"]['prev_tag_open']  = '<li class="page-item">';
$config["pagination"]['prev_tag_close'] = '</li>';

$config["pagination"]['cur_tag_open']  = '<li class="page-item active"><a class="page-link" href="javascript:void(0)">';
$config["pagination"]['cur_tag_close'] = '</a></li>';

$config["pagination"]['num_tag_open']  = '<li class="page-item">';
$config["pagination"]['num_tag_close'] = '</li>';

$config["pagination"]["full_tag_close"] = '</ul>';