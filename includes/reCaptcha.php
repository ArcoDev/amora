<?php

$secret = "6Ldp848aAAAAAC3tf6ATnUsyL3GR_Q4cOLxAgB5g";

if (isset($_POST['g-recaptcha-response'])) {
    $captcha = $_POST['g-recaptcha-response'];
    $url = 'https://www.google.com/recaptcha/api/siteverify';
    $data = array(
        'secret' => $secret,
        'response' => $captcha,
        'remoteip' => $_SERVER['REMOTE_ADDR']
    );

    $curlConfig = array(
        CURLOPT_URL => $url,
        CURLOPT_POST => true,
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_POSTFIELDS => $data
    );

    $ch = curl_init();
    curl_setopt_array($ch, $curlConfig);
    $response = curl_exec($ch);
    curl_close($ch);
}

$jsonResponse = json_decode($response);
