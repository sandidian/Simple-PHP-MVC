<?php


class HomeController extends Controller
{
    
    public function index()
    {
        $model = $this->model("Home");

        return $this->view("home/index",['model'=>$model]);
    }

   
    public function exampleOne()
    {
        return $this->view("home/example_one");
        
    }

    
    public function exampleTwo()
    {
        return $this->view("home/example_two");
        
    }

}
