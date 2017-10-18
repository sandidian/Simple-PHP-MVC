<?php

class Controller
{
    
    public $db = null;
    public $model = null;

    function __construct()
    {   
        $this->openDatabaseConnection();
        $this->loadModel();

    }


    private function openDatabaseConnection()
    {
        $options = array(PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_OBJ, PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING);
        $this->db = new PDO(DB_TYPE . ':host=' . DB_HOST . ';dbname=' . DB_NAME . ';charset=' . DB_CHARSET, DB_USER, DB_PASS, $options);
    }

    
    public function loadModel()
    {
        require APP . 'model/model.php';
        $this->model = new Model($this->db);
    }

    public function model($model)
    {
        require_once APP . 'model/' .$model. '.php';

        return new $model();
    }


    public function view($file, $arr_data = [], $kembalikan_string = false){
        $data = APP . 'view/'.$file.'.php';
        if (!file_exists($data)) die ("Tidak dapat memanggil file view : " . $data);   
 
        if(sizeof($arr_data) > 0){
                extract($arr_data, EXTR_SKIP);
        }
        ob_start();
        include APP . 'view/_templates/header.php';
        include ($data);
        include APP . 'view/_templates/footer.php';
        if($kembalikan_string == true){
                $content = ob_get_contents();
                @ob_end_clean();
                return $content;
        }
        $content = ob_get_contents();
        @ob_end_clean();
        echo $content;
    }


}
