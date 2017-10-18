<?php


class User extends Query
{
	
	public function getUser(){
        $user = new Query;
        $user->find('user');
        return $user->all(); 
	}
}