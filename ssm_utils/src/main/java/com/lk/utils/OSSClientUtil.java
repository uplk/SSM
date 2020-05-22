package com.lk.utils;

import java.io.*;

import com.aliyun.oss.ClientException;
import com.aliyun.oss.OSS;
import com.aliyun.oss.OSSClientBuilder;
import com.aliyun.oss.OSSException;
import com.aliyun.oss.model.GetObjectRequest;
import com.aliyun.oss.model.OSSObject;
import com.aliyun.oss.model.PutObjectRequest;

public class OSSClientUtil {

    private static String endpoint = "http://oss-cn-shanghai.aliyuncs.com";
    private static String accessKeyId = "LTAI4GAW2znpP2v6nQ3GtoLb";
    private static String accessKeySecret = "MBCjLZbN5n4ZNUQL3WCFPxsb3IZQ6f";


    public static void uploadImg(){
        OSS ossClient = new OSSClientBuilder().build(endpoint, accessKeyId, accessKeySecret);
        InputStream inputStream = null;
        try {
            inputStream = new FileInputStream("<yourlocalFile>");
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        ossClient.putObject("<yourBucketName>", "<yourObjectName>", inputStream);
        ossClient.shutdown();
    }
}