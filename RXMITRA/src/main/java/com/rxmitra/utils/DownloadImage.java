package com.rxmitra.utils;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.Paths;

public class DownloadImage {

	
	public static void main(String[] args) {

        String imageUrl = "https://www.instagram.com/p/BuA89VxBqLA/";
        String destinationFilePath = "E:\\test.jpg";    // For windows something like c:\\path\to\file\test.jpg

        InputStream inputStream = null;
        try {
            inputStream = new URL(imageUrl).openStream();
            Files.copy(inputStream, Paths.get(destinationFilePath));
        } catch (IOException e) {
            System.out.println("Exception Occurred " + e);
        } finally {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    // Ignore
                }
            }
        }

    }

}
