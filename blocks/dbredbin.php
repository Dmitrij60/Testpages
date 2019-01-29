<?php 
require './libs/rb.php';
R::setup( 'mysql:host=localhost;dbname=adaptive',
        'Admin', 'Djljrfyfk48' );

if ( !R::testconnection() )
{
		exit ('Нет соединения с базой данных');
}

session_start();
