<?php


class UserController extends Controller
{
    
    public function index()
    {
        $model = $this->model("User");
        $users = $model->getUser();

        return $this->view("user/index",['users'=>$users]);
    }

    public function edit($id){
    	echo $id;
    }



}
