<?php
    // SETAR HORARIO DO SERVIDOR
    date_default_timezone_set('America/Sao_Paulo');

    $database = 'atenasystem';
    $host = 'localhost';
    $user = 'root';
    $password = 'root';
    $token = "tokendolocal";

    exec('bin\mybkpdump.bat '.$database.' -h'.$host.' -u'.$user.' -p'.$password, $output);
    file_put_contents('infos\Run.log',$output);

    $arquivo = file("infos\NumTabelas.txt");
    $data = $arquivo[1];
    $total = $arquivo[3];
    $realizado = $arquivo[5];
    $erro = file_get_contents("infos\Erro.log");

    $data = json_encode([
        "name_database" => $database,
        "data" => date('Y-m-d'),
        "total" => trim($total),
        "realizado" => trim($realizado),
        "erro" => $erro,
    ]);

    $curl = curl_init();

    curl_setopt_array($curl, array(
    CURLOPT_URL => 'http://localhost/dashbackup/api/backup/20',
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => '',
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 0,
    CURLOPT_FOLLOWLOCATION => true,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => 'POST',
    CURLOPT_POSTFIELDS => $data,
    CURLOPT_HTTPHEADER => array(
        'token: '.$token,
        'Content-Type: application/json'
    ),
    ));

    $response = curl_exec($curl);
    curl_close($curl);
    // echo $response;
?>