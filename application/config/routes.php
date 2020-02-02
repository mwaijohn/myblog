<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$route['create'] = 'blog';
// $route['create/(:any)'] = 'blog/$1';
// $route['create/delete/(:any)'] = 'blog/delete/$1';
// $route['create/post/(:any)'] = 'blog/post/$1';
// $route['create/edit/(:any)'] = 'blog/edit/$1';
// $route['create/update/(:any)'] = 'blog/update/$1'; 

$route['posts'] = 'blog/posts';
$route['posts/(:any)'] = 'blog/posts/$1';
$route['post/delete/(:any)'] = 'blog/delete/$1';
$route['post/(:any)'] = 'blog/post/$1';
$route['post/edit/(:any)'] = 'blog/edit/$1';
$route['post/update/(:any)'] = 'blog/update/$1';
$route['post/category/(:any)'] = 'blog/get_post_by_category/$1';

$route['comment'] = 'comments/create_comment';

$route['signup'] = 'accounts/signup';
$route['login'] = 'accounts/login';
$route['logout'] = 'accounts/logout';

$route['create_category'] = 'categories/create_category';
$route['categories'] = 'categories/show_categories';
$route['edit_category/(:any)'] = 'categories/edit_category/$1';
$route['update_category'] = 'categories/update_category';


$route['news/create'] = 'news/create';
$route['news'] = 'news';
$route['news/(:any)'] = 'news/view/$1';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
$route['(:any)'] = 'pages/view/$1';


$route['create'] = 'blog';

$route['default_controller'] = 'blog/posts';
