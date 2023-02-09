<?php
    $database = 'atenasystem';
    $host = 'localhost';
    $user = 'root';
    $password = 'root';

    exec('bin\mybkpdump.bat '.$database.' -h'.$host.' -u'.$user.' -p'.$password, $output);
    file_put_contents('infos\Run.log',$output)

    
?>