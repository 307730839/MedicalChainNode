package com.pancake.util;

import com.pancake.entity.content.Record;

import java.util.List;

public class test {

    public static void main(String[] args) {

        Read r = new Read();
        List<Record> a = r.read();

            System.out.println(a);
            System.out.println(a.get(0));



    }
}
