package com.pancake.util;

import com.alibaba.fastjson.JSON;
import com.pancake.entity.content.Record;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;

public class Read {

    static String getDatafromFile(String fileName) {
    String Path="d:\\" + fileName+ ".json";
    BufferedReader reader = null;
    String laststr = "";
    try {
        FileInputStream fileInputStream = new FileInputStream(Path);
        InputStreamReader inputStreamReader = new InputStreamReader(fileInputStream, "UTF-8");
        reader = new BufferedReader(inputStreamReader);
        String tempString = null;
        while ((tempString = reader.readLine()) != null) {
            laststr += tempString;
        }
        reader.close();
    } catch (IOException e) {
        e.printStackTrace();
    } finally {
        if (reader != null) {
            try {
                reader.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
    return laststr;
}

    public  List read() {

        String str = getDatafromFile("data");
        // System.out.println(str);
        List<Record> list = JSON.parseArray(str,Record.class);
        System.out.println(list);
        return list;
    }

}