<?php

require_once __DIR__.'/bootstrap.php';

// List loaded from store
$owners = [
    
    [
        'id'            => 1,
        'image'         => 'assets/image/gallery/owner.png',
        'name'          => 'Jake Smith',
        'bio'           => 'Owner.'
    ],
    [
        'id'            => 2,
        'image'         => 'assets/image/gallery/waiter.png',
        'name'          => 'Charlotte Cooper',
        'bio'           => 'Head waiter.'
    ],
    [
        'id'            => 3,
        'image'         => 'assets/image/gallery/waiter2.png',
        'name'          => 'Tom Borg',
        'bio'           => 'Waiter.'
    ],
    [
        'id'            => 4,
        'image'         => 'assets/image/gallery/restaurantOwner2.png',
        'name'          => 'Brianna Potter',
        'bio'           => 'Head Chef.'
    ],
    [
        'id'            => 5,
        'image'         => 'assets/image/gallery/chef.png',
        'name'          => 'John Miller',
        'bio'           => 'Chef.'
    ],
    [
        'id'            => 6,
        'image'         => 'assets/image/gallery/chef2.png',
        'name'          => 'Sarah Spiteri',
        'bio'           => 'Chef.'
    ],
    [
        'id'            => 7,
        'image'         => 'assets/image/gallery/restaurantOwner.png',
        'name'          => 'Clive Zahra',
        'bio'           => 'Chef.'
    ],
    [
        'id'            => 8,
        'image'         => 'assets/image/gallery/dish.png',
        'name'          => 'Josianne Sammut',
        'bio'           => 'Dish Washer.'
    ],
];

echo $twig->render('about-owners.html', ['owners' => $owners]);
