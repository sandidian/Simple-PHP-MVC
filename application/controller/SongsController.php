<?php

class SongsController extends Controller
{
    

    public function index()
    {
       
        $songs = $this->model->getAllSongs();
        $amount_of_songs = $this->model->getAmountOfSongs();

        return $this->view("songs/index",[
            'songs'=>$songs,'amount_of_songs'=>$amount_of_songs
        ]);
    }

    
    public function addSong()
    {
        
        if (isset($_POST["submit_add_song"])) {
            $this->model->addSong($_POST["artist"], $_POST["track"],  $_POST["link"]);
        }

        header('location: ' . URL . 'songs/index');
    }


    public function deleteSong($song_id)
    {
        
        if (isset($song_id)) {
            $this->model->deleteSong($song_id);
        }

        header('location: ' . URL . 'songs/index');
    }

    
    public function editSong($song_id)
    {
       
        if (isset($song_id)) {
            
            $song = $this->model->getSong($song_id);

            return $this->view("songs/edit",[
                'song'=>$song
            ]);
            
        } else {
            
            header('location: ' . URL . 'songs/index');
        }
    }
    
    
    public function updateSong()
    {
       
        if (isset($_POST["submit_update_song"])) {

            $this->model->updateSong($_POST["artist"], $_POST["track"],  $_POST["link"], $_POST['song_id']);
        }

       
        header('location: ' . URL . 'songs/index');
    }

    
    public function ajaxGetStats()
    {
        $amount_of_songs = $this->model->getAmountOfSongs();

        echo $amount_of_songs;
    }

}


