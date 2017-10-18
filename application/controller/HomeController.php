<?php


class HomeController extends Controller
{
    
    public function index()
    {
        $model = $this->model("Home");

        return $this->view("home/index",['model'=>$model]);
    }

   
    public function about()
    {
        return $this->view("home/about");
        
    }


}
