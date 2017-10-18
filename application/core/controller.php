<?php

class Controller
{
    
    

    public function model($model)
    {
        require_once APP . 'model/' .$model. '.php';

        return new $model();
    }


    public function view($file, $arr_data = [], $kembalikan_string = false){

        $_data = APP . 'view/'.$file.'.php';
        if (!file_exists($_data)) die ("Tidak dapat memanggil file view : " . $_data);   
 
        if(sizeof($arr_data) > 0){
                extract($arr_data, EXTR_SKIP);
        }
        ob_start();

        include APP . 'view/layout/header.php';
        include ($_data);
        include APP . 'view/layout/footer.php';
        
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
