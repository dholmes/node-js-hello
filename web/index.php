<?php

// web/index.php
require_once __DIR__.'/../vendor/autoload.php';

$app = new Silex\Application();

$app->get('/', function () use ($app) {
    $date = new DateTime('now');
    return 'Hello World on ' . $date->format('Y-m-d');
});

$app->get('/hello/{name}', function ($name) use ($app) {
    return 'Hello '.$app->escape($name);
});

$app->run();