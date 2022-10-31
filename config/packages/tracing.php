<?php

return [
    // Default tracing logger
    'default' => env('TRACING_DEFAULT', 'null'),

    // List of logger driver
    'loggers' => [
        'aliyun' => [
            'access_key_id'     => env('ALIYUN_SLS_ACCESS_KEY_ID'),
            'access_key_secret' => env('ALIYUN_SLS_ACCESS_KEY_SECRET'),
            'endpoint'          => env('ALIYUN_SLS_ENDPOINT', 'ap-southeast-5.log.aliyuncs.com'),
            'project'           => env('ALIYUN_SLS_PROJECT'),
            'log_store'         => env('ALIYUN_SLS_LOG_STORE'),
            'topic'             => env('ALIYUN_SLS_TOPIC'),
            'source'            => env('ALIYUN_SLS_SOURCE'),
        ],
    ],
];
