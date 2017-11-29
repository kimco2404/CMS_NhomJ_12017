<?php

$pages = get_pages(); 
foreach ($pages as $page_data) {
    $content = apply_filters('the_content', $page_data->post_content); 
    $title = $page_data->post_title; 
    echo $content; 
}
?>
